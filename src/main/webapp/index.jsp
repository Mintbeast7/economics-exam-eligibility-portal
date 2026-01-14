<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Exam Eligibility</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f2f4f7;
        }

        .header {
            background-color: #2c3e50;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        .container {
            width: 400px;
            margin: 60px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        h3 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #1a73e8;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 15px;
            cursor: pointer;
        }

        button:disabled {
            background-color: #9bbcf0;
            cursor: not-allowed;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            font-size: 13px;
            color: #777;
        }
    </style>
</head>

<body>

<div class="header">
    Economics Department Student Portal
</div>

<div class="container">
    <h3>Check Exam Eligibility</h3>

    <form method="get">
        <label for="rollNo">Select Roll Number</label>

        <select id="rollNo">
            <option value="" selected disabled>-- Select Roll Number --</option>
            <option value="23ECO101">23ECO101</option>
            <option value="23ECO102">23ECO102</option>
            <option value="23ECO103">23ECO103</option>
            <option value="23ECO104">23ECO104</option>
            <option value="23ECO105">23ECO105</option>
            <option value="23ECO106">23ECO106</option>
            <option value="23ECO107">23ECO107</option>
            <option value="23ECO108">23ECO108</option>
            <option value="23ECO109">23ECO109</option>
            <option value="23ECO110">23ECO110</option>
            <option value="23ECO111">23ECO111</option>
            <option value="23ECO112">23ECO112</option>
            <option value="23ECO113">23ECO113</option>
            <option value="23ECO114">23ECO114</option>
            <option value="23ECO115">23ECO115</option>
            <option value="23ECO116">23ECO116</option>
            <option value="23ECO117">23ECO117</option>
            <option value="23ECO118">23ECO118</option>
            <option value="23ECO119">23ECO119</option>
            <option value="23ECO120">23ECO120</option>
        </select>

        <button type="submit" id="submitBtn" disabled>Check Eligibility</button>
    </form>
</div>

<footer>
     2026 Economics Department | Student Self-Service
</footer>

<!-- ✅ FIX SCRIPT -->
<script>
    const rollSelect = document.getElementById("rollNo");
    const submitBtn = document.getElementById("submitBtn");
    const form = document.querySelector("form");

    rollSelect.addEventListener("change", function () {
        submitBtn.disabled = false;
        form.action = "user/student/" + this.value;
    });
</script>

</body>
</html>
