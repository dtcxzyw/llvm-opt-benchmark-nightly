Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/exif?download=true
inline.NumInlined: 42
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exif_tag = type { [32 x i8], i16 }
%struct.PutByteContext = type { ptr, ptr, ptr, i32 }
%struct.AVExifMetadata = type { ptr, i32, i32 }
%struct.GetByteContext = type { ptr, ptr, ptr }
%struct.AVExifEntry = type { i16, i32, i32, i32, ptr, %union.anon }
%union.anon = type { %struct.AVExifMetadata }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }

@tag_list = internal constant [142 x %struct.exif_tag] [%struct.exif_tag { [32 x i8] c"GPSVersionID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0 }, %struct.exif_tag { [32 x i8] c"GPSLatitudeRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 1 }, %struct.exif_tag { [32 x i8] c"GPSLatitude\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 2 }, %struct.exif_tag { [32 x i8] c"GPSLongitudeRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 3 }, %struct.exif_tag { [32 x i8] c"GPSLongitude\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4 }, %struct.exif_tag { [32 x i8] c"GPSAltitudeRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 5 }, %struct.exif_tag { [32 x i8] c"GPSAltitude\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 6 }, %struct.exif_tag { [32 x i8] c"GPSTimeStamp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 7 }, %struct.exif_tag { [32 x i8] c"GPSSatellites\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 8 }, %struct.exif_tag { [32 x i8] c"GPSStatus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 9 }, %struct.exif_tag { [32 x i8] c"GPSMeasureMode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 10 }, %struct.exif_tag { [32 x i8] c"GPSDOP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 11 }, %struct.exif_tag { [32 x i8] c"GPSSpeedRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 12 }, %struct.exif_tag { [32 x i8] c"GPSSpeed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 13 }, %struct.exif_tag { [32 x i8] c"GPSTrackRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 14 }, %struct.exif_tag { [32 x i8] c"GPSTrack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 15 }, %struct.exif_tag { [32 x i8] c"GPSImgDirectionRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 16 }, %struct.exif_tag { [32 x i8] c"GPSImgDirection\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 17 }, %struct.exif_tag { [32 x i8] c"GPSMapDatum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 18 }, %struct.exif_tag { [32 x i8] c"GPSDestLatitudeRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 19 }, %struct.exif_tag { [32 x i8] c"GPSDestLatitude\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 20 }, %struct.exif_tag { [32 x i8] c"GPSDestLongitudeRef\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 21 }, %struct.exif_tag { [32 x i8] c"GPSDestLongitude\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 22 }, %struct.exif_tag { [32 x i8] c"GPSDestBearingRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 23 }, %struct.exif_tag { [32 x i8] c"GPSDestBearing\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 24 }, %struct.exif_tag { [32 x i8] c"GPSDestDistanceRef\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 25 }, %struct.exif_tag { [32 x i8] c"GPSDestDistance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 26 }, %struct.exif_tag { [32 x i8] c"GPSProcessingMethod\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 27 }, %struct.exif_tag { [32 x i8] c"GPSAreaInformation\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 28 }, %struct.exif_tag { [32 x i8] c"GPSDateStamp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 29 }, %struct.exif_tag { [32 x i8] c"GPSDifferential\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 30 }, %struct.exif_tag { [32 x i8] c"ImageWidth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 256 }, %struct.exif_tag { [32 x i8] c"ImageLength\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 257 }, %struct.exif_tag { [32 x i8] c"BitsPerSample\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 258 }, %struct.exif_tag { [32 x i8] c"Compression\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 259 }, %struct.exif_tag { [32 x i8] c"PhotometricInterpretation\00\00\00\00\00\00\00", i16 262 }, %struct.exif_tag { [32 x i8] c"Orientation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 274 }, %struct.exif_tag { [32 x i8] c"SamplesPerPixel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 277 }, %struct.exif_tag { [32 x i8] c"PlanarConfiguration\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 284 }, %struct.exif_tag { [32 x i8] c"YCbCrSubSampling\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 530 }, %struct.exif_tag { [32 x i8] c"YCbCrPositioning\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 531 }, %struct.exif_tag { [32 x i8] c"XResolution\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 282 }, %struct.exif_tag { [32 x i8] c"YResolution\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 283 }, %struct.exif_tag { [32 x i8] c"ResolutionUnit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 296 }, %struct.exif_tag { [32 x i8] c"StripOffsets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 273 }, %struct.exif_tag { [32 x i8] c"RowsPerStrip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 278 }, %struct.exif_tag { [32 x i8] c"StripByteCounts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 279 }, %struct.exif_tag { [32 x i8] c"JPEGInterchangeFormat\00\00\00\00\00\00\00\00\00\00\00", i16 513 }, %struct.exif_tag { [32 x i8] c"JPEGInterchangeFormatLength\00\00\00\00\00", i16 514 }, %struct.exif_tag { [32 x i8] c"TransferFunction\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 301 }, %struct.exif_tag { [32 x i8] c"WhitePoint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 318 }, %struct.exif_tag { [32 x i8] c"PrimaryChromaticities\00\00\00\00\00\00\00\00\00\00\00", i16 319 }, %struct.exif_tag { [32 x i8] c"YCbCrCoefficients\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 529 }, %struct.exif_tag { [32 x i8] c"ReferenceBlackWhite\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 532 }, %struct.exif_tag { [32 x i8] c"DateTime\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 306 }, %struct.exif_tag { [32 x i8] c"ImageDescription\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 270 }, %struct.exif_tag { [32 x i8] c"Make\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 271 }, %struct.exif_tag { [32 x i8] c"Model\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 272 }, %struct.exif_tag { [32 x i8] c"Software\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 305 }, %struct.exif_tag { [32 x i8] c"Artist\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 315 }, %struct.exif_tag { [32 x i8] c"Copyright\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -32104 }, %struct.exif_tag { [32 x i8] c"ExifVersion\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28672 }, %struct.exif_tag { [32 x i8] c"FlashpixVersion\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24576 }, %struct.exif_tag { [32 x i8] c"ColorSpace\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24575 }, %struct.exif_tag { [32 x i8] c"ComponentsConfiguration\00\00\00\00\00\00\00\00\00", i16 -28415 }, %struct.exif_tag { [32 x i8] c"CompressedBitsPerPixel\00\00\00\00\00\00\00\00\00\00", i16 -28414 }, %struct.exif_tag { [32 x i8] c"PixelXDimension\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24574 }, %struct.exif_tag { [32 x i8] c"PixelYDimension\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24573 }, %struct.exif_tag { [32 x i8] c"MakerNote\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28036 }, %struct.exif_tag { [32 x i8] c"UserComment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28026 }, %struct.exif_tag { [32 x i8] c"RelatedSoundFile\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24572 }, %struct.exif_tag { [32 x i8] c"DateTimeOriginal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28669 }, %struct.exif_tag { [32 x i8] c"DateTimeDigitized\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28668 }, %struct.exif_tag { [32 x i8] c"SubSecTime\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28016 }, %struct.exif_tag { [32 x i8] c"SubSecTimeOriginal\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28015 }, %struct.exif_tag { [32 x i8] c"SubSecTimeDigitized\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28014 }, %struct.exif_tag { [32 x i8] c"ImageUniqueID\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23520 }, %struct.exif_tag { [32 x i8] c"ExposureTime\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -32102 }, %struct.exif_tag { [32 x i8] c"FNumber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -32099 }, %struct.exif_tag { [32 x i8] c"ExposureProgram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -30686 }, %struct.exif_tag { [32 x i8] c"SpectralSensitivity\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -30684 }, %struct.exif_tag { [32 x i8] c"ISOSpeedRatings\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -30681 }, %struct.exif_tag { [32 x i8] c"OECF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -30680 }, %struct.exif_tag { [32 x i8] c"ShutterSpeedValue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28159 }, %struct.exif_tag { [32 x i8] c"ApertureValue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28158 }, %struct.exif_tag { [32 x i8] c"BrightnessValue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28157 }, %struct.exif_tag { [32 x i8] c"ExposureBiasValue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28156 }, %struct.exif_tag { [32 x i8] c"MaxApertureValue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28155 }, %struct.exif_tag { [32 x i8] c"SubjectDistance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28154 }, %struct.exif_tag { [32 x i8] c"MeteringMode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28153 }, %struct.exif_tag { [32 x i8] c"LightSource\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28152 }, %struct.exif_tag { [32 x i8] c"Flash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28151 }, %struct.exif_tag { [32 x i8] c"FocalLength\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28150 }, %struct.exif_tag { [32 x i8] c"SubjectArea\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -28140 }, %struct.exif_tag { [32 x i8] c"FlashEnergy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24053 }, %struct.exif_tag { [32 x i8] c"SpatialFrequencyResponse\00\00\00\00\00\00\00\00", i16 -24052 }, %struct.exif_tag { [32 x i8] c"FocalPlaneXResolution\00\00\00\00\00\00\00\00\00\00\00", i16 -24050 }, %struct.exif_tag { [32 x i8] c"FocalPlaneYResolution\00\00\00\00\00\00\00\00\00\00\00", i16 -24049 }, %struct.exif_tag { [32 x i8] c"FocalPlaneResolutionUnit\00\00\00\00\00\00\00\00", i16 -24048 }, %struct.exif_tag { [32 x i8] c"SubjectLocation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24044 }, %struct.exif_tag { [32 x i8] c"ExposureIndex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24043 }, %struct.exif_tag { [32 x i8] c"SensingMethod\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24041 }, %struct.exif_tag { [32 x i8] c"FileSource\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23808 }, %struct.exif_tag { [32 x i8] c"SceneType\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23807 }, %struct.exif_tag { [32 x i8] c"CFAPattern\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23806 }, %struct.exif_tag { [32 x i8] c"CustomRendered\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23551 }, %struct.exif_tag { [32 x i8] c"ExposureMode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23550 }, %struct.exif_tag { [32 x i8] c"WhiteBalance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23549 }, %struct.exif_tag { [32 x i8] c"DigitalZoomRatio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23548 }, %struct.exif_tag { [32 x i8] c"FocalLengthIn35mmFilm\00\00\00\00\00\00\00\00\00\00\00", i16 -23547 }, %struct.exif_tag { [32 x i8] c"SceneCaptureType\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23546 }, %struct.exif_tag { [32 x i8] c"GainControl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23545 }, %struct.exif_tag { [32 x i8] c"Contrast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23544 }, %struct.exif_tag { [32 x i8] c"Saturation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23543 }, %struct.exif_tag { [32 x i8] c"Sharpness\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23542 }, %struct.exif_tag { [32 x i8] c"DeviceSettingDescription\00\00\00\00\00\00\00\00", i16 -23541 }, %struct.exif_tag { [32 x i8] c"SubjectDistanceRange\00\00\00\00\00\00\00\00\00\00\00\00", i16 -23540 }, %struct.exif_tag { [32 x i8] c"RelatedImageFileFormat\00\00\00\00\00\00\00\00\00\00", i16 4096 }, %struct.exif_tag { [32 x i8] c"RelatedImageWidth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4097 }, %struct.exif_tag { [32 x i8] c"RelatedImageLength\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 4098 }, %struct.exif_tag { [32 x i8] c"PrintImageMatching\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -15195 }, %struct.exif_tag { [32 x i8] c"ExifIFD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -30871 }, %struct.exif_tag { [32 x i8] c"GPSInfo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -30683 }, %struct.exif_tag { [32 x i8] c"InteropIFD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -24571 }, %struct.exif_tag { [32 x i8] c"GlobalParametersIFD\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 400 }, %struct.exif_tag { [32 x i8] c"ProfileIFD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -14603 }, %struct.exif_tag { [32 x i8] c"IFD1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -4 }, %struct.exif_tag { [32 x i8] c"IFD2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -5 }, %struct.exif_tag { [32 x i8] c"IFD3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -6 }, %struct.exif_tag { [32 x i8] c"IFD4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -7 }, %struct.exif_tag { [32 x i8] c"IFD5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -8 }, %struct.exif_tag { [32 x i8] c"IFD6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -9 }, %struct.exif_tag { [32 x i8] c"IFD7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -10 }, %struct.exif_tag { [32 x i8] c"IFD8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -11 }, %struct.exif_tag { [32 x i8] c"IFD9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -12 }, %struct.exif_tag { [32 x i8] c"IFD10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -13 }, %struct.exif_tag { [32 x i8] c"IFD11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -14 }, %struct.exif_tag { [32 x i8] c"IFD12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -15 }, %struct.exif_tag { [32 x i8] c"IFD13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -16 }, %struct.exif_tag { [32 x i8] c"IFD14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -17 }, %struct.exif_tag { [32 x i8] c"IFD15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -18 }, %struct.exif_tag { [32 x i8] c"IFD16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 -19 }], align 16
@.str = private unnamed_addr constant [27 x i8] c"found extra IFD tag: %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error popping additional IFD: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error writing EXIF data: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"writing additional ifd at: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"error writing additional IFD: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"invalid TIFF header in EXIF data: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"error decoding EXIF data: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"found extra IFD: %04x with next=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rotation_lut = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 1, i32 8, i32 3, i32 6], [4 x i32] [i32 4, i32 7, i32 2, i32 5]], align 16
@.str.9 = private unnamed_addr constant [28 x i8] c"display matrix is singular\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"matrix contains nontrivial EXIF orientation: %lu\0A\00", align 1
@exif_sizes = internal unnamed_addr constant [14 x i64] [i64 0, i64 1, i64 1, i64 2, i64 4, i64 8, i64 1, i64 1, i64 2, i64 4, i64 8, i64 4, i64 8, i64 4], align 16
@.str.11 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"writing IFD with %u entries and initial offset %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [83 x i8] c"writing TIFF entry: id: 0x%04x, type: %d, count: %u, offset: %d, offset value: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"parsing IFD list at offset: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"not enough bytes remaining in EXIF buffer: 2 required\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"not enough bytes remaining in EXIF buffer. entries: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"too many entries: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"entry count for IFD: %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"TIFF Tag: id: 0x%04x, type: %d, count: %u, offset: %d, payload: %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Skipping invalid TIFF tag 0\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"unrecognized MakerNote IFD, retrying as blob\0A\00", align 1
@aoc_header = internal constant [4 x i8] c"AOC\00", align 1
@casio_header = internal constant [6 x i8] c"QVC\00\00\00", align 1
@foveon_header = internal constant [8 x i8] c"FOVEON\00\00", align 1
@fuji_header = internal constant [4 x i8] c"FUJI", align 1
@olympus1_header = internal constant [6 x i8] c"OLYMP\00", align 1
@olympus2_header = internal constant [10 x i8] c"OLYMPUS\00II", align 1
@panasonic_header = internal constant [12 x i8] c"Panasonic\00\00\00", align 1
@sigma_header = internal constant [8 x i8] c"SIGMA\00\00\00", align 1
@sony_header = internal constant [12 x i8] c"SONY DSC \00\00\00", align 1
@makernote_data = internal unnamed_addr constant [9 x { ptr, i64, i32, [4 x i8] }] [{ ptr, i64, i32, [4 x i8] } { ptr @aoc_header, i64 4, i32 6, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @casio_header, i64 6, i32 -1, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @foveon_header, i64 8, i32 10, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @fuji_header, i64 4, i32 -1, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @olympus1_header, i64 6, i32 8, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @olympus2_header, i64 10, i32 -1, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @panasonic_header, i64 12, i32 12, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @sigma_header, i64 8, i32 10, [4 x i8] zeroinitializer }, { ptr, i64, i32, [4 x i8] } { ptr @sony_header, i64 12, i32 12, [4 x i8] zeroinitializer }], align 16
@.str.30 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%s%7u\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"%s%7d\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"%s%7i:%-7i\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"%s%.15g\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%s%3i\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define ptr @av_exif_get_tag_name(i16 noundef zeroext %0) local_unnamed_addr #0 {
vector.ph:
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %0, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 9 uses
  %i.a = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 134
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 202
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 236
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 270
  %i.q = load i16, ptr %i.i, align 16, !tbaa !13
  %i.r = load i16, ptr %i.j, align 2, !tbaa !13
  %i.s = load i16, ptr %i.k, align 4, !tbaa !13
  %i.t = load i16, ptr %i.l, align 2, !tbaa !13
  %i.u = load i16, ptr %i.m, align 8, !tbaa !13
  %i.v = load i16, ptr %i.n, align 2, !tbaa !13
  %i.w = load i16, ptr %i.o, align 4, !tbaa !13
  %i.x = load i16, ptr %i.p, align 2, !tbaa !13
  %i.y = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %i.z = insertelement <8 x i16> %i.y, i16 %i.r, i64 1
  %i.aa = insertelement <8 x i16> %i.z, i16 %i.s, i64 2
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.t, i64 3
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.u, i64 4
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.v, i64 5
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.w, i64 6
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 7
  %.fr = freeze <8 x i16> %i.af
  %i.ag = icmp eq <8 x i16> %.fr, %broadcast.splat ; 2 uses
  %i.ah = bitcast <8 x i1> %i.ag to i8
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 136
  br i1 %i.ai, label %scalar.ph, label %vector.body, !llvm.loop !57

