Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_dirinfo?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0
@.str.199 = private unnamed_addr constant [12 x i8] c"FocalLength\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"SubjectArea\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"MakerNote\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"UserComment\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"SubSecTime\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"SubSecTimeOriginal\00", align 1
@.str.205 = private unnamed_addr constant [20 x i8] c"SubSecTimeDigitized\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"Temperature\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"Humidity\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"WaterDepth\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"Acceleration\00", align 1
@.str.211 = private unnamed_addr constant [21 x i8] c"CameraElevationAngle\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"FlashpixVersion\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"PixelXDimension\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"PixelYDimension\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"RelatedSoundFile\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"FlashEnergy\00", align 1
@.str.218 = private unnamed_addr constant [25 x i8] c"SpatialFrequencyResponse\00", align 1
@.str.219 = private unnamed_addr constant [22 x i8] c"FocalPlaneXResolution\00", align 1
@.str.220 = private unnamed_addr constant [22 x i8] c"FocalPlaneYResolution\00", align 1
@.str.221 = private unnamed_addr constant [25 x i8] c"FocalPlaneResolutionUnit\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"SubjectLocation\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"ExposureIndex\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"SensingMethod\00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"FileSource\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"SceneType\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"CFAPattern\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"CustomRendered\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"ExposureMode\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"WhiteBalance\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"DigitalZoomRatio\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"FocalLengthIn35mmFilm\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"SceneCaptureType\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"GainControl\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"Sharpness\00", align 1
@.str.238 = private unnamed_addr constant [25 x i8] c"DeviceSettingDescription\00", align 1
@.str.239 = private unnamed_addr constant [21 x i8] c"SubjectDistanceRange\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"ImageUniqueID\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"CameraOwnerName\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"BodySerialNumber\00", align 1
@.str.243 = private unnamed_addr constant [18 x i8] c"LensSpecification\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"LensMake\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"LensModel\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"LensSerialNumber\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"CompositeImage\00", align 1
@.str.249 = private unnamed_addr constant [34 x i8] c"SourceImageNumberOfCompositeImage\00", align 1
@.str.250 = private unnamed_addr constant [36 x i8] c"SourceExposureTimesOfCompositeImage\00", align 1
@gpsFields = internal constant [32 x %struct._TIFFField] [%struct._TIFFField { i32 0, i16 4, i16 4, i32 1, i32 0, i32 16, i16 65, i8 1, i8 0, ptr @.str.252, ptr null }, %struct._TIFFField { i32 1, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.253, ptr null }, %struct._TIFFField { i32 2, i16 3, i16 3, i32 5, i32 0, i32 25, i16 65, i8 1, i8 0, ptr @.str.254, ptr null }, %struct._TIFFField { i32 3, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.255, ptr null }, %struct._TIFFField { i32 4, i16 3, i16 3, i32 5, i32 0, i32 25, i16 65, i8 1, i8 0, ptr @.str.256, ptr null }, %struct._TIFFField { i32 5, i16 1, i16 1, i32 1, i32 0, i32 2, i16 65, i8 1, i8 0, ptr @.str.257, ptr null }, %struct._TIFFField { i32 6, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.258, ptr null }, %struct._TIFFField { i32 7, i16 3, i16 3, i32 5, i32 0, i32 25, i16 65, i8 1, i8 0, ptr @.str.259, ptr null }, %struct._TIFFField { i32 8, i16 -1, i16 -1, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.260, ptr null }, %struct._TIFFField { i32 9, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.261, ptr null }, %struct._TIFFField { i32 10, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.262, ptr null }, %struct._TIFFField { i32 11, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.263, ptr null }, %struct._TIFFField { i32 12, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.264, ptr null }, %struct._TIFFField { i32 13, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.265, ptr null }, %struct._TIFFField { i32 14, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.266, ptr null }, %struct._TIFFField { i32 15, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.267, ptr null }, %struct._TIFFField { i32 16, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.268, ptr null }, %struct._TIFFField { i32 17, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.269, ptr null }, %struct._TIFFField { i32 18, i16 -1, i16 -1, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.270, ptr null }, %struct._TIFFField { i32 19, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.271, ptr null }, %struct._TIFFField { i32 20, i16 3, i16 3, i32 5, i32 0, i32 25, i16 65, i8 1, i8 0, ptr @.str.272, ptr null }, %struct._TIFFField { i32 21, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.273, ptr null }, %struct._TIFFField { i32 22, i16 3, i16 3, i32 5, i32 0, i32 25, i16 65, i8 1, i8 0, ptr @.str.274, ptr null }, %struct._TIFFField { i32 23, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.275, ptr null }, %struct._TIFFField { i32 24, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.276, ptr null }, %struct._TIFFField { i32 25, i16 2, i16 2, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.277, ptr null }, %struct._TIFFField { i32 26, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.278, ptr null }, %struct._TIFFField { i32 27, i16 -1, i16 -1, i32 7, i32 0, i32 28, i16 65, i8 1, i8 1, ptr @.str.279, ptr null }, %struct._TIFFField { i32 28, i16 -1, i16 -1, i32 7, i32 0, i32 28, i16 65, i8 1, i8 1, ptr @.str.280, ptr null }, %struct._TIFFField { i32 29, i16 11, i16 11, i32 2, i32 0, i32 1, i16 65, i8 1, i8 0, ptr @.str.281, ptr null }, %struct._TIFFField { i32 30, i16 1, i16 1, i32 3, i32 0, i32 4, i16 65, i8 1, i8 0, ptr @.str.282, ptr null }, %struct._TIFFField { i32 31, i16 1, i16 1, i32 5, i32 0, i32 11, i16 65, i8 1, i8 0, ptr @.str.283, ptr null }], align 16
@gpsFieldArray = internal constant { i32, i32, i32, [4 x i8], ptr } { i32 2, i32 0, i32 32, [4 x i8] zeroinitializer, ptr @gpsFields }, align 8
@.str.252 = private unnamed_addr constant [10 x i8] c"VersionID\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"LatitudeRef\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"Latitude\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"LongitudeRef\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"Longitude\00", align 1
@.str.257 = private unnamed_addr constant [12 x i8] c"AltitudeRef\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"Altitude\00", align 1
@.str.259 = private unnamed_addr constant [10 x i8] c"TimeStamp\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"Satellites\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.262 = private unnamed_addr constant [12 x i8] c"MeasureMode\00", align 1
@.str.263 = private unnamed_addr constant [4 x i8] c"DOP\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"SpeedRef\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"TrackRef\00", align 1
@.str.267 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.268 = private unnamed_addr constant [16 x i8] c"ImgDirectionRef\00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"ImgDirection\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"MapDatum\00", align 1
@.str.271 = private unnamed_addr constant [16 x i8] c"DestLatitudeRef\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"DestLatitude\00", align 1
@.str.273 = private unnamed_addr constant [17 x i8] c"DestLongitudeRef\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"DestLongitude\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"DestBearingRef\00", align 1
@.str.276 = private unnamed_addr constant [12 x i8] c"DestBearing\00", align 1
@.str.277 = private unnamed_addr constant [16 x i8] c"DestDistanceRef\00", align 1
@.str.278 = private unnamed_addr constant [13 x i8] c"DestDistance\00", align 1
@.str.279 = private unnamed_addr constant [17 x i8] c"ProcessingMethod\00", align 1
@.str.280 = private unnamed_addr constant [16 x i8] c"AreaInformation\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"DateStamp\00", align 1
@.str.282 = private unnamed_addr constant [13 x i8] c"Differential\00", align 1
@.str.283 = private unnamed_addr constant [27 x i8] c"HorizontalPositioningError\00", align 1
@switch.table.TIFFDataWidth = private unnamed_addr constant [19 x i8] c"\01\01\01\02\04\08\01\01\02\04\08\04\08\04\00\00\08\08\08", align 4
@switch.table.TIFFFieldSetGetSize = private unnamed_addr constant [52 x i8] c"\01\01\01\01\02\02\04\04\08\08\04\08\08\04\04\01\01\01\02\02\04\04\08\08\04\08\08\01\01\01\02\02\04\04\08\08\04\08\08\01\01\01\02\02\04\04\08\08\04\08\08\01", align 4
@switch.table.TIFFFieldSetGetCountSize = private unnamed_addr constant [24 x i8] c"\02\02\02\02\02\02\02\02\02\02\02\02\04\04\04\04\04\04\04\04\04\04\04\04", align 4
@switch.table.TIFFMergeFieldInfo = private unnamed_addr constant [18 x i8] c"\02\01\04\06\0A\03\02\05\07\0A\0A\0B\0C\00\00\08\09\0C", align 4
@switch.table.TIFFMergeFieldInfo.2 = private unnamed_addr constant [18 x i8] c"\10\0F\12\14\18\11\10\13\15\18\18\19\1A\00\00\16\17\1A", align 4
@switch.table.TIFFMergeFieldInfo.3 = private unnamed_addr constant [18 x i8] c"\1C\1B\1E $\1D\1C\1F!$$%&\00\00\22#&", align 4
@switch.table.TIFFMergeFieldInfo.4 = private unnamed_addr constant [18 x i8] c"('*,0)(+-0012\00\00./2", align 4
@switch.table._TIFFCheckFieldIsValidForCodec = private unnamed_addr constant [10 x i8] c"\01\01\01\01\00\00\00\01\01\01", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_TIFFGetFields() local_unnamed_addr #0 {
bb.a:
  ret ptr @tiffFieldArray
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_TIFFGetExifFields() local_unnamed_addr #0 {
bb.a:
  ret ptr @exifFieldArray
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_TIFFGetGpsFields() local_unnamed_addr #0 {
bb.a:
  ret ptr @gpsFieldArray
}

; Function Attrs: nounwind uwtable
define void @_TIFFSetupFields(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not22 = icmp eq i64 %i.d, 0
  br i1 %.not22, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.e = phi i64 [ %i.q, %bb.f ], [ %i.d, %bb.b ] ; 3 uses
  %i.f = phi i64 [ %i.s, %bb.f ], [ 0, %bb.b ]
  %.026 = phi i32 [ %i.r, %bb.f ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.m = load i16, ptr %i.l, align 4, !tbaa !31
  %i.n = icmp eq i16 %i.m, 65
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #11
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #11
  %.pre = load i64, ptr %i.c, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %.lr.ph
  %i.q = phi i64 [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %.pre, %bb.e ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.r = add i32 %.026, 1                         ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %.pre28) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = tail call i32 @_TIFFMergeFields(ptr noundef nonnull %0, ptr noundef %i.v, i32 noundef %i.x)
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFFieldIsAnonymous(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32
  ret i32 %i.b
}

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @_TIFFMergeFields(ptr noundef initializes((1248, 1256)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not32 = icmp eq i64 %i.e, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %2 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = tail call ptr @_TIFFCheckRealloc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef 8, ptr noundef nonnull @_TIFFMergeFields.reason) #11
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = zext i32 %2 to i64
  %i.j = tail call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.i, i64 noundef 8, ptr noundef nonnull @_TIFFMergeFields.reason) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !26
  %.not33 = icmp eq ptr %storemerge, null
  br i1 %.not33, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not41 = icmp eq i32 %2, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFMergeFields.module, ptr noundef nonnull @.str.2) #11
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %TIFFFindField.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %TIFFFindField.exit.thread ] ; 2 uses
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37   ; 3 uses
  %3 = load ptr, ptr %i.a, align 8, !tbaa !36     ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %3, align 8, !tbaa !37
  %i.o = icmp eq i32 %i.n, %i.m
  br i1 %i.o, label %TIFFFindField.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.p = load i64, ptr %i.k, align 8, !tbaa !27   ; 4 uses
  %.not24.i.i = icmp eq i64 %i.p, 0
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.i, %tagCompare.exit.us.i
  %.021.i.us.i = phi i64 [ %spec.select46.i, %tagCompare.exit.us.i ], [ %i.p, %bb.i ] ; 2 uses
  %.01620.i.us.i = phi i64 [ %spec.select.i, %tagCompare.exit.us.i ], [ 0, %bb.i ] ; 2 uses
  %i.q = add i64 %.01620.i.us.i, %.021.i.us.i
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = shl i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !37   ; 2 uses
  %.not.i20.us.i = icmp eq i32 %i.m, %i.v
  br i1 %.not.i20.us.i, label %TIFFFindField.exit, label %tagCompare.exit.us.i

