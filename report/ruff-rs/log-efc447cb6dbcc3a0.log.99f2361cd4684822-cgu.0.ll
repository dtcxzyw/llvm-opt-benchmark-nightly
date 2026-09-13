Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/log-efc447cb6dbcc3a0.log.99f2361cd4684822-cgu.0?download=true
inline.NumInlined: 62
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic23atomic_compare_exchangejECsdds0ghYs8SI_3log:bb.a
bb.r:                                             ; preds = %bb.f
  %i.l = cmpxchg ptr %0, i64 %1, i64 %2 acq_rel monotonic, align 8
  br label %bb.k

bb.s:                                             ; preds = %bb.f
  %i.m = cmpxchg ptr %0, i64 %1, i64 %2 acq_rel acquire, align 8
  br label %bb.k

bb.t:                                             ; preds = %bb.f
  %i.n = cmpxchg ptr %0, i64 %1, i64 %2 acq_rel seq_cst, align 8
  br label %bb.k

bb.u:                                             ; preds = %bb.g
  %i.o = cmpxchg ptr %0, i64 %1, i64 %2 seq_cst monotonic, align 8
  br label %bb.k

bb.v:                                             ; preds = %bb.g
  %i.p = cmpxchg ptr %0, i64 %1, i64 %2 seq_cst acquire, align 8
  br label %bb.k

bb.w:                                             ; preds = %bb.g
  %i.q = cmpxchg ptr %0, i64 %1, i64 %2 seq_cst seq_cst, align 8
  br label %bb.k

