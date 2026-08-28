Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.09?download=true
inline.NumInlined: 469
inline.NumDeleted: 239
begin_hunk_0
@17 = private unnamed_addr constant [26 x i8] c"failed to resolve snapshot", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"\19\00\00\00\00\00\00\00\1C\00\00\00\12\00\00\00" }>, align 8
@19 = private unnamed_addr constant [54 x i8] c"Some of the paths did not match files in the snapshot!", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCskuiImRAV2ip_9elfshaker7packidxNtB4_9PackErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsj_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs_NtCskuiImRAV2ip_9elfshaker7packidxNtB4_9PackErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @20, ptr @_RNvYNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs7BtpbLEd5q3_9elfshaker }>, align 8
@22 = private unnamed_addr constant [4 x i8] c"show", align 1
@23 = private unnamed_addr constant [48 x i8] c"Shows the contents of the files in the snapshot.", align 1
@24 = private unnamed_addr constant [47 x i8] c"The snapshot in which to to look for the files.", align 1
@25 = private unnamed_addr constant [30 x i8] c"Specifies the path(s) to show.", align 1
@26 = private unnamed_addr constant [28 x i8] c"src/bin/elfshaker/update.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\1B\00\00\00\00\00\00\00\0C\00\00\00O\00\00\00" }>, align 8
@28 = private unnamed_addr constant [6 x i8] c"update", align 1
@29 = private unnamed_addr constant [27 x i8] c"Updates the remote indexes.", align 1
@30 = private unnamed_addr constant [62 x i8] c"fatal runtime error: thread result panicked on drop, aborting\0A", align 1
@31 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@32 = private unnamed_addr constant [7 x i8] c"IOError", align 1
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@34 = private unnamed_addr constant [12 x i8] c"WalkDirError", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@36 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@37 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@38 = private unnamed_addr constant [9 x i8] c"PackError", align 1
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@40 = private unnamed_addr constant [7 x i8] c"IdError", align 1
@41 = private unnamed_addr constant [11 x i8] c"CorruptHead", align 1
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorENtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@43 = private unnamed_addr constant [13 x i8] c"BrokenHeadRef", align 1
@44 = private unnamed_addr constant [16 x i8] c"CorruptPackIndex", align 1
@45 = private unnamed_addr constant [11 x i8] c"CorruptPack", align 1
@46 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@48 = private unnamed_addr constant [22 x i8] c"AmbiguousSnapshotMatch", align 1
@49 = private unnamed_addr constant [12 x i8] c"DirtyWorkDir", align 1
@50 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@51 = private unnamed_addr constant [12 x i8] c"PackNotFound", align 1
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@53 = private unnamed_addr constant [18 x i8] c"RepositoryNotFound", align 1
@54 = private unnamed_addr constant [14 x i8] c"BadLooseObject", align 1
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote22RemoteIndexFormatErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@56 = private unnamed_addr constant [20 x i8] c"BadRemoteIndexFormat", align 1
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@58 = private unnamed_addr constant [9 x i8] c"HttpError", align 1
@59 = private unnamed_addr constant [18 x i8] c"CompleteListNeeded", align 1
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@61 = private unnamed_addr constant [12 x i8] c"PathNotFound", align 1
@62 = private unnamed_addr constant [14 x i8] c"ObjectNotFound", align 1
@63 = private unnamed_addr constant [16 x i8] c"SnapshotNotFound", align 1
@64 = private unnamed_addr constant [21 x i8] c"SnapshotAlreadyExists", align 1
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj14_NtNtB7_3fmt5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRAhj14_NtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@67 = private unnamed_addr constant [16 x i8] c"ChecksumMismatch", align 1
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs974quTetXso_9rmp_serde6decode5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@69 = private unnamed_addr constant [16 x i8] c"DeserializeError", align 1
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs974quTetXso_9rmp_serde6encode5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@71 = private unnamed_addr constant [14 x i8] c"SerializeError", align 1
@72 = private unnamed_addr constant [8 x i8] c"BadMagic", align 1
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRAhj4_NtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@74 = private unnamed_addr constant [14 x i8] c"BadPackVersion", align 1
@75 = private unnamed_addr constant [17 x i8] c"InvalidMarkerRead", align 1
@76 = private unnamed_addr constant [15 x i8] c"InvalidDataRead", align 1
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsdxnJubla0R8_3rmp6marker6MarkerNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@78 = private unnamed_addr constant [12 x i8] c"TypeMismatch", align 1
@79 = private unnamed_addr constant [10 x i8] c"OutOfRange", align 1
@80 = private unnamed_addr constant [14 x i8] c"LengthMismatch", align 1
@81 = private unnamed_addr constant [13 x i8] c"Uncategorized", align 1
@82 = private unnamed_addr constant [6 x i8] c"Syntax", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@84 = private unnamed_addr constant [18 x i8] c"DepthLimitExceeded", align 1
@85 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@86 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6533980664681144250 to ptr), ptr inttoptr (i64 6786176929543452337 to ptr) }>, align 8
@87 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6336722583290301682 to ptr), ptr inttoptr (i64 -4483810605392225024 to ptr) }>, align 8
@88 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6346130011287342276 to ptr), ptr inttoptr (i64 -6927853504436608336 to ptr) }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.not11 = icmp ult i64 %i.d, %i.f
  br i1 %.not11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !6, !noalias !9, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted = load ptr, ptr %i.i, align 8, !alias.scope !6, !noalias !9
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 4 uses
  %.sroa.01.010 = phi i64 [ %i.d, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %.loopexit, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !6, !noalias !9
  %.sroa.0.0.copyload4 = load i64, ptr %i.k, align 8, !noalias !6 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload4, -1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit, %bb.b, %bb.c, %bb.a
  %i.n = phi i1 [ true, %bb.a ], [ false, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %i.n

bb.c:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = add i64 %.sroa.01.010, 1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5, i64 16, i1 false)
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.010 ; 2 uses
  store i64 %.sroa.0.0.copyload4, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %i.r = load i64, ptr %i.c, align 8, !noundef !5
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %exitcond.not = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1W_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB36_INtNtB1W_7convert4IntoBZ_E4intoEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.not9 = icmp ult i64 %i.f, %i.h
  br i1 %.not9, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i64, ptr %1, align 8          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11, !noalias !18, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %.not.i.i.i.peel = icmp eq i64 %i.j, %.promoted
  br i1 %.not.i.i.i.peel, label %.loopexit5, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs1xwejQucwHj_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.peel

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs1xwejQucwHj_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.peel: ; preds = %.lr.ph
  store i64 1, ptr %1, align 8, !alias.scope !23, !noalias !24
  %i.n = icmp eq i64 %.promoted, 0
  tail call void @llvm.assume(i1 %i.n)
  call void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtCs1xwejQucwHj_5alloc6string6StringE4fromCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l), !noalias !21
  %.pr.peel = load i64, ptr %i.a, align 8
  %.not.peel = icmp eq i64 %.pr.peel, -1
  br i1 %.not.peel, label %.loopexit5, label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs1xwejQucwHj_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.peel
  %i.o = add nuw i64 %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.r = load i64, ptr %i.e, align 8, !noundef !5
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.peel.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 %.not.i.i.i)
  br label %.loopexit5

