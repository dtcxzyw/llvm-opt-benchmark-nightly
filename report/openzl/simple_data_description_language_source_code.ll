Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/simple_data_description_language_source_code?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.17 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"sc_size\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.21 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 150, [4 x i8] zeroinitializer }, align 8
@.str.22 = private unnamed_addr constant [56 x i8] c"Check `size > sc_size' failed: Parameter is invalid: %s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.24 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 21, [4 x i8] zeroinitializer, ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 151, [4 x i8] zeroinitializer }, align 8
@.str.25 = private unnamed_addr constant [64 x i8] c"Check `start + size > sc_size' failed: Parameter is invalid: %s\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"start + size\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"%*sSDDL source code from line:col %zu:%d to %zu:%d:\0A\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.28 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 199, [4 x i8] zeroinitializer }, align 8
@.str.29 = private unnamed_addr constant [45 x i8] c"Check `pos_str_len <= 0' failed: Generic: %s\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (int) %d\0A\09rhs = (int) %d\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"pos_str_len\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.35 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 202, [4 x i8] zeroinitializer }, align 8
@.str.36 = private unnamed_addr constant [48 x i8] c"Check `line_num_width <= 0' failed: Generic: %s\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"line_num_width\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.38 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 210, [4 x i8] zeroinitializer }, align 8
@.str.39 = private unnamed_addr constant [79 x i8] c"Check `(const char*)(const void*)buf == (const char*)0' failed: Allocation: %s\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)buf\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.41 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 230, [4 x i8] zeroinitializer }, align 8
@.str.42 = private unnamed_addr constant [62 x i8] c"Check `pos_str_actual_len != pos_str_len' failed: Generic: %s\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"pos_str_actual_len\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.45 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 257, [4 x i8] zeroinitializer }, align 8
@.str.46 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.48 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 265, [4 x i8] zeroinitializer }, align 8
@.str.49 = private unnamed_addr constant [53 x i8] c"Check `pstr.str.size + 1 != cap' failed: Generic: %s\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"pstr.str.size + 1\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"%*zu | %.*s\0A\00", align 1
@ZL_SDDL_SourceLocationPrettyString_addLine.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.53, ptr @.str.1, ptr @.str.54, i32 80, [4 x i8] zeroinitializer }, align 8
@.str.53 = private unnamed_addr constant [40 x i8] c"Check `written < 0' failed: Generic: %s\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"ZL_SDDL_SourceLocationPrettyString_addLine\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"written\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"%*s | %*s\00", align 1
@ZL_SDDL_SourceLocationPrettyString_addLine.__zl_static_error_info.58 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.53, ptr @.str.1, ptr @.str.54, i32 106, [4 x i8] zeroinitializer }, align 8
@ZL_SDDL_SourceLocationPrettyString_addLine.__zl_static_error_info.59 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.60, ptr @.str.1, ptr @.str.54, i32 110, [4 x i8] zeroinitializer }, align 8
@.str.60 = private unnamed_addr constant [54 x i8] c"Check `tildes > bufend - *bufptr' failed: Generic: %s\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"tildes\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"bufend - *bufptr\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"%*s\0A\00", align 1
@ZL_SDDL_SourceLocationPrettyString_addLine.__zl_static_error_info.64 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.53, ptr @.str.1, ptr @.str.54, i32 120, [4 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define void @ZL_SDDL_SourceCode_init(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i64 %3, 1
  %i.d = tail call ptr @ALLOC_Arena_malloc(ptr noundef nonnull %0, i64 noundef %i.c) #9 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.split, label %.split15

.split:                                           ; preds = %bb.d
  store i8 0, ptr %i.d, align 1, !tbaa !11
  br label %bb.e

.split15:                                         ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %2, i64 %3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %3
  store i8 0, ptr %i.f, align 1, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %.split, %.split15
  store ptr %i.d, ptr %1, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ALLOC_Arena_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @ZL_SDDL_SourceCode_initEmpty(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ZL_SDDL_SourceCode_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ZL_SDDL_SourceCode_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ALLOC_Arena_malloc(ptr noundef nonnull %0, i64 noundef 1) #9 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ZL_SDDL_SourceCode_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.c, align 1, !tbaa !11
  store ptr %i.c, ptr %1, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !16
  br label %ZL_SDDL_SourceCode_init.exit

ZL_SDDL_SourceCode_init.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ZL_SDDL_SourceCode_destroy(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define void @ZL_SDDL_SourceLocationPrettyString_create(ptr dead_on_unwind noalias nofree writable writeonly sret(%union.ZL_Result_ZL_SDDL_SourceLocationPrettyString_u) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 9 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_ErrorContext_getOperationContext(ptr noundef %1) #10
  store ptr %i.b, ptr %7, align 8, !tbaa !29
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.critedge236, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.c = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 140, i32 noundef 21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.c, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.d, ptr %i.e, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.d, ptr %0, align 8, !tbaa !31
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.5177.0..sroa_idx, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge236:                                     ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !33     ; 21 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34   ; 8 uses
  %.not224 = icmp eq ptr %i.g, null
  br i1 %.not224, label %bb.c, label %.critedge238, !prof !30

bb.c:                                             ; preds = %.critedge236
  %i.k = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.9, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i32, ptr } %i.k, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.l, ptr %i.m, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.l, ptr %0, align 8, !tbaa !31
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.5144.0..sroa_idx, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge238:                                     ; preds = %.critedge236
  %.not225 = icmp eq ptr %4, null
  br i1 %.not225, label %bb.d, label %.critedge240, !prof !30

bb.d:                                             ; preds = %.critedge238
  %i.o = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.12, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 145, i32 noundef 21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { i32, ptr } %i.o, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.p, ptr %i.q, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.p, ptr %0, align 8, !tbaa !31
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge240:                                     ; preds = %.critedge238
  %i.s = load i64, ptr %4, align 8, !tbaa !36     ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37   ; 6 uses
  %.not226 = icmp ugt i64 %i.s, %i.j
  br i1 %.not226, label %bb.e, label %.critedge242, !prof !30

bb.e:                                             ; preds = %.critedge240
  %i.v = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.15, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 149, i32 noundef 21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i64 noundef %i.s, i64 noundef %i.j) #9 ; 2 uses
  %i.w = extractvalue { i32, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i32, ptr } %i.v, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.w, ptr %i.x, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.w, ptr %0, align 8, !tbaa !31
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge242:                                     ; preds = %.critedge240
  %.not227 = icmp ugt i64 %i.u, %i.j
  br i1 %.not227, label %bb.f, label %.critedge244, !prof !30

bb.f:                                             ; preds = %.critedge242
  %i.z = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.21, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 150, i32 noundef 21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i64 noundef %i.u, i64 noundef %i.j) #9 ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.z, 1       ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aa, ptr %i.ab, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.aa, ptr %0, align 8, !tbaa !31
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.5114.0..sroa_idx, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge244:                                     ; preds = %.critedge242
  %i.ad = add i64 %i.u, %i.s                      ; 4 uses
  %.not228 = icmp ugt i64 %i.ad, %i.j
  br i1 %.not228, label %bb.g, label %.critedge246, !prof !30

bb.g:                                             ; preds = %.critedge244
  %i.ae = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.24, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i64 noundef %i.ad, i64 noundef %i.j) #9 ; 2 uses
  %i.af = extractvalue { i32, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.ae, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.af, ptr %i.ag, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.af, ptr %0, align 8, !tbaa !31
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge246:                                     ; preds = %.critedge244
  %i.ai = trunc i64 %5 to i32                     ; 3 uses
  %.not302 = icmp eq i64 %i.s, 0
  br i1 %.not302, label %.preheader278, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge246
  %min.iters.check = icmp ult i64 %i.s, 16
  br i1 %min.iters.check, label %.lr.ph.preheader355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.s, -2                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.g, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x ptr> [ %broadcast.splat, %vector.ph ], [ %i.au, %vector.body ]
  %i.aj = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi351 = phi <2 x i64> [ <i64 1, i64 0>, %vector.ph ], [ %i.ar, %vector.body ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.ao = insertelement <2 x ptr> %i.an, ptr %i.am, i64 1
  %wide.load = load <2 x i8>, ptr %i.ak, align 1, !tbaa !11
  %wide.load.fr = freeze <2 x i8> %wide.load
  %i.ap = icmp eq <2 x i8> %wide.load.fr, splat (i8 10) ; 3 uses
  %wide.gep = getelementptr i8, <2 x ptr> %i.ao, i64 1
  %i.aq = zext <2 x i1> %i.ap to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi351, %i.aq        ; 2 uses
  %i.as = bitcast <2 x i1> %i.ap to i2
  %.not353 = icmp eq i2 %i.as, 0                  ; 2 uses
  %i.at = select i1 %.not353, <2 x i1> %i.aj, <2 x i1> %i.ap ; 2 uses
  %i.au = select i1 %.not353, <2 x ptr> %vec.phi, <2 x ptr> %wide.gep ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.aw = tail call ptr @llvm.experimental.vector.extract.last.active.v2p0(<2 x ptr> %i.au, <2 x i1> %i.at, ptr nonnull %i.g) ; 2 uses
  %i.ax = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ar) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.preheader278, label %.lr.ph.preheader355

.lr.ph.preheader355:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0201286.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0202285.ph = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  %.0204284.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph

.preheader278:                                    ; preds = %.lr.ph, %middle.block, %.critedge246
  %.0204.lcssa = phi i64 [ 1, %.critedge246 ], [ %i.ax, %middle.block ], [ %.1205, %.lr.ph ] ; 7 uses
  %.0202.lcssa = phi ptr [ %i.g, %.critedge246 ], [ %i.aw, %middle.block ], [ %.1203, %.lr.ph ] ; 6 uses
  %i.ay = add i64 %i.s, 1                         ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.ad
  br i1 %i.az, label %.lr.ph291.preheader, label %.preheader

.lr.ph291.preheader:                              ; preds = %.preheader278
  %i.ba = add i64 %i.u, 3
  %i.bb = add i64 %i.u, -2
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph291.prol.loopexit, label %.lr.ph291.prol

.lr.ph291.prol:                                   ; preds = %.lr.ph291.preheader, %.lr.ph291.prol
  %i.bc = phi i64 [ %i.bi, %.lr.ph291.prol ], [ %i.ay, %.lr.ph291.preheader ] ; 3 uses
  %.0197289.prol = phi ptr [ %.1198.prol, %.lr.ph291.prol ], [ %.0202.lcssa, %.lr.ph291.preheader ]
  %.0199288.prol = phi i64 [ %.1200.prol, %.lr.ph291.prol ], [ %.0204.lcssa, %.lr.ph291.preheader ]
  %.0199288.prol.a = phi i64 [ %prol.iter.next, %.lr.ph291.prol ], [ 0, %.lr.ph291.preheader ]
  %8 = getelementptr i8, ptr %i.g, i64 %i.bc
  %i.bd = getelementptr i8, ptr %8, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = icmp eq i8 %i.be, 10                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bc
  %i.bh = zext i1 %i.bf to i64
  %.1200.prol = add i64 %.0199288.prol, %i.bh     ; 3 uses
  %.1198.prol = select i1 %i.bf, ptr %i.bg, ptr %.0197289.prol ; 3 uses
  %i.bi = add nuw i64 %i.bc, 1                    ; 2 uses
  %prol.iter.next = add i64 %.0199288.prol.a, 1   ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph291.prol.loopexit, label %.lr.ph291.prol, !llvm.loop !20

.lr.ph291.prol.loopexit:                          ; preds = %.lr.ph291.prol, %.lr.ph291.preheader
  %.1200.lcssa.unr = phi i64 [ poison, %.lr.ph291.preheader ], [ %.1200.prol, %.lr.ph291.prol ]
  %.1198.lcssa.unr = phi ptr [ poison, %.lr.ph291.preheader ], [ %.1198.prol, %.lr.ph291.prol ]
  %.unr = phi i64 [ %i.ay, %.lr.ph291.preheader ], [ %i.bi, %.lr.ph291.prol ]
  %.0197289.unr = phi ptr [ %.0202.lcssa, %.lr.ph291.preheader ], [ %.1198.prol, %.lr.ph291.prol ]
  %.0199288.unr = phi i64 [ %.0204.lcssa, %.lr.ph291.preheader ], [ %.1200.prol, %.lr.ph291.prol ]
  %i.bj = icmp ult i64 %i.bb, 3
  br i1 %i.bj, label %.preheader, label %.lr.ph291

.lr.ph:                                           ; preds = %.lr.ph.preheader355, %.lr.ph
  %.0201286 = phi i64 [ %i.bp, %.lr.ph ], [ %.0201286.ph, %.lr.ph.preheader355 ] ; 2 uses
  %.0202285 = phi ptr [ %.1203, %.lr.ph ], [ %.0202285.ph, %.lr.ph.preheader355 ]
  %.0204284 = phi i64 [ %.1205, %.lr.ph ], [ %.0204284.ph, %.lr.ph.preheader355 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0201286 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = icmp eq i8 %i.bl, 10                    ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 1
  %i.bo = zext i1 %i.bm to i64
  %.1205 = add i64 %.0204284, %i.bo               ; 2 uses
  %.1203 = select i1 %i.bm, ptr %i.bn, ptr %.0202285 ; 2 uses
  %i.bp = add nuw i64 %.0201286, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.s
  br i1 %exitcond.not, label %.preheader278, label %.lr.ph, !llvm.loop !21

.preheader:                                       ; preds = %.lr.ph291.prol.loopexit, %.lr.ph291, %.preheader278
  %.0199.lcssa = phi i64 [ %.0204.lcssa, %.preheader278 ], [ %.1200.lcssa.unr, %.lr.ph291.prol.loopexit ], [ %.1200.3, %.lr.ph291 ] ; 4 uses
  %.0197.lcssa = phi ptr [ %.0202.lcssa, %.preheader278 ], [ %.1198.lcssa.unr, %.lr.ph291.prol.loopexit ], [ %.1198.3, %.lr.ph291 ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j ; 5 uses
  %i.br = icmp ult ptr %.0197.lcssa, %i.bq
  br i1 %i.br, label %.lr.ph295.preheader, label %.critedge

.lr.ph295.preheader:                              ; preds = %.preheader
  %.0197.lcssa307 = ptrtoaddr ptr %.0197.lcssa to i64
  %i.bs = add i64 %i.j, %i.h
  %i.bt = sub i64 %i.bs, %.0197.lcssa307
  %scevgep = getelementptr i8, ptr %.0197.lcssa, i64 %i.bt ; 2 uses
  br label %.lr.ph295

.lr.ph291:                                        ; preds = %.lr.ph291.prol.loopexit, %.lr.ph291
  %i.bu = phi i64 [ %i.cr, %.lr.ph291 ], [ %.unr, %.lr.ph291.prol.loopexit ] ; 7 uses
  %.0197289 = phi ptr [ %.1198.3, %.lr.ph291 ], [ %.0197289.unr, %.lr.ph291.prol.loopexit ]
  %.0199288 = phi i64 [ %.1200.3, %.lr.ph291 ], [ %.0199288.unr, %.lr.ph291.prol.loopexit ]
  %9 = getelementptr i8, ptr %i.g, i64 %i.bu
  %i.bv = getelementptr i8, ptr %9, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = icmp eq i8 %i.bw, 10                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bu
  %i.bz = zext i1 %i.bx to i64
  %.1200 = add i64 %.0199288, %i.bz
  %.1198 = select i1 %i.bx, ptr %i.by, ptr %.0197289
  %i.ca = getelementptr i8, ptr %i.g, i64 %i.bu
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = icmp eq i8 %i.cb, 10                    ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bu
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.ce = zext i1 %i.cc to i64
  %.1200.1 = add i64 %.1200, %i.ce
  %.1198.1 = select i1 %i.cc, ptr %i.cd, ptr %.1198
  %i.cf = add nuw i64 %i.bu, 2                    ; 2 uses
  %11 = getelementptr i8, ptr %i.g, i64 %i.cf
  %i.cg = getelementptr i8, ptr %11, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = icmp eq i8 %i.ch, 10                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cf
  %i.ck = zext i1 %i.ci to i64
  %.1200.2 = add i64 %.1200.1, %i.ck
  %.1198.2 = select i1 %i.ci, ptr %i.cj, ptr %.1198.1
  %i.cl = add nuw i64 %i.bu, 3                    ; 2 uses
  %12 = getelementptr i8, ptr %i.g, i64 %i.cl
  %i.cm = getelementptr i8, ptr %12, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = icmp eq i8 %i.cn, 10                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cl
  %i.cq = zext i1 %i.co to i64
  %.1200.3 = add i64 %.1200.2, %i.cq              ; 2 uses
  %.1198.3 = select i1 %i.co, ptr %i.cp, ptr %.1198.2 ; 2 uses
  %i.cr = add nuw i64 %i.bu, 4                    ; 2 uses
  %exitcond306.not.3 = icmp eq i64 %i.cr, %i.ad
  br i1 %exitcond306.not.3, label %.preheader, label %.lr.ph291, !llvm.loop !22

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.h
  %.0195294 = phi ptr [ %i.ct, %bb.h ], [ %.0197.lcssa, %.lr.ph295.preheader ] ; 3 uses
  %i.cs = load i8, ptr %.0195294, align 1, !tbaa !11
  %.not229 = icmp eq i8 %i.cs, 10
  br i1 %.not229, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph295
  %i.ct = getelementptr inbounds nuw i8, ptr %.0195294, i64 1 ; 2 uses
  %exitcond308.not = icmp eq ptr %i.ct, %scevgep
  br i1 %exitcond308.not, label %.critedge, label %.lr.ph295, !llvm.loop !23

.critedge:                                        ; preds = %.lr.ph295, %bb.h, %.preheader
  %.0195.lcssa = phi ptr [ %.0197.lcssa, %.preheader ], [ %scevgep, %bb.h ], [ %.0195294, %.lr.ph295 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %.0202.lcssa to i64        ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.u
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %.0197.lcssa to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %reass.sub = sub i64 %.0199.lcssa, %.0204.lcssa
  %i.de = add i64 %reass.sub, 1
  %i.df = ptrtoint ptr %.0195.lcssa to i64
  %i.dg = add nsw i32 %i.cy, 1                    ; 2 uses
  %i.dh = add nsw i32 %i.dd, 1                    ; 2 uses
  %i.di = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %i.ai, ptr noundef nonnull @.str.8, i64 noundef %.0204.lcssa, i32 noundef %i.dg, i64 noundef %.0199.lcssa, i32 noundef %i.dh) #9 ; 5 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.critedge248, label %bb.i, !prof !42

bb.i:                                             ; preds = %.critedge
  %i.dk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.28, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 199, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %i.di, i32 noundef 0) #9 ; 2 uses
  %i.dl = extractvalue { i32, ptr } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { i32, ptr } %i.dk, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dl, ptr %i.dm, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.dl, ptr %0, align 8, !tbaa !31
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %.sroa.555.0..sroa_idx, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge248:                                     ; preds = %.critedge
  %i.do = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.34, i64 noundef %.0199.lcssa) #9 ; 4 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.critedge250, label %bb.j, !prof !42

bb.j:                                             ; preds = %.critedge248
  %i.dq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.35, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 202, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %i.do, i32 noundef 0) #9 ; 2 uses
  %i.dr = extractvalue { i32, ptr } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { i32, ptr } %i.dq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dr, ptr %i.ds, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.dr, ptr %0, align 8, !tbaa !31
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %.sroa.547.0..sroa_idx, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge250:                                     ; preds = %.critedge248
  %i.du = zext nneg i32 %i.di to i64              ; 2 uses
  %sext = shl i64 %5, 32
  %i.dv = ashr exact i64 %sext, 32
  %i.dw = zext nneg i32 %i.do to i64
  %i.dx = add nsw i64 %i.dv, 3
  %i.dy = add nsw i64 %i.dx, %i.dw
  %i.dz = mul i64 %i.dy, %i.de
  %reass.sub303 = sub i64 %i.df, %i.cw
  %i.ea = add i64 %reass.sub303, 1
  %i.eb = add i64 %i.ea, %i.dz
  %i.ec = shl i64 %i.eb, 1
  %i.ed = add i64 %i.ec, %i.du                    ; 5 uses
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  %i.ef = tail call ptr @ALLOC_Arena_malloc(ptr noundef %2, i64 noundef %i.ee) #9 ; 7 uses
  %.not230 = icmp eq ptr %i.ef, null
  br i1 %.not230, label %bb.k, label %.critedge252, !prof !30

bb.k:                                             ; preds = %.critedge250
  %i.eg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.38, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #9 ; 2 uses
  %i.eh = extractvalue { i32, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { i32, ptr } %i.eg, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.eh, ptr %i.ei, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.eh, ptr %0, align 8, !tbaa !31
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge252:                                     ; preds = %.critedge250
  %i.ek = ptrtoint ptr %i.ef to i64
  %i.el = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ef, i64 noundef %i.ed, ptr noundef nonnull @.str.27, i32 noundef %i.ai, ptr noundef nonnull @.str.8, i64 noundef %.0204.lcssa, i32 noundef %i.dg, i64 noundef %.0199.lcssa, i32 noundef %i.dh) #9 ; 2 uses
  %.not231 = icmp eq i32 %i.el, %i.di
  br i1 %.not231, label %.critedge254, label %bb.l, !prof !42

bb.l:                                             ; preds = %.critedge252
  %i.em = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_create.__zl_static_error_info.41, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.31, i32 noundef %i.el, i32 noundef %i.di) #9 ; 2 uses
  %i.en = extractvalue { i32, ptr } %i.em, 0      ; 2 uses
  %i.eo = extractvalue { i32, ptr } %i.em, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.en, ptr %i.eo, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  store i32 %i.en, ptr %0, align 8, !tbaa !31
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eo, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  br label %.critedge256

