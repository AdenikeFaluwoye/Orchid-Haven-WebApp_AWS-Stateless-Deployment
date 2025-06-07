#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

# Create the HTML page
cat <<EOF > /var/www/html/index.html
<html>
<head>
  <title>Orchid Haven Apartment - Shortlet Airbnb</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f2f2f2;
      padding: 30px;
      color: #333;
    }
    h1 {
      color: #4B0082;
    }
    h2 {
      color: #2F4F4F;
    }
    img {
      max-width: 600px;
      width: 100%;
      margin: 15px 0;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }
    p {
      font-size: 18px;
      max-width: 700px;
    }
  </style>
</head>
<body>
  <h1>Welcome to Orchid Haven Apartment</h1>
  <p>Your perfect shortlet getaway — a two-bedroom bungalow offering relaxation, comfort, and luxury in one serene package.</p>

  <h2>The Apartment</h2>
  <img src="https://orchid-haven-apartment-photo.s3.us-east-1.amazonaws.com/WhatsApp+Image+2025-06-01+at+2.38.06+AM.jpeg" alt="Orchid Haven Apartment Bungalow" />
  <p>Enjoy a cozy, modern 2-bedroom bungalow with full amenities, perfect for weekend escapes or longer stays.</p>

  <h2>Outdoor Barbecue Area</h2>
  <img src="https://cdn.pixabay.com/photo/2017/05/17/13/22/barbecue-2329348_1280.jpg" alt="Barbecue Grill" />
  <p>Fire up the outdoor barbecue grill and dine in the lush green garden with your loved ones.</p>

  <h2>Indoor Entertainment</h2>
  <img src="https://cdn.pixabay.com/photo/2019/06/27/08/35/playstation-4308587_1280.jpg" alt="PlayStation Gaming" />
  <p>Entertainment includes PlayStation for gaming, Netflix and YouTube for movies and live streaming.</p>

  <h2>Garden & Relaxation</h2>
  <img src="https://cdn.pixabay.com/photo/2018/03/01/14/07/garden-3185762_1280.jpg" alt="Orchid Garden" />
  <p>Relax in the beautifully landscaped garden filled with orchids and fresh greenery, the ideal space for morning coffee or evening calm.</p>

  <h2>Power & Comfort</h2>
  <p>Benefit from 24-hour power supply, fast internet, and modern interiors — everything designed for your convenience.</p>
</body>
</html>
EOF

# Set correct permissions
chown apache:apache /var/www/html/index.html
chmod 644 /var/www/html/index.html