.loopexit:                                        ; preds = %bb.b, %bb.a, %.loopexit5
  %i.t = phi i1 [ false, %.loopexit5 ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %i.t

.loopexit5:                                       ; preds = %.peel.next, %.lr.ph, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCs1xwejQucwHj_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = load i64, ptr %0, align 8, !range !29, !alias.scope !26, !noundef !5
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !26, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !26 ; 6 uses
  %i.d = icmp eq ptr %.val.i, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.e = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.e(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !26

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !30, !invariant.load !5, !noalias !26 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !31, !invariant.load !5, !noalias !26
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24, !noalias !26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !30, !invariant.load !5, !noalias !26 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !31, !invariant.load !5, !noalias !26
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #24, !noalias !26
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !40 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !40, !nonnull !5, !align !20, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !40

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !30, !invariant.load !5, !noalias !40 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !31, !invariant.load !5, !noalias !40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #24, !noalias !40
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !30, !invariant.load !5, !noalias !40 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !31, !invariant.load !5, !noalias !40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #24, !noalias !40
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrIBC_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !41, !noundef !5
  %switch = icmp ugt i64 %i.b, -3
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker:bb.a
bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB1W_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1t_6os_str5OsStrEEENtNtNtB2e_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder13arg_predicate12ArgPredicateINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1A_6os_str5OsStrEEENtNtNtB2l_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTcbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !range !29, !alias.scope !55, !noundef !5 ; 2 uses
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !55 ; 5 uses
  %i.h = icmp ne ptr %i.g, null
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.h, i1 false
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %1 = icmp eq i64 %i.d, 0
  br i1 %1, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !65 ; 6 uses
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i) ]
  %i.k = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !5, !noalias !65 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.k(ptr noundef nonnull %i.g)
          to label %bb.e unwind label %bb.g, !noalias !65

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !30, !invariant.load !5, !noalias !65 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !31, !invariant.load !5, !noalias !65
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #24, !noalias !65
  br label %.thread.i.i

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !30, !invariant.load !5, !noalias !65 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !31, !invariant.load !5, !noalias !65
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #24, !noalias !65
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.c, align 8, !alias.scope !66
  %i.w = extractvalue { ptr, i32 } %i.q, 0
  %i.x = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.w)
          to label %bb.j unwind label %bb.i, !noalias !55 ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !55
  unreachable

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.c, align 8, !alias.scope !66
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.j:                                             ; preds = %.body.i.i.i.i.i.i
  %i.z = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.m unwind label %bb.l, !noalias !55

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.j, %.thread.i.i
  %i.ac = load ptr, ptr %i.b, align 8, !alias.scope !49, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not4.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i, label %bb.q

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.z, ptr nonnull %i.aa) #26
          to label %.body.i unwind label %bb.p, !noalias !55

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr %i.ab)
          to label %bb.n unwind label %bb.l, !noalias !55

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #27
          to label %bb.o unwind label %bb.l, !noalias !55

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !55
  unreachable

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.af, i1 noundef zeroext %.sroa.0.0.i.i)
          to label %bb.u unwind label %bb.r, !noalias !49

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.ad, %bb.l ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !70, !noundef !5 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.s