.critedge254:                                     ; preds = %.critedge252
  %i.eq = getelementptr inbounds i8, ptr %i.ef, i64 %i.ed
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.du
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = call ptr @ZL_ErrorContext_getOperationContext(ptr noundef nonnull %7) #10
  %i.eu = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.ev = add i64 %i.eu, 1                        ; 3 uses
  %i.ew = add nsw i32 %i.do, %i.ai                ; 2 uses
  %i.ex = ptrtoaddr ptr %i.bq to i64
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %.critedge254
  %.0271 = phi ptr [ %i.er, %.critedge254 ], [ %.1272345, %bb.u ] ; 4 uses
  %.0 = phi ptr [ %.0202.lcssa, %.critedge254 ], [ %.1346, %bb.u ] ; 11 uses
  %.0193 = phi i64 [ %.0204.lcssa, %.critedge254 ], [ %i.gu, %bb.u ] ; 2 uses
  %i.ez = icmp eq ptr %.0, %.0202.lcssa
  %spec.select = select i1 %i.ez, i32 %i.cy, i32 -1 ; 2 uses
  %i.fa = icmp eq ptr %.0, %.0197.lcssa
  %.0191 = select i1 %i.fa, i32 %i.dd, i32 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, i8 0, i64 24, i1 false)
  store ptr %i.et, ptr %6, align 8, !tbaa !29
  %i.fb = icmp ult ptr %.0, %i.bq
  br i1 %i.fb, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.fc = ptrtoaddr ptr %.0 to i64
  %i.fd = sub i64 %i.ex, %i.fc
  %scevgep.i = getelementptr i8, ptr %.0, i64 %i.fd
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.084113.i = phi ptr [ %i.ff, %bb.n ], [ %.0, %.lr.ph.preheader.i ] ; 3 uses
  %i.fe = load i8, ptr %.084113.i, align 1, !tbaa !11
  %.not.i = icmp eq i8 %i.fe, 10
  br i1 %.not.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.084113.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ff, %i.bq
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !24