vector.early.exit:                                ; preds = %vector.body
  %i.aj = insertelement <4 x ptr> poison, ptr %i.e, i64 0
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.f, i64 1
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.g, i64 2
  %i.am = insertelement <4 x ptr> %i.al, ptr %i.h, i64 3
  %i.an = getelementptr inbounds nuw i8, <4 x ptr> %i.am, <4 x i64> <i64 136, i64 170, i64 204, i64 238>
  %1 = insertelement <4 x ptr> poison, ptr %i.a, i64 0
  %2 = insertelement <4 x ptr> %1, ptr %i.b, i64 1
  %3 = insertelement <4 x ptr> %2, ptr %i.c, i64 2
  %4 = insertelement <4 x ptr> %3, ptr %i.d, i64 3
  %5 = getelementptr inbounds nuw i8, <4 x ptr> %4, <4 x i64> <i64 0, i64 34, i64 68, i64 102>
  %6 = shufflevector <4 x ptr> %5, <4 x ptr> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %i.ag, i1 false)
  %i.ao = extractelement <8 x ptr> %6, i64 %first.active.lane
  br label %.loopexit

bb.a:                                             ; preds = %scalar.ph
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.body.interim
  switch i16 %0, label %bb.a [
    i16 -14, label %.loopexit
    i16 -15, label %.loopexit.loopexit.fold.split
    i16 -16, label %.loopexit.loopexit.fold.split45
    i16 -17, label %.loopexit.loopexit.fold.split46
    i16 -18, label %.loopexit.loopexit.fold.split47
    i16 -19, label %.loopexit.loopexit.fold.split48
  ]

