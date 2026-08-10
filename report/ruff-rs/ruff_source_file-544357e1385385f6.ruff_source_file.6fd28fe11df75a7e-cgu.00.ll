inline.NumInlined: 85
inline.NumDeleted: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN = external local_unnamed_addr global { { { ptr } } }
@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@1 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@2 = private unnamed_addr constant [38 x i8] c"assertion failed: start.raw <= end.raw", align 1
@3 = private unnamed_addr constant [42 x i8] c"crates/ruff_source_file/src/line_index.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00>\01\00\00\0D\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\0D\01\00\00\0D\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\B7\00\00\00%\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00)\00\00\00\10\00\00\00" }>, align 8
@8 = private unnamed_addr constant [52 x i8] c"assertion failed: u32::try_from(bytes.len()).is_ok()", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00%\00\00\00\09\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\CC\00\00\00,\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\D0\00\00\00,\00\00\00" }>, align 8
@12 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00,\01\00\00+\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\F1\01\00\002\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\F3\01\00\00\1D\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c")\00\00\00\00\00\00\00\F7\01\00\00U\00\00\00" }>, align 8
@17 = private unnamed_addr constant [23 x i8] c"tuple struct OneIndexed", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9BeaGo73rC4_16ruff_source_file }>, align 8
@19 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@20 = private unnamed_addr constant [36 x i8] c"crates/ruff_text_size/src/traits.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"#\00\00\00\00\00\00\00\13\00\00\00\1F\00\00\00" }>, align 8
@22 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9BeaGo73rC4_16ruff_source_file, align 8
@23 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@24 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @23, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEECs9BeaGo73rC4_16ruff_source_file.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEECs9BeaGo73rC4_16ruff_source_file.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerEEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerEBF_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEECs9BeaGo73rC4_16ruff_source_file.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEECs9BeaGo73rC4_16ruff_source_file.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerEBF_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsa_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB6_9LineIndexNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB17_7tracker15StandardTrackerEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1p_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %2)
  %i.c = load i64, ptr %i.a, align 8, !noundef !3
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerNtCs33Yq3JqQgDT_9get_size27GetSize21get_size_with_trackerNtNtB17_7tracker15StandardTrackerEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2)
  %i.c = load i64, ptr %i.a, align 8, !noundef !3
  %i.d = add i64 %i.c, 32
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef range(i64 1, 0) i64 @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 4 uses
  switch i64 %i.e, label %.lr.ph.i [
    i64 0, label %bb.d
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i32, ptr %i.f, align 4, !alias.scope !4, !noalias !7, !noundef !3 ; 2 uses
  %i.g = icmp eq i32 %.val14.i, %1
  br i1 %i.g, label %bb.c, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.019.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.05.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.019.i, 1              ; 2 uses
  %i.i = add nuw i64 %i.h, %.sroa.05.018.i        ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.e
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %.val16.i = load i32, ptr %i.k, align 4, !alias.scope !4, !noalias !7, !noundef !3
  %i.l = icmp ugt i32 %.val16.i, %1
  %i.m = select i1 %i.l, i64 %.sroa.05.018.i, i64 %i.i, !unpredictable !3 ; 2 uses
  %i.n = sub i64 %.sroa.01.019.i, %i.h            ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.p = icmp ult i32 %.val14.i, %1
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.e
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, -1
  %i.u = tail call i64 @llvm.uadd.sat.i64(i64 %i.t, i64 1)
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.lcssa.i, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.v, %bb.c ], [ %i.u, %bb.b ], [ -1, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 6 uses
  %i.f = add i64 %1, -1                           ; 4 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !noalias !9, !nonnull !3, !noundef !3 ; 2 uses
  %i.j = icmp ult i64 %i.f, %i.e
  br i1 %i.j, label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !noalias !9
  unreachable

_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !noalias !9, !noundef !3 ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %1, i64 -2) ; 4 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit
  %i.o = icmp ult i64 %i.m, %i.e
  br i1 %i.o, label %bb.g, label %bb.h

bb.e:                                             ; preds = %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit
  %i.p = icmp ugt i64 %3, 4294967295
  %i.q = shl nuw i64 %3, 32
  %.sroa.09.0.insert.insert.i.i7 = select i1 %i.p, i64 513, i64 %i.q ; 2 uses
  %i.r = trunc i64 %.sroa.09.0.insert.insert.i.i7 to i1
  br i1 %i.r, label %bb.f, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i8, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13
  store i8 2, ptr %i.b, align 1, !noalias !13
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18, !noalias !18
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i8: ; preds = %bb.e
  %.sroa.6.0.extract.shift.i.i.i9 = lshr i64 %.sroa.09.0.insert.insert.i.i7, 32
  %.sroa.6.0.extract.trunc.i.i.i10 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i9 to i32
  br label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4, !noalias !18, !noundef !3
  br label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !noalias !18
  unreachable

_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i8, %bb.g
  %.sroa.0.0.i6 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i10, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i8 ], [ %i.t, %bb.g ] ; 2 uses
  %.not = icmp ugt i32 %i.l, %.sroa.0.0.i6
  br i1 %.not, label %bb.k, label %bb.l, !prof !12

bb.i:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %3, 4294967295
  %i.v = shl nuw i64 %3, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.u, i64 513, i64 %i.v ; 2 uses
  %i.w = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.w, label %bb.j, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  store i8 2, ptr %i.a, align 1, !noalias !19
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %bb.i
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable

bb.l:                                             ; preds = %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %.sroa.3.0 = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %.sroa.0.0.i6, %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11 ]
  %.sroa.0.0 = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %i.l, %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit11 ]
  %i.x = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 1, 0) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = add i64 %1, -1                           ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  %i.h = icmp eq i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, %i.g
  br i1 %i.i, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %3, 4294967295
  %i.k = shl nuw i64 %3, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.j, i64 513, i64 %i.k ; 2 uses
  %i.l = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.l, label %bb.d, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22
  store i8 2, ptr %i.a, align 1, !noalias !22
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit: ; preds = %bb.c
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.n = load i32, ptr %i.m, align 4, !noundef !3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18
  unreachable

