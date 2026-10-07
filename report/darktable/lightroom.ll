Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/lightroom?download=true
inline.NumInlined: 86
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
@.str.16 = private unnamed_addr constant [29 x i8] c"http://ns.adobe.com/xap/1.0/\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"http://ns.adobe.com/exif/1.0/\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"http://ns.adobe.com/lightroom/1.0/\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"rdf\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"http://www.w3.org/1999/02/22-rdf-syntax-ns#\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"//%s:*\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"//@%s:*\00", align 1
@__const.dt_lightroom_import.pci = private unnamed_addr constant %struct.dt_iop_colorin_params_v1_t { [100 x i8] c"cmatrix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"colorin\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"clipping\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"grain\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"vignette\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"spots\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"tonecurve\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"colorzones\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"splittoning\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"bilat\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"rating\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.39 = private unnamed_addr constant [40 x i8] c"[signal] raise %s; %s:%d, function %s()\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"DT_SIGNAL_GEOTAG_CHANGED\00", align 1
@.str.41 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/darktable/darktable/src/develop/lightroom.c\00", align 1
@__FUNCTION__.dt_lightroom_import = private unnamed_addr constant [20 x i8] c"dt_lightroom_import\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"geotagging\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"color label\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"%s has been imported\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"%s have been imported\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"DT_SIGNAL_DEVELOP_HISTORY_CHANGE\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"hierarchicalSubject\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"RetouchInfo\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"ToneCurvePV2012\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"creator\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"publisher\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"rights\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"CropTop\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"CropRight\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"CropLeft\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"CropBottom\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"CropAngle\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"ImageWidth\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"HasCrop\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"Blacks2012\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"Exposure2012\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"PostCropVignetteAmount\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"PostCropVignetteMidpoint\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"PostCropVignetteStyle\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"PostCropVignetteFeather\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"PostCropVignetteRoundness\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"GrainAmount\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"GrainFrequency\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"ParametricShadows\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"ParametricDarks\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"ParametricLights\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"ParametricHighlights\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"ParametricShadowSplit\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"ParametricMidtoneSplit\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"ParametricHighlightSplit\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"ToneCurveName2012\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"Medium Contrast\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"Strong Contrast\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"SaturationAdjustmentRed\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"SaturationAdjustmentOrange\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"SaturationAdjustmentYellow\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"SaturationAdjustmentGreen\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"SaturationAdjustmentAqua\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"SaturationAdjustmentBlue\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"SaturationAdjustmentPurple\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"SaturationAdjustmentMagenta\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"LuminanceAdjustmentRed\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"LuminanceAdjustmentOrange\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"LuminanceAdjustmentYellow\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"LuminanceAdjustmentGreen\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"LuminanceAdjustmentAqua\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"LuminanceAdjustmentBlue\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"LuminanceAdjustmentPurple\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"LuminanceAdjustmentMagenta\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"HueAdjustmentRed\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"HueAdjustmentOrange\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"HueAdjustmentYellow\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"HueAdjustmentGreen\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"HueAdjustmentAqua\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"HueAdjustmentBlue\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"HueAdjustmentPurple\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"HueAdjustmentMagenta\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"SplitToningShadowHue\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"SplitToningShadowSaturation\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"SplitToningHighlightHue\00", align 1
@.str.114 = private unnamed_addr constant [31 x i8] c"SplitToningHighlightSaturation\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"SplitToningBalance\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"Clarity2012\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"Rating\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"GPSLatitudeRef\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"GPSLongitudeRef\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"GPSLatitude\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"GPSLongitude\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"Label\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"DT_SIGNAL_TAG_CHANGED\00", align 1
@__FUNCTION__._lrop = private unnamed_addr constant [6 x i8] c"_lrop\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"centerX\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"centerY\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"sourceState\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"sourceX\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"sourceY\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"%d, %d\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"Xmp.dc.title\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"Xmp.dc.description\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"Xmp.dc.creator\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"Xmp.dc.rights\00", align 1
@__const.lr2dt_blacks.lr2dt_blacks_table = private unnamed_addr constant [5 x %struct.lr2dt] [%struct.lr2dt { float -1.000000e+02, float 2.000000e-02 }, %struct.lr2dt { float -5.000000e+01, float 5.000000e-03 }, %struct.lr2dt zeroinitializer, %struct.lr2dt { float 5.000000e+01, float -5.000000e-03 }, %struct.lr2dt { float 1.000000e+02, float f0xBC23D70A }], align 16
@__const.lr2dt_vignette_gain.lr2dt_vignette_table = private unnamed_addr constant [5 x %struct.lr2dt] [%struct.lr2dt { float -1.000000e+02, float -1.000000e+00 }, %struct.lr2dt { float -5.000000e+01, float f0xBF333333 }, %struct.lr2dt zeroinitializer, %struct.lr2dt { float 5.000000e+01, float 5.000000e-01 }, %struct.lr2dt { float 1.000000e+02, float 1.000000e+00 }], align 16
@__const.lr2dt_vignette_midpoint.lr2dt_vignette_table = private unnamed_addr constant [5 x %struct.lr2dt] [%struct.lr2dt { float 0.000000e+00, float 7.400000e+01 }, %struct.lr2dt { float 4.000000e+00, float 7.500000e+01 }, %struct.lr2dt { float 2.500000e+01, float 8.500000e+01 }, %struct.lr2dt { float 5.000000e+01, float 1.000000e+02 }, %struct.lr2dt { float 1.000000e+02, float 1.000000e+02 }], align 16
@__const.lr2dt_grain_amount.lr2dt_grain_table = private unnamed_addr constant [4 x %struct.lr2dt] [%struct.lr2dt zeroinitializer, %struct.lr2dt { float 2.500000e+01, float 2.000000e+01 }, %struct.lr2dt { float 5.000000e+01, float 4.000000e+01 }, %struct.lr2dt { float 1.000000e+02, float 8.000000e+01 }], align 16
@__const.lr2dt_grain_frequency.lr2dt_grain_table = private unnamed_addr constant [4 x %struct.lr2dt] [%struct.lr2dt { float 0.000000e+00, float 1.000000e+02 }, %struct.lr2dt { float 5.000000e+01, float 1.000000e+02 }, %struct.lr2dt { float 7.500000e+01, float 4.000000e+02 }, %struct.lr2dt { float 1.000000e+02, float 8.000000e+02 }], align 16
@__const.lr2dt_splittoning_balance.lr2dt_splittoning_table = private unnamed_addr constant [3 x %struct.lr2dt] [%struct.lr2dt { float -1.000000e+02, float 1.000000e+02 }, %struct.lr2dt zeroinitializer, %struct.lr2dt { float 1.000000e+02, float 0.000000e+00 }], align 16
@__const.lr2dt_clarity.lr2dt_clarity_table = private unnamed_addr constant [3 x %struct.lr2dt] [%struct.lr2dt { float -1.000000e+02, float -6.500000e-01 }, %struct.lr2dt zeroinitializer, %struct.lr2dt { float 1.000000e+02, float 6.500000e-01 }], align 16
@.str.142 = private unnamed_addr constant [41 x i8] c"[sql] %s:%d, function %s(): prepare \22%s\22\00", align 1
@__FUNCTION__.dt_add_hist = private unnamed_addr constant [12 x i8] c"dt_add_hist\00", align 1
@.str.143 = private unnamed_addr constant [51 x i8] c"SELECT COUNT(*) FROM main.history WHERE imgid = ?1\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.144 = private unnamed_addr constant [53 x i8] c"sqlite3 error: %s:%d, function %s(), query \22%s\22: %s\0A\00", align 1
@.str.145 = private unnamed_addr constant [41 x i8] c"sqlite3 error: %s:%d, function %s(): %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [188 x i8] c"INSERT INTO main.history  (imgid, num, module, operation, op_params, enabled,   blendop_params, blendop_version, multi_priority, multi_name) VALUES (?1, ?2, ?3, ?4, ?5, 1, ?6, ?7, 0, ' ')\00", align 1
@.str.147 = private unnamed_addr constant [157 x i8] c"UPDATE main.images SET history_end = (SELECT IFNULL(MAX(num) + 1, 0)                    FROM main.history                    WHERE imgid = ?1) WHERE id = ?1\00", align 1
@switch.table.dt_lightroom_import = private unnamed_addr constant [7 x i8] c"\02\03\01\04\05\07\06", align 4

; Function Attrs: nounwind uwtable
define noalias ptr @dt_get_lightroom_xmp(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 1, ptr %i.b, align 4, !tbaa !11
  call void @dt_image_full_path(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull %i.b) #12
  %i.c = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #13 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %g_strdup_inline.exit7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store i32 7368056, ptr %i.e, align 1
  %i.f = call i32 @g_file_test(ptr noundef nonnull %i.a, i32 noundef 16) #12
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %g_strdup_inline.exit7.sink.split

bb.c:                                             ; preds = %bb.b
  store i32 5262680, ptr %i.e, align 1
  %i.g = call i32 @g_file_test(ptr noundef nonnull %i.a, i32 noundef 16) #12
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %g_strdup_inline.exit7, label %g_strdup_inline.exit7.sink.split

g_strdup_inline.exit7.sink.split:                 ; preds = %bb.c, %bb.b
  %i.h = call noalias ptr @g_strdup(ptr noundef nonnull %i.a) #12
  br label %g_strdup_inline.exit7

g_strdup_inline.exit7:                            ; preds = %g_strdup_inline.exit7.sink.split, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.h, %g_strdup_inline.exit7.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @dt_image_full_path(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @g_file_test(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_lightroom_import(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 27 uses
  %i.b = alloca i32, align 4                      ; 21 uses
  %3 = alloca %struct.lr_data_t, align 8          ; 97 uses
  %i.c = alloca [50 x i8], align 16               ; 36 uses
  %4 = alloca %struct.dt_iop_colorin_params_v1_t, align 4 ; 4 uses
  %5 = alloca %struct.dt_image_geoloc_t, align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.d = tail call ptr @dt_get_lightroom_xmp(i32 noundef %0) ; 11 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not264 = icmp eq i32 %2, 0
  br i1 %.not264, label %bb.c, label %bb.cr

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #12
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.e) #12
  br label %bb.cr

bb.d:                                             ; preds = %bb.a
  %i.f = tail call ptr @xmlReadFile(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 0) #12 ; 21 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  br label %bb.cr

bb.f:                                             ; preds = %bb.d
  %i.h = tail call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  br label %bb.cr

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = tail call i32 @xmlStrcmp(ptr noundef %i.k, ptr noundef nonnull @.str.3) #12
  %.not265 = icmp eq i32 %i.l, 0
  br i1 %.not265, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not287 = icmp eq i32 %2, 0
  br i1 %.not287, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #12
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.m, ptr noundef nonnull %i.d) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  br label %bb.cr

bb.l:                                             ; preds = %bb.h
  %i.n = tail call ptr @xmlXPathNewContext(ptr noundef nonnull %i.f) #12 ; 25 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  br label %bb.cr

bb.n:                                             ; preds = %bb.l
  %i.p = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #12 ; 0 uses
  %i.q = tail call ptr @xmlXPathEvalExpression(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.n) #12 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not286 = icmp eq i32 %2, 0
  br i1 %.not286, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.s = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #12
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.s, ptr noundef nonnull %i.d) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @xmlXPathFreeContext(ptr noundef nonnull %i.n) #12
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  br label %bb.cr

bb.r:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 3 uses
  %.not266 = icmp eq ptr %i.u, null
  br i1 %.not266, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = load i32, ptr %i.u, align 8, !tbaa !28
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = tail call ptr @xmlNodeListGetString(ptr noundef nonnull %i.f, ptr noundef %i.ab, i32 noundef 1) #12 ; 4 uses
  %i.ad = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.8) #13
  %.not267 = icmp eq ptr %i.ad, null
  br i1 %.not267, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.9) #13
  %.not268 = icmp eq ptr %i.ae, null
  br i1 %.not268, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call void @xmlXPathFreeContext(ptr noundef nonnull %i.n) #12
  tail call void @xmlXPathFreeObject(ptr noundef nonnull %i.q) #12
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  %i.af = load ptr, ptr @xmlFree, align 8, !tbaa !32
  tail call void %i.af(ptr noundef nonnull %i.ac) #12
  %.not269 = icmp eq i32 %2, 0
  br i1 %.not269, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ag = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #12
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ag, ptr noundef nonnull %i.d) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.v
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  br label %bb.cr

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.ah = load ptr, ptr @xmlFree, align 8, !tbaa !32
  tail call void %i.ah(ptr noundef nonnull %i.ac) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s, %bb.r
  %i.ai = phi i1 [ true, %bb.x ], [ false, %bb.s ], [ false, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 816
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 1360
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1524
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 1724
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1752
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1768
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 1772
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1776
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 1780
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1784 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1784) %3, i8 0, i64 1784, i1 false)
  store <4 x double> splat (double +qnan), ptr %i.ax, align 8, !tbaa !148
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 2 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1820 ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1824 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 1828 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1832
  store <2 x float> splat (float +qnan), ptr %i.bb, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1836 ; 3 uses
  store i32 0, ptr %i.bd, align 4, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1840 ; 3 uses
  store i32 0, ptr %i.be, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1844 ; 4 uses
  store i32 1, ptr %i.bf, align 4, !tbaa !52
  %i.bg = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #12 ; 0 uses
  %i.bh = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #12 ; 0 uses
  %i.bi = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.bj = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #12 ; 0 uses
  %i.bk = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12 ; 0 uses
  %i.bl = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #12 ; 0 uses
  %i.bm = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.10) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.12) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.14) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.14) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
