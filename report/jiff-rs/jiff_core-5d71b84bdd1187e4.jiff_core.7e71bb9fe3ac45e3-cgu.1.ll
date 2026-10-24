Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.1?download=true
inline.NumInlined: 193
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj9_Kj2_ECsaR3IayqLkK5_9jiff_core:bb.a
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECsaR3IayqLkK5_9jiff_core(ptr %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics20select_unpredictableINtNtNtB4_3mem12maybe_uninit11MaybeUninitjEECsaR3IayqLkK5_9jiff_core(i1 zeroext %0, i64 %1, i64 %2) unnamed_addr #1 {
bb.a:
  %. = select i1 %0, i64 %1, i64 %2
  ret i64 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RINvNtCs3oUPovFnLWP_4core10intrinsics20select_unpredictableOjECsaR3IayqLkK5_9jiff_core(i1 zeroext %0, ptr nofree readnone captures(ret: address, provenance) %1, ptr nofree readnone captures(ret: address, provenance) %2) unnamed_addr #1 {
bb.a:
  %. = select i1 %0, ptr %1, ptr %2
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RINvNtCs3oUPovFnLWP_4core10intrinsics23is_val_statically_knownbECsaR3IayqLkK5_9jiff_core(i1 zeroext %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeType4iterBA_(ptr align 4 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeE3newBU_(ptr align 4 %0, i64 %1) #18
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif14TransitionInfo4lastBA_(ptr nofree readnone captures(ret: address, provenance) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = getelementptr [2 x i8], ptr %0, i64 %1
  %i.b = getelementptr i8, ptr %i.a, i64 -2
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_searchBA_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  switch i64 %1, label %.lr.ph.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %i.c = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_search0BC_(ptr nonnull align 8 %i.a, ptr align 8 %i.b) #18 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.013.i = phi i64 [ %i.k, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.012.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.01.013.i, 1              ; 2 uses
  %i.f = add i64 %i.e, %.sroa.05.012.i            ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime13binary_search0BC_(ptr nonnull align 8 %i.a, ptr align 8 %i.g) #18
  %i.i = icmp eq i8 %i.h, 1
  %i.j = select i1 %i.i, i64 %.sroa.05.012.i, i64 %i.f, !unpredictable !4 ; 2 uses
  %i.k = sub nuw i64 %.sroa.01.013.i, %i.e        ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = icmp eq i8 %i.c, -1
  %i.n = zext i1 %i.m to i64
  %i.o = add i64 %.sroa.05.0.lcssa.i, %i.n
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime16binary_search_byNCNvB2_13binary_search0EBB_.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %i.o, %bb.b ], [ %1, %bb.a ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %._crit_edge.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTime8is_emptyBA_(ptr nofree readnone align 8 captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  switch i64 %1, label %.lr.ph.i [
    i64 0, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.lcssa.i
  %i.c = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_search0BC_(ptr nonnull align 8 %i.a, ptr align 8 %i.b) #18 ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.013.i = phi i64 [ %i.k, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.012.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.01.013.i, 1              ; 2 uses
  %i.f = add i64 %i.e, %.sroa.05.012.i            ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %i.h = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_search0BC_(ptr nonnull align 8 %i.a, ptr align 8 %i.g) #18
  %i.i = icmp eq i8 %i.h, 1
  %i.j = select i1 %i.i, i64 %.sroa.05.012.i, i64 %i.f, !unpredictable !4 ; 2 uses
  %i.k = sub nuw i64 %.sroa.01.013.i, %i.e        ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = icmp eq i8 %i.c, -1
  %i.n = zext i1 %i.m to i64
  %i.o = add i64 %.sroa.05.0.lcssa.i, %i.n
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp16binary_search_byNCNvB2_13binary_search0EBB_.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %i.o, %bb.b ], [ %1, %bb.a ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %._crit_edge.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp4lastBA_(ptr nofree readnone align 8 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = getelementptr [8 x i8], ptr %0, i64 %1
  %i.b = getelementptr i8, ptr %i.a, i64 -8
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.b
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp8is_emptyBA_(ptr nofree readnone align 8 captures(none) %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i48 0, -65534) i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date11checked_addB6_(i32 %0, i32 %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit
    i32 -1, label %bb.c
    i32 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %0, 16
  %i.b = ashr exact i32 %i.a, 16
  %i.c = shl i32 %0, 8
  %i.d = ashr i32 %i.c, 24                        ; 3 uses
  %i.e = icmp ult i32 %i.d, 3                     ; 2 uses
  %i.f = add nsw i32 %i.b, 32800
  %.neg.i = sext i1 %i.e to i32
  %i.g = add nsw i32 %i.f, %.neg.i                ; 3 uses
  %i.h = or disjoint i32 %i.d, 12
  %.sroa.04.0.i = select i1 %i.e, i32 %i.h, i32 %i.d
  %i.i = ashr i32 %0, 24
  %i.j = udiv i32 %i.g, 100
  %i.k = mul nuw nsw i32 %i.g, 1461
  %i.l = lshr i32 %i.k, 2
  %i.m = udiv i32 %i.g, 400
  %i.n = mul nsw i32 %.sroa.04.0.i, 979
  %i.o = add nsw i32 %i.n, -2919
  %i.p = lshr i32 %i.o, 5
  %i.q = add nsw i32 %i.i, -12699423
  %i.r = sub nuw nsw i32 %i.q, %i.j
  %i.s = add nuw nsw i32 %i.r, %i.m
  %i.t = add nsw i32 %i.s, %i.l
  %i.u = add nsw i32 %i.t, %i.p
  %i.v = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %i.u, i32 %1) #18 ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %2, label %bb.r

2:                                                ; preds = %bb.b
  %3 = extractvalue { i32, i32 } %i.v, 1          ; 2 uses
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 4371587
  %or.cond.i.i.i.i = icmp ult i64 %5, 7304484
  br i1 %or.cond.i.i.i.i, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit, label %bb.r

bb.c:                                             ; preds = %bb.a
  %.sroa.057.0.insert.ext.i = and i32 %0, 65535   ; 2 uses
  %.sroa.2.0.extract.shift.i.mask.i = and i32 %0, -16777216 ; 2 uses
  %i.y = icmp eq i32 %.sroa.2.0.extract.shift.i.mask.i, 16777216
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.258.0.insert.ext.i = and i32 %0, 16711680
  %.sroa.356.0.insert.shift.i = add i32 %.sroa.2.0.extract.shift.i.mask.i, -16777216
  %.sroa.255.0.insert.insert.i = or disjoint i32 %.sroa.356.0.insert.shift.i, %.sroa.258.0.insert.ext.i
  %.sroa.054.0.insert.insert.i = or disjoint i32 %.sroa.255.0.insert.insert.i, %.sroa.057.0.insert.ext.i
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.22.0.extract.shift.i.i = lshr i32 %0, 16
  %.sroa.22.0.extract.trunc.i.i = trunc i32 %.sroa.22.0.extract.shift.i.i to i8 ; 2 uses
  %i.z = icmp eq i8 %.sroa.22.0.extract.trunc.i.i, 1
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i8 %.sroa.22.0.extract.trunc.i.i, -1 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i = trunc i32 %0 to i16
  %i.ab = tail call i8 @_RNvNtCsaR3IayqLkK5_9jiff_core5civil13days_in_monthB3_(i16 %.sroa.01.0.extract.trunc.i.i, i8 %i.aa) #18
  %.sroa.353.0.insert.ext.i = zext i8 %i.ab to i32
  %.sroa.353.0.insert.shift.i = shl nuw i32 %.sroa.353.0.insert.ext.i, 24
  %.sroa.252.0.insert.ext.i = zext i8 %i.aa to i32
  %.sroa.252.0.insert.shift.i = shl nuw nsw i32 %.sroa.252.0.insert.ext.i, 16
  %.sroa.252.0.insert.insert.i = or disjoint i32 %.sroa.353.0.insert.shift.i, %.sroa.252.0.insert.shift.i
  %.sroa.051.0.insert.insert.i = or disjoint i32 %.sroa.252.0.insert.insert.i, %.sroa.057.0.insert.ext.i
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %0 to i16
  %i.ac = tail call { i16, i16 } @_RNvMs_NtCs3oUPovFnLWP_4core3nums11checked_addCsaR3IayqLkK5_9jiff_core(i16 %.sroa.01.0.extract.trunc.i.i.i, i16 range(i16 -1, 2) -1) #18 ; 2 uses
  %i.ad = extractvalue { i16, i16 } %i.ac, 0
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = extractvalue { i16, i16 } %i.ac, 1      ; 2 uses
  %6 = sext i16 %i.af to i64
  %7 = add nsw i64 %6, 9999
  %or.cond.i.i.i.i.i = icmp ult i64 %7, 19999
  br i1 %or.cond.i.i.i.i.i, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.thread.i, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.thread.i: ; preds = %bb.h
  %i.ag = zext i16 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 16
  br label %bb.i

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i: ; preds = %bb.h, %bb.g
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_4YearE3newB4_() #18
  %i.ai = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 32) ; 3 uses
  %i.aj = and i32 %i.ai, 255
  %.not.i = icmp eq i32 %i.aj, 254
  br i1 %.not.i, label %bb.i, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.i:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.thread.i
  %.sroa.34.0.in.in.i86.i = phi i32 [ %i.ah, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.thread.i ], [ %i.ai, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i ]
  %.sroa.377.0.extract.shift.i = lshr i32 %.sroa.34.0.in.in.i86.i, 16
  %.sroa.048.0.insert.insert.i = or disjoint i32 %.sroa.377.0.extract.shift.i, 520880128
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.j:                                             ; preds = %bb.a
  %.sroa.263.0.insert.ext.i = and i32 %0, 16711680
  %.sroa.062.0.insert.ext.i = and i32 %0, 65535   ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i32 %0, 24
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i32 %.sroa.2.0.extract.shift.i.i to i8 ; 2 uses
  %i.ak = icmp sgt i8 %.sroa.2.0.extract.trunc.i.i, 27
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.al = and i32 %0, -16777216
  %.sroa.361.0.insert.shift.i = add i32 %i.al, 16777216
  %.sroa.260.0.insert.insert.i = or disjoint i32 %.sroa.361.0.insert.shift.i, %.sroa.263.0.insert.ext.i
  %.sroa.059.0.insert.insert.i = or disjoint i32 %.sroa.260.0.insert.insert.i, %.sroa.062.0.insert.ext.i
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.l:                                             ; preds = %bb.j
  %.sroa.01.0.extract.trunc.i.i.i29 = trunc i32 %0 to i16 ; 2 uses
  %.sroa.22.0.extract.shift.i.i.i = lshr i32 %0, 16
  %.sroa.22.0.extract.trunc.i.i.i = trunc i32 %.sroa.22.0.extract.shift.i.i.i to i8 ; 2 uses
  %i.am = tail call i8 @_RNvNtCsaR3IayqLkK5_9jiff_core5civil13days_in_monthB3_(i16 %.sroa.01.0.extract.trunc.i.i.i29, i8 %.sroa.22.0.extract.trunc.i.i.i) #18
  %i.an = icmp eq i8 %i.am, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.an, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp eq i8 %.sroa.22.0.extract.trunc.i.i.i, 12
  br i1 %i.ao, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.257.0.insert.ext.i = add i32 %0, 65536
  %.sroa.257.0.insert.shift.i = and i32 %.sroa.257.0.insert.ext.i, 16711680
  %.sroa.257.0.insert.insert.i = or disjoint i32 %.sroa.062.0.insert.ext.i, %.sroa.257.0.insert.shift.i
  %.sroa.056.0.insert.insert.i = or disjoint i32 %.sroa.257.0.insert.insert.i, 16777216
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.o:                                             ; preds = %bb.m
  %i.ap = tail call { i16, i16 } @_RNvMs_NtCs3oUPovFnLWP_4core3nums11checked_addCsaR3IayqLkK5_9jiff_core(i16 %.sroa.01.0.extract.trunc.i.i.i29, i16 range(i16 -1, 2) 1) #18 ; 2 uses
  %i.aq = extractvalue { i16, i16 } %i.ap, 0
  %i.ar = trunc i16 %i.aq to i1
  br i1 %i.ar, label %bb.p, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.as = extractvalue { i16, i16 } %i.ap, 1      ; 2 uses
  %8 = sext i16 %i.as to i64
  %9 = add nsw i64 %8, 9999
  %or.cond.i.i.i.i.i31 = icmp ult i64 %9, 19999
  br i1 %or.cond.i.i.i.i.i31, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.thread.i, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.thread.i: ; preds = %bb.p
  %i.at = zext i16 %i.as to i32
  %i.au = shl nuw i32 %i.at, 16
  br label %bb.q

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i: ; preds = %bb.p, %bb.o
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_4YearE3newB4_() #18
  %i.av = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 32) ; 3 uses
  %i.aw = and i32 %i.av, 255
  %.not.i30 = icmp eq i32 %i.aw, 254
  br i1 %.not.i30, label %bb.q, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

bb.q:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.thread.i
  %.sroa.34.0.in.in.i97.i = phi i32 [ %i.au, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.thread.i ], [ %i.av, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i ]
  %.sroa.385.0.extract.shift.i = lshr i32 %.sroa.34.0.in.in.i97.i, 16
  %.sroa.053.0.insert.insert.i = or disjoint i32 %.sroa.385.0.extract.shift.i, 16842752
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit: ; preds = %bb.q, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i, %bb.n, %bb.k, %bb.i, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i, %bb.f, %bb.d, %bb.a, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit, %bb.r
  %.sroa.06.0 = phi i16 [ 1, %bb.r ], [ 0, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit ], [ 1, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.n ], [ 1, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i ]
  %.sroa.6.0 = phi i32 [ %i.ax, %bb.r ], [ %.sroa.0.0.insert.insert.i32, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit ], [ %i.ai, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9prev_yearB6_.exit.i ], [ %0, %bb.a ], [ %.sroa.054.0.insert.insert.i, %bb.d ], [ %.sroa.048.0.insert.insert.i, %bb.i ], [ %.sroa.051.0.insert.insert.i, %bb.f ], [ %.sroa.059.0.insert.insert.i, %bb.k ], [ %.sroa.053.0.insert.insert.i, %bb.q ], [ %.sroa.056.0.insert.insert.i, %bb.n ], [ %i.av, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9next_yearB6_.exit.i ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.06.0.insert.ext = zext nneg i16 %.sroa.06.0 to i48
  %.sroa.06.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.06.0.insert.ext
  ret i48 %.sroa.06.0.insert.insert

bb.r:                                             ; preds = %bb.b, %2
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_13UnixEpochDaysE3newB4_() #18
  %i.ax = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 24)
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit: ; preds = %2
  %i.ay = shl i32 %3, 2
  %i.az = add i32 %i.ay, 50797691                 ; 2 uses
  %i.ba = udiv i32 %i.az, 146097
  %i.bb = urem i32 %i.az, 146097
  %i.bc = or i32 %i.bb, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 2939745          ; 2 uses
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = trunc i64 %i.be to i32                  ; 2 uses
  %i.bi = udiv i32 %i.bh, 11758980
  %i.bj = mul nuw nsw i32 %i.ba, 100
  %i.bk = mul nuw nsw i32 %i.bi, 2141
  %i.bl = add nuw nsw i32 %i.bk, 197913           ; 3 uses
  %i.bm = and i32 %i.bl, 4128768
  %i.bn = icmp ugt i32 %i.bh, -696719417          ; 2 uses
  %i.bo = zext i1 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bj, 32736
  %i.bq = add nuw nsw i32 %i.bp, %i.bg
  %i.br = add nuw nsw i32 %i.bq, %i.bo
  %.lhs.trunc.i = trunc i32 %i.bl to i16
  %i.bs = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.bs to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.bt = add nuw nsw i32 %i.bm, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bn, i32 %i.bt, i32 %i.bl
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.br, 65535
  %.sroa.0.0.insert.insert.i32 = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date9yesterdayB6_.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i48 0, -65534) i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date16from_day_of_yearB6_(i16 %0, i16 %1) unnamed_addr #0 {
bb.a:
  %2 = sext i16 %0 to i64
  %3 = add nsw i64 %2, 9999
  %or.cond.i.i = icmp ult i64 %3, 19999
  br i1 %or.cond.i.i, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_4YearE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 32)
  br label %bb.c

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit: ; preds = %bb.a
  %i.b = zext i16 %0 to i32
  %i.c = shl nuw i32 %i.b, 16                     ; 2 uses
  %4 = sext i16 %1 to i64
  %5 = add nsw i64 %4, -1
  %or.cond.i.i51 = icmp ult i64 %5, 366
  br i1 %or.cond.i.i51, label %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit, label %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit.thread

_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit.thread: ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_9DayOfYearE3newB4_() #18
  %i.d = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 3)
  br label %bb.c

_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit: ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  %i.e = sext i16 %0 to i32
  %i.f = add nsw i32 %i.e, 32799                  ; 3 uses
  %6 = udiv i32 %i.f, 100
  %i.g = mul nuw nsw i32 %i.f, 1461
  %i.h = lshr i32 %i.g, 2
  %7 = udiv i32 %i.f, 400
  %reass.sub = sub nsw i32 %7, %6
  %8 = add nsw i32 %reass.sub, -12699116
  %i.i = add nsw i32 %8, %i.h
  %9 = sext i16 %1 to i32
  %i.j = add nsw i32 %9, -1
  %i.k = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %i.i, i32 %i.j) #18 ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %10, label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays11checked_add.exit.thread19.i

10:                                               ; preds = %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit
  %11 = extractvalue { i32, i32 } %i.k, 1         ; 2 uses
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, 4371587
  %or.cond.i.i.i.i = icmp ult i64 %13, 7304484
  br i1 %or.cond.i.i.i.i, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit, label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays11checked_add.exit.thread19.i

_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays11checked_add.exit.thread19.i: ; preds = %10, %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_13UnixEpochDaysE3newB4_() #18
  %i.n = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 24) ; 0 uses
  %.sroa.045.0.insert.insert = or disjoint i32 %i.c, 1
  %i.o = tail call i32 @_RNvMs9_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_18SpecialBoundsError16into_range_error(i32 %.sroa.045.0.insert.insert)
  br label %bb.c

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit: ; preds = %10
  %i.p = shl nsw i32 %11, 2
  %i.q = add nsw i32 %i.p, 50797691               ; 2 uses
  %i.r = udiv i32 %i.q, 146097
  %i.s = urem i32 %i.q, 146097
  %i.t = or i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 2939745            ; 2 uses
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = trunc i64 %i.v to i32                    ; 2 uses
  %i.z = udiv i32 %i.y, 11758980
  %i.aa = mul nuw nsw i32 %i.r, 100
  %i.ab = mul nuw nsw i32 %i.z, 2141
  %i.ac = add nuw nsw i32 %i.ab, 197913           ; 3 uses
  %i.ad = and i32 %i.ac, 4128768
  %i.ae = icmp ugt i32 %i.y, -696719417           ; 2 uses
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.aa, 32736
  %i.ah = add nuw nsw i32 %i.ag, %i.x
  %i.ai = add nuw nsw i32 %i.ah, %i.af            ; 2 uses
  %.lhs.trunc.i = trunc i32 %i.ac to i16
  %i.aj = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.aj to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.ak = add nuw nsw i32 %i.ad, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.ae, i32 %i.ak, i32 %i.ac
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.ai, 65535
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %.sroa.039.0.extract.trunc = trunc i32 %i.ai to i16
  %.not = icmp eq i16 %0, %.sroa.039.0.extract.trunc
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit
  %.sroa.041.0.insert.insert = or disjoint i32 %i.c, 1
  %i.al = tail call i32 @_RNvMs9_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_18SpecialBoundsError16into_range_error(i32 %.sroa.041.0.insert.insert)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit, %bb.b, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays11checked_add.exit.thread19.i, %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit.thread, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread
  %.sroa.6.0 = phi i32 [ %i.a, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ %i.d, %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit.thread ], [ %i.o, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays11checked_add.exit.thread19.i ], [ %i.al, %bb.b ], [ %.sroa.0.0.insert.insert.i56, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit ]
  %.sroa.0.0 = phi i16 [ 1, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ 1, %_RNvMsC_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_9DayOfYear6checkc.exit.thread ], [ 1, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays11checked_add.exit.thread19.i ], [ 1, %bb.b ], [ 0, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_addB9_.exit ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 -12688884, 145466941) i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date17to_unix_epoch_dayB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = shl i32 %0, 16
  %i.b = ashr exact i32 %i.a, 16
  %i.c = shl i32 %0, 8
  %i.d = ashr i32 %i.c, 24                        ; 3 uses
  %i.e = icmp ult i32 %i.d, 3                     ; 2 uses
  %i.f = add nsw i32 %i.b, 32800
  %.neg = sext i1 %i.e to i32
  %i.g = add nsw i32 %i.f, %.neg                  ; 3 uses
  %i.h = or disjoint i32 %i.d, 12
  %.sroa.04.0 = select i1 %i.e, i32 %i.h, i32 %i.d
  %i.i = ashr i32 %0, 24
  %i.j = udiv i32 %i.g, 100
  %i.k = mul nuw nsw i32 %i.g, 1461
  %i.l = lshr i32 %i.k, 2
  %i.m = udiv i32 %i.g, 400
  %i.n = mul nsw i32 %.sroa.04.0, 979
  %i.o = add nsw i32 %i.n, -2919
  %i.p = lshr i32 %i.o, 5
  %i.q = add nsw i32 %i.i, -12699423
  %i.r = sub nuw nsw i32 %i.q, %i.j
  %i.s = add nuw nsw i32 %i.r, %i.m
  %i.t = add nsw i32 %i.s, %i.l
  %i.u = add nsw i32 %i.t, %i.p
  ret i32 %i.u
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date20nth_weekday_of_monthB6_(ptr nofree readonly align 2 captures(none) %0, i8 %1, i8 %2) unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %1 to i64
  %i.b = add nsw i64 %i.a, -6
  %or.cond.i.i = icmp ult i64 %i.b, -11
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_17NthWeekdayOfMonthE3newB4_() #18
  %i.c = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 15)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp sgt i8 %1, 0
  %.sroa.012.0.copyload = load i32, ptr %0, align 2 ; 6 uses
  br i1 %i.e, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i8 @_RNvMs10_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_17NthWeekdayOfMonth5error()
  %i.g = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.f)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %.sroa.012.0.copyload to i16
  %.sroa.22.0.extract.shift.i.i.i = lshr i32 %.sroa.012.0.copyload, 16
  %.sroa.22.0.extract.trunc.i.i.i = trunc i32 %.sroa.22.0.extract.shift.i.i.i to i8
  %i.h = tail call i8 @_RNvNtCsaR3IayqLkK5_9jiff_core5civil13days_in_monthB3_(i16 %.sroa.01.0.extract.trunc.i.i.i, i8 %.sroa.22.0.extract.trunc.i.i.i) #18 ; 2 uses
  %i.i = shl i32 %.sroa.012.0.copyload, 16
  %i.j = ashr exact i32 %i.i, 16
  %i.k = shl i32 %.sroa.012.0.copyload, 8
  %i.l = ashr i32 %i.k, 24                        ; 3 uses
  %i.m = icmp ult i32 %i.l, 3                     ; 2 uses
  %i.n = add nsw i32 %i.j, 32800
  %.neg.i.i = sext i1 %i.m to i32
  %i.o = add nsw i32 %i.n, %.neg.i.i              ; 3 uses
  %i.p = or disjoint i32 %i.l, 12
  %.sroa.04.0.i.i = select i1 %i.m, i32 %i.p, i32 %i.l
  %i.q = sext i8 %i.h to i32
  %i.r = udiv i32 %i.o, 100
  %i.s = mul nuw nsw i32 %i.o, 1461
  %i.t = lshr i32 %i.s, 2
  %i.u = udiv i32 %i.o, 400
  %i.v = mul nsw i32 %.sroa.04.0.i.i, 979
  %i.w = add nsw i32 %i.v, -2919
  %i.x = lshr i32 %i.w, 5
  %i.y = add nsw i32 %i.q, -12699423
  %i.z = sub nuw nsw i32 %i.y, %i.r
  %i.aa = add nuw nsw i32 %i.z, %i.u
  %i.ab = add nsw i32 %i.aa, %i.t
  %i.ac = add nsw i32 %i.ab, %i.x
  %i.ad = mul i32 %i.ac, 613566757
  %i.ae = add i32 %i.ad, -1879048192
  %i.af = lshr i32 %i.ae, 29                      ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i: ; preds = %bb.f
  %i.ah = tail call i8 @_RNvMs1s_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16WeekdayMondayOne5error()
  %i.ai = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.ah) ; 2 uses
  %.sroa.25.0.extract.shift.i.i.i = lshr i32 %i.ai, 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = icmp eq i32 %i.aj, 254
  br i1 %i.ak, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @40, ptr nonnull inttoptr (i64 61 to ptr), ptr nonnull align 8 @41) #19
  unreachable

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit: ; preds = %bb.f, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i
  %.sroa.4.0.i3.i.i = phi i32 [ %.sroa.25.0.extract.shift.i.i.i, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i ], [ %i.af, %bb.f ]
  %.sroa.22.0.extract.trunc.i.i = trunc i32 %.sroa.4.0.i3.i.i to i8
  %i.al = sub i8 %.sroa.22.0.extract.trunc.i.i, %2
  %i.am = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa10rem_euclidCsaR3IayqLkK5_9jiff_core(i8 %i.al, i8 7, ptr nonnull align 8 @7) #18
  %i.an = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa3absCsaR3IayqLkK5_9jiff_core(i8 %1) #18
  %.neg = mul i8 %i.an, -7
  %.neg44 = add i8 %i.h, 7
  %i.ao = sub i8 %.neg44, %i.am
  %i.ap = add i8 %i.ao, %.neg
  %.sroa.023.0.copyload = load i32, ptr %0, align 2 ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i32 %.sroa.023.0.copyload to i16
  %.sroa.22.0.extract.shift.i = lshr i32 %.sroa.023.0.copyload, 16
  %.sroa.22.0.extract.trunc.i = trunc i32 %.sroa.22.0.extract.shift.i to i8
  %i.aq = tail call i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3newB6_(i16 %.sroa.01.0.extract.trunc.i, i8 %.sroa.22.0.extract.trunc.i, i8 %i.ap) #18 ; 2 uses
  %.sroa.033.0.extract.trunc = trunc i48 %i.aq to i16
  %.sroa.234.0.extract.shift = lshr i48 %i.aq, 16
  %.sroa.234.0.extract.trunc = trunc nuw i48 %.sroa.234.0.extract.shift to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.ar = shl i32 %.sroa.012.0.copyload, 16
  %i.as = ashr exact i32 %i.ar, 16
  %i.at = shl i32 %.sroa.012.0.copyload, 8
  %i.au = ashr i32 %i.at, 24                      ; 3 uses
  %i.av = icmp ult i32 %i.au, 3                   ; 2 uses
  %i.aw = add nsw i32 %i.as, 32800
  %.neg.i.i45 = sext i1 %i.av to i32
  %i.ax = add nsw i32 %i.aw, %.neg.i.i45          ; 3 uses
  %i.ay = or disjoint i32 %i.au, 12
  %.sroa.04.0.i.i46 = select i1 %i.av, i32 %i.ay, i32 %i.au
  %i.az = udiv i32 %i.ax, 100
  %i.ba = mul nuw nsw i32 %i.ax, 1461
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = udiv i32 %i.ax, 400
  %i.bd = mul nsw i32 %.sroa.04.0.i.i46, 979
  %i.be = add nsw i32 %i.bd, -2919
  %i.bf = lshr i32 %i.be, 5
  %reass.sub60 = sub nsw i32 %i.bc, %i.az
  %i.bg = add nsw i32 %reass.sub60, -12699422
  %i.bh = add nsw i32 %i.bg, %i.bb
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = mul i32 %i.bi, 613566757
  %i.bk = add i32 %i.bj, -1879048192
  %i.bl = lshr i32 %i.bk, 29                      ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i49, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit51

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i49: ; preds = %bb.h
  %i.bn = tail call i8 @_RNvMs1s_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16WeekdayMondayOne5error()
  %i.bo = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.bn) ; 2 uses
  %.sroa.25.0.extract.shift.i.i.i50 = lshr i32 %i.bo, 8
  %i.bp = and i32 %i.bo, 255
  %i.bq = icmp eq i32 %i.bp, 254
  br i1 %i.bq, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit51, label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i49
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @40, ptr nonnull inttoptr (i64 61 to ptr), ptr nonnull align 8 @41) #19
  unreachable

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit51: ; preds = %bb.h, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i49
  %.sroa.4.0.i3.i.i47 = phi i32 [ %.sroa.25.0.extract.shift.i.i.i50, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i.i49 ], [ %i.bl, %bb.h ]
  %.sroa.22.0.extract.trunc.i.i48 = trunc i32 %.sroa.4.0.i3.i.i47 to i8
  %i.br = sub i8 %2, %.sroa.22.0.extract.trunc.i.i48
  %i.bs = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa10rem_euclidCsaR3IayqLkK5_9jiff_core(i8 %i.br, i8 7, ptr nonnull align 8 @7) #18
  %i.bt = mul i8 %1, 7
  %i.bu = add i8 %i.bt, -6
  %i.bv = add i8 %i.bu, %i.bs
  %.sroa.014.0.copyload = load i32, ptr %0, align 2 ; 2 uses
  %.sroa.01.0.extract.trunc.i52 = trunc i32 %.sroa.014.0.copyload to i16
  %.sroa.22.0.extract.shift.i53 = lshr i32 %.sroa.014.0.copyload, 16
  %.sroa.22.0.extract.trunc.i54 = trunc i32 %.sroa.22.0.extract.shift.i53 to i8
  %i.bw = tail call i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3newB6_(i16 %.sroa.01.0.extract.trunc.i52, i8 %.sroa.22.0.extract.trunc.i54, i8 %i.bv) #18 ; 2 uses
  %.sroa.040.0.extract.trunc = trunc i48 %i.bw to i16
  %.sroa.241.0.extract.shift = lshr i48 %i.bw, 16
  %.sroa.241.0.extract.trunc = trunc nuw i48 %.sroa.241.0.extract.shift to i32
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit51, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit, %bb.e, %bb.b
  %.sroa.5.0 = phi i32 [ %i.c, %bb.b ], [ %i.g, %bb.e ], [ %.sroa.241.0.extract.trunc, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit51 ], [ %.sroa.234.0.extract.trunc, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit ]
  %.sroa.0.0 = phi i16 [ 1, %bb.b ], [ 1, %bb.e ], [ %.sroa.040.0.extract.trunc, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit51 ], [ %.sroa.033.0.extract.trunc, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date7weekdayB6_.exit ]
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0 to i48
  %.sroa.5.0.insert.shift = shl nuw i48 %.sroa.5.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i48 0, -65534) i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date24from_day_of_year_no_leapB6_(i16 %0, i16 %1) unnamed_addr #0 {