.critedge.i:                                      ; preds = %bb.n, %.lr.ph.i, %bb.m
  %.084.lcssa.i = phi ptr [ %.0, %bb.m ], [ %.084113.i, %.lr.ph.i ], [ %scevgep.i, %bb.n ] ; 3 uses
  %i.fg = ptrtoint ptr %.084.lcssa.i to i64
  %i.fh = ptrtoint ptr %.0 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32                  ; 4 uses
  %i.fk = ptrtoint ptr %.0271 to i64
  %i.fl = sub i64 %i.ev, %i.fk
  %i.fm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.0271, i64 noundef %i.fl, ptr noundef nonnull @.str.52, i32 noundef %i.ew, i64 noundef %.0193, i32 noundef %i.fj, ptr noundef %.0) #9 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, -1
  br i1 %i.fn, label %bb.p, label %bb.o, !prof !42

bb.o:                                             ; preds = %.critedge.i
  %i.fo = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_addLine.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54, i32 noundef 80, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.33, i32 noundef %i.fm, i32 noundef 0) #9
  br label %ZL_SDDL_SourceLocationPrettyString_addLine.exit

bb.p:                                             ; preds = %.critedge.i
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.0271, i64 %i.fp ; 4 uses
  %.not93.i = icmp ne ptr %.084.lcssa.i, %i.bq
  %spec.select.idx.i = zext i1 %.not93.i to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.084.lcssa.i, i64 %spec.select.idx.i ; 4 uses
  %i.fr = icmp eq i32 %spec.select, -1
  %spec.store.select.i = select i1 %i.fr, i32 0, i32 %spec.select ; 2 uses
  %i.fs = icmp eq i32 %.0191, -1
  %spec.select95.i = call i32 @llvm.smin.i32(i32 %.0191, i32 %i.fj)
  %.0.i = select i1 %i.fs, i32 %i.fj, i32 %spec.select95.i ; 2 uses
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.ev, %i.ft
  %i.fv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.fq, i64 noundef %i.fu, ptr noundef nonnull @.str.57, i32 noundef %i.ew, ptr noundef nonnull @.str.8, i32 noundef %spec.store.select.i, ptr noundef nonnull @.str.8) #9 ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, -1
  br i1 %i.fw, label %bb.r, label %bb.q, !prof !42

bb.q:                                             ; preds = %bb.p
  %i.fx = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_SDDL_SourceLocationPrettyString_addLine.__zl_static_error_info.58, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.54, i32 noundef 106, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.33, i32 noundef %i.fv, i32 noundef 0) #9
  br label %ZL_SDDL_SourceLocationPrettyString_addLine.exit

end_hunk_0