end_hunk_0
begin_hunk_1_@dt_lightroom_import:bb.a
  %.5246 = phi i32 [ 1, %bb.bc ], [ %.4245, %bb.ax ] ; 2 uses
  %i.id = load i32, ptr %i.ao, align 8
  %i.ie = icmp ne i32 %i.id, 0
  %or.cond28 = select i1 %i.bz, i1 %i.ie, i1 false
  br i1 %or.cond28, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.if = load i32, ptr %i.bf, align 4, !tbaa !52
  %i.ig = icmp ugt i32 %i.if, 4
  br i1 %i.ig, label %.preheader321, label %.thread387

.preheader321:                                    ; preds = %bb.be
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !59 ; 4 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph, label %.thread387

.lr.ph:                                           ; preds = %.preheader321
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ii to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.il = icmp eq i32 %i.ii, 1
  br i1 %i.il, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bf ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bf ]
  %i.im = getelementptr inbounds nuw [20 x i8], ptr %i.ik, i64 %indvars.iv ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !61
  %i.ip = load float, ptr %i.im, align 8, !tbaa !62
  %i.iq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ip
  store float %i.iq, ptr %i.in, align 4, !tbaa !61
  store float %i.io, ptr %i.im, align 8, !tbaa !62
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12 ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !63
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.iu = load float, ptr %i.it, align 8, !tbaa !64
  %i.iv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iu
  store float %i.iv, ptr %i.ir, align 4, !tbaa !63
  store float %i.is, ptr %i.it, align 8, !tbaa !64
  %i.iw = getelementptr inbounds nuw [20 x i8], ptr %i.ik, i64 %indvars.iv ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 20 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !61
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !62
  %i.jb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ja
  store float %i.jb, ptr %i.iy, align 8, !tbaa !61
  store float %i.iz, ptr %i.ix, align 4, !tbaa !62
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 8, !tbaa !63
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 28 ; 2 uses
  %i.jf = load float, ptr %i.je, align 4, !tbaa !64
  %i.jg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jf
  store float %i.jg, ptr %i.jc, align 8, !tbaa !63
  store float %i.jd, ptr %i.je, align 4, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread387.loopexit.unr-lcssa, label %bb.bf

