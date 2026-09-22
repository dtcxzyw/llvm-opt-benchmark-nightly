Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.02?download=true
inline.NumInlined: 518
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\17\00\00\00\00\00\00\00\14\00\00\00O\00\00\00" }>, align 8
@5 = private unnamed_addr constant [7 x i8] c"dry_run", align 1
@6 = private unnamed_addr constant [15 x i8] c"loose_snapshots", align 1
@7 = private unnamed_addr constant [13 x i8] c"loose_objects", align 1
@_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@8 = private unnamed_addr constant [71 x i8] c"Specify what to GC (--loose-snapshots, --loose-objects). Nothing to do!", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\17\00\00\00\00\00\00\00\1A\00\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant [13 x i8] c"elfshaker::gc", align 1
@11 = private unnamed_addr constant [16 x i8] c"Invalid options!", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs3oUPovFnLWP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt, ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr @12, ptr @_RNvXs4_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs7BtpbLEd5q3_9elfshaker, ptr @_RNvXs4_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause, ptr @_RNvYNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs7BtpbLEd5q3_9elfshaker }>, align 8
@14 = private unnamed_addr constant [20 x i8] c"\11Remaining roots: \C0\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\17\00\00\00\00\00\00\00B\00\00\00\09\00\00\00" }>, align 8
@16 = private unnamed_addr constant [22 x i8] c"\09Deleting \C0\09 objects\0A\00", align 1
@17 = private unnamed_addr constant [15 x i8] c"\0AGC: Freed \C0\01\0A\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCskuiImRAV2ip_9elfshaker4repo5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCskuiImRAV2ip_9elfshaker4repo5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr @_RNvXs_NtNtCskuiImRAV2ip_9elfshaker4repo5errorNtB4_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr @18, ptr @_RNvYNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs7BtpbLEd5q3_9elfshaker, ptr @_RNvYNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs7BtpbLEd5q3_9elfshaker }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\17\00\00\00\00\00\00\001\00\00\00\12\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\17\00\00\00\00\00\00\002\00\00\00\1D\00\00\00" }>, align 8
@22 = private unnamed_addr constant [19 x i8] c"\0EDeleting pack \C0\01\0A\00", align 1
@23 = private unnamed_addr constant [2 x i8] c"gc", align 1
@24 = private unnamed_addr constant [101 x i8] c"Cleanup redundant snapshots and unreferenced objects. This frees up disk space after creating a pack.", align 1
@25 = private unnamed_addr constant [7 x i8] c"dry-run", align 1
@26 = private unnamed_addr constant [32 x i8] c"Do not actually delete anything.", align 1
@27 = private unnamed_addr constant [15 x i8] c"loose-snapshots", align 1
@28 = private unnamed_addr constant [55 x i8] c"Delete redundant loose snapshots which exist an a pack.", align 1
@29 = private unnamed_addr constant [13 x i8] c"loose-objects", align 1
@30 = private unnamed_addr constant [73 x i8] c"Delete unreferenced loose objects (which are not needed by any snapshot).", align 1
@31 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs7BtpbLEd5q3_9elfshaker, align 8
@32 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@33 = private unnamed_addr constant [7 x i8] c"IOError", align 1
@34 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@35 = private unnamed_addr constant [12 x i8] c"WalkDirError", align 1
@36 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@37 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@38 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@39 = private unnamed_addr constant [9 x i8] c"PackError", align 1
@40 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@41 = private unnamed_addr constant [7 x i8] c"IdError", align 1
@42 = private unnamed_addr constant [11 x i8] c"CorruptHead", align 1
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorENtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@44 = private unnamed_addr constant [13 x i8] c"BrokenHeadRef", align 1
@45 = private unnamed_addr constant [16 x i8] c"CorruptPackIndex", align 1
@46 = private unnamed_addr constant [11 x i8] c"CorruptPack", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@49 = private unnamed_addr constant [22 x i8] c"AmbiguousSnapshotMatch", align 1
@50 = private unnamed_addr constant [12 x i8] c"DirtyWorkDir", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@52 = private unnamed_addr constant [12 x i8] c"PackNotFound", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsaL1QbXo9JQH_3std4path7PathBufNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@54 = private unnamed_addr constant [18 x i8] c"RepositoryNotFound", align 1
@55 = private unnamed_addr constant [14 x i8] c"BadLooseObject", align 1
@56 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCskuiImRAV2ip_9elfshaker4repo6remote22RemoteIndexFormatErrorNtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@57 = private unnamed_addr constant [20 x i8] c"BadRemoteIndexFormat", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCs7BtpbLEd5q3_9elfshaker }>, align 8
@59 = private unnamed_addr constant [9 x i8] c"HttpError", align 1
@60 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@61 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6336722583290301682 to ptr), ptr inttoptr (i64 -4483810605392225024 to ptr) }>, align 8
@62 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6346130011287342276 to ptr), ptr inttoptr (i64 -6927853504436608336 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !26 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !26, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !26

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !6, !noalias !26 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !6, !noalias !26
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23, !noalias !26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserECs7BtpbLEd5q3_9elfshaker.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !6, !noalias !26 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !6, !noalias !26
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23, !noalias !26
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrIBC_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !6
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
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCskfBPnJUU6aB_12clap_builder7builder6os_str5OsStrINtNtB4_6option6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEECs7BtpbLEd5q3_9elfshaker.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryNtNtB11_5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(80) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtNtB4_2io5error5ErrorEECs7BtpbLEd5q3_9elfshaker(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.c
  ], !prof !12

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !32, !noalias !31
  store i8 3, ptr %i.a, align 8, !alias.scope !32, !noalias !31
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !31
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecAhj14_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCs35zZu0fmp16_7walkdir7DirListENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir7DirListENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir7DirListENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCs35zZu0fmp16_7walkdir8AncestorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir8AncestorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir8AncestorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskfBPnJUU6aB_12clap_builder7mkeymap3KeyEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker:bb.a
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB1W_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionNtNtB23_6os_str5OsStrEEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1m_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1m_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder3str3StrbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTcbEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTcbEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtBR_6marker4SendNtB2B_4SyncEL_ENtNtBP_4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtBE_6filter6FilterINtNtBE_10filter_map9FilterMapNtCs35zZu0fmp16_7walkdir8IntoIterNCINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2Z_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB31_4pack6PackIdEE0ENCB2S_s_0ENCB2S_s0_0EINtNtB4_6result6ResultzNtNtB31_5error5ErrorEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !47, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val6.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !47 ; 6 uses
  %i.c = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir14WalkDirOptionsECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i) ]
  %i.d = load ptr, ptr %.val6.i.i.i.i, align 8, !invariant.load !6, !noalias !47 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !47

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !6, !noalias !47 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir14WalkDirOptionsECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !6, !noalias !47
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23, !noalias !47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir14WalkDirOptionsECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !6, !noalias !47 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !6, !noalias !47
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23, !noalias !47
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #24
          to label %.body7.i.i.i.i unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir14WalkDirOptionsECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !range !5, !alias.scope !48, !noundef !6
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir14WalkDirOptionsECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body7.i.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.k

.body7.i.i.i.i:                                   ; preds = %bb.k, %bb.i, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.j, %.body.i.i.i.i ], [ %i.w, %bb.k ], [ %i.t, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #24
          to label %.body10.i.i.i.i unwind label %bb.v

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs35zZu0fmp16_7walkdir14WalkDirOptionsECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCs35zZu0fmp16_7walkdir7DirListENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir7DirListENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body10.i.i.i.i unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir7DirListENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body10.i.i.i.i:                                  ; preds = %bb.o, %bb.l, %.body7.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body7.i.i.i.i ], [ %i.ab, %bb.o ], [ %i.y, %bb.l ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #24
          to label %.body13.i.i.i.i unwind label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCs35zZu0fmp16_7walkdir8AncestorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir8AncestorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body13.i.i.i.i unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir7DirListEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCs35zZu0fmp16_7walkdir8AncestorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body13.i.i.i.i:                                  ; preds = %bb.s, %bb.p, %.body10.i.i.i.i
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %.pn2.i.i.i.i, %.body10.i.i.i.i ], [ %i.ag, %bb.s ], [ %i.ad, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #24
          to label %common.resume.i.i.i.i unwind label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body13.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_6filter6FilterINtNtBG_10filter_map9FilterMapNtCs35zZu0fmp16_7walkdir8IntoIterNCINvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2F_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB2H_4pack6PackIdEE0ENCB2y_s_0ENCB2y_s0_0EECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs35zZu0fmp16_7walkdir8AncestorEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.t, %.body13.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %.pn4.i.i.i.i, %.body13.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorECs7BtpbLEd5q3_9elfshaker:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !alias.scope !98, !noalias !97
  store i8 3, ptr %i.a, align 8, !alias.scope !98, !noalias !97
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi), !noalias !97
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdxnJubla0R8_3rmp6encode15ValueWriteErrorECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs974quTetXso_9rmp_serde6decode5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.ae ], [ %i.m, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #24
          to label %common.resume unwind label %bb.ah

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit9 unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit2
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit2
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs974quTetXso_9rmp_serde6decode5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.ah:                                            ; preds = %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.c
  ], !prof !12

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !101
  store i8 3, ptr %i.a, align 8, !alias.scope !101
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3arg3ArgECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !5, !alias.scope !114, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body36 unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !115, !noundef !6
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body36 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39 unwind label %bb.i

.body36:                                          ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.i ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %.body40 unwind label %bb.by

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.p = load i64, ptr %i.o, align 8, !range !7, !alias.scope !116, !noundef !6 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %switch.i.i.i = icmp samesign ult i64 %i.p, 4
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !119 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !119, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.t = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !119 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i.i)
          to label %bb.m unwind label %bb.o, !noalias !119

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6, !noalias !119 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !6, !noalias !119
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23, !noalias !119
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit

bb.o:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !6, !noalias !119 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !10, !invariant.load !6, !noalias !119
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23, !noalias !119
  br label %.body40

.body40:                                          ; preds = %bb.p, %bb.o, %.body36
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body36 ], [ %i.z, %bb.o ], [ %i.z, %bb.p ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #24
          to label %.body43 unwind label %bb.by

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.n, %bb.m, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body43 unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body43:                                          ; preds = %bb.t, %bb.q, %.body40
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body40 ], [ %i.ak, %bb.t ], [ %i.ah, %bb.q ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #24
          to label %.body47 unwind label %bb.by

bb.t:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body47 unwind label %bb.w

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49 unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body47:                                          ; preds = %bb.x, %bb.u, %.body43
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body43 ], [ %i.ap, %bb.x ], [ %i.am, %bb.u ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ao) #24
          to label %.body52 unwind label %bb.by

bb.x:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body47

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49: ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body52 unwind label %bb.aa

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit49
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54 unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body52:                                          ; preds = %bb.ab, %bb.y, %.body47
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body47 ], [ %i.au, %bb.ab ], [ %i.ar, %bb.y ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #24
          to label %.body56 unwind label %bb.by

bb.ab:                                            ; preds = %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body52

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54: ; preds = %bb.z
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body56 unwind label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdEECs7BtpbLEd5q3_9elfshaker.exit54
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body56:                                          ; preds = %bb.af, %bb.ac, %.body52
  %.pn10 = phi { ptr, i32 } [ %.pn8, %.body52 ], [ %i.az, %bb.af ], [ %i.aw, %bb.ac ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #24
          to label %.body59 unwind label %bb.by

bb.af:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body56

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body59 unwind label %bb.ai

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body59:                                          ; preds = %bb.aj, %bb.ag, %.body56
  %.pn12 = phi { ptr, i32 } [ %.pn10, %.body56 ], [ %i.be, %bb.aj ], [ %i.bb, %bb.ag ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #24
          to label %.body63 unwind label %bb.by

bb.aj:                                            ; preds = %bb.ah
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body59

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.ah
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body63 unwind label %bb.am

bb.al:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtBT_7builder6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCskfBPnJUU6aB_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEECs7BtpbLEd5q3_9elfshaker.exit65 unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bh = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandECs7BtpbLEd5q3_9elfshaker:bb.a

.body94:                                          ; preds = %bb.ba, %bb.ay, %.body88
  %.pn22 = phi { ptr, i32 } [ %.pn20, %.body88 ], [ %i.cg, %bb.ba ], [ %i.cd, %bb.ay ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #24
          to label %.body100 unwind label %bb.cb

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i93
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body94

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit91, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i93
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !5, !alias.scope !161, !noundef !6
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body100 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103 unwind label %bb.be

.body100:                                         ; preds = %bb.be, %bb.bc, %.body94
  %.pn24 = phi { ptr, i32 } [ %.pn22, %.body94 ], [ %i.cn, %bb.be ], [ %i.ck, %bb.bc ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cm) #24
          to label %.body106 unwind label %bb.cb

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body100

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker.exit97, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i99
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !5, !alias.scope !162, !noundef !6
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.body106 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109 unwind label %bb.bi

.body106:                                         ; preds = %bb.bi, %bb.bg, %.body100
  %.pn26 = phi { ptr, i32 } [ %.pn24, %.body100 ], [ %i.cu, %bb.bi ], [ %i.cr, %bb.bg ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ct) #24
          to label %bb.bj unwind label %bb.cb

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body106

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit103, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrECs7BtpbLEd5q3_9elfshaker.exit.i105
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskfBPnJUU6aB_12clap_builder7mkeymap7MKeyMapECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cv)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bk, %.body106
  %.pn28 = phi { ptr, i32 } [ %i.cx, %bb.bk ], [ %.pn26, %.body106 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw) #24
          to label %.body111 unwind label %bb.cb

bb.bk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder10styled_str9StyledStrEECs7BtpbLEd5q3_9elfshaker.exit109
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.body111 unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body111:                                         ; preds = %bb.bp, %bb.bm, %bb.bj
  %.pn30 = phi { ptr, i32 } [ %.pn28, %bb.bj ], [ %i.dc, %bb.bp ], [ %i.cz, %bb.bm ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.db) #24
          to label %.body114 unwind label %bb.cb

bb.bp:                                            ; preds = %bb.bn
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body111

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.bn
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %.body114 unwind label %bb.bs

bb.br:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder7command7CommandEECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body114:                                         ; preds = %bb.bt, %bb.bq, %.body111
  %.pn32 = phi { ptr, i32 } [ %.pn30, %.body111 ], [ %i.dh, %bb.bt ], [ %i.de, %bb.bq ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #24
          to label %.body116 unwind label %bb.cb

bb.bt:                                            ; preds = %bb.br
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body114

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.br
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.dj = load i64, ptr %i.di, align 8, !range !7, !alias.scope !163, !noundef !6 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %switch.i.i.i = icmp samesign ult i64 %i.dj, 4
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !166 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !166, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.dn = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !166 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.dn(ptr noundef nonnull %.val.i.i.i)
          to label %bb.bx unwind label %bb.bz, !noalias !166

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !range !9, !invariant.load !6, !noalias !166 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !range !10, !invariant.load !6, !noalias !166
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.dp, i64 noundef range(i64 1, 536870913) %i.ds) #23, !noalias !166
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit

bb.bz:                                            ; preds = %bb.bw
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !9, !invariant.load !6, !noalias !166 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.body116, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dx = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !10, !invariant.load !6, !noalias !166
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.dv, i64 noundef range(i64 1, 536870913) %i.dy) #23, !noalias !166
  br label %.body116

.body116:                                         ; preds = %bb.ca, %bb.bz, %.body114
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body114 ], [ %i.dt, %bb.bz ], [ %i.dt, %bb.ca ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3ext10ExtensionsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.dz) #24
          to label %bb.cc unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskfBPnJUU6aB_12clap_builder7builder12value_parser11ValueParserEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.by, %bb.bx, %bb.bu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskfBPnJUU6aB_12clap_builder7builder9arg_group8ArgGroupEECs7BtpbLEd5q3_9elfshaker.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfBPnJUU6aB_12clap_builder7builder3ext10ExtensionsECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ea)
  ret void

bb.cb:                                            ; preds = %.body116, %.body114, %.body111, %bb.bj, %.body106, %.body100, %.body94, %.body88, %.body83, %.body79, %.body76, %.body71, %.body65, %.body59, %.body53, %.body47, %.body42, %.body38, %.body
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.cc:                                            ; preds = %.body116
  resume { ptr, i32 } %.pn34
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo10repository10RepositoryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body11 unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body11 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13 unwind label %bb.g

.body11:                                          ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5 = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val6 = load ptr, ptr %i.i, align 8, !nonnull !6, !align !8, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker(ptr %.val5, ptr nonnull %.val6) #24
          to label %.body14 unwind label %bb.o

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.l, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.m = load ptr, ptr %.val4, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.m(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit13
  %i.n = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #23
  br label %.body14

.body14:                                          ; preds = %bb.l, %bb.k, %.body11
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body11 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8 = load i32, ptr %i.y, align 8, !noundef !6 ; 2 uses
  %i.z = icmp eq i32 %.val8, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit, label %bb.m

bb.m:                                             ; preds = %.body14
  %i.aa = tail call noundef i32 @close(i32 noundef %.val8) #23 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val7 = load i32, ptr %i.ab, align 8, !noundef !6 ; 2 uses
  %i.ac = icmp eq i32 %.val7, -1
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
  %i.ad = tail call noundef i32 @close(i32 noundef %.val7) #23 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit16: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTRL0_eEEp6OutputNtNtCskuiImRAV2ip_9elfshaker8progress16ProgressReporterNtNtB4_6marker4SendNtB2O_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, %bb.n
  ret void

bb.o:                                             ; preds = %.body11, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std2fs4FileEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.m, %.body14
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack7IdErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ], [ %i.g, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.e, %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !14, !noundef !6 ; 3 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %i.e = xor i64 %i.c, -9223372036854775808       ; 2 uses
  %i.f = icmp ult i64 %i.e, 16
  %i.g = select i1 %i.f, i64 %i.e, i64 1
  switch i64 %i.g, label %.unreachabledefault [
    i64 0, label %bb.h
    i64 1, label %bb.k
    i64 2, label %bb.z
    i64 3, label %bb.ac
    i64 4, label %bb.ad
    i64 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 6, label %bb.ae
    i64 7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 9, label %bb.ag
    i64 10, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit
    i64 11, label %bb.aj
    i64 12, label %bb.am
    i64 13, label %bb.ap
    i64 14, label %bb.as
    i64 15, label %bb.b
  ]

.unreachabledefault:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.j = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.j(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #23
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.bb, %.body.i, %bb.ax, %bb.aq, %bb.an, %bb.ak, %bb.aa, %.body.i.i, %.body2.i.i, %bb.x, %bb.f, %bb.g, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %bb.bb ], [ %i.p, %bb.f ], [ %i.az, %bb.x ], [ %i.bi, %bb.af ], [ %i.bc, %bb.aa ], [ %i.bn, %bb.ak ], [ %i.bq, %bb.an ], [ %i.bt, %bb.aq ], [ %eh.lpad-body.i, %.body.i ], [ %i.p, %bb.g ], [ %eh.lpad-body3.i.i, %.body2.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cd, %bb.ax ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !188, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  %i.w = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.x = and i64 %i.w, 3
  switch i64 %i.x, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit
    i64 1, label %bb.j
  ], !prof !12

default.unreachable:                              ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.z = and i64 %i.w, 1095216660480
  %i.aa = icmp ne i64 %i.z, 1095216660480
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.assume(i1 %i.aa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !189, !noalias !188
  store i8 3, ptr %i.b, align 8, !alias.scope !189, !noalias !188
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac), !noalias !188
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !188
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.ad = icmp eq i64 %i.c, -1
  br i1 %i.ad, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !5, !alias.scope !192, !noundef !6
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body2.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.w

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.n
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.ah, %bb.n ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #24
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %.val.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !194, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.ao = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ap = and i64 %i.ao, 3
  switch i64 %i.ap, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i
    i64 1, label %bb.u
  ], !prof !12

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.aq = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ar = and i64 %i.ao, 1095216660480
  %i.as = icmp ne i64 %i.ar, 1095216660480
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.assume(i1 %i.as)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.at = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !195, !noalias !194
  store i8 3, ptr %i.a, align 8, !alias.scope !195, !noalias !194
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au), !noalias !193
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.u, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.v:                                             ; preds = %.body2.i.i, %.body.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

.body2.i.i:                                       ; preds = %bb.w, %bb.q
  %eh.lpad-body3.i.i = phi { ptr, i32 } [ %i.aw, %bb.w ], [ %i.aj, %bb.q ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ax) #24
          to label %common.resume unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit7.i.i unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit7.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.z:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.aa

end_hunk_3
begin_hunk_4_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorECs7BtpbLEd5q3_9elfshaker:bb.a
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.ba

bb.aj:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit6 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit6: ; preds = %bb.aj
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.am:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.am
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.ap:                                            ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit9 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit9: ; preds = %bb.ap
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.as:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bv)
          to label %.body.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bv)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.av, %bb.at
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.by, %bb.av ], [ %i.bw, %bb.at ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #24
          to label %common.resume unwind label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !5, !alias.scope !197, !noundef !6
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.aw
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.az:                                            ; preds = %.body.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ba:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ah, %bb.ba
  %eh.lpad-body = phi { ptr, i32 } [ %i.cg, %bb.ba ], [ %i.bk, %bb.ah ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ch) #24
          to label %common.resume unwind label %bb.bd

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs7BtpbLEd5q3_9elfshaker.exit

bb.bd:                                            ; preds = %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskuiImRAV2ip_9elfshaker3log10measure_okNCINvNtNtB4_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0uNtNtBP_5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 17 uses
  %.sroa.8.i = alloca [56 x i8], align 8          ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.17 = alloca [36 x i8], align 4           ; 6 uses
  %i.g = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.b unwind label %bb.an      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i32 } %i.g, 0
  %i.i = extractvalue { i64, i32 } %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  %.sroa.015.0.copyload = load i64, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.416.0.copyload = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.617.0.copyload = load ptr, ptr %.sroa.617.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !214
  store i64 0, ptr %i.f, align 8, !noalias !214
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !noalias !214
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %i.k, align 8, !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !214
  store i64 0, ptr %i.e, align 8, !noalias !214
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !214
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !214
  %i.l = icmp ult i64 %.sroa.5.0.copyload, 144115188075855872
  tail call void @llvm.assume(i1 %i.l)
  %.idx.i = shl nuw nsw i64 %.sroa.5.0.copyload, 6
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.416.0.copyload, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !214
  store ptr %.sroa.416.0.copyload, ptr %i.d, align 8, !noalias !214
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.416.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !214
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.015.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !214
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.n = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.n, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.617.0.copyload, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.617.0.copyload, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.617.0.copyload, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.617.0.copyload, i64 32 ; 2 uses
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.i

.body113.i:                                       ; preds = %bb.ad, %bb.ab, %bb.m, %.loopexit.split-lp.i, %.loopexit170.i
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.do, %bb.ab ], [ %i.dt, %bb.ad ], [ %lpad.loopexit.i, %.loopexit170.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.aj, !noalias !214

.loopexit170.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i112.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i

.loopexit.split-lp.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i117.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph.i
  %i.w = phi ptr [ %.sroa.416.0.copyload, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph.i ], [ %i.dr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit.i ] ; 3 uses
  %.sroa.0.0178.i = phi i64 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.lr.ph.i ], [ %.sroa.0.1.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.x, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !215, !noalias !216
  %.sroa.0.0.copyload132.i = load i64, ptr %i.w, align 8, !noalias !217 ; 2 uses
  %.sroa.8.0..sroa_idx133.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx133.i, i64 56, i1 false), !noalias !217
  %.not.i = icmp eq i64 %.sroa.0.0.copyload132.i, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !214
  store i64 %.sroa.0.0.copyload132.i, ptr %i.c, align 8, !noalias !214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.i, i64 56, i1 false), !noalias !214
  %i.y = load i64, ptr %i.o, align 8, !noalias !214, !noundef !6 ; 2 uses
  %i.z = sub nuw i64 %i.y, %.sroa.0.0178.i
  %.not75.i = icmp ugt i64 %.sroa.0.0178.i, %i.y
  br i1 %.not75.i, label %bb.l, label %bb.j

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit87.i unwind label %bb.d, !noalias !214

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %bb.d, %.body113.i
  %.pn79.i = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %.pn.i, %.body113.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24
          to label %.body.i unwind label %bb.aj, !noalias !214

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit121.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit87.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !214
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i unwind label %bb.e, !noalias !214

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit87.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.f, !noalias !214

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !214
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit87.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %bb.g, !noalias !214