tagCompare.exit.us.i:                             ; preds = %.lr.ph.i.us.i
  %i.w = icmp slt i32 %i.m, %i.v                  ; 2 uses
  %i.x = add nuw i64 %i.r, 1
  %spec.select.i = select i1 %i.w, i64 %.01620.i.us.i, i64 %i.x ; 2 uses
  %spec.select46.i = select i1 %i.w, i64 %i.r, i64 %.021.i.us.i ; 2 uses
  %i.y = icmp ult i64 %spec.select.i, %spec.select46.i
  br i1 %i.y, label %.lr.ph.i.us.i, label %.loopexit

TIFFFindField.exit:                               ; preds = %.lr.ph.i.us.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !36
  br label %TIFFFindField.exit.thread

.loopexit:                                        ; preds = %tagCompare.exit.us.i, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %storemerge, i64 %i.p
  store ptr %i.l, ptr %i.z, align 8, !tbaa !28
  %i.aa = add i64 %i.p, 1
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !27
  br label %TIFFFindField.exit.thread

TIFFFindField.exit.thread:                        ; preds = %bb.h, %TIFFFindField.exit, %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %TIFFFindField.exit.thread, %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27
  tail call void @qsort(ptr noundef nonnull %storemerge, i64 noundef %i.ac, i64 noundef 8, ptr noundef nonnull @tagCompare) #11
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.f
  %.028 = phi i32 [ %2, %._crit_edge ], [ 0, %bb.f ]
  ret i32 %.028
}

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @_TIFFCheckRealloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_TIFFCheckMalloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @TIFFFindField(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = icmp eq i32 %i.c, %1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %.not24.i = icmp eq i64 %i.l, 0
  br i1 %.not24.i, label %bsearch.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader, %tagCompare.exit.us
  %.021.i.us = phi i64 [ %spec.select46, %tagCompare.exit.us ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01620.i.us = phi i64 [ %spec.select, %tagCompare.exit.us ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = add i64 %.01620.i.us, %.021.i.us
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = shl i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %.not.i20.us = icmp eq i32 %1, %i.s
  br i1 %.not.i20.us, label %bsearch.exit.thread, label %tagCompare.exit.us

tagCompare.exit.us:                               ; preds = %.lr.ph.i.us
  %i.t = icmp slt i32 %1, %i.s                    ; 2 uses
  %i.u = add nuw i64 %i.o, 1
  %spec.select = select i1 %i.t, i64 %.01620.i.us, i64 %i.u ; 2 uses
  %spec.select46 = select i1 %i.t, i64 %i.o, i64 %.021.i.us ; 2 uses
  %i.v = icmp ult i64 %spec.select, %spec.select46
  br i1 %i.v, label %.lr.ph.i.us, label %bsearch.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.k
  %.021.i = phi i64 [ %.1.i, %bb.k ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.k ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = add i64 %.01620.i, %.021.i
  %i.x = lshr i64 %i.w, 1                         ; 3 uses
  %i.y = shl i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %.not.i20 = icmp eq i32 %1, %i.ab
  br i1 %.not.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ac = sub nsw i32 %1, %i.ab
  br label %tagCompare.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = sub nsw i32 %i.ae, %2
  br label %tagCompare.exit

tagCompare.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = icmp slt i32 %.0.i, 0
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %tagCompare.exit
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bsearch.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add nuw i64 %i.x, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %tagCompare.exit
  %.117.i = phi i64 [ %i.ah, %bb.j ], [ %.01620.i, %tagCompare.exit ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.j ], [ %i.x, %tagCompare.exit ] ; 2 uses
  %i.ai = icmp ult i64 %.117.i, %.1.i
  br i1 %i.ai, label %.lr.ph.i, label %bsearch.exit.thread

bsearch.exit.thread:                              ; preds = %bb.k, %bb.i, %tagCompare.exit.us, %.lr.ph.i.us, %bb.f
  %i.aj = phi ptr [ null, %tagCompare.exit.us ], [ null, %bb.f ], [ %i.r, %.lr.ph.i.us ], [ %i.aa, %bb.i ], [ null, %bb.k ] ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.d, %bb.e, %bsearch.exit.thread
  %.0 = phi ptr [ null, %bb.e ], [ %i.aj, %bsearch.exit.thread ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tagCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 %i.c, %i.d
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  %i.k = sub nsw i32 %i.j, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @_TIFFPrintFieldInfo(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %i.a) #11 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1232
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi i64 [ 0, %.lr.ph ], [ %i.ag, %bb.b ]
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i16, ptr %i.l, align 4, !tbaa !39
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !40
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.u = load i16, ptr %i.t, align 4, !tbaa !31
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %i.x = load i8, ptr %i.w, align 2, !tbaa !41
end_hunk_0