bb.a:
  %2 = sext i16 %0 to i64
  %3 = add nsw i64 %2, 9999
  %or.cond.i.i = icmp ult i64 %3, 19999
  br i1 %or.cond.i.i, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_4YearE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 32)
  br label %bb.f

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit: ; preds = %bb.a
  %4 = sext i16 %1 to i64
  %5 = add nsw i64 %4, -1
  %or.cond.i.i25 = icmp ult i64 %5, 365
  br i1 %or.cond.i.i25, label %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit, label %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit.thread

_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit.thread: ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_15DayOfYearNoLeapE3newB4_() #18
  %i.b = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 4)
  br label %bb.f

_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit: ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  %6 = icmp sgt i16 %1, 59
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit
  %.sroa.05.0 = phi i16 [ %1, %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit ], [ %spec.select, %bb.c ]
  %i.c = tail call i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date16from_day_of_yearB6_(i16 %0, i16 %.sroa.05.0) #18 ; 2 uses
  %i.d = trunc i48 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit
  %i.e = tail call zeroext i1 @_RNvNtCsaR3IayqLkK5_9jiff_core5civil12is_leap_yearB3_(i16 %0) #18
  %i.f = zext i1 %i.e to i16
  %spec.select = add nuw i16 %1, %i.f
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @3, ptr nonnull inttoptr (i64 35 to ptr), ptr nonnull align 8 @5) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %.sroa.222.0.extract.shift = lshr i48 %i.c, 16
  %.sroa.222.0.extract.trunc = trunc nuw i48 %.sroa.222.0.extract.shift to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit.thread, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread
  %.sroa.4.0 = phi i32 [ %i.a, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ %i.b, %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit.thread ], [ %.sroa.222.0.extract.trunc, %bb.e ]
  %.sroa.0.0 = phi i16 [ 1, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ 1, %_RNvMsE_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_15DayOfYearNoLeap6checkc.exit.thread ], [ 0, %bb.e ]
  %.sroa.4.0.insert.ext = zext i32 %.sroa.4.0 to i48
  %.sroa.4.0.insert.shift = shl nuw i48 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3dayB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i32 %0, 24
  %.sroa.2.0.extract.trunc = trunc nuw i32 %.sroa.2.0.extract.shift to i8
  ret i8 %.sroa.2.0.extract.trunc
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i48 0, -65534) i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3newB6_(i16 %0, i8 %1, i8 %2) unnamed_addr #0 {
bb.a:
  %3 = sext i16 %0 to i64
  %4 = add nsw i64 %3, 9999
  %or.cond.i.i = icmp ult i64 %4, 19999
  br i1 %or.cond.i.i, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_4YearE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 32)
  br label %bb.i

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit: ; preds = %bb.a
  %i.b = zext i16 %0 to i32                       ; 2 uses
  %i.c = shl nuw i32 %i.b, 16
  %i.d = sext i8 %1 to i64
  %i.e = add nsw i64 %i.d, -13
  %or.cond.i.i30 = icmp ult i64 %i.e, -12
  br i1 %or.cond.i.i30, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_5MonthE3newB4_() #18
  %i.f = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 12)
  br label %bb.i