.body.i:                                          ; preds = %bb.af, %bb.g, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit.i
  %.pn81.i = phi { ptr, i32 } [ %.pn79.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit.i ], [ %i.ab, %bb.e ], [ %i.ad, %bb.g ], [ %i.dv, %bb.af ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %.thread21 unwind label %bb.aj, !noalias !214

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i125.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !214
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.al unwind label %bb.h, !noalias !214

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread21 unwind label %bb.i, !noalias !214

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !214
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.ag = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc.i:                                         ; preds = %bb.j
  %i.ah = invoke noundef ptr @_RNvMs7_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10PackReader4seek(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.7.0.copyload, i64 noundef %i.z)
          to label %.noexc88.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc88.i:                                       ; preds = %.noexc.i
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.k, label %.thread.i.loopexit

bb.k:                                             ; preds = %.noexc88.i
  %i.ai = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc89.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc89.i:                                       ; preds = %bb.k
  %i.aj = extractvalue { i64, i32 } %i.ag, 0
  %i.ak = extractvalue { i64, i32 } %i.ag, 1
  %i.al = extractvalue { i64, i32 } %i.ai, 0
  %i.am = extractvalue { i64, i32 } %i.ai, 1
  %i.an = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.al, i32 noundef %i.am, i64 noundef %i.aj, i32 noundef %i.ak)
          to label %bb.n unwind label %bb.m, !noalias !214 ; 2 uses

bb.l:                                             ; preds = %bb.w, %bb.s, %bb.c
  %.sroa.0.1.i = phi i64 [ %i.bw, %bb.w ], [ %i.bw, %bb.s ], [ %.sroa.0.0178.i, %bb.c ]
  store i64 0, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !214
  invoke void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRRRNtB6_4PathECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.9.0.copyload)
          to label %bb.x unwind label %bb.m, !noalias !214

bb.m:                                             ; preds = %.noexc109.i, %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i, %bb.z, %bb.y, %bb.x, %.noexc101.i, %bb.u, %.noexc99.i, %bb.t, %.noexc96.i, %bb.q, %.noexc94.i, %bb.p, %bb.o, %bb.l, %.noexc89.i, %bb.k, %.noexc.i, %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #24
          to label %.body113.i unwind label %bb.aj, !noalias !214

bb.n:                                             ; preds = %.noexc89.i
  %i.ap = extractvalue { i64, i32 } %i.an, 0      ; 2 uses
  %i.aq = extractvalue { i64, i32 } %i.an, 1      ; 3 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %.thread.i, label %bb.o

.thread.i.loopexit:                               ; preds = %.noexc88.i
  %i.as = ptrtoint ptr %i.ah to i64
  br label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.at = uitofp i64 %i.ap to double
  %i.au = icmp ult i32 %i.aq, 1000000000
  call void @llvm.assume(i1 %i.au)
  %i.av = uitofp nneg i32 %i.aq to double
  %i.aw = fdiv double %i.av, 1.000000e+09
  %i.ax = fadd double %i.aw, %i.at
  %i.ay = load double, ptr %i.p, align 8, !noalias !214, !noundef !6
  %i.az = fadd double %i.ax, %i.ay
  store double %i.az, ptr %i.p, align 8, !noalias !214
  %i.ba = load i64, ptr %i.q, align 8, !noalias !214, !noundef !6
  invoke void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE6resizeCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ba, i8 noundef 0)
          to label %bb.p unwind label %bb.m, !noalias !214

bb.p:                                             ; preds = %bb.o
  %.val83.i = load ptr, ptr %i.j, align 8, !noalias !214 ; 2 uses
  %.val84.i = load i64, ptr %i.k, align 8, !noalias !214
  %i.bb = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc94.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc94.i:                                       ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val83.i) ]
  %i.bc = invoke noundef ptr @_RNvMs7_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_10PackReader10read_exact(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.7.0.copyload, ptr noalias nofree noundef nonnull %.val83.i, i64 noundef %.val84.i)
          to label %.noexc95.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc95.i:                                       ; preds = %.noexc94.i
  %.not.i91.i = icmp eq ptr %i.bc, null
  br i1 %.not.i91.i, label %bb.q, label %.thread156.i.loopexit

bb.q:                                             ; preds = %.noexc95.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc96.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc96.i:                                       ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bb, 0
  %i.bf = extractvalue { i64, i32 } %i.bb, 1
  %i.bg = extractvalue { i64, i32 } %i.bd, 0
  %i.bh = extractvalue { i64, i32 } %i.bd, 1
  %i.bi = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.bg, i32 noundef %i.bh, i64 noundef %i.be, i32 noundef %i.bf)
          to label %bb.r unwind label %bb.m, !noalias !214 ; 2 uses

bb.r:                                             ; preds = %.noexc96.i
  %i.bj = extractvalue { i64, i32 } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i64, i32 } %i.bi, 1      ; 3 uses
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %.thread.i, label %bb.s

.thread156.i.loopexit:                            ; preds = %.noexc95.i
  %i.bm = ptrtoint ptr %i.bc to i64
  br label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.bn = uitofp i64 %i.bj to double
  %i.bo = icmp ult i32 %i.bk, 1000000000
  call void @llvm.assume(i1 %i.bo)
  %i.bp = uitofp nneg i32 %i.bk to double
  %i.bq = fdiv double %i.bp, 1.000000e+09
  %i.br = fadd double %i.bq, %i.bn
  %i.bs = load double, ptr %i.r, align 8, !noalias !214, !noundef !6
  %i.bt = fadd double %i.br, %i.bs
  store double %i.bt, ptr %i.r, align 8, !noalias !214
  %i.bu = load i64, ptr %i.o, align 8, !noalias !214, !noundef !6
  %i.bv = load i64, ptr %i.q, align 8, !noalias !214, !noundef !6
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = load i8, ptr %.sroa.8.0.copyload, align 1, !range !15, !noalias !214, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.t, label %bb.l