bb.g:                                             ; preds = %bb.e, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit
  %.sroa.0.0 = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit ], [ %i.n, %bb.e ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex11line_column(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = tail call { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex15source_location(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i8 noundef 2) ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 4 uses
  %i.e = icmp eq i64 %i.c, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 12565487, ptr %i.a, align 4
  %i.f = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.d, 1
  %i.h = call i64 @llvm.usub.sat.i64(i64 %i.d, i64 1)
  %.sroa.0.0 = select i1 %i.g, i64 %i.h, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.c ], [ %i.d, %bb.a ], [ %i.d, %bb.b ]
  %i.i = insertvalue { i64, i64 } %i.b, i64 %.sroa.0.1, 1
  ret { i64, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex15source_location(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !25, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !25, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noalias !25, !noundef !3 ; 7 uses
  switch i64 %i.f, label %.lr.ph.i.i [
    i64 0, label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %.lr.ph.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i32, ptr %i.g, align 4, !alias.scope !28, !noalias !31, !noundef !3 ; 2 uses
  %i.h = icmp eq i32 %.val14.i.i, %1
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.019.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = lshr i64 %.sroa.01.019.i.i, 1            ; 2 uses
  %i.j = add nuw i64 %i.i, %.sroa.05.018.i.i      ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.f
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  %.val16.i.i = load i32, ptr %i.l, align 4, !alias.scope !28, !noalias !31, !noundef !3
  %i.m = icmp ugt i32 %.val16.i.i, %1
  %i.n = select i1 %i.m, i64 %.sroa.05.018.i.i, i64 %i.j, !unpredictable !3 ; 2 uses
  %i.o = sub i64 %.sroa.01.019.i.i, %i.i          ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.q = icmp ult i32 %.val14.i.i, %1
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.r ; 2 uses
  %i.t = icmp ule i64 %i.s, %i.f
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nsw i64 %i.s, -1
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1)
  br label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.05.0.lcssa.i.i, i64 1)
  br label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit

_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.w, %bb.c ], [ %i.v, %bb.b ], [ -1, %bb.a ] ; 2 uses
  %i.x = add i64 %.sroa.0.0.i, -1                 ; 4 uses
  %i.y = icmp eq i64 %i.x, %i.f
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit
  %i.z = icmp ult i64 %i.x, %i.f
  br i1 %i.z, label %bb.g, label %bb.h

bb.e:                                             ; preds = %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index.exit
  %i.aa = icmp ugt i64 %3, 4294967295
  %i.ab = shl nuw i64 %3, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.aa, i64 513, i64 %i.ab ; 2 uses
  %i.ac = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.ac, label %bb.f, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  store i8 2, ptr %i.a, align 1, !noalias !33
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18, !noalias !38
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.e
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit

bb.g:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.x
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !38, !noundef !3
  br label %_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start.exit

bb.h:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB5_9LineIndexNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXse_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB5_14LineIndexInnerNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.f, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.g, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  %i.h = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  store i64 %i.h, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXsm_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB5_9IndexKindNtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_size(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.c, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx, align 8
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !61, !noalias !128, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9BeaGo73rC4_16ruff_source_file.exit, label %bb.b, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9BeaGo73rC4_16ruff_source_file(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9BeaGo73rC4_16ruff_source_file.exit

_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9BeaGo73rC4_16ruff_source_file.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9BeaGo73rC4_16ruff_source_file(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs9BeaGo73rC4_16ruff_source_file(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs7_NtNtCs33Yq3JqQgDT_9get_size25impls9ownershipINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerEB1p_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECs9BeaGo73rC4_16ruff_source_file(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9BeaGo73rC4_16ruff_source_file(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeE8grow_oneCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeRSB14_ECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1t_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB6_7NonZerojENtNtNtBa_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9BeaGo73rC4_16ruff_source_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!6 = distinct !{!6, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECs9BeaGo73rC4_16ruff_source_file"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECs9BeaGo73rC4_16ruff_source_file: argument 1"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start: argument 0"}
!11 = distinct !{!11, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!14, !16}
!14 = distinct !{!14, !15, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!15 = distinct !{!15, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!16 = distinct !{!16, !17, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start: argument 0"}
!17 = distinct !{!17, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start"}
!18 = !{!16}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!21 = distinct !{!21, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!24 = distinct !{!24, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index: argument 0"}
!27 = distinct !{!27, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_index"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!30 = distinct !{!30, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECs9BeaGo73rC4_16ruff_source_file"}
!31 = !{!32, !26}
!32 = distinct !{!32, !30, !"_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSize16binary_search_byNCNvB2_13binary_search0ECs9BeaGo73rC4_16ruff_source_file: argument 1"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!35 = distinct !{!35, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!36 = distinct !{!36, !37, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start: argument 0"}
!37 = distinct !{!37, !"_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex10line_start"}
!38 = !{!36}
!39 = !{i64 0, i64 2}
!40 = !{i64 0, i64 -9223372036854775807}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeE8push_mutCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!43 = distinct !{!43, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeE8push_mutCs9BeaGo73rC4_16ruff_source_file"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNCNvXs3_NtCsiVHPhtDv1FH_6memchr6memchrNtB7_7Memchr2NtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs9BeaGo73rC4_16ruff_source_file: argument 0"}
!46 = distinct !{!46, !"_RNCNvXs3_NtCsiVHPhtDv1FH_6memchr6memchrNtB7_7Memchr2NtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs9BeaGo73rC4_16ruff_source_file"}
!47 = distinct !{null}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!"branch_weights", i32 4, i32 28}
!52 = distinct !{!52, !49, !50}
!53 = distinct !{!53, !50, !49}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerEE3newB13_: argument 0"}
!56 = distinct !{!56, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs9BeaGo73rC4_16ruff_source_file10line_index14LineIndexInnerEE3newB13_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeE8push_mutCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!59 = distinct !{!59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeE8push_mutCs9BeaGo73rC4_16ruff_source_file"}
!60 = !{i64 0, i64 -9223372036854775808}
!61 = !{i8 0, i8 2}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!64 = distinct !{!64, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!67 = distinct !{!67, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!68 = !{!69, !71, !73}
!69 = distinct !{!69, !70, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!70 = distinct !{!70, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9BeaGo73rC4_16ruff_source_file"}
!71 = distinct !{!71, !72, !"_RNvXsO_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!72 = distinct !{!72, !"_RNvXsO_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!73 = distinct !{!73, !74, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BO_5count0ECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!74 = distinct !{!74, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter11EncodeUtf16NtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BO_5count0ECs9BeaGo73rC4_16ruff_source_file"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!77 = distinct !{!77, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!78 = !{!"branch_weights", i32 4001, i32 4000000}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!81 = distinct !{!81, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!84 = distinct !{!84, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!87 = distinct !{!87, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!90 = distinct !{!90, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!91 = !{!92, !94, !96, !98, !99, !101}
!92 = distinct !{!92, !93, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!93 = distinct !{!93, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9BeaGo73rC4_16ruff_source_file"}
!94 = distinct !{!94, !95, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!95 = distinct !{!95, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!96 = distinct !{!96, !97, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNvXs_NtNtBN_8adapters4takeINtB2r_4TakepEBH_8try_fold5checkcB1v_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1v_ENCINvMB3q_B3n_10wrap_mut_2B1v_cNCINvNtB2t_3map8map_foldcB1v_B1v_NvYcNtNtB1z_6traits7TextLen8text_lenNvYB1v_NtNtB3s_5arith3Add3addE0E0E0INtNtB3s_12control_flow11ControlFlowB3n_B1v_EECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!97 = distinct !{!97, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNvXs_NtNtBN_8adapters4takeINtB2r_4TakepEBH_8try_fold5checkcB1v_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1v_ENCINvMB3q_B3n_10wrap_mut_2B1v_cNCINvNtB2t_3map8map_foldcB1v_B1v_NvYcNtNtB1z_6traits7TextLen8text_lenNvYB1v_NtNtB3s_5arith3Add3addE0E0E0INtNtB3s_12control_flow11ControlFlowB3n_B1v_EECs9BeaGo73rC4_16ruff_source_file"}
!98 = distinct !{!98, !97, !"_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNvXs_NtNtBN_8adapters4takeINtB2r_4TakepEBH_8try_fold5checkcB1v_INtNtNtB9_3ops9try_trait17NeverShortCircuitB1v_ENCINvMB3q_B3n_10wrap_mut_2B1v_cNCINvNtB2t_3map8map_foldcB1v_B1v_NvYcNtNtB1z_6traits7TextLen8text_lenNvYB1v_NtNtB3s_5arith3Add3addE0E0E0INtNtB3s_12control_flow11ControlFlowB3n_B1v_EECs9BeaGo73rC4_16ruff_source_file: argument 1"}
!99 = distinct !{!99, !100, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvMNtNtBb_3ops9try_traitINtB2W_17NeverShortCircuitB24_E10wrap_mut_2B24_cNCINvNtB7_3map8map_foldcB24_B24_NvYcNtNtB28_6traits7TextLen8text_lenNvYB24_NtNtB2Y_5arith3Add3addE0E0B3h_ECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!100 = distinct !{!100, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator8try_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvMNtNtBb_3ops9try_traitINtB2W_17NeverShortCircuitB24_E10wrap_mut_2B24_cNCINvNtB7_3map8map_foldcB24_B24_NvYcNtNtB28_6traits7TextLen8text_lenNvYB24_NtNtB2Y_5arith3Add3addE0E0B3h_ECs9BeaGo73rC4_16ruff_source_file"}
!101 = distinct !{!101, !102, !"_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!102 = distinct !{!102, !"_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeNtNtNtBc_3str4iter5CharsENtB6_8SpecTake9spec_foldNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCINvNtB8_3map8map_foldcB1M_B1M_NvYcNtNtB1Q_6traits7TextLen8text_lenNvYB1M_NtNtNtBc_3ops5arith3Add3addE0ECs9BeaGo73rC4_16ruff_source_file"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!105 = distinct !{!105, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9BeaGo73rC4_16ruff_source_file"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file: argument 0"}
!108 = distinct !{!108, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9BeaGo73rC4_16ruff_source_file"}
!109 = !{i64 8}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvXs4_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB5_10OneIndexedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt: argument 0"}
!112 = distinct !{!112, !"_RNvXs4_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB5_10OneIndexedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_RNvXs4_NtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB5_10OneIndexedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt: argument 1"}
!115 = !{!111, !114}
!116 = !{i64 1, i64 0}
!117 = !{!118, !114}
!118 = distinct !{!118, !119, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!119 = distinct !{!119, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt"}
!120 = !{!121, !111}
!121 = distinct !{!121, !119, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!124 = distinct !{!124, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt"}
!125 = !{!126}
!126 = distinct !{!126, !124, !"_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!127 = !{i8 0, i8 6}
!128 = !{!129, !131}
!129 = distinct !{!129, !130, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9BeaGo73rC4_16ruff_source_file: argument 0"}
!130 = distinct !{!130, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9BeaGo73rC4_16ruff_source_file"}
!131 = distinct !{!131, !132, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9BeaGo73rC4_16ruff_source_file: argument 0"}
!132 = distinct !{!132, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs9BeaGo73rC4_16ruff_source_file"}
!133 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