bb.c:                                             ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  %i.g = icmp slt i8 %2, 1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i8 %2, 28
  br i1 %i.h, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i8 @_RNvMsA_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_3Day5error()
  %i.j = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.i)
  br label %bb.i

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.319.0.insert.ext = zext nneg i8 %2 to i32
  %.sroa.319.0.insert.shift = shl nuw nsw i32 %.sroa.319.0.insert.ext, 24
  %.sroa.218.0.insert.ext = zext i8 %1 to i32
  %.sroa.218.0.insert.shift = shl nuw nsw i32 %.sroa.218.0.insert.ext, 16
  %.sroa.218.0.insert.insert = or disjoint i32 %.sroa.319.0.insert.shift, %.sroa.218.0.insert.shift
  %.sroa.017.0.insert.insert = or disjoint i32 %.sroa.218.0.insert.insert, %i.b
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.k = tail call i8 @_RNvNtCsaR3IayqLkK5_9jiff_core5civil13days_in_monthB3_(i16 %0, i8 %1) #18
  %i.l = icmp sgt i8 %2, %i.k
  br i1 %i.l, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %.sroa.224.0.insert.ext = zext i8 %1 to i32
  %.sroa.224.0.insert.shift = shl nuw nsw i32 %.sroa.224.0.insert.ext, 8
  %.sroa.224.0.insert.insert = or disjoint i32 %.sroa.224.0.insert.shift, %i.c
  %i.m = tail call i32 @_RNvMs9_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_18SpecialBoundsError16into_range_error(i32 %.sroa.224.0.insert.insert)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.b, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread
  %.sroa.6.0 = phi i32 [ %i.a, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ %i.f, %bb.b ], [ %i.j, %bb.e ], [ %i.m, %bb.h ], [ %.sroa.017.0.insert.insert, %bb.f ]
  %.sroa.0.0 = phi i16 [ 1, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.h ], [ 0, %bb.f ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i32 %0 to i16
  ret i16 %.sroa.01.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date5monthB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %.sroa.22.0.extract.shift = lshr i32 %0, 16
  %.sroa.22.0.extract.trunc = trunc i32 %.sroa.22.0.extract.shift to i8
  ret i8 %.sroa.22.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time17subsec_nanosecondB6_(i64 %0) unnamed_addr #1 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i64 %0 to i32
  ret i32 %.sroa.01.0.extract.trunc
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time22with_subsec_nanosecondB6_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 2), (4, 6)) %0, i64 %1, i32 %2) unnamed_addr #0 {
bb.a:
  %or.cond.i.i = icmp ult i32 %2, 1000000000
  br i1 %or.cond.i.i, label %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit, label %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread

_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_16SubsecNanosecondE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 21)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %i.a, ptr %i.b, align 2
  br label %bb.b

_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit: ; preds = %bb.a
  %.sroa.44.0.extract.shift = lshr i64 %1, 48
  %.sroa.44.0.extract.trunc = trunc i64 %.sroa.44.0.extract.shift to i8
  %.sroa.33.0.extract.shift = lshr i64 %1, 40
  %.sroa.33.0.extract.trunc = trunc i64 %.sroa.33.0.extract.shift to i8
  %.sroa.22.0.extract.shift = lshr i64 %1, 32
  %.sroa.22.0.extract.trunc = trunc i64 %.sroa.22.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.c, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.22.0.extract.trunc, ptr %.sroa.212.0..sroa_idx, align 4
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.33.0.extract.trunc, ptr %.sroa.313.0..sroa_idx, align 1
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.44.0.extract.trunc, ptr %.sroa.414.0..sroa_idx, align 2
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit, %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread
  %storemerge = phi i16 [ 0, %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit ], [ 1, %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread ]
  store i16 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 -468608, 464948) i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time9to_secondB6_(i64 %0) unnamed_addr #1 {
bb.a:
  %.sroa.22.0.extract.shift.i = lshr i64 %0, 32
  %.sroa.22.0.extract.trunc.i = trunc i64 %.sroa.22.0.extract.shift.i to i8
  %i.a = sext i8 %.sroa.22.0.extract.trunc.i to i32
  %i.b = mul nsw i32 %i.a, 3600
  %.sroa.22.0.extract.shift.i12 = lshr i64 %0, 40
  %.sroa.22.0.extract.trunc.i13 = trunc i64 %.sroa.22.0.extract.shift.i12 to i8
  %i.c = sext i8 %.sroa.22.0.extract.trunc.i13 to i32
  %i.d = mul nsw i32 %i.c, 60
  %.sroa.22.0.extract.shift.i14 = lshr i64 %0, 48
  %.sroa.22.0.extract.trunc.i15 = trunc i64 %.sroa.22.0.extract.shift.i14 to i8
  %i.e = sext i8 %.sroa.22.0.extract.trunc.i15 to i32
  %i.f = add nsw i32 %i.d, %i.e
  %i.g = add nsw i32 %i.f, %i.b
  ret i32 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday23from_sunday_zero_offsetB6_(i8 %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %0, 7
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i8 @_RNvMs1u_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_17WeekdaySundayZero5error()
  %i.c = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.b)
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday23from_sunday_zero_offsetB6_, i64 %i.d
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.sroa.4.0 = phi i32 [ %i.c, %bb.b ], [ %switch.ext, %switch.lookup ]
  ret i32 %.sroa.4.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime10from_partsB6_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, i32 %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 4
  store i64 %2, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime12to_timestampB6_(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 4 captures(none) %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12to_timestampB6_(ptr sret([24 x i8]) align 8 %0, i32 %2, ptr nonnull align 4 %i.a) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1, i32 %2) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 4, !noalias !9 ; 3 uses
  %.sroa.22.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.22.0.extract.trunc.i.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i.i to i8
  %i.a = sext i8 %.sroa.22.0.extract.trunc.i.i.i to i32
  %i.b = mul nsw i32 %i.a, 3600
  %.sroa.22.0.extract.shift.i12.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 40
  %.sroa.22.0.extract.trunc.i13.i.i = trunc i64 %.sroa.22.0.extract.shift.i12.i.i to i8
  %i.c = sext i8 %.sroa.22.0.extract.trunc.i13.i.i to i32
  %i.d = mul nsw i32 %i.c, 60
  %.sroa.22.0.extract.shift.i14.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 48
  %.sroa.22.0.extract.trunc.i15.i.i = trunc i64 %.sroa.22.0.extract.shift.i14.i.i to i8
  %i.e = sext i8 %.sroa.22.0.extract.trunc.i15.i.i to i32
  %i.f = add nsw i32 %i.d, %i.e
  %i.g = add nsw i32 %i.f, %i.b
  %i.h = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 range(i32 -468608, 464948) %i.g, i32 %2) #18, !noalias !10 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone22to_ambiguous_timestamp:bb.a