bb.t:                                             ; preds = %bb.s
  %.val85.i = load ptr, ptr %i.j, align 8, !noalias !214 ; 2 uses
  %.val86.i = load i64, ptr %i.k, align 8, !noalias !214
  %i.bz = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc99.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc99.i:                                       ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val85.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !218
  invoke void @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13verify_object(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val85.i, i64 noundef %.val86.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.s)
          to label %.noexc100.i unwind label %bb.m, !noalias !214

.noexc100.i:                                      ; preds = %.noexc99.i
  %i.ca = load i64, ptr %i.b, align 8, !range !16, !noalias !218, !noundef !6 ; 2 uses
  %.not.i98.i = icmp eq i64 %i.ca, -2
  br i1 %.not.i98.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !218
  %i.cb = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc101.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc101.i:                                      ; preds = %bb.u
  %i.cc = extractvalue { i64, i32 } %i.bz, 0
  %i.cd = extractvalue { i64, i32 } %i.bz, 1
  %i.ce = extractvalue { i64, i32 } %i.cb, 0
  %i.cf = extractvalue { i64, i32 } %i.cb, 1
  %i.cg = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.ce, i32 noundef %i.cf, i64 noundef %i.cc, i32 noundef %i.cd)
          to label %bb.w unwind label %bb.m, !noalias !214 ; 2 uses

bb.v:                                             ; preds = %.noexc100.i
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6142.8.copyload.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !219
  %.sroa.10.8..sroa.48.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.8.copyload.i = load i32, ptr %.sroa.10.8..sroa.48.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !219
  %.sroa.13.8..sroa.48.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.17, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.13.8..sroa.48.0..sroa_idx.i.sroa_idx.i, i64 36, i1 false), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !218
  br label %.thread.i

bb.w:                                             ; preds = %.noexc101.i
  %i.ch = extractvalue { i64, i32 } %i.cg, 0
  %i.ci = extractvalue { i64, i32 } %i.cg, 1
  %i.cj = uitofp i64 %i.ch to double
  %i.ck = uitofp nneg i32 %i.ci to double
  %i.cl = fdiv double %i.ck, 1.000000e+09
  %i.cm = fadd double %i.cl, %i.cj
  %i.cn = load double, ptr %i.t, align 8, !noalias !214, !noundef !6
  %i.co = fadd double %i.cm, %i.cn
  store double %i.co, ptr %i.t, align 8, !noalias !214
  br label %bb.l

bb.x:                                             ; preds = %bb.l
  invoke void @_RINvMsr_NtCsaL1QbXo9JQH_3std4pathNtB6_7PathBuf4pushRNtNtNtB8_3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.y unwind label %bb.m, !noalias !214

bb.y:                                             ; preds = %bb.x
  %i.cp = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc106.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc106.i:                                      ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  %i.cq = load i32, ptr %i.u, align 4, !noalias !222, !noundef !6 ; 2 uses
  %i.cr = load i64, ptr %i.q, align 8, !noalias !222, !noundef !6
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.z, label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i

bb.z:                                             ; preds = %.noexc106.i
  %i.ct = invoke noundef ptr @_RINvNtNtCskuiImRAV2ip_9elfshaker4repo2fs12create_emptyRNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i32 noundef %i.cq)
          to label %.noexc107.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc107.i:                                      ; preds = %bb.z
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread15.i.i

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread15.i.i: ; preds = %.noexc107.i
  %i.cu = ptrtoint ptr %i.ct to i64
  br label %.loopexit.i

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %.noexc106.i
  %i.cv = load ptr, ptr %i.j, align 8, !noalias !222, !nonnull !6, !noundef !6
  %i.cw = load i64, ptr %i.k, align 8, !noalias !222, !noundef !6
  %i.cx = load ptr, ptr %.sroa.441.0..sroa_idx.i, align 8, !noalias !222, !nonnull !6, !noundef !6
  %i.cy = load i64, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !222, !noundef !6
  invoke void @_RNvNtNtCskuiImRAV2ip_9elfshaker4repo4pack12write_object(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cy, i32 noundef 1, i32 %i.cq)
          to label %.noexc108.i unwind label %bb.m, !noalias !214

.noexc108.i:                                      ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !221 ; 2 uses
  %.not.i103.i = icmp eq i64 %.pr.i.i, -2
  br i1 %.not.i103.i, label %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %.loopexit.loopexit.i

_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i: ; preds = %.noexc108.i, %.noexc107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  %i.cz = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc109.i unwind label %bb.m, !noalias !214 ; 2 uses