.loopexit.loopexit.fold.split:                    ; preds = %scalar.ph
  br label %.loopexit

.loopexit.loopexit.fold.split45:                  ; preds = %scalar.ph
  br label %.loopexit

.loopexit.loopexit.fold.split46:                  ; preds = %scalar.ph
  br label %.loopexit

.loopexit.loopexit.fold.split47:                  ; preds = %scalar.ph
  br label %.loopexit

.loopexit.loopexit.fold.split48:                  ; preds = %scalar.ph
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexit.loopexit.fold.split, %.loopexit.loopexit.fold.split45, %.loopexit.loopexit.fold.split46, %.loopexit.loopexit.fold.split47, %.loopexit.loopexit.fold.split48, %scalar.ph, %vector.early.exit
  %i.ap = phi ptr [ %i.ao, %vector.early.exit ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4624), %scalar.ph ], [ null, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4692), %.loopexit.loopexit.fold.split45 ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4760), %.loopexit.loopexit.fold.split47 ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4658), %.loopexit.loopexit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4726), %.loopexit.loopexit.fold.split46 ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4794), %.loopexit.loopexit.fold.split48 ]
  ret ptr %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 65536) i32 @av_exif_get_tag_id(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

bb.b:                                             ; preds = %.preheader
  %i.a = add nuw nsw i64 %.0713, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, 142
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !58

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0713 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.b = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %.0713 ; 2 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %0) #13
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !13
  %i.f = zext i16 %i.e to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.c ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @av_exif_free(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %.not13 = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not13, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %exif_free_entry.exit, %.preheader
  tail call void @av_freep(ptr noundef nonnull %0) #14
  br label %.sink.split

.lr.ph.split:                                     ; preds = %.preheader, %exif_free_entry.exit
  %i.d = phi i32 [ %i.l, %exif_free_entry.exit ], [ %i.c, %.preheader ]
  %.014 = phi i64 [ %i.m, %exif_free_entry.exit ], [ 0, %.preheader ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.014 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %exif_free_entry.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = icmp eq i32 %i.h, 13
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @av_exif_free(ptr noundef nonnull %i.j), !inline_history !0
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @av_freep(ptr noundef nonnull %i.j) #14, !inline_history !0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.k) #14, !inline_history !0
  %.pre = load i32, ptr %i.b, align 8, !tbaa !21
  br label %exif_free_entry.exit

exif_free_entry.exit:                             ; preds = %.lr.ph.split, %bb.f
  %i.l = phi i32 [ %i.d, %.lr.ph.split ], [ %.pre, %bb.f ] ; 2 uses
  %i.m = add nuw nsw i64 %.014, 1                 ; 2 uses
  %i.n = zext i32 %i.l to i64
  %i.o = icmp samesign ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph.split, label %._crit_edge, !llvm.loop !59

.sink.split:                                      ; preds = %bb.b, %._crit_edge
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @av_exif_write(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %4 = alloca %struct.PutByteContext, align 8     ; 17 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca [16 x %struct.AVExifMetadata], align 16 ; 22 uses
  %i.c = alloca [64 x i8], align 1                ; 3 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  %i.e = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %i.f = load ptr, ptr %2, align 8, !tbaa !27
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i64 @exif_get_ifd_size(ptr noundef %1)
  switch i32 %3, label %bb.g [
    i32 4, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.083 = phi i64 [ 8, %bb.b ], [ 8, %bb.c ], [ 8, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  %.078 = phi i64 [ 0, %bb.b ], [ 6, %bb.c ], [ 4, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %.not.i111 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ] ; 3 uses
  %.076 = phi i32 [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ] ; 3 uses
  %i.h = add i64 %.083, %i.g
  %i.i = add i64 %i.h, %.078
  %i.j = call i32 @av_buffer_realloc(ptr noundef nonnull %i.a, i64 noundef %i.i) #14 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %3, label %bb.k [
    i32 4, label %bb.i
    i32 3, label %bb.j
  ]
end_hunk_0
begin_hunk_1_@av_exif_set_entry:bb.a

exif_get_entry.exit:                              ; preds = %bb.h
  %i.u = trunc nuw i64 %.011.i to i32
  %i.v = add i32 %.03710.i, %i.u                  ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %exif_get_entry.exit.thread68, label %bb.l

bb.l:                                             ; preds = %exif_get_entry.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %i.z = icmp eq i32 %i.y, 13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @av_exif_free(ptr noundef nonnull %i.aa), !inline_history !0
  br label %exif_free_entry.exit

bb.n:                                             ; preds = %bb.l
  tail call void @av_freep(ptr noundef nonnull %i.aa) #14, !inline_history !0
  br label %exif_free_entry.exit

exif_free_entry.exit:                             ; preds = %bb.m, %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.ab) #14, !inline_history !0
  br label %bb.q

.loopexit:                                        ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ac = add i32 %i.c, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = call i32 @av_size_mult(i64 noundef %i.ad, i64 noundef 40, ptr noundef nonnull %i.a) #14
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !43
  %i.aj = call ptr @av_fast_realloc(ptr noundef %i.ag, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #14 ; 3 uses
  %.not59 = icmp eq ptr %i.aj, null
  br i1 %.not59, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.aj, ptr %1, align 8, !tbaa !20
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.b, align 8, !tbaa !21
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %exif_free_entry.exit
  %.5.i6774 = phi i32 [ 0, %bb.p ], [ %i.v, %exif_free_entry.exit ] ; 3 uses
  %.0 = phi ptr [ %i.an, %bb.p ], [ %i.k, %exif_free_entry.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %4, ptr %i.ao, align 8, !tbaa !42
  store i16 %2, ptr %8, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %3, ptr %i.ap, align 4, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %5, ptr %i.aq, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %6, ptr %i.ar, align 4, !tbaa !41
  %i.as = icmp eq i32 %3, 13
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !40
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store ptr %7, ptr %i.at, align 8, !tbaa !31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = call fastcc i32 @exif_clone_entry(ptr noundef %.0, ptr noundef nonnull %8) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.u, label %exif_get_entry.exit.thread68

bb.u:                                             ; preds = %bb.t
  %.not60 = icmp eq i32 %.5.i6774, 0
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !21
  %i.ax = sub i32 %i.aw, %.5.i6774
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %1, align 8, !tbaa !20
  %i.ba = zext nneg i32 %.5.i6774 to i64
  %i.bb = getelementptr [40 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -40
  %i.bd = mul nuw nsw i64 %i.ay, 40
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr nonnull align 8 %i.bb, i64 %i.bd, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.be = load i32, ptr %i.b, align 8, !tbaa !21
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.b, align 8, !tbaa !21
  br label %exif_get_entry.exit.thread68

.critedge:                                        ; preds = %bb.o, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %exif_get_entry.exit.thread68

exif_get_entry.exit.thread68:                     ; preds = %bb.g, %bb.t, %bb.w, %.critedge, %exif_get_entry.exit, %bb.a, %bb.c, %bb.d, %bb.e
  %.1 = phi i32 [ -12, %.critedge ], [ -22, %bb.a ], [ %i.v, %exif_get_entry.exit ], [ -22, %bb.e ], [ -22, %bb.d ], [ -22, %bb.g ], [ -22, %bb.c ], [ %i.au, %bb.w ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @av_exif_ifd_to_dict(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @exif_ifd_to_dict(ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @exif_ifd_to_dict(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.AVBPrint, align 8           ; 25 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !90
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.8, ptr %0 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %.not42 = icmp eq i32 %i.d, 0
  br i1 %.not42, label %.thread10, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33, %bb.u
  %.07832 = phi i16 [ 0, %.lr.ph33 ], [ %i.ft, %bb.u ] ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !20
  %i.h = zext i16 %.07832 to i64
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 9 uses
  %i.k = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [34 x i8], ptr @tag_list, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 66
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 134
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 202
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 236
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 270
  %i.aa = load i16, ptr %i.s, align 16, !tbaa !13
  %i.ab = load i16, ptr %i.t, align 2, !tbaa !13
  %i.ac = load i16, ptr %i.u, align 4, !tbaa !13
  %i.ad = load i16, ptr %i.v, align 2, !tbaa !13
  %i.ae = load i16, ptr %i.w, align 8, !tbaa !13
  %i.af = load i16, ptr %i.x, align 2, !tbaa !13
  %i.ag = load i16, ptr %i.y, align 4, !tbaa !13
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !13
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = icmp eq <8 x i16> %i.ap, %broadcast.splat
  %i.ar = freeze <8 x i1> %i.aq                   ; 2 uses
  %i.as = bitcast <8 x i1> %i.ar to i8
  %.not105 = icmp eq i8 %i.as, 0
  br i1 %.not105, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, 136
  br i1 %i.at, label %scalar.ph, label %vector.body, !llvm.loop !82

vector.early.exit:                                ; preds = %vector.body
  %i.au = insertelement <4 x ptr> poison, ptr %i.o, i64 0
  %i.av = insertelement <4 x ptr> %i.au, ptr %i.p, i64 1
  %i.aw = insertelement <4 x ptr> %i.av, ptr %i.q, i64 2
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.r, i64 3
  %i.ay = getelementptr inbounds nuw i8, <4 x ptr> %i.ax, <4 x i64> <i64 136, i64 170, i64 204, i64 238>
  %4 = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %5 = insertelement <4 x ptr> %4, ptr %i.l, i64 1
  %6 = insertelement <4 x ptr> %5, ptr %i.m, i64 2
  %7 = insertelement <4 x ptr> %6, ptr %i.n, i64 3
  %8 = getelementptr inbounds nuw i8, <4 x ptr> %7, <4 x i64> <i64 0, i64 34, i64 68, i64 102>
  %9 = shufflevector <4 x ptr> %8, <4 x ptr> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %i.ar, i1 false)
  %i.az = extractelement <8 x ptr> %9, i64 %first.active.lane
  br label %av_exif_get_tag_name.exit

bb.b:                                             ; preds = %scalar.ph
  br label %av_exif_get_tag_name.exit

scalar.ph:                                        ; preds = %vector.body.interim
  switch i16 %i.j, label %bb.b [
    i16 -14, label %av_exif_get_tag_name.exit
    i16 -15, label %av_exif_get_tag_name.exit.loopexit.fold.split
    i16 -16, label %av_exif_get_tag_name.exit.loopexit.fold.split145
    i16 -17, label %av_exif_get_tag_name.exit.loopexit.fold.split146
    i16 -18, label %av_exif_get_tag_name.exit.loopexit.fold.split147
    i16 -19, label %av_exif_get_tag_name.exit.loopexit.fold.split148
  ]

av_exif_get_tag_name.exit.loopexit.fold.split:    ; preds = %scalar.ph
  br label %av_exif_get_tag_name.exit

av_exif_get_tag_name.exit.loopexit.fold.split145: ; preds = %scalar.ph
  br label %av_exif_get_tag_name.exit

av_exif_get_tag_name.exit.loopexit.fold.split146: ; preds = %scalar.ph
  br label %av_exif_get_tag_name.exit

av_exif_get_tag_name.exit.loopexit.fold.split147: ; preds = %scalar.ph
  br label %av_exif_get_tag_name.exit

av_exif_get_tag_name.exit.loopexit.fold.split148: ; preds = %scalar.ph
  br label %av_exif_get_tag_name.exit

av_exif_get_tag_name.exit:                        ; preds = %bb.b, %av_exif_get_tag_name.exit.loopexit.fold.split, %av_exif_get_tag_name.exit.loopexit.fold.split145, %av_exif_get_tag_name.exit.loopexit.fold.split146, %av_exif_get_tag_name.exit.loopexit.fold.split147, %av_exif_get_tag_name.exit.loopexit.fold.split148, %scalar.ph, %vector.early.exit
  %i.ba = phi ptr [ %i.az, %vector.early.exit ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4624), %scalar.ph ], [ null, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4692), %av_exif_get_tag_name.exit.loopexit.fold.split145 ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4760), %av_exif_get_tag_name.exit.loopexit.fold.split147 ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4658), %av_exif_get_tag_name.exit.loopexit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4726), %av_exif_get_tag_name.exit.loopexit.fold.split146 ], [ getelementptr inbounds nuw (i8, ptr @tag_list, i64 4794), %av_exif_get_tag_name.exit.loopexit.fold.split148 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 20 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.bd = mul i32 %i.bc, 10
  call void @av_bprint_init(ptr noundef nonnull %3, i32 noundef %i.bd, i32 noundef -1) #14
  %i.be = load i8, ptr %spec.store.select, align 1, !tbaa !31
  %.not90 = icmp eq i8 %i.be, 0
  br i1 %.not90, label %bb.d, label %bb.c

bb.c:                                             ; preds = %av_exif_get_tag_name.exit
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.30, ptr noundef nonnull %spec.store.select) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %av_exif_get_tag_name.exit
  %.not91 = icmp eq ptr %i.ba, null
  br i1 %.not91, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ba) #14
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bf = load i16, ptr %i.i, align 8, !tbaa !37
  %i.bg = zext i16 %i.bf to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.32, i32 noundef %i.bg) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #14 ; 22 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.bk = mul i32 %i.bj, 10
  call void @av_bprint_init(ptr noundef nonnull %3, i32 noundef %i.bk, i32 noundef -1) #14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !24 ; 2 uses
  switch i32 %i.bm, label %bb.p [
    i32 13, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.k
    i32 5, label %bb.l
    i32 10, label %bb.l
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 2, label %bb.n
    i32 7, label %bb.o
    i32 1, label %bb.o
    i32 6, label %.preheader
  ]

.preheader:                                       ; preds = %bb.h
  %i.bn = load i32, ptr %i.bb, align 8, !tbaa !42
  %.not43 = icmp eq i32 %i.bn, 0
  br i1 %.not43, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !31
  %i.br = sext i8 %i.bq to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.8, i32 noundef %i.br) #14
  %i.bs = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.bt = icmp ugt i32 %i.bs, 1
  br i1 %i.bt, label %.peel.next, label %thread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bw = call fastcc i32 @exif_ifd_to_dict(ptr noundef %i.bu, ptr noundef nonnull %i.bv, ptr noundef %2) ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.thread10, label %thread-pre-split

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.by = load i32, ptr %i.bb, align 8, !tbaa !42
  %.not48 = icmp eq i32 %i.by, 0
  br i1 %.not48, label %thread-pre-split, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !43
  %i.cc = trunc i64 %i.cb to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.8, i32 noundef %i.cc) #14
  %i.cd = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.ce = icmp ugt i32 %i.cd, 1
  br i1 %i.ce, label %.peel.next84, label %thread-pre-split

.peel.next84:                                     ; preds = %.lr.ph31, %.peel.next84
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.peel.next84 ], [ 1, %.lr.ph31 ] ; 3 uses
  %i.cf = and i64 %indvars.iv80, 7
  %.not103 = icmp eq i64 %i.cf, 0
  %i.cg = select i1 %.not103, ptr @.str.35, ptr @.str.34
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv80
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !43
  %i.ck = trunc i64 %i.cj to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.cg, i32 noundef %i.ck) #14
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.cl = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next81, %i.cm
  br i1 %i.cn, label %.peel.next84, label %thread-pre-split, !llvm.loop !83

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.co = load i32, ptr %i.bb, align 8, !tbaa !42
  %.not47 = icmp eq i32 %i.co, 0
  br i1 %.not47, label %thread-pre-split, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !43
  %i.cs = trunc i64 %i.cr to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef %i.cs) #14
  %i.ct = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.cu = icmp ugt i32 %i.ct, 1
  br i1 %i.cu, label %.peel.next78, label %thread-pre-split

.peel.next78:                                     ; preds = %.lr.ph29, %.peel.next78
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.peel.next78 ], [ 1, %.lr.ph29 ] ; 3 uses
  %i.cv = and i64 %indvars.iv74, 7
  %.not101 = icmp eq i64 %i.cv, 0
  %i.cw = select i1 %.not101, ptr @.str.35, ptr @.str.34
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv74
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !43
  %i.da = trunc i64 %i.cz to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.cw, i32 noundef %i.da) #14
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.db = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next75, %i.dc
  br i1 %i.dd, label %.peel.next78, label %thread-pre-split, !llvm.loop !84

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.de = load i32, ptr %i.bb, align 8, !tbaa !42
  %.not46 = icmp eq i32 %i.de, 0
  br i1 %.not46, label %thread-pre-split, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !31 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !52
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !53
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8, i32 noundef %i.dh, i32 noundef %i.dj) #14
  %i.dk = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.dl = icmp ugt i32 %i.dk, 1
  br i1 %i.dl, label %.peel.next72, label %thread-pre-split

.peel.next72:                                     ; preds = %.lr.ph27, %.peel.next72
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.peel.next72 ], [ 1, %.lr.ph27 ] ; 3 uses
  %i.dm = and i64 %indvars.iv68, 3
  %.not99 = icmp eq i64 %i.dm, 0
  %i.dn = select i1 %.not99, ptr @.str.35, ptr @.str.34
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !31
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv68 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !53
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.dn, i32 noundef %i.dq, i32 noundef %i.ds) #14
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.dt = load i32, ptr %i.bb, align 8, !tbaa !42
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next69, %i.du
end_hunk_1