_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit17: ; preds = %bb.t
  %i.cv = extractvalue { ptr, i64 } %i.ck, 0
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.bo, ptr %i.cz, align 4
  store i32 1, ptr %i.h, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs7_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_15AmbiguousOffset24into_ambiguous_timestampB9_(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.e) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.ag, %bb.ae, %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit20, %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit17
  ret void

bb.x:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.sroa.01.0
  %i.db = call i8 @_RNvXs1f_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i, ptr align 8 %i.da) #18 ; 2 uses
  %.not.i18 = icmp ne i8 %i.db, -2
  %i.dc = icmp slt i8 %i.db, 0
  %.sroa.0.0.i19 = and i1 %.not.i18, %i.dc
  br i1 %.sroa.0.0.i19, label %bb.z, label %bb.o

bb.y:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %.sroa.01.0, i64 %i.ai, ptr nonnull align 8 @34) #19
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dd = call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_subCsaR3IayqLkK5_9jiff_core(i64 %.sroa.01.0, i64 1) #18 ; 2 uses
  %i.de = extractvalue { i64, i64 } %i.dd, 0
  %i.df = extractvalue { i64, i64 } %i.dd, 1      ; 3 uses
  %i.dg = trunc nuw i64 %i.de to i1
  br i1 %i.dg, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @35) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.z
  %i.dh = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.az) #18 ; 2 uses
  %i.di = extractvalue { ptr, i64 } %i.dh, 1      ; 2 uses
  %i.dj = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.bc) #18 ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 1      ; 2 uses
  %i.dl = icmp ult i64 %i.df, %i.dk
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit
  %i.dm = extractvalue { ptr, i64 } %i.dj, 0
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.df
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i64                    ; 3 uses
  %i.dr = icmp ugt i64 %i.di, %i.dq
  br i1 %i.dr, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit20, label %bb.ad

