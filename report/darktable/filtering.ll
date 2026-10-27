Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/filtering?download=true
inline.NumInlined: 310
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
@.str.235 = private unnamed_addr constant [14 x i8] c"rejected only\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"not rated only\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c"\E2\98\85\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"\E2\98\85 \E2\98\85\00", align 1
@.str.239 = private unnamed_addr constant [12 x i8] c"\E2\98\85 \E2\98\85 \E2\98\85\00", align 1
@.str.240 = private unnamed_addr constant [16 x i8] c"\E2\98\85 \E2\98\85 \E2\98\85 \E2\98\85\00", align 1
@.str.241 = private unnamed_addr constant [20 x i8] c"\E2\98\85 \E2\98\85 \E2\98\85 \E2\98\85 \E2\98\85\00", align 1
@.str.242 = private unnamed_addr constant [53 x i8] c"SELECT MIN(aperture), MAX(aperture) FROM main.images\00", align 1
@.str.243 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/aperture.c\00", align 1
@__FUNCTION__._aperture_widget_init = private unnamed_addr constant [22 x i8] c"_aperture_widget_init\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"f/%.1lf\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.246 = private unnamed_addr constant [103 x i8] c"SELECT ROUND(aperture,1), COUNT(*) AS count FROM main.images AS mi WHERE %s GROUP BY ROUND(aperture,1)\00", align 1
@__FUNCTION__._aperture_update = private unnamed_addr constant [17 x i8] c"_aperture_update\00", align 1
@.str.247 = private unnamed_addr constant [61 x i8] c"SELECT MIN(focal_length), MAX(focal_length) FROM main.images\00", align 1
@.str.248 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/focal.c\00", align 1
@__FUNCTION__._focal_widget_init = private unnamed_addr constant [19 x i8] c"_focal_widget_init\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.250 = private unnamed_addr constant [111 x i8] c"SELECT ROUND(focal_length,0), COUNT(*) AS count FROM main.images AS mi WHERE %s GROUP BY ROUND(focal_length,0)\00", align 1
@__FUNCTION__._focal_update = private unnamed_addr constant [14 x i8] c"_focal_update\00", align 1
@.str.251 = private unnamed_addr constant [43 x i8] c"SELECT MIN(iso), MAX(iso) FROM main.images\00", align 1
@.str.252 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/iso.c\00", align 1
@__FUNCTION__._iso_widget_init = private unnamed_addr constant [17 x i8] c"_iso_widget_init\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"%.0lf ISO\00", align 1
@.str.254 = private unnamed_addr constant [94 x i8] c"SELECT ROUND(iso,0), COUNT(*) AS count FROM main.images AS mi WHERE %s GROUP BY ROUND(iso, 0)\00", align 1
@__FUNCTION__._iso_update = private unnamed_addr constant [12 x i8] c"_iso_update\00", align 1
@.str.255 = private unnamed_addr constant [53 x i8] c"SELECT MIN(exposure), MAX(exposure) FROM main.images\00", align 1
@.str.256 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/exposure.c\00", align 1
@__FUNCTION__._exposure_widget_init = private unnamed_addr constant [22 x i8] c"_exposure_widget_init\00", align 1
@.str.257 = private unnamed_addr constant [6 x i8] c"%.6lf\00", align 1
@.str.258 = private unnamed_addr constant [85 x i8] c"SELECT exposure, COUNT(*) AS count FROM main.images AS mi WHERE %s GROUP BY exposure\00", align 1
@__FUNCTION__._exposure_update = private unnamed_addr constant [17 x i8] c"_exposure_update\00", align 1
@.str.259 = private unnamed_addr constant [63 x i8] c"SELECT MIN(exposure_bias), MAX(exposure_bias) FROM main.images\00", align 1
@.str.260 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/exposure_bias.c\00", align 1
@__FUNCTION__._exposure_bias_widget_init = private unnamed_addr constant [27 x i8] c"_exposure_bias_widget_init\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"%+.2f EV\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"%+.2f\00", align 1
@.str.263 = private unnamed_addr constant [113 x i8] c"SELECT ROUND(exposure_bias,2), COUNT(*) AS count FROM main.images AS mi WHERE %s GROUP BY ROUND(exposure_bias,2)\00", align 1
@__FUNCTION__._exposure_bias_update = private unnamed_addr constant [22 x i8] c"_exposure_bias_update\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.265 = private unnamed_addr constant [101 x i8] c"enter camera to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing cameras\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"lens\00", align 1
@.str.267 = private unnamed_addr constant [98 x i8] c"enter lens to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing lenses\00", align 1
@.str.268 = private unnamed_addr constant [14 x i8] c"white balance\00", align 1
@.str.269 = private unnamed_addr constant [115 x i8] c"enter white balance to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing white balances\00", align 1
@.str.270 = private unnamed_addr constant [100 x i8] c"enter flash to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing flashes\00", align 1
@.str.271 = private unnamed_addr constant [17 x i8] c"exposure program\00", align 1
@.str.272 = private unnamed_addr constant [121 x i8] c"enter exposure program to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing exposure programs\00", align 1
@.str.273 = private unnamed_addr constant [14 x i8] c"metering mode\00", align 1
@.str.274 = private unnamed_addr constant [115 x i8] c"enter metering mode to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing metering modes\00", align 1
@.str.275 = private unnamed_addr constant [9 x i8] c"group id\00", align 1
@.str.276 = private unnamed_addr constant [105 x i8] c"enter group id to search.\0Amultiple values can be separated by ','\0A\0Aright-click to get existing group ids\00", align 1
@.str.277 = private unnamed_addr constant [53 x i8] c"click to select\0Actrl+click to select multiple values\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"duplicates\00", align 1
@.str.279 = private unnamed_addr constant [24 x i8] c"duplicates state filter\00", align 1
@_duplicates_names = internal global [4 x ptr] [ptr @.str.221, ptr @.str.282, ptr @.str.283, ptr null], align 16
@.str.280 = private unnamed_addr constant [22 x i8] c"$IMGS_WITH_DUPLICATES\00", align 1
@.str.281 = private unnamed_addr constant [17 x i8] c"$DUPLICATES_ONLY\00", align 1
@.str.282 = private unnamed_addr constant [23 x i8] c"images with duplicates\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"duplicates only\00", align 1
@.str.284 = private unnamed_addr constant [410 x i8] c"SELECT CASE          WHEN dups.min_version = version THEN 0         ELSE 1       END AS orig     , COUNT(*) AS count FROM main.images AS mi JOIN (   SELECT film_id AS f_id        , filename        , MIN(version) AS min_version   FROM main.images   GROUP BY f_id          , filename   HAVING COUNT(*) > 1 ) dups ON mi.film_id = dups.f_id AND mi.filename = dups.filename WHERE %s GROUP BY orig ORDER BY orig ASC\00", align 1
@.str.285 = private unnamed_addr constant [66 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/duplicates.c\00", align 1
@__FUNCTION__._duplicates_update = private unnamed_addr constant [19 x i8] c"_duplicates_update\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@.str.287 = private unnamed_addr constant [11 x i8] c"local copy\00", align 1
@.str.288 = private unnamed_addr constant [26 x i8] c"local copied state filter\00", align 1
@_local_copy_names = internal global [4 x ptr] [ptr @.str.221, ptr @.str.291, ptr @.str.292, ptr null], align 16
@.str.289 = private unnamed_addr constant [15 x i8] c"$NO_LOCAL_COPY\00", align 1
@.str.290 = private unnamed_addr constant [12 x i8] c"$LOCAL_COPY\00", align 1
@.str.291 = private unnamed_addr constant [15 x i8] c"copied locally\00", align 1
@.str.292 = private unnamed_addr constant [19 x i8] c"not copied locally\00", align 1
@.str.293 = private unnamed_addr constant [160 x i8] c"SELECT CASE          WHEN (flags & %d) THEN 0         ELSE 1       END as lcp, COUNT(*) AS count FROM main.images AS mi  WHERE %s GROUP BY lcp ORDER BY lcp ASC\00", align 1
@.str.294 = private unnamed_addr constant [66 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/local_copy.c\00", align 1
@__FUNCTION__._local_copy_update = private unnamed_addr constant [19 x i8] c"_local_copy_update\00", align 1
@.str.295 = private unnamed_addr constant [24 x i8] c"filter on history state\00", align 1
@_history_names = internal global [5 x ptr] [ptr @.str.221, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr null], align 16
@.str.296 = private unnamed_addr constant [7 x i8] c"$BASIC\00", align 1
@.str.297 = private unnamed_addr constant [14 x i8] c"$AUTO_APPLIED\00", align 1
@.str.298 = private unnamed_addr constant [9 x i8] c"$ALTERED\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"auto applied\00", align 1
@.str.301 = private unnamed_addr constant [8 x i8] c"altered\00", align 1
@.str.302 = private unnamed_addr constant [384 x i8] c"SELECT CASE       WHEN basic_hash == current_hash THEN 0       WHEN auto_hash == current_hash THEN 1       WHEN current_hash IS NOT NULL THEN 2       ELSE 0     END as altered, COUNT(*) AS count FROM main.images AS mi LEFT JOIN (SELECT DISTINCT imgid, basic_hash, auto_hash, current_hash            FROM main.history_hash) ON id = imgid WHERE %s GROUP BY altered ORDER BY altered ASC\00", align 1
@.str.303 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/history.c\00", align 1
@__FUNCTION__._history_update = private unnamed_addr constant [16 x i8] c"_history_update\00", align 1
@_module_order_names = internal unnamed_addr global ptr null, align 8
@.str.304 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.305 = private unnamed_addr constant [13 x i8] c"module order\00", align 1
@.str.306 = private unnamed_addr constant [42 x i8] c"filter images based on their module order\00", align 1
@.str.307 = private unnamed_addr constant [3 x i8] c"$0\00", align 1
@.str.308 = private unnamed_addr constant [3 x i8] c"$1\00", align 1
@.str.309 = private unnamed_addr constant [3 x i8] c"$2\00", align 1
@.str.310 = private unnamed_addr constant [3 x i8] c"$3\00", align 1
@.str.311 = private unnamed_addr constant [164 x i8] c"SELECT mo.version, COUNT(*)  FROM main.images as mi LEFT JOIN (SELECT imgid, version FROM main.module_order) AS mo ON mo.imgid = mi.id WHERE %s GROUP BY mo.version\00", align 1
@.str.312 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/darktable/darktable/src/libs/filters/module_order.c\00", align 1
@__FUNCTION__._module_order_update = private unnamed_addr constant [21 x i8] c"_module_order_update\00", align 1
@_rating_widget_init.texts = internal global [7 x ptr] [ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr null], align 16
@.str.313 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.314 = private unnamed_addr constant [4 x i8] c"\E2\89\A4\00", align 1
@.str.315 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c"\E2\89\A5\00", align 1
@.str.317 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"\E2\89\A0\00", align 1
@.str.319 = private unnamed_addr constant [11 x i8] c"comparator\00", align 1
@.str.320 = private unnamed_addr constant [24 x i8] c"filter by images rating\00", align 1
@_rating_widget_init.texts.321 = internal global [10 x ptr] [ptr @.str.6, ptr @.str.322, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.235, ptr @.str.230, ptr null], align 16
@.str.322 = private unnamed_addr constant [15 x i8] c"unstarred only\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"ratings\00", align 1
@.str.324 = private unnamed_addr constant [31 x i8] c"           \E2\98\85 \E2\98\85 \E2\98\85 \E2\98\85 \E2\98\85\00", align 1
@.str.325 = private unnamed_addr constant [3 x i8] c"=0\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"=-1\00", align 1
@.str.327 = private unnamed_addr constant [4 x i8] c">=0\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"<%d\00", align 1
@.str.329 = private unnamed_addr constant [5 x i8] c"<=%d\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"=%d\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c">%d\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"<>%d\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c">=%d\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"collect_id\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"topbar\00", align 1
@.str.340 = private unnamed_addr constant [40 x i8] c"you can't have more than %d sort orders\00", align 1
@.str.341 = private unnamed_addr constant [34 x i8] c"you can't have more than %d rules\00", align 1
@.str.342 = private unnamed_addr constant [41 x i8] c"plugins/lighttable/filtering/history_max\00", align 1
@.str.343 = private unnamed_addr constant [40 x i8] c"plugins/lighttable/filtering/history%1d\00", align 1
@.str.344 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.345 = private unnamed_addr constant [21 x i8] c"%d:%d:%d:%d:%399[^$]\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c"<i>   \00", align 1
@.str.347 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.348 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.349 = private unnamed_addr constant [8 x i8] c"BUT NOT\00", align 1
@.str.350 = private unnamed_addr constant [8 x i8] c"   </i>\00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"<b>%s</b>%s %s\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.353 = private unnamed_addr constant [7 x i8] c" (off)\00", align 1
@.str.354 = private unnamed_addr constant [13 x i8] c"<b>%s</b> %s\00", align 1
@.str.355 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.356 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.357 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.358 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.359 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.361 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.362 = private unnamed_addr constant [4 x i8] c"<s>\00", align 1
@.str.363 = private unnamed_addr constant [5 x i8] c"</s>\00", align 1
@.str.364 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.365 = private unnamed_addr constant [4 x i8] c"\E2\88\A9\00", align 1
@.str.366 = private unnamed_addr constant [4 x i8] c"\E2\88\AA\00", align 1
@.str.367 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.368 = private unnamed_addr constant [46 x i8] c"plugins/lighttable/filtering/sort_history_max\00", align 1
@.str.369 = private unnamed_addr constant [45 x i8] c"plugins/lighttable/filtering/sort_history%1d\00", align 1
@.str.370 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.371 = private unnamed_addr constant [10 x i8] c"%s%s (%s)\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.374 = private unnamed_addr constant [4 x i8] c"ASC\00", align 1
@.str.375 = private unnamed_addr constant [20 x i8] c"transitions-enabled\00", align 1
@.str.376 = private unnamed_addr constant [14 x i8] c"shown filters\00", align 1
@.str.377 = private unnamed_addr constant [17 x i8] c"dt_section_label\00", align 1
@.str.378 = private unnamed_addr constant [11 x i8] c"new filter\00", align 1
@.str.379 = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@.str.380 = private unnamed_addr constant [19 x i8] c"reset quickfilters\00", align 1
@.str.381 = private unnamed_addr constant [26 x i8] c"you can't add more rules.\00", align 1
@.str.382 = private unnamed_addr constant [19 x i8] c"quickfilter\04filter\00", align 1
@switch.table._sort_history_show = private unnamed_addr constant [16 x ptr] [ptr @.str.145, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.158, ptr @.str.154, ptr @.str.157, ptr @.str.146, ptr @.str.159, ptr @.str.155, ptr @.str.156, ptr @.str.147, ptr @.str.160], align 8
@switch.table._widget_init = private unnamed_addr constant [35 x i8] c"\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 4
@switch.table._misc_widget_init = private unnamed_addr constant [38 x ptr] [ptr @.str.264, ptr @.str.266, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.268, ptr @.str.30, ptr @.str.271, ptr @.str.273, ptr @.str.275], align 8
@switch.table._misc_widget_init.6 = private unnamed_addr constant [38 x ptr] [ptr @.str.265, ptr @.str.267, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.274, ptr @.str.276], align 8
@switch.table._rating_legacy_changed = private unnamed_addr constant [6 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.333, ptr @.str.331, ptr @.str.332], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal float @_action_process_colors(ptr noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) #1 {
bb.a:
  %4 = alloca %struct._GdkEventButton, align 8    ; 5 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp sgt i32 %1, 6
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @g_object_get_data(ptr noundef nonnull %0, ptr noundef nonnull @.str.98) #19 ; 5 uses
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.in = select i1 %.not, ptr %i.f, ptr %i.e
  %i.g = load ptr, ptr %.in, align 8, !tbaa !21
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.i = add nsw i32 %1, -1
  %i.j = shl nuw nsw i32 4097, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 4 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #20
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_get_mask.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.k, align 1
  %i.o = icmp ne i16 %i.n, 30768
  %i.p = zext i1 %i.o to i32
  %.not19.i = icmp eq i32 %i.p, 0
  br i1 %.not19.i, label %bb.d, label %_get_mask.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 74
  %i.r = tail call i64 @strtoll(ptr noundef nonnull readonly captures(none) %i.q, ptr noundef null, i32 noundef 16) #19
  %i.s = trunc i64 %i.r to i32
  br label %_get_mask.exit

_get_mask.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.t = select i1 %.not, i32 -2147483648, i32 %i.j ; 2 uses
  %i.u = and i32 %.0.i, %i.t                      ; 2 uses
  %i.v = fcmp reassoc nsz arcp contract afn une float %3, f0xFF7FFFFF
  br i1 %i.v, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_get_mask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq i32 %2, 3
  %i.y = select i1 %i.x, i32 4, i32 0
  store i32 %i.y, ptr %i.w, align 8, !tbaa !30
  %.not42 = icmp eq i32 %i.u, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %2, label %.thread [
    i32 4, label %bb.j
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.e
  %.not43 = icmp eq i32 %2, 2
  br i1 %.not43, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.z = call i32 @_colors_clicked(ptr noundef %i.g, ptr noundef nonnull %4, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %.thread
  tail call void @_colors_operator_clicked(ptr poison, ptr noundef nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.f, %bb.h, %bb.i, %bb.g
  %i.aa = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #20
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %_get_mask.exit40

bb.k:                                             ; preds = %bb.j
  %i.ac = load i16, ptr %i.k, align 1
  %i.ad = icmp ne i16 %i.ac, 30768
  %i.ae = zext i1 %i.ad to i32
  %.not19.i39 = icmp eq i32 %i.ae, 0
  br i1 %.not19.i39, label %bb.l, label %_get_mask.exit40

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 74
  %i.ag = tail call i64 @strtoll(ptr noundef nonnull readonly captures(none) %i.af, ptr noundef null, i32 noundef 16) #19
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.t, %i.ah
  br label %_get_mask.exit40

_get_mask.exit40:                                 ; preds = %bb.j, %bb.k, %bb.l
  %.0.i37 = phi i32 [ %i.ai, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.m

bb.m:                                             ; preds = %_get_mask.exit40, %_get_mask.exit
  %.0 = phi i32 [ %.0.i37, %_get_mask.exit40 ], [ %i.u, %_get_mask.exit ]
  %i.aj = icmp ne i32 %.0, 0
  %i.ak = uitofp i1 %i.aj to float
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.034 = phi nsz float [ %i.ak, %bb.m ], [ f0xFF7FFFFF, %bb.a ]
  ret float %.034
}

; Function Attrs: nounwind uwtable
define hidden void @_filename_tree_update(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 11 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.g) #19 ; 2 uses
  tail call void @gtk_list_store_clear(ptr noundef %i.h) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.j) #19 ; 7 uses
  tail call void @gtk_list_store_clear(ptr noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4520 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = call i32 (ptr, i64, ptr, ...) @g_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef %i.m) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !85
  %i.p = and i32 %i.o, 256
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 125, ptr noundef nonnull @__FUNCTION__._filename_tree_update, ptr noundef nonnull %i.a) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.r = call ptr @dt_database_get(ptr noundef %i.q) #19
  %i.s = call i32 @sqlite3_prepare_v2(ptr noundef %i.r, ptr noundef nonnull %i.a, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #19
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.v = call ptr @dt_database_get(ptr noundef %i.u) #19
  %i.w = call ptr @sqlite3_errmsg(ptr noundef %i.v) #19
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 125, ptr noundef nonnull @__FUNCTION__._filename_tree_update, ptr noundef nonnull %i.a, ptr noundef %i.w) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.z = call i32 @sqlite3_step(ptr noundef %i.y) #19
  %i.aa = icmp eq i32 %i.z, 100
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ac = call ptr @sqlite3_column_text(ptr noundef %i.ab, i32 noundef 0) #19 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.af = call i32 @sqlite3_column_int(ptr noundef %i.ae, i32 noundef 1) #19
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.h, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.ac, i32 noundef 1, ptr noundef nonnull %i.ac, i32 noundef 2, ptr noundef nonnull %i.ac, i32 noundef 3, i32 noundef %i.af, i32 noundef -1) #19
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ah = call i32 @sqlite3_step(ptr noundef %i.ag) #19
  %i.ai = icmp eq i32 %i.ah, 100
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ak = call i32 @sqlite3_finalize(ptr noundef %i.aj) #19 ; 0 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.am = call i32 (ptr, i64, ptr, ...) @g_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.12, ptr noundef %i.al) #19 ; 0 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !85
  %i.ao = and i32 %i.an, 256
  %.not53 = icmp eq i32 %i.ao, 0
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 148, ptr noundef nonnull @__FUNCTION__._filename_tree_update, ptr noundef nonnull %i.a) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.aq = call ptr @dt_database_get(ptr noundef %i.ap) #19
  %i.ar = call i32 @sqlite3_prepare_v2(ptr noundef %i.aq, ptr noundef nonnull %i.a, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #19
  %.not54 = icmp eq i32 %i.ar, 0
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !86
  %i.au = call ptr @dt_database_get(ptr noundef %i.at) #19
  %i.av = call ptr @sqlite3_errmsg(ptr noundef %i.au) #19
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 148, ptr noundef nonnull @__FUNCTION__._filename_tree_update, ptr noundef nonnull %i.a, ptr noundef %i.av) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ay = call i32 @sqlite3_step(ptr noundef %i.ax) #19
  %i.az = icmp eq i32 %i.ay, 100
  br i1 %i.az, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %bb.k, %bb.m
  %i.ba = phi <4 x i32> [ %i.bq, %bb.m ], [ zeroinitializer, %bb.k ] ; 2 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.bc = call ptr @sqlite3_column_text(ptr noundef %i.bb, i32 noundef 0) #19 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph63
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.bf = call i32 @sqlite3_column_int(ptr noundef %i.be, i32 noundef 1) #19 ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.bh = call i32 @sqlite3_column_int(ptr noundef %i.bg, i32 noundef 2) #19
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.k, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %i.bc, i32 noundef 1, ptr noundef nonnull %i.bc, i32 noundef 2, ptr noundef nonnull %i.bc, i32 noundef 3, i32 noundef %i.bf, i32 noundef -1) #19
  %i.bi = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %i.bj = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bk = and <4 x i32> %i.bj, <i32 64, i32 64, i32 32, i32 128>
  %i.bl = icmp eq <4 x i32> %i.bk, zeroinitializer
  %i.bm = insertelement <4 x i32> <i32 0, i32 poison, i32 0, i32 0>, i32 %i.bf, i64 1 ; 2 uses
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.bo = select <4 x i1> %i.bl, <4 x i32> %i.bm, <4 x i32> %i.bn
  %i.bp = add nsw <4 x i32> %i.bo, %i.ba
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph63, %bb.l
  %i.bq = phi <4 x i32> [ %i.bp, %bb.l ], [ %i.ba, %.lr.ph63 ] ; 2 uses
end_hunk_0