bb.x:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @9, ptr nonnull inttoptr (i64 105 to ptr), ptr nonnull align 8 @10) #20
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @11, ptr nonnull inttoptr (i64 123 to ptr), ptr nonnull align 8 @12) #20
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsdds0ghYs8SI_3log11LevelFilterNCNvMs7_B1w_B1u_4iter0EB1w_(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsdds0ghYs8SI_3log5LevelNCNvMs2_B1w_B1u_4iter0EB1w_(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvCsdds0ghYs8SI_3log10set_logger(ptr %0, ptr align 8 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr @_RNvCsdds0ghYs8SI_3log5STATE, i64 0, i64 1 acquire monotonic, align 8 ; 2 uses
  %.sroa.16.0.in.i.i.i = extractvalue { i64, i1 } %i.a, 1 ; 2 uses
  br i1 %.sroa.16.0.in.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.a, 0
  %i.b = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %i.b, label %.preheader.i, label %_RINvCsdds0ghYs8SI_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

.preheader.i:                                     ; preds = %bb.b
  %i.c = load atomic i64, ptr @_RNvCsdds0ghYs8SI_3log5STATE monotonic, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.lr.ph.i, label %_RINvCsdds0ghYs8SI_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr @_RNvCsdds0ghYs8SI_3log6LOGGER.0, align 8
  store ptr %1, ptr @_RNvCsdds0ghYs8SI_3log6LOGGER.1, align 8
  store atomic i64 2, ptr @_RNvCsdds0ghYs8SI_3log5STATE release, align 8
  br label %_RINvCsdds0ghYs8SI_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void @llvm.x86.sse2.pause()
  %i.e = load atomic i64, ptr @_RNvCsdds0ghYs8SI_3log5STATE monotonic, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %.lr.ph.i, label %_RINvCsdds0ghYs8SI_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit

_RINvCsdds0ghYs8SI_3log16set_logger_innerNCNvB2_10set_logger0EB2_.exit: ; preds = %.lr.ph.i, %bb.b, %.preheader.i, %bb.c
  %.sroa.0.0.i = xor i1 %.sroa.16.0.in.i.i.i, true
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvCsdds0ghYs8SI_3log15set_logger_racy(ptr %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCsdds0ghYs8SI_3log5STATE acquire, align 8
  switch i64 %i.a, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @_RNvCsdds0ghYs8SI_3log6LOGGER.0, align 8
  store ptr %1, ptr @_RNvCsdds0ghYs8SI_3log6LOGGER.1, align 8
  store atomic i64 2, ptr @_RNvCsdds0ghYs8SI_3log5STATE release, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @19, ptr nonnull inttoptr (i64 221 to ptr), ptr nonnull align 8 @21) #20
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define { ptr, ptr } @_RNvCsdds0ghYs8SI_3log6logger() unnamed_addr #6 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvCsdds0ghYs8SI_3log5STATE acquire, align 8
  %.not = icmp eq i64 %i.a, 2                     ; 2 uses
  %i.b = load ptr, ptr @_RNvCsdds0ghYs8SI_3log6LOGGER.0, align 8
  %i.c = load ptr, ptr @_RNvCsdds0ghYs8SI_3log6LOGGER.1, align 8
  %.sroa.3.0 = select i1 %.not, ptr %i.c, ptr @24
  %.sroa.0.0 = select i1 %.not, ptr %i.b, ptr @_RNvNvCsdds0ghYs8SI_3log6logger3NOP
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh18split_at_uncheckedCsdds0ghYs8SI_3log(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCsdds0ghYs8SI_3log(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #2 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr nonnull @25, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsdds0ghYs8SI_3log11LevelFilterE9unwrap_orBJ_(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %0, -1
  %. = select i1 %.not, i64 %1, i64 %0
  ret i64 %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsdds0ghYs8SI_3log5LevelE9unwrap_orBJ_(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %0, 0
  %. = select i1 %.not, i64 %1, i64 %0
  ret i64 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 0, 6) i64 @_RNvMs2_Csdds0ghYs8SI_3logNtB5_5Level10from_usize(i64 %0) unnamed_addr #7 {
switch.lookup:
  %switch.tableidx = add i64 %0, -1
  %i.a = icmp ult i64 %switch.tableidx, 5
  %spec.select = select i1 %i.a, i64 %0, i64 0
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs2_Csdds0ghYs8SI_3logNtB5_5Level18decrement_severity(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = tail call range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 %i.a, i64 1) ; 2 uses
  %switch.tableidx.i = add i64 %i.b, -1
  %i.c = icmp ult i64 %switch.tableidx.i, 5
  %spec.select.i = select i1 %i.c, i64 %i.b, i64 0 ; 2 uses
  %.not.i = icmp eq i64 %spec.select.i, 0
  %..i = select i1 %.not.i, i64 %i.a, i64 %spec.select.i
  ret i64 %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs2_Csdds0ghYs8SI_3logNtB5_5Level18increment_severity(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %1 = add i64 %i.a, 1
  %i.b = icmp ult i64 %i.a, 5
  %spec.select.i = select i1 %i.b, i64 %1, i64 0  ; 2 uses
  %.not.i = icmp eq i64 %spec.select.i, 0
  %..i = select i1 %.not.i, i64 %i.a, i64 %spec.select.i
  ret i64 %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvMs2_Csdds0ghYs8SI_3logNtB5_5Level4iter() unnamed_addr #7 {
bb.a:
  ret { i64, i64 } { i64 1, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_Csdds0ghYs8SI_3logNtB5_5Level6as_str(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @_RNvCsdds0ghYs8SI_3log15LOG_LEVEL_NAMES, i64 %i.a ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  ret { ptr, i64 } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.a, i64 6, ptr nonnull align 8 @26) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 -1, 6) i64 @_RNvMs7_Csdds0ghYs8SI_3logNtB5_11LevelFilter10from_usize(i64 %0) unnamed_addr #7 {
switch.lookup:
  %i.a = icmp ult i64 %0, 6
  %spec.select = select i1 %i.a, i64 %0, i64 -1
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs7_Csdds0ghYs8SI_3logNtB5_11LevelFilter18decrement_severity(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = tail call range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %..i = select i1 %i.c, i64 %i.a, i64 %i.b
  ret i64 %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs7_Csdds0ghYs8SI_3logNtB5_11LevelFilter18increment_severity(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = icmp ugt i64 %i.b, 5
  %..i = select i1 %i.c, i64 %i.a, i64 %i.b
  ret i64 %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvMs7_Csdds0ghYs8SI_3logNtB5_11LevelFilter4iter() unnamed_addr #7 {
bb.a:
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs7_Csdds0ghYs8SI_3logNtB5_11LevelFilter6as_str(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @_RNvCsdds0ghYs8SI_3log15LOG_LEVEL_NAMES, i64 %i.a ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.f, 1
  ret { ptr, i64 } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.a, i64 6, ptr nonnull align 8 @27) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvNtCsdds0ghYs8SI_3log13___private_api3loc(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCsdds0ghYs8SI_3log(i64 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i64 0, 6) i64 @_RNvXs0_Csdds0ghYs8SI_3logNtB5_5LevelNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr nofree readonly captures(none) %0, i64 %1) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsdds0ghYs8SI_3log5LevelE6unwrapBJ_.exit [
    i64 5, label %.preheader.i
    i64 4, label %.preheader.i.1
  ]

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsdds0ghYs8SI_3log5LevelE6unwrapBJ_.exit: ; preds = %bb.a, %.preheader.i.2.3, %.preheader.i.2.2, %.preheader.i.2.1, %.preheader.i.2, %.preheader.i.4.4, %.preheader.i.4.3, %.preheader.i.4.2, %.preheader.i.4.1, %.preheader.i.4, %_RNvMNtCs4NRVxsYgnAr_4core3stre20eq_ignore_ascii_caseCsdds0ghYs8SI_3log.exit.thread
  %.sroa.0.0 = phi i64 [ %.sroa.0.0512.lcssa, %_RNvMNtCs4NRVxsYgnAr_4core3stre20eq_ignore_ascii_caseCsdds0ghYs8SI_3log.exit.thread ], [ 0, %.preheader.i.4 ], [ 0, %.preheader.i.4.1 ], [ 0, %.preheader.i.4.2 ], [ 0, %.preheader.i.4.3 ], [ 0, %.preheader.i.4.4 ], [ 0, %.preheader.i.2 ], [ 0, %.preheader.i.2.1 ], [ 0, %.preheader.i.2.2 ], [ 0, %.preheader.i.2.3 ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0

.preheader.i:                                     ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = add i8 %i.a, -65
  %i.c = icmp ult i8 %i.b, 26
  %i.d = select i1 %i.c, i8 32, i8 0
  %.sroa.013.0.i.i = or i8 %i.d, %i.a
  %i.e = icmp eq i8 %.sroa.013.0.i.i, 101
  br i1 %i.e, label %.preheader.i.122, label %.preheader.i.3

.preheader.i.122:                                 ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %i.j = select i1 %i.i, i8 32, i8 0
  %.sroa.013.0.i.i.123 = or i8 %i.j, %i.g
  %i.k = icmp eq i8 %.sroa.013.0.i.i.123, 114
  br i1 %i.k, label %.preheader.i.224, label %.preheader.i.3

.preheader.i.224:                                 ; preds = %.preheader.i.122
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = add i8 %i.m, -65
  %i.o = icmp ult i8 %i.n, 26
  %i.p = select i1 %i.o, i8 32, i8 0
  %.sroa.013.0.i.i.225 = or i8 %i.p, %i.m
  %i.q = icmp eq i8 %.sroa.013.0.i.i.225, 114
  br i1 %i.q, label %.preheader.i.326, label %.preheader.i.3

.preheader.i.326:                                 ; preds = %.preheader.i.224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %i.v = select i1 %i.u, i8 32, i8 0
  %.sroa.013.0.i.i.327 = or i8 %i.v, %i.s
  %i.w = icmp eq i8 %.sroa.013.0.i.i.327, 111
  br i1 %i.w, label %.preheader.i.428, label %.preheader.i.3

.preheader.i.428:                                 ; preds = %.preheader.i.326
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = add i8 %i.y, -65
  %i.aa = icmp ult i8 %i.z, 26
  %i.ab = select i1 %i.aa, i8 32, i8 0
  %.sroa.013.0.i.i.429 = or i8 %i.ab, %i.y
  %i.ac = icmp eq i8 %.sroa.013.0.i.i.429, 114
  br i1 %i.ac, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20eq_ignore_ascii_caseCsdds0ghYs8SI_3log.exit.thread, label %.preheader.i.3

.preheader.i.1:                                   ; preds = %bb.a
  %i.ad = load i8, ptr %0, align 1                ; 2 uses
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %i.ag = select i1 %i.af, i8 32, i8 0
  %.sroa.013.0.i.i.1 = or i8 %i.ag, %i.ad
  %i.ah = icmp eq i8 %.sroa.013.0.i.i.1, 119
  br i1 %i.ah, label %.preheader.i.1.1, label %.preheader.i.2

.preheader.i.1.1:                                 ; preds = %.preheader.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %.sroa.013.0.i.i.1.1 = or i8 %i.am, %i.aj
  %i.an = icmp eq i8 %.sroa.013.0.i.i.1.1, 97
  br i1 %i.an, label %.preheader.i.1.2, label %.preheader.i.2

.preheader.i.1.2:                                 ; preds = %.preheader.i.1.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = add i8 %i.ap, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %i.as = select i1 %i.ar, i8 32, i8 0
  %.sroa.013.0.i.i.1.2 = or i8 %i.as, %i.ap
  %i.at = icmp eq i8 %.sroa.013.0.i.i.1.2, 114
  br i1 %i.at, label %.preheader.i.1.3, label %.preheader.i.2

.preheader.i.1.3:                                 ; preds = %.preheader.i.1.2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = add i8 %i.av, -65
  %i.ax = icmp ult i8 %i.aw, 26
  %i.ay = select i1 %i.ax, i8 32, i8 0
  %.sroa.013.0.i.i.1.3 = or i8 %i.ay, %i.av
  %i.az = icmp eq i8 %.sroa.013.0.i.i.1.3, 110
  br i1 %i.az, label %_RNvMNtCs4NRVxsYgnAr_4core3stre20eq_ignore_ascii_caseCsdds0ghYs8SI_3log.exit.thread, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1.3, %.preheader.i.1.2, %.preheader.i.1.1, %.preheader.i.1
end_hunk_0