.noexc109.i:                                      ; preds = %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread.i.i
  %i.da = extractvalue { i64, i32 } %i.cp, 0
  %i.db = extractvalue { i64, i32 } %i.cp, 1
  %i.dc = extractvalue { i64, i32 } %i.cz, 0
  %i.dd = extractvalue { i64, i32 } %i.cz, 1
  %i.de = invoke { i64, i32 } @_RNvXs3_NtCsaL1QbXo9JQH_3std4timeNtB5_7InstantNtNtNtCs3oUPovFnLWP_4core3ops5arith3Sub3sub(i64 noundef %i.dc, i32 noundef %i.dd, i64 noundef %i.da, i32 noundef %i.db)
          to label %bb.aa unwind label %bb.m, !noalias !214 ; 2 uses

.loopexit.loopexit.i:                             ; preds = %.noexc108.i
  %.sroa.48.0..sroa_idx.i104.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6145.8.copyload.pre.i = load i64, ptr %.sroa.48.0..sroa_idx.i104.phi.trans.insert.i, align 8, !noalias !223
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread15.i.i
  %.sroa.6145.8.copyload.i = phi i64 [ %i.cu, %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread15.i.i ], [ %.sroa.6145.8.copyload.pre.i, %.loopexit.loopexit.i ]
  %i.df = phi i64 [ -9223372036854775808, %_RNCNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathEs_0s1_0Cs7BtpbLEd5q3_9elfshaker.exit.thread15.i.i ], [ %.pr.i.i, %.loopexit.loopexit.i ]
  %.sroa.10146.8..sroa.48.0..sroa_idx.i104.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.10146.8.copyload.i = load i32, ptr %.sroa.10146.8..sroa.48.0..sroa_idx.i104.sroa_idx.i, align 8, !noalias !223
  %.sroa.13147.8..sroa.48.0..sroa_idx.i104.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.17, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.13147.8..sroa.48.0..sroa_idx.i104.sroa_idx.i, i64 36, i1 false), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %.thread.i

bb.aa:                                            ; preds = %.noexc109.i
  %i.dg = extractvalue { i64, i32 } %i.de, 0
  %i.dh = extractvalue { i64, i32 } %i.de, 1
  %i.di = uitofp i64 %i.dg to double
  %i.dj = uitofp nneg i32 %i.dh to double
  %i.dk = fdiv double %i.dj, 1.000000e+09
  %i.dl = fadd double %i.dk, %i.di
  %i.dm = load double, ptr %i.v, align 8, !noalias !214, !noundef !6
  %i.dn = fadd double %i.dl, %i.dm
  store double %i.dn, ptr %i.v, align 8, !noalias !214
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i112.i unwind label %bb.ab, !noalias !214

bb.ab:                                            ; preds = %bb.aa
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body113.i unwind label %bb.ac, !noalias !214

bb.ac:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !214
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i112.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit.i unwind label %.loopexit170.i, !noalias !214

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.dq = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !224, !noalias !216, !nonnull !6, !noundef !6
  %i.dr = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !224, !noalias !216, !nonnull !6, !noundef !6 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dq
  br i1 %i.ds, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker.exit.i

.thread.i:                                        ; preds = %bb.r, %bb.n, %.thread156.i.loopexit, %.thread.i.loopexit, %.loopexit.i, %bb.v
  %.sroa.15.0 = phi i32 [ %.sroa.10146.8.copyload.i, %.loopexit.i ], [ %.sroa.10.8.copyload.i, %bb.v ], [ undef, %.thread.i.loopexit ], [ undef, %.thread156.i.loopexit ], [ undef, %bb.n ], [ undef, %bb.r ]
  %.sroa.10.0 = phi i64 [ %.sroa.6145.8.copyload.i, %.loopexit.i ], [ %.sroa.6142.8.copyload.i, %bb.v ], [ %i.as, %.thread.i.loopexit ], [ %i.bm, %.thread156.i.loopexit ], [ %i.bj, %bb.r ], [ %i.ap, %bb.n ]
  %.sroa.0.0 = phi i64 [ %i.df, %.loopexit.i ], [ %i.ca, %bb.v ], [ -9223372036854775808, %.thread.i.loopexit ], [ -9223372036854775808, %.thread156.i.loopexit ], [ -9223372036854775808, %bb.n ], [ -9223372036854775808, %bb.r ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i117.i unwind label %bb.ad, !noalias !214

bb.ad:                                            ; preds = %.thread.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body113.i unwind label %bb.ae, !noalias !214

bb.ae:                                            ; preds = %bb.ad
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !214
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i117.i: ; preds = %.thread.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit121.i unwind label %.loopexit.split-lp.i, !noalias !214

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit121.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit123.i unwind label %bb.d, !noalias !214

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit123.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryECs7BtpbLEd5q3_9elfshaker.exit121.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !214
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i125.i unwind label %bb.af, !noalias !214

bb.af:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit123.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.ag, !noalias !214

bb.ag:                                            ; preds = %bb.af
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !214
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i125.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEECs7BtpbLEd5q3_9elfshaker.exit123.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit129.i unwind label %bb.g, !noalias !214

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs7BtpbLEd5q3_9elfshaker.exit129.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs7BtpbLEd5q3_9elfshaker.exit.i125.i
end_hunk_4