bb.ac:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6unwrapCsaR3IayqLkK5_9jiff_core.exit
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.df, i64 %i.dk, ptr nonnull align 8 @15) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.dq, i64 %i.di, ptr nonnull align 8 @16) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15local_time_type.exit20: ; preds = %bb.ab
  %i.ds = extractvalue { ptr, i64 } %i.dh, 0
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.du, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.bo, ptr %i.dw, align 4
  store i32 2, ptr %i.g, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs7_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_15AmbiguousOffset24into_ambiguous_timestampB9_(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 4 %i.g, ptr nonnull align 4 %i.d) #18
  br label %bb.w

bb.ae:                                            ; preds = %bb.af, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.bo, ptr %i.dx, align 4
  store i32 0, ptr %i.f, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs7_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_15AmbiguousOffset24into_ambiguous_timestampB9_(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.b) #18
  br label %bb.w

bb.af:                                            ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dz = call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneE6as_refBN_(ptr nonnull align 8 %i.dy) #18 ; 2 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone22to_ambiguous_timestamp(ptr sret([24 x i8]) align 4 %0, ptr nonnull align 8 %i.dz, ptr nonnull align 4 %i.c)
  br label %bb.w
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr align 8 %0, i64 %1, i32 %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone18to_local_time_type(ptr align 8 %0, i64 %1, i32 %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr align 8 %i.c, i64 %1, i32 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB4_8TimeZone5parse(ptr sret([232 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone5parse(ptr sret([232 x i8]) align 8 %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, 371085174308866) i64 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond3newB9_(i32 %0) unnamed_addr #0 {
bb.a:
  %or.cond.i.i = icmp ult i32 %0, 86400
  br i1 %or.cond.i.i, label %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit, label %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread

_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_14CivilDaySecondE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 1) ; 2 uses
  %.sroa.214.0.extract.shift = lshr i32 %i.a, 16
  %i.b = shl i32 %i.a, 16
  %i.c = zext i32 %i.b to i64
  br label %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit

_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit: ; preds = %bb.a, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread
  %.sroa.4.0.in = phi i32 [ %.sroa.214.0.extract.shift, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread ], [ %0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.c, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.4.0 = zext nneg i32 %.sroa.4.0.in to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.3.0
  %.sroa.0.0.insert.insert = or i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond6secondB9_(i32 returned %0) unnamed_addr #1 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i64 0, 16672994323595264) i64 @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.2.0 = phi i8 [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ 0, %bb.a ]
  %.sroa.4.0 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.2.0.insert.ext = zext i8 %.sroa.2.0 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.2.0.insert.insert = or i64 %.sroa.2.0.insert.shift, %.sroa.4.0
  ret i64 %.sroa.2.0.insert.insert

bb.c:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3600
  %i.c = trunc i32 %i.b to i8                     ; 2 uses
  %i.d = urem i32 %i.a, 3600                      ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = trunc nuw nsw i32 %i.d to i16     ; 2 uses
  %i.e = udiv i16 %.lhs.trunc, 60
  %i.f = zext nneg i16 %i.e to i64
  %i.g = urem i16 %.lhs.trunc, 60
  %i.h = zext nneg i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 48
  %i.j = shl nuw nsw i64 %i.f, 40
  %i.k = or disjoint i64 %i.i, %i.j
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay3dayB9_(i32 returned %0) unnamed_addr #1 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -65534) i64 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay3newB9_(i32 %0) unnamed_addr #0 {
bb.a:
  %1 = sext i32 %0 to i64
  %2 = add nsw i64 %1, 4371587
  %or.cond.i.i = icmp ult i64 %2, 7304484
  br i1 %or.cond.i.i, label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit, label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread

_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_13UnixEpochDaysE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 24) ; 2 uses
  %.sroa.214.0.extract.shift = lshr i32 %i.a, 16
  %i.b = shl i32 %i.a, 16
  %i.c = zext i32 %i.b to i64
  br label %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit

_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit: ; preds = %bb.a, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread
  %.sroa.4.0.in = phi i32 [ %.sroa.214.0.extract.shift, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread ], [ %0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.c, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays6checkc.exit.thread ], [ 0, %bb.a ]
  %.sroa.4.0 = zext i32 %.sroa.4.0.in to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0, 32
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.3.0
  %.sroa.0.0.insert.insert = or i64 %.sroa.3.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 16777216, 536870912) i32 @_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7to_dateB9_(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = shl i32 %0, 2
  %i.b = add i32 %i.a, 50797691                   ; 2 uses
  %i.c = udiv i32 %i.b, 146097
  %i.d = urem i32 %i.b, 146097
  %i.e = or i32 %i.d, 3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 2939745            ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = trunc i64 %i.g to i32                    ; 2 uses
  %i.k = udiv i32 %i.j, 11758980
  %i.l = mul nuw nsw i32 %i.c, 100
  %i.m = mul nuw nsw i32 %i.k, 2141
  %i.n = add nuw nsw i32 %i.m, 197913             ; 3 uses
  %i.o = and i32 %i.n, 4128768
  %i.p = icmp ugt i32 %i.j, -696719417            ; 2 uses
  %i.q = zext i1 %i.p to i32
  %i.r = add nuw nsw i32 %i.l, 32736
  %i.s = add nuw nsw i32 %i.r, %i.i
  %i.t = add nuw nsw i32 %i.s, %i.q
  %.lhs.trunc = trunc i32 %i.n to i16
  %i.u = udiv i16 %.lhs.trunc, 2141
  %.zext = zext nneg i16 %i.u to i32
  %.sroa.3.0.insert.ext = shl nuw nsw i32 %.zext, 24
  %.sroa.3.0.insert.shift = add nuw nsw i32 %.sroa.3.0.insert.ext, 16777216
  %i.v = add nuw nsw i32 %i.o, 15990784
  %.sroa.2.0.insert.ext = select i1 %i.p, i32 %i.v, i32 %i.n
  %.sroa.2.0.insert.shift = and i32 %.sroa.2.0.insert.ext, 16711680
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = and i32 %i.t, 65535
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp11from_second(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 2)) %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %1) #18
  %i.b = load i16, ptr %i.a, align 8
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = call i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64 %i.g, i32 %i.i) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i16 [ 0, %bb.c ], [ 1, %bb.b ]
  store i16 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp11to_datetime(i64 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [12 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0) #18
  %i.d = load i16, ptr %i.a, align 8
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
  unreachable

_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.j, align 8
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr nonnull sret([12 x i8]) align 4 %i.c, ptr nonnull align 8 %i.b, i32 %1) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.k, align 8 ; 3 uses
  %.sroa.0.0.copyload.i26.i = load i64, ptr %i.c, align 8 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %sext.i = shl i64 %.sroa.01.0.extract.trunc.i.i, 48
  %.sroa.22.0.extract.shift.i.i = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.22.0.extract.trunc.i.i = zext nneg i32 %.sroa.22.0.extract.shift.i.i to i64
  %sext33.i = shl i64 %.sroa.22.0.extract.trunc.i.i, 56
  %i.l = ashr exact i64 %sext33.i, 16
  %i.m = ashr i32 %.sroa.0.0.copyload.i.i, 24
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 32
  %i.p = shl i64 %.sroa.0.0.copyload.i26.i, 24
  %i.q = ashr i64 %i.p, 32
  %i.r = and i64 %i.q, -16777216
  %i.s = shl i64 %.sroa.0.0.copyload.i26.i, 16
  %i.t = ashr i64 %i.s, 40
  %i.u = and i64 %i.t, -65536
  %i.v = shl i64 %.sroa.0.0.copyload.i26.i, 8
  %i.w = ashr i64 %i.v, 48
  %i.x = and i64 %i.w, -256
  %i.y = or i64 %i.o, %sext.i
  %i.z = or i64 %i.y, %i.l
  %i.aa = or i64 %i.z, %i.r
  %i.ab = or i64 %i.aa, %i.u
  %i.ac = or i64 %i.ab, %i.x
  ret i64 %i.ac
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %0) #18
  %i.b = load i16, ptr %i.a, align 8
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = insertvalue { i64, i32 } poison, i64 %i.e, 0
  %i.i = insertvalue { i64, i32 } %i.h, i32 %i.g, 1
  ret { i64, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp3new(i64 %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64 %0, i32 %1) #18
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp9as_second(i64 returned %0) unnamed_addr #2 {
bb.a:
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments8from_strCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = shl i64 %1, 1
  %i.b = or disjoint i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTime3day(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %0, 32
  %i.b = trunc i64 %i.a to i8
  ret i8 %i.b
}

end_hunk_1
begin_hunk_2_@_RNvNtNtCsaR3IayqLkK5_9jiff_core4util5crc323sum:bb.a
._crit_edge.i:                                    ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i, %bb.a
  %.sroa.055.0.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.da, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ] ; 2 uses
  %.sroa.30.0.lcssa.i = phi i64 [ %1, %bb.a ], [ %i.dd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ]
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.dc, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ]
  %i.d = tail call { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(ptr %.sroa.0.0.lcssa.i, i64 %.sroa.30.0.lcssa.i) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  store ptr %i.e, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = call ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.b) #18 ; 2 uses
  %.not112.i = icmp eq ptr %i.h, null
  br i1 %.not112.i, label %_RNvNtNtCsaR3IayqLkK5_9jiff_core4util5crc327slice16.exit, label %.lr.ph.i

