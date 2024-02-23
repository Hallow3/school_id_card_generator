# School ID Card Generator

This Flutter application allows users to generate school ID cards with customizable fields. Users can input details such as school name, student name, admission number, and more to create unique ID cards. The app uses the Syncfusion PDF package for generating PDF files.

## Features

- Easy-to-use interface for entering ID card details.
- Customizable fields for school name, student name, admission number, vehicle point and more.
- Uses the `Syncfusion PDF` package for generating PDF files.
- Generates ID cards with a unique design for each student.
- Uses the `cached_network_image` package for validating image URLs.

<p align = "center"><img src = 'assets/screenshots/id_card_form.png' height = "600" width = "300" style="margin-right: 20px"><img src = 'assets/screenshots/generated_id_card_pdf.jpg' height = "600" width = "300"></p>

## Flow 
1. The user fills in the required details for the ID card, such as school name, student name, admission number, etc.
2. Validate user inputs.
3.  If the app includes a feature to add a student's image, the user enters the image URL, which is then validated using the `cached_network_image` package to ensure it is a valid URL.

<p align = "center"><img src = 'assets/screenshots/invalid_imageUrl_scrnsht.jpg' height = "600" width = "300"></p>

4. Once all details are entered and validated, the user clicks on the "Generate ID Card" button.
5. The app uses the `Syncfusion PDF` package to generate a PDF file containing the ID card with the entered details and the student's image (if applicable).
6. The generated ID card is displayed to the user on the screen, where they can view it or choose to download it to their device.
7. The user can repeat the process to generate ID cards for additional students.
8. If your app supports it, the user may have the option to customize the design of the ID card, such as choosing different templates or colors.

## How to use

- Clone the project repository from GitHub using the command git clone.
- Add required `dependencies`

## Dependencies
- [Syncfusion Flutter PDF](https://pub.dev/packages/syncfusion_flutter_pdf)
- [Path Provider Platform Interface](https://pub.dev/packages/path_provider_platform_interface)
- [Path Provider](https://pub.dev/packages/path_provider)
- [Open File](https://pub.dev/packages/open_file)
- [HTTP](https://pub.dev/packages/http)
- [Cached Network Image](https://pub.dev/packages/cached_network_image)