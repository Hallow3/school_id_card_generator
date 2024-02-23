import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:school_id_card_generator/save_file/save_file_mobile.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

Future<void> generateIdCard(
    String schoolName,
    String schoolPlace,
    int schoolPin,
    String schoolDist,
    String schoolState,
    String schoolCountry,
    int schoolMobile,
    int admission,
    String imageUrl,
    String studentName,
    String parentName,
    String standard,
    int mobile1,
    int mobile2,
    String houseName,
    String place,
    int pin,
    String vehiclePoint) async {
  final PdfDocument document = PdfDocument();
  document.pageSettings
    ..margins.all = 0
    ..orientation = PdfPageOrientation.portrait
    ..size = const Size(212.66, 333.66);

  final PdfPage page = document.pages.add();
  const txtFont = PdfFontFamily.helvetica;
  final txtColor = PdfColor(255, 255, 255);
  var response = await get(Uri.parse(imageUrl));
  var imageData = response.bodyBytes;
  PdfBitmap image = PdfBitmap(imageData);

  page.graphics.drawImage(
      PdfBitmap(await readBgImage()),
      Rect.fromLTWH(
          0, 0, page.getClientSize().width, page.getClientSize().height));
  page.graphics.drawString(schoolName, PdfStandardFont(txtFont, 12),
      bounds: const Rect.fromLTWH(40, 25, 0, 0),
      brush: PdfSolidBrush(txtColor));
  // page.graphics.drawString("ENGLISH MEDIUM SCHOOL PARAKKADAVU",
  //     PdfStandardFont(txtFont, 6, style: PdfFontStyle.bold),
  //     bounds: const Rect.fromLTWH(40, 37, 0, 0),
  //     brush: PdfSolidBrush(txtColor));
  page.graphics.drawString(schoolPlace,
      PdfStandardFont(txtFont, 3, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(40, 39, 0, 0),
      brush: PdfSolidBrush(PdfColor(199, 200, 201)));
  page.graphics.drawString("$schoolPin(pin) $schoolDist (Dist).$schoolState.",
      PdfStandardFont(txtFont, 3, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(40, 43, 0, 0),
      brush: PdfSolidBrush(PdfColor(199, 200, 201)));
  page.graphics.drawString("$schoolCountry.$schoolMobile",
      PdfStandardFont(txtFont, 3, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(40, 46, 0, 0),
      brush: PdfSolidBrush(PdfColor(199, 200, 201)));
  page.graphics.drawString(
      studentName, PdfStandardFont(txtFont, 15, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(30, 220, 0, 0),
      brush: PdfSolidBrush(PdfColor.fromCMYK(0, 0, 0, 100)));
  page.graphics.drawString(
      parentName, PdfStandardFont(txtFont, 10, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(30, 238, 0, 0),
      brush: PdfSolidBrush(PdfColor.fromCMYK(0, 0, 0, 100)));
  page.graphics.drawString("$mobile1,$mobile2", PdfStandardFont(txtFont, 7),
      bounds: const Rect.fromLTWH(30, 255, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString("$houseName,$place", PdfStandardFont(txtFont, 7),
      bounds: const Rect.fromLTWH(30, 265, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString("(po)$pin", PdfStandardFont(txtFont, 5),
      bounds: const Rect.fromLTWH(30, 273, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString(
      "_________________________________", PdfStandardFont(txtFont, 7),
      bounds: const Rect.fromLTWH(30, 275, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString(
      "Vehicle Point: $vehiclePoint", PdfStandardFont(txtFont, 7),
      bounds: const Rect.fromLTWH(30, 285, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString(
      standard, PdfStandardFont(txtFont, 10, style: PdfFontStyle.bold),
      bounds: const Rect.fromLTWH(180, 190, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString("___", PdfStandardFont(txtFont, 9),
      bounds: const Rect.fromLTWH(180, 192, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.drawString(admission.toString(), PdfStandardFont(txtFont, 7),
      bounds: const Rect.fromLTWH(180, 202, 0, 0),
      brush: PdfSolidBrush(PdfColor(0, 0, 0)));
  page.graphics.setClip(
      path: PdfPath()..addEllipse(const Rect.fromLTWH(55, 108, 100, 100)));
  page.graphics.drawImage(image, const Rect.fromLTWH(55, 108, 100, 100));
  page.graphics.restore();
  await saveAndLaunchFile(document.saveSync(), 'StudentIdCard.pdf');
  document.dispose();
}

Future<Uint8List> readBgImage() async {
  final data = await rootBundle.load("assets/images/ems_id_bg.png");
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