bb.s:                                             ; preds = %.body.i
  %i.aj = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !71
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.ae

bb.u:                                             ; preds = %bb.q
  %i.al = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !76
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.w, %bb.t, %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.an, %bb.w ], [ %eh.lpad-body.i, %bb.t ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.s ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #26
          to label %common.resume.i unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i: ; preds = %bb.v, %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.ao = load i64, ptr %i.c, align 8, !range !29, !alias.scope !89, !noundef !5
  %2 = icmp eq i64 %i.ao, 0
  br i1 %2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !89, !noundef !5 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !89 ; 6 uses
  %i.aq = icmp eq ptr %.val.i.i.i, null
  br i1 %i.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.ar = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !5, !noalias !90 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.ar(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aa unwind label %bb.ac, !noalias !90

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !30, !invariant.load !5, !noalias !90 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !31, !invariant.load !5, !noalias !90
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #24, !noalias !90
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit

bb.ac:                                            ; preds = %bb.z
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !30, !invariant.load !5, !noalias !90 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %common.resume.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !31, !invariant.load !5, !noalias !90
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #24, !noalias !90
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ad, %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ax, %bb.ac ], [ %i.ax, %bb.ad ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.t
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit4.i, %bb.x, %bb.aa, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !31, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !31, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !31, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !30, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !31, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapAhj14_mEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
  ret void

bb.f:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapAhj14_mEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

end_hunk_1
begin_hunk_2_@_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1D_6marker4SendEL_EuECs7BtpbLEd5q3_9elfshaker:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cr = invoke { i64, ptr } @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cn)
          to label %bb.as unwind label %.body29   ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.cs = extractvalue { i64, ptr } %i.cr, 0
  %i.ct = extractvalue { i64, ptr } %i.cr, 1      ; 2 uses
  %i.cu = trunc nuw i64 %i.cs to i1
  br i1 %i.cu, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cv, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.cw = load ptr, ptr %i.h, align 8, !alias.scope !350, !nonnull !5, !noundef !5
  %i.cx = atomicrmw sub ptr %i.cw, i64 1 release, align 8, !noalias !350
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.ac

bb.av:                                            ; preds = %bb.as
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.db = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  store ptr %i.da, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46: ; preds = %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.dc = load ptr, ptr %i.j, align 8, !alias.scope !363, !nonnull !5, !noundef !5
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !363
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit46 unwind label %bb.r

.body29.thread:                                   ; preds = %bb.ao, %bb.aj, %.body29, %bb.ay
  %eh.lpad-body3059 = phi { ptr, i32 } [ %i.cg, %.body29 ], [ %i.di, %bb.ay ], [ %i.ce, %bb.aj ], [ %i.cp, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.df = load ptr, ptr %i.h, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !370
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %.body29.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #28
          to label %.thread unwind label %bb.az

bb.ay:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EuEs_0ECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g) #26
          to label %.body29.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.be, %bb.ax, %bb.w, %.body35.thread, %bb.bg, %bb.ba, %bb.ay
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ba:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15ChildSpawnHooksECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #26
          to label %.thread unwind label %bb.az

bb.bb:                                            ; preds = %.body35.thread, %.body35
  %.pn2770 = phi { ptr, i32 } [ %.pn2771, %.body35.thread ], [ %.pn27, %.body35 ]
  %.sroa.018.068 = phi i1 [ %.sroa.018.069, %.body35.thread ], [ %.sroa.018.0, %.body35 ]
  %.sroa.017.066 = phi i8 [ %.sroa.017.067, %.body35.thread ], [ %.sroa.017.0, %.body35 ]
  %i.dk = trunc nuw i8 %.sroa.017.066 to i1
  br i1 %i.dk, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit

.body35.thread:                                   ; preds = %bb.n, %bb.f, %.body35
  %.pn2771 = phi { ptr, i32 } [ %.pn27, %.body35 ], [ %i.ba, %bb.n ], [ %i.u, %bb.f ]
  %.sroa.018.069 = phi i1 [ %.sroa.018.0, %.body35 ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.067 = phi i8 [ %.sroa.017.0, %.body35 ], [ 1, %bb.n ], [ 1, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr nonnull %6, ptr nonnull %7) #26
          to label %bb.bb unwind label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bd, %bb.bc, %bb.be, %bb.bb
  br i1 %.sroa.018.068, label %bb.bg, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.dl = load ptr, ptr %i.k, align 8, !alias.scope !371, !noundef !5 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dn = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !374
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.az

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit
  resume { ptr, i32 } %.pn2770

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %bb.bf unwind label %bb.az
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1K_6marker4SendEL_EuEs_0IB1E_uE9call_once6vtableCs7BtpbLEd5q3_9elfshaker(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !379, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !379, !nonnull !5, !align !20, !noundef !5 ; 2 uses
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  %i.g = load <2 x ptr>, ptr %0, align 8, !alias.scope !379
  store <2 x ptr> %i.g, ptr %i.a, align 16, !noalias !379
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB2C_6marker4SendEL_EuEs_000uECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.b, !noalias !382

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker(ptr nonnull %i.d, ptr nonnull %i.f) #26
          to label %.body26.i unwind label %bb.c, !noalias !382

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !noalias !382
  unreachable

_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1O_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %__rust_try.exit.i unwind label %bb.d, !noalias !379

bb.d:                                             ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %.body26.i

.body26.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.h, %bb.b ]
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body27.i, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.f unwind label %bb.e, !noalias !379 ; 2 uses

bb.e:                                             ; preds = %.body26.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !379
  unreachable

bb.f:                                             ; preds = %.body26.i
  %i.n = extractvalue { ptr, ptr } %i.l, 0
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  br label %__rust_try.exit.i

__rust_try.exit.i:                                ; preds = %bb.f, %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.p = phi ptr [ %i.o, %bb.f ], [ undef, %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.n, %bb.f ], [ null, %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB9_3ops8function6FnOnceuEp6OutputuNtNtB9_6marker4SendEL_EuEs_00EIB2L_uE9call_onceCs7BtpbLEd5q3_9elfshaker.exit.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !379, !nonnull !5, !noundef !5 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.u = load i64, ptr %i.t, align 8, !range !29, !alias.scope !387, !noalias !379, !noundef !5
  %1 = icmp eq i64 %i.u, 0
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.g

bb.g:                                             ; preds = %__rust_try.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !387, !noalias !379, !noundef !5 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !387, !noalias !379 ; 6 uses
  %i.x = icmp eq ptr %.val.i.i, null
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.y = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !390 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.j unwind label %bb.l, !noalias !390

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !30, !invariant.load !5, !noalias !390 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !31, !invariant.load !5, !noalias !390
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #24, !noalias !390
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !30, !invariant.load !5, !noalias !390 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !31, !invariant.load !5, !noalias !390
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #24, !noalias !390
  br label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.k, %bb.j, %bb.g, %__rust_try.exit.i
  store i64 1, ptr %i.t, align 8, !noalias !379
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.q, ptr %.sroa.57.0..sroa_idx8.i, align 8, !noalias !379
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !379
  store ptr %i.s, ptr %i.b, align 8, !noalias !379
  %i.ak = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !391
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.n, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuEs_0Cs7BtpbLEd5q3_9elfshaker.exit

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28, !noalias !379
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuEs_0Cs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit25.i: ; preds = %bb.p, %bb.o
  resume { ptr, i32 } %i.ae

bb.o:                                             ; preds = %bb.m, %bb.l
  store i64 1, ptr %i.t, align 8, !noalias !379
  store ptr %i.q, ptr %i.v, align 8, !noalias !379
  store ptr %i.p, ptr %i.w, align 8, !noalias !379
  %i.am = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !396
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit25.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit25.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1F_6marker4SendEL_EuEs_0Cs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECs7BtpbLEd5q3_9elfshaker.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !379
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs1_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_9JoinInneruE4joinCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  invoke void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !413, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !413
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.i = cmpxchg ptr %i.h, i64 1, i64 -1 acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread, !prof !414

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %.val acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  store atomic i64 1, ptr %i.h release, align 8
  br i1 %i.l, label %bb.e, label %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread, !prof !415

_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread: ; preds = %bb.d, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %bb.f unwind label %bb.b

bb.e:                                             ; preds = %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit
  %i.m = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.n, align 8
  %i.o = trunc nuw i64 %.sroa.0.0.copyload to i1
  br i1 %i.o, label %bb.g, label %bb.i, !prof !416

bb.f:                                             ; preds = %bb.i, %_RNvMsD_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9is_uniqueCs7BtpbLEd5q3_9elfshaker.exit.thread
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.p = load ptr, ptr %0, align 8, !alias.scope !429, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !429
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7 unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27
          to label %bb.f unwind label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.t = load ptr, ptr %i.g, align 8, !alias.scope !436, !nonnull !5, !noundef !5
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !436
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7: ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.w = load ptr, ptr %i.g, align 8, !alias.scope !443, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !443
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit9

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCsk6GKf1Xiy0l_4ureq(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit9

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECs7BtpbLEd5q3_9elfshaker.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECs7BtpbLEd5q3_9elfshaker.exit7, %bb.l
  %i.z = insertvalue { ptr, ptr } poison, ptr %.sroa.4.0.copyload, 0
  %i.aa = insertvalue { ptr, ptr } %i.z, ptr %.sroa.5.0.copyload, 1
  ret { ptr, ptr } %i.aa

bb.m:                                             ; preds = %bb.n, %bb.k, %bb.c
end_hunk_2