.thread387.loopexit.unr-lcssa:                    ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread387, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread387.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.thread387.loopexit.unr-lcssa ]
  %lcmp.mod396 = trunc i32 %i.ii to i1
  call void @llvm.assume(i1 %lcmp.mod396)
  %i.jh = getelementptr inbounds nuw [20 x i8], ptr %i.ik, i64 %indvars.iv.epil.init ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !61
  %i.jk = load float, ptr %i.jh, align 4, !tbaa !62
  %i.jl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  store float %i.jl, ptr %i.ji, align 4, !tbaa !61
  store float %i.jj, ptr %i.jh, align 4, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 12 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !63
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !64
  %i.jq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jp
  store float %i.jq, ptr %i.jm, align 4, !tbaa !63
  store float %i.jn, ptr %i.jo, align 4, !tbaa !64
  br label %.thread387

.thread387:                                       ; preds = %.epil.preheader, %.thread387.loopexit.unr-lcssa, %bb.be, %.preheader321
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 172
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.jr, i32 noundef 644, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.bz, label %bb.bh, label %.thread309

bb.bh:                                            ; preds = %.thread387, %bb.bg
  %.6389 = phi i32 [ 1, %.thread387 ], [ %.5246, %bb.bg ]
  %i.js = load i32, ptr %i.ap, align 8, !tbaa !65 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 1332
  %i.ju = load <4 x i32>, ptr %i.jt, align 4      ; 3 uses
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.js, i64 3
  %.fr = freeze <4 x i32> %i.jv
  %i.jw = icmp ne <4 x i32> %.fr, zeroinitializer ; 2 uses
  %i.jx = extractelement <4 x i32> %i.ju, i64 3
  %i.jy = icmp ne i32 %i.jx, 0
  %i.jz = bitcast <4 x i1> %i.jw to i4
  %i.ka = icmp ne i4 %i.jz, 0
  %op.rdx = select i1 %i.ka, i1 true, i1 %i.jy
  br i1 %op.rdx, label %.preheader320.preheader, label %bb.bn

