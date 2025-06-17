
from flask import Flask, render_template, request, redirect, url_for, flash
import sqlite3
import os

app = Flask(__name__, template_folder='templates', static_folder='static')
app.secret_key = 'phongkham_bimat'

DB_PATH = os.path.join('data', 'phong_kham.db')

def get_connection():
    return sqlite3.connect(DB_PATH)

@app.route('/')
def home():
    return render_template('VeChungToi.html')

@app.route('/bacsi')
def bacsi():
    return render_template('BacSi.html')

@app.route('/dat-lich', methods=['GET', 'POST'])
def dat_lich():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("SELECT id, name FROM bacsi")
    bacsi_list = cursor.fetchall()

    if request.method == 'POST':
        ten = request.form['ten']
        phone = request.form['phone']
        datetime = request.form['datetime']
        bacsi_id = request.form['bacsi_id']

        cursor.execute("INSERT INTO lichhen (ten, phone, datetime, bacsi_id) VALUES (?, ?, ?, ?)",
                       (ten, phone, datetime, bacsi_id))
        conn.commit()
        conn.close()
        flash("✅ Đặt lịch thành công!")
        return redirect(url_for('dat_lich'))

    conn.close()
    return render_template('DatLich.html', bacsi_list=bacsi_list)

@app.route('/lich-hen')
def lich_hen():
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("""
        SELECT lh.id, lh.ten, lh.phone, lh.datetime, b.name
        FROM lichhen lh
        JOIN bacsi b ON lh.bacsi_id = b.id
        ORDER BY lh.datetime DESC
    """)
    lichhen = cursor.fetchall()
    conn.close()
    return render_template('LichHen.html', lichhen=lichhen)

# Đảm bảo route đến các trang khác trong templates
@app.route('/<page>')
def render_page(page):
    page_html = f"{page}"
    if os.path.exists(os.path.join('templates', page_html)):
        return render_template(page_html)
    return "404 - Không tìm thấy trang", 404

if __name__ == '__main__':
    app.run(debug=True)
    