_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i: ; preds = %bb.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i
  %.sroa.0.0109.i = phi ptr [ %i.dc, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ], [ %0, %bb.a ] ; 14 uses
  %.sroa.30.0108.i = phi i64 [ %i.dd, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ], [ %1, %bb.a ]
  %.sroa.055.0107.i = phi i32 [ %i.da, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i ], [ -1, %bb.a ]
  %i.i = tail call i40 @_RNvXs3_NtCs3oUPovFnLWP_4core7convertRShINtB5_7TryIntoAhj4_E8try_intoCsaR3IayqLkK5_9jiff_core(ptr %.sroa.0.0109.i, i64 4) #18 ; 2 uses
  %i.j = trunc i40 %i.i to i1
  br i1 %i.j, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i

bb.b:                                             ; preds = %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @1, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @0, ptr nonnull align 8 @48) #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsaR3IayqLkK5_9jiff_core.exit.i: ; preds = %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i
  %.sroa.22.0.extract.shift.i.i = lshr i40 %i.i, 8
  %.sroa.22.0.extract.trunc.i.i = trunc nuw i40 %.sroa.22.0.extract.shift.i.i to i32
  %i.k = tail call i32 @_RNvMs6_NtCs3oUPovFnLWP_4core3numm13from_le_bytesCsaR3IayqLkK5_9jiff_core(i32 %.sroa.22.0.extract.trunc.i.i) #18
  %i.l = xor i32 %i.k, %.sroa.055.0107.i          ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 15
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @49, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 14
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 1024), i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %i.w = xor i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 13
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 2048), i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = xor i32 %i.w, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 12
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 3072), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = xor i32 %i.ac, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 11
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 4096), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = xor i32 %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 10
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 5120), i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = xor i32 %i.ao, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 9
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 6144), i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = xor i32 %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 7168), i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = xor i32 %i.ba, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 7
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 8192), i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = xor i32 %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 6
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 9216), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = xor i32 %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 5
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 10240), i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = xor i32 %i.bs, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0109.i, i64 4
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 11264), i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = lshr i32 %i.l, 24
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 12288), i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = lshr i32 %i.l, 16
  %i.cj = and i32 %i.ci, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 13312), i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = lshr i32 %i.l, 8
  %i.co = and i32 %i.cn, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 14336), i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.l, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = xor i32 %i.by, %i.cd
  %i.cv = xor i32 %i.cu, %i.ch
  %i.cw = xor i32 %i.cv, %i.cm
  %i.cx = xor i32 %i.cw, %i.cr
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @49, i64 15360), i64 %i.ct
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = xor i32 %i.cx, %i.cz                    ; 2 uses
  %i.db = tail call { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core(i64 16, ptr %.sroa.0.0109.i, i64 range(i64 16, 0) %.sroa.30.0108.i, ptr nonnull align 8 @50) #18 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1      ; 3 uses
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %_RNvXs4_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core.exit.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.i
  %i.df = phi ptr [ %i.do, %.lr.ph.i ], [ %i.h, %._crit_edge.i ]
  %.sroa.055.1113.i = phi i32 [ %i.dn, %.lr.ph.i ], [ %.sroa.055.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = trunc i32 %.sroa.055.1113.i to i8
  %i.di = xor i8 %i.dg, %i.dh
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @46, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = lshr i32 %.sroa.055.1113.i, 8
  %i.dn = xor i32 %i.dl, %i.dm                    ; 2 uses
  %i.do = call ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.b) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_RNvNtNtCsaR3IayqLkK5_9jiff_core4util5crc327slice16.exit, label %.lr.ph.i

_RNvNtNtCsaR3IayqLkK5_9jiff_core4util5crc327slice16.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  %.sroa.055.1.lcssa.i = phi i32 [ %.sroa.055.0.lcssa.i, %._crit_edge.i ], [ %i.dn, %.lr.ph.i ]
  %i.dp = xor i32 %.sroa.055.1.lcssa.i, -1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dq = call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 17)
  %i.dr = add i32 %i.dq, -1568478504
  ret i32 %i.dr
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvNtNtCsaR3IayqLkK5_9jiff_core5civil4date24iso_week_start_from_year(i16 %0) unnamed_addr #3 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = add nsw i32 %i.a, 32799                  ; 3 uses
  %i.c = udiv i32 %i.b, 100
  %i.d = mul nuw nsw i32 %i.b, 1461
  %i.e = lshr i32 %i.d, 2
  %i.f = udiv i32 %i.b, 400
  %reass.sub = sub nsw i32 %i.f, %i.c
  %i.g = add nsw i32 %reass.sub, -12699113
  %i.h = add nsw i32 %i.g, %i.e                   ; 2 uses
  %i.i = mul i32 %i.h, 613566757
  %i.j = add i32 %i.i, -1879048192
  %i.k = lshr i32 %i.j, 29                        ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit

_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i: ; preds = %bb.a
  %i.m = tail call i8 @_RNvMs1s_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16WeekdayMondayOne5error()
  %i.n = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.m) ; 2 uses
  %.sroa.25.0.extract.shift.i.i = lshr i32 %i.n, 8
  %i.o = and i32 %i.n, 255
  %i.p = icmp eq i32 %i.o, 254
  br i1 %i.p, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @40, ptr nonnull inttoptr (i64 61 to ptr), ptr nonnull align 8 @41) #19
  unreachable

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit: ; preds = %bb.a, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i
  %.sroa.4.0.i3.i = phi i32 [ %.sroa.25.0.extract.shift.i.i, %_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday22from_monday_one_offsetB6_.exit.i ], [ %i.k, %bb.a ]
  %.sroa.22.0.extract.trunc.i = trunc i32 %.sroa.4.0.i3.i to i8
  %i.q = add i8 %.sroa.22.0.extract.trunc.i, -1
  %i.r = tail call i8 @_RNvMNtCs3oUPovFnLWP_4core3numa10rem_euclidCsaR3IayqLkK5_9jiff_core(i8 %i.q, i8 7, ptr nonnull align 8 @7) #18
  %i.s = sext i8 %i.r to i32
  %i.t = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_negCsaR3IayqLkK5_9jiff_core(i32 range(i32 -128, 128) %i.s) #18 ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %bb.c, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread

bb.c:                                             ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit
  %i.w = extractvalue { i32, i32 } %i.t, 1
  %i.x = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 %i.h, i32 %i.w) #18 ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 0
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %1, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14

1:                                                ; preds = %bb.c
  %2 = extractvalue { i32, i32 } %i.x, 1          ; 3 uses
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 4371587
  %or.cond.i.i.i.i.i = icmp ult i64 %4, 7304484
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14: ; preds = %bb.c, %1
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_13UnixEpochDaysE3newB4_() #18
  br label %bb.d

_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread: ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay7weekdayB9_.exit
  %i.aa = tail call i8 @_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays5error()
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread
  %.sink = phi i8 [ 24, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread14 ], [ %i.aa, %_RNvMs1_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDay11checked_subB9_.exit.thread ]
  %i.ab = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %.sink) ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @51, ptr nonnull inttoptr (i64 41 to ptr), ptr nonnull align 8 @52) #19
  unreachable

bb.e:                                             ; preds = %1
  %.sroa.4.0.i.i = zext i32 %2 to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.4.0.i.i, 32
  %.sroa.25.0.extract.shift.i = shl i32 %2, 16
  %.sroa.36.0.extract.shift.i = and i64 %.sroa.4.0.insert.shift.i.i, -281474976710656
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.25.0.extract.shift.i to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 16
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.36.0.extract.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.39.0.extract.shift = lshr exact i64 %.sroa.0.0.insert.insert.i, 32
  %.sroa.39.0.extract.trunc = trunc nuw i64 %.sroa.39.0.extract.shift to i32
  ret i32 %.sroa.39.0.extract.trunc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs0_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8TimeZoneNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRaNtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr %i.a, ptr align 8 %1) #18
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRsNtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsP_NtNtCs3oUPovFnLWP_4core3fmt3numsNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 2 %i.a, ptr align 8 %1) #18
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr align 8 %1, ptr nonnull @72, i64 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs2_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_12UnixEpochDayNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree readonly align 4 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter11debug_tuple(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull @53, i64 12)
  %i.c = load i32, ptr %0, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.d = call align 8 ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr nonnull align 8 %i.b, ptr nonnull %i.a, ptr nonnull align 8 @54)
  %i.e = call zeroext i1 @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr align 8 %i.d)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs3_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9TimestampNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = load i64, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.c) #18
  %i.d = load i16, ptr %i.a, align 8
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @42, ptr nonnull inttoptr (i64 33 to ptr), ptr nonnull align 8 @44) #19
  unreachable

_RNvMs2_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_9Timestamp21to_standard_timestamp.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.i, ptr %i.j, align 8
  %i.k = call zeroext i1 @_RNvXs_NtCsaR3IayqLkK5_9jiff_core9timestampNtB4_9TimestampNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr nonnull align 8 %i.b, ptr align 8 %1)
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i40 0, -254) i40 @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj4_INtNtB7_7convert7TryFromRShE8try_fromCsaR3IayqLkK5_9jiff_core(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i32, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.sroa.03.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i40
  %.sroa.3.0.insert.shift = shl nuw i40 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs5_NtCs3oUPovFnLWP_4core5arrayAhj8_INtNtB7_7convert7TryFromRShE8try_fromCsaR3IayqLkK5_9jiff_core(ptr nofree writeonly sret([9 x i8]) align 1 captures(none) initializes((0, 1)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %2, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i64, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.02.0.copyload, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  store i8 %storemerge, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvXs5_NtNtCsaR3IayqLkK5_9jiff_core2tz4tzifNtB5_8DateTimeINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB9_5civil8datetime8DateTimeE4from(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.extract.trunc.i.i = zext i32 %.sroa.2.0.copyload to i64
  %sext.i = shl i64 %.sroa.01.0.extract.trunc.i.i, 48
  %.sroa.22.0.extract.shift.i.i = lshr i32 %.sroa.2.0.copyload, 16
  %.sroa.22.0.extract.trunc.i.i = zext nneg i32 %.sroa.22.0.extract.shift.i.i to i64
  %sext33.i = shl i64 %.sroa.22.0.extract.trunc.i.i, 56
  %i.a = ashr exact i64 %sext33.i, 16
  %i.b = ashr i32 %.sroa.2.0.copyload, 24
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 32
  %i.e = shl i64 %.sroa.0.0.copyload, 24
  %i.f = ashr i64 %i.e, 32
  %i.g = and i64 %i.f, -16777216
  %i.h = shl i64 %.sroa.0.0.copyload, 16
  %i.i = ashr i64 %i.h, 40
  %i.j = and i64 %i.i, -65536
  %i.k = shl i64 %.sroa.0.0.copyload, 8
  %i.l = ashr i64 %i.k, 48
  %i.m = and i64 %i.l, -256
  %i.n = or i64 %i.g, %sext.i
  %i.o = or i64 %i.n, %i.j
  %i.p = or i64 %i.o, %i.m
  %i.q = or i64 %i.p, %i.d
  %i.r = or i64 %i.q, %i.a
  ret i64 %i.r
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs5_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB5_11ISOWeekDateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 2 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core.exit:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.h = load i8, ptr %i.g, align 1
  store i8 %i.h, ptr %i.e, align 1
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaysECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr align 2 %0) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull %i.f) #18
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull %i.e) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %i.k, ptr align 8 %i.m, ptr nonnull @55, ptr nonnull %i.d)
  ret i1 %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE5indexCsaR3IayqLkK5_9jiff_core(i64 %0, i64 %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  %i.b = icmp ugt i64 %1, %3
  %or.cond.i.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond.i.i, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, %3
  br i1 %i.c, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3getCsaR3IayqLkK5_9jiff_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = icmp eq i64 %1, %3
end_hunk_2