.preheader320.preheader:                          ; preds = %bb.bh
  %i.kb = icmp eq i32 %i.js, 3                    ; 2 uses
  %i.kc = load i32, ptr %i.aq, align 4
  %i.kd = select i1 %i.kb, i32 %i.kc, i32 6       ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 1300
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !11
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store <4 x i32> <i32 7, i32 7, i32 0, i32 0>, ptr %i.kf, align 8, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 1320
  store i32 0, ptr %i.kg, align 8, !tbaa !11
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 1324
  store i32 1, ptr %i.kh, align 4, !tbaa !158
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 1328
  store i32 0, ptr %i.ki, align 8, !tbaa !159
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 980
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 1012
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 1028
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.kj, align 4, !tbaa !49
  store <4 x float> <float f0x3F333333, float f0x3F333333, float 9.200000e-01, float 9.200000e-01>, ptr %i.kk, align 4, !tbaa !49
  store <2 x float> splat (float 1.000000e+00), ptr %i.kl, align 4, !tbaa !49
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 1140
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 1172
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 1188
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.km, align 4, !tbaa !49
  store <4 x float> <float f0x3F333333, float f0x3F333333, float 9.200000e-01, float 9.200000e-01>, ptr %i.kn, align 4, !tbaa !49
  store <2 x float> splat (float 1.000000e+00), ptr %i.ko, align 4, !tbaa !49
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 820 ; 5 uses
  %i.kq = extractelement <4 x i1> %i.jw, i64 3
  br i1 %i.kq, label %.preheader317, label %.thread

.preheader317:                                    ; preds = %.preheader320.preheader
  %i.kr = icmp sgt i32 %i.kd, 0
  br i1 %i.kr, label %.lr.ph329, label %._crit_edge

.lr.ph329:                                        ; preds = %.preheader317
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 1364 ; 3 uses
  %wide.trip.count353 = zext nneg i32 %i.kd to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.kd, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph329
  %n.vec = and i64 %wide.trip.count353, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.kt = or disjoint i64 %index, 4               ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %index
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kt
  %wide.vec = load <8 x i32>, ptr %i.ku, align 4, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec390 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec391 = load <8 x i32>, ptr %i.kv, align 4, !tbaa !11 ; 2 uses
  %strided.vec392 = shufflevector <8 x i32> %wide.vec391, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec393 = shufflevector <8 x i32> %wide.vec391, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.kw = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec to <4 x double>
  %i.kx = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec392 to <4 x double>
  %i.ky = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.kw, splat (double f0x3F70101010101010)
  %i.kz = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.kx, splat (double f0x3F70101010101010)
  %i.la = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ky to <4 x float>
  %i.lb = fptrunc reassoc nsz arcp contract afn <4 x double> %i.kz to <4 x float>
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %index
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kt
  %i.le = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec390 to <4 x double>
  %i.lf = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec393 to <4 x double>
  %i.lg = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.le, splat (double f0x3F70101010101010)
  %i.lh = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.lf, splat (double f0x3F70101010101010)
  %i.li = fptrunc reassoc nsz arcp contract afn <4 x double> %i.lg to <4 x float>
  %i.lj = fptrunc reassoc nsz arcp contract afn <4 x double> %i.lh to <4 x float>
  %interleaved.vec = shufflevector <4 x float> %i.la, <4 x float> %i.li, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.lc, align 4, !tbaa !49
  %interleaved.vec394 = shufflevector <4 x float> %i.lb, <4 x float> %i.lj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec394, ptr %i.ld, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count353
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph329, %middle.block
  %indvars.iv350.ph = phi i64 [ 0, %.lr.ph329 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.thread:                                          ; preds = %.preheader320.preheader
  store <2 x float> zeroinitializer, ptr %i.kp, align 4, !tbaa !49
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 1348
  %6 = load float, ptr %i.ll, align 4, !tbaa !49  ; 2 uses
  %7 = fmul reassoc nsz arcp contract afn float %6, 5.000000e-01 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 828
  store float %7, ptr %i.lm, align 4, !tbaa !163
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 1352
  %9 = load float, ptr %8, align 8, !tbaa !49     ; 3 uses
  %10 = fpext reassoc nsz arcp contract afn float %9 to double ; 2 uses
  %11 = fsub reassoc nsz arcp contract afn float %9, %6
  %12 = fpext reassoc nsz arcp contract afn float %11 to double
  %13 = fmul reassoc nsz arcp contract afn double %12, 5.000000e-01
  %14 = fsub reassoc nsz arcp contract afn double %10, %13
  %15 = fptrunc reassoc nsz arcp contract afn double %14 to float ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 836
  store float %15, ptr %i.ln, align 4, !tbaa !163
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %17 = load float, ptr %16, align 4, !tbaa !49   ; 2 uses
  %18 = fsub reassoc nsz arcp contract afn float %17, %9
  %19 = fpext reassoc nsz arcp contract afn float %18 to double
  %20 = fmul reassoc nsz arcp contract afn double %19, 5.000000e-01
  %21 = fadd reassoc nsz arcp contract afn double %20, %10
  %22 = fptrunc reassoc nsz arcp contract afn double %21 to float ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 844
  store float %22, ptr %23, align 4, !tbaa !163
  %24 = fpext reassoc nsz arcp contract afn float %17 to double
  %i.lo = fmul reassoc nsz arcp contract afn double %24, 5.000000e-01
  %i.lp = fadd reassoc nsz arcp contract afn double %i.lo, 5.000000e-01
  %i.lq = fptrunc reassoc nsz arcp contract afn double %i.lp to float ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 852
  store float %i.lq, ptr %i.lr, align 4, !tbaa !163
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 860
  store <2 x float> splat (float 1.000000e+00), ptr %i.ls, align 4, !tbaa !49
  br label %bb.bi

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %scalar.ph ], [ %indvars.iv350.ph, %scalar.ph.preheader ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv350
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv350
  %i.lv = load <2 x i32>, ptr %i.lt, align 4, !tbaa !11
  %i.lw = sitofp <2 x i32> %i.lv to <2 x double>
  %i.lx = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.lw, splat (double f0x3F70101010101010)
  %i.ly = fptrunc <2 x double> %i.lx to <2 x float>
  store <2 x float> %i.ly, ptr %i.lu, align 4, !tbaa !49
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %._crit_edge, label %scalar.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader317
  br i1 %i.kb, label %bb.bm, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 832
  %.phi.trans.insert364 = getelementptr inbounds nuw i8, ptr %3, i64 840
  %.phi.trans.insert366 = getelementptr inbounds nuw i8, ptr %3, i64 848
  %.phi.trans.insert368 = getelementptr inbounds nuw i8, ptr %3, i64 856
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !164
  %.pre365 = load float, ptr %.phi.trans.insert364, align 8, !tbaa !164
  %.pre367 = load float, ptr %.phi.trans.insert366, align 8, !tbaa !164
  %.pre369 = load float, ptr %.phi.trans.insert368, align 8, !tbaa !164
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge._crit_edge, %.thread
  %25 = phi float [ %.pre369, %._crit_edge._crit_edge ], [ %i.lq, %.thread ]
  %i.lz = phi float [ %.pre367, %._crit_edge._crit_edge ], [ %22, %.thread ]
  %i.ma = phi float [ %.pre365, %._crit_edge._crit_edge ], [ %15, %.thread ]
  %26 = phi float [ %.pre, %._crit_edge._crit_edge ], [ %7, %.thread ]
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 832 ; 2 uses
  %i.mc = insertelement <4 x float> poison, float %26, i64 0
  %27 = insertelement <4 x float> %i.mc, float %i.ma, i64 1
  %28 = insertelement <4 x float> %27, float %i.lz, i64 2
  %i.md = insertelement <4 x float> %28, float %25, i64 3
  %i.me = fpext <4 x float> %i.md to <4 x double> ; 2 uses
  %i.mf = sitofp <4 x i32> %i.ju to <4 x float>
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 856
  %i.mh = fpext nnan ninf <4 x float> %i.mf to <4 x double>
  %i.mi = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.mh, splat (double 1.000000e-02)
  %i.mj = fmul reassoc nsz arcp contract afn <4 x double> %i.mi, %i.me
  %i.mk = fadd reassoc nsz arcp contract afn <4 x double> %i.mj, %i.me
  %i.ml = fptrunc <4 x double> %i.mk to <4 x float> ; 5 uses
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <7 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3>
  call void @llvm.masked.store.v7f32.p0(<7 x float> %i.mm, ptr align 8 %i.mb, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !164
  %i.mn = extractelement <4 x float> %i.ml, i64 0
  %i.mo = extractelement <4 x float> %i.ml, i64 1 ; 2 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ogt float %i.mn, %i.mo
  br i1 %i.mp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store float %i.mo, ptr %i.mb, align 8, !tbaa !164
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mq = extractelement <4 x float> %i.ml, i64 2 ; 2 uses
  %i.mr = extractelement <4 x float> %i.ml, i64 3
  %i.ms = fcmp reassoc nsz arcp contract afn ogt float %i.mq, %i.mr
  br i1 %i.ms, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store float %i.mq, ptr %i.mg, align 8, !tbaa !164
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %._crit_edge
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.32, ptr noundef %i.kp, i32 noundef 512, ptr noundef %i.a, i32 noundef 3, ptr noundef %i.b)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bh, %bb.bm
  %.7 = phi i32 [ 1, %bb.bm ], [ %.6389, %bb.bh ]
  %i.mt = load i32, ptr %i.ar, align 4
  %.not314 = icmp eq i32 %i.mt, 0
  br i1 %.not314, label %bb.bo, label %.preheader

.preheader:                                       ; preds = %bb.bn
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 1528 ; 2 uses
  store i32 2, ptr %i.mu, align 8, !tbaa !165
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 1532
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.mv, align 4, !tbaa !49
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 1564
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.mw, align 4, !tbaa !49
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 1596
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.mx, align 4, !tbaa !49
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.mu, i32 noundef 196, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader, %bb.bn
  %.8 = phi i32 [ 1, %.preheader ], [ %.7, %bb.bn ]
  %i.my = load i32, ptr %i.as, align 8
  %.not315 = icmp eq i32 %i.my, 0
  br i1 %.not315, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 1748
  store float 5.000000e+01, ptr %i.na, align 4, !tbaa !166
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.34, ptr noundef %i.mz, i32 noundef 24, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.9 = phi i32 [ 1, %bb.bp ], [ %.8, %bb.bo ]
  %i.nb = load i32, ptr %i.at, align 8
  %.not316 = icmp eq i32 %i.nb, 0
  br i1 %.not316, label %.thread309, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 1756 ; 2 uses
  store <2 x float> splat (float 1.000000e+02), ptr %i.nc, align 4, !tbaa !49
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.35, ptr noundef %i.nc, i32 noundef 12, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %.thread309

.thread309:                                       ; preds = %bb.bg, %bb.br, %bb.bq
  %.10 = phi i32 [ 1, %bb.br ], [ %.9, %bb.bq ], [ %.5246, %bb.bg ]
  %i.nd = load i32, ptr %i.au, align 4, !tbaa !66
  %.not277 = icmp eq i32 %i.nd, 0
  br i1 %.not277, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %.thread309
  %i.ne = load i8, ptr %i.a, align 16, !tbaa !67
  %.not278 = icmp eq i8 %i.ne, 0
  br i1 %.not278, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nf = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ng = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #12
  %i.nh = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.ng, i64 noundef 256) #12 ; 0 uses
  %i.ni = load i32, ptr %i.b, align 4, !tbaa !11
  %i.nj = add nsw i32 %i.ni, 1
  store i32 %i.nj, ptr %i.b, align 4, !tbaa !11
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread309
  %i.nk = load i32, ptr %i.aw, align 4
  %i.nl = icmp eq i32 %i.nk, 0
  %or.cond56.not = select i1 %i.bz, i1 true, i1 %i.nl
  br i1 %or.cond56.not, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nm = load i32, ptr %i.av, align 8, !tbaa !68
  call void @dt_ratings_apply_on_image(i32 noundef %0, i32 noundef %i.nm, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.nn = load i8, ptr %i.a, align 16, !tbaa !67
  %.not279 = icmp eq i8 %i.nn, 0
  br i1 %.not279, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.no = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.np = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #12
  %i.nq = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.np, i64 noundef 256) #12 ; 0 uses
  %i.nr = load i32, ptr %i.b, align 4, !tbaa !11
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.b, align 4, !tbaa !11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.nt = load i32, ptr %i.ay, align 8
  %i.nu = icmp eq i32 %i.nt, 0
  %or.cond59.not = select i1 %i.bz, i1 true, i1 %i.nu
  br i1 %or.cond59.not, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.nv = load <2 x double>, ptr %i.ax, align 8, !tbaa !148
  %i.nw = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.nw, ptr %5, align 16, !tbaa !148
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double +qnan, ptr %i.nx, align 16, !tbaa !167
  call void @dt_image_set_location(i32 noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #12
  %i.ny = sext i32 %0 to i64
  %i.nz = inttoptr i64 %i.ny to ptr
  %i.oa = call ptr @g_list_prepend(ptr noundef null, ptr noundef %i.nz) #12
  %i.ob = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !113
  %i.oc = trunc i32 %i.ob to i1
  %i.od = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.oe = icmp ne i32 %i.od, 0
  %or.cond61 = select i1 %i.oc, i1 %i.oe, i1 false
  br i1 %or.cond61, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.of = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !114
  %i.og = and i32 %i.of, 1048576
  %.not280 = icmp eq i32 %i.og, 0
  br i1 %.not280, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1595, ptr noundef nonnull @__FUNCTION__.dt_lightroom_import) #12
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.ca
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !115
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.oh, i32 noundef 10, ptr noundef %i.oa, i32 noundef 0) #12
  %i.oi = load i8, ptr %i.a, align 16, !tbaa !67
  %.not281 = icmp eq i8 %i.oi, 0
  br i1 %.not281, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oj = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ok = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #12
  %i.ol = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.ok, i64 noundef 256) #12 ; 0 uses
  %i.om = load i32, ptr %i.b, align 4, !tbaa !11
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bz
  %i.oo = load i32, ptr %i.ba, align 8
  %i.op = icmp eq i32 %i.oo, 0
  %or.cond64.not = select i1 %i.bz, i1 true, i1 %i.op
  br i1 %or.cond64.not, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oq = load i32, ptr %i.az, align 4, !tbaa !47
  call void @dt_colorlabels_set_label(i32 noundef %0, i32 noundef %i.oq) #12
  %i.or = load i8, ptr %i.a, align 16, !tbaa !67
  %.not282 = icmp eq i8 %i.or, 0
  br i1 %.not282, label %.thread312, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.os = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %.thread312

.thread312:                                       ; preds = %bb.ch, %bb.ci
  %i.ot = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #12
  %i.ou = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.ot, i64 noundef 256) #12 ; 0 uses
  br label %bb.cq

end_hunk_1
