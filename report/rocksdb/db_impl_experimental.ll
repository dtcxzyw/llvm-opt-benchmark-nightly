inline.NumInlined: 1740
inline.NumDeleted: 1047
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_T2_":bb.a
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8
  %.0.copyload.i.i.i.i.i.us29.i = load i64, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.val.us22.i, i64 %.val10.val11.us23.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %.0.copyload.i18.i.i.i.i.us30.i = load i64, ptr %i.ee, align 1
  %i.ef = icmp ugt i64 %.0.copyload.i.i.i.i.i.us29.i, %.0.copyload.i18.i.i.i.i.us30.i
  br i1 %i.ef, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us31.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us31.i": ; preds = %bb.l, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us28.i"
  %i.eg = load ptr, ptr %i.dj, align 8, !tbaa !309
  %i.eh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.us21.i
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !309
  %.09.in.us32.i = add nsw i64 %.0913.us20.i, -1
  %.09.us33.i = sdiv i64 %.09.in.us32.i, 2
  %i.ei = icmp sgt i64 %.0913.us20.i, %1
  br i1 %i.ei, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us19.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !764

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i"
  %.0913.i = phi i64 [ %.09.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i" ], [ %.0911.i, %.lr.ph.split.i ] ; 5 uses
  %.012.i = phi i64 [ %.0913.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i" ], [ %.1, %.lr.ph.split.i ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %0, i64 %.0913.i ; 2 uses
  %.val10.val.i = load ptr, ptr %i.bc, align 8, !tbaa !9 ; 2 uses
  %.val10.val11.i = load i64, ptr %i.bd, align 8, !tbaa !19 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !309 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 80
  %.val2.i.i = load ptr, ptr %i.el, align 8, !tbaa !9 ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 88
  %.val3.i.i = load i64, ptr %i.em, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.en = add i64 %.val3.i.i, -8
  store ptr %.val2.i.i, ptr %5, align 8
  store i64 %i.en, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.eo = add i64 %.val10.val11.i, -8
  store ptr %.val10.val.i, ptr %6, align 8
  store i64 %i.eo, ptr %i.bg, align 8
  call void @_ZTHN7rocksdb10perf_levelE()
  %i.ep = load i8, ptr %i.bh, align 1, !tbaa !436
  %i.eq = icmp ugt i8 %i.ep, 1
  br i1 %i.eq, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i:    ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.er = load i64, ptr %i.bi, align 8, !tbaa !438
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.bi, align 8, !tbaa !438
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i
  %i.et = load ptr, ptr %i.be, align 8, !tbaa !440
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call noundef i32 %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !763 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.m, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.i"

bb.m:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 %.val3.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.val10.val.i, i64 %.val10.val11.i
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8
  %.0.copyload.i18.i.i.i.i.i = load i64, ptr %i.fd, align 1
  %i.fe = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i18.i.i.i.i.i
  br i1 %i.fe, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.i": ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.i
  %i.ff = icmp slt i32 %i.ey, 0
  br i1 %i.ff, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.i", %bb.m
  %i.fg = load ptr, ptr %i.ej, align 8, !tbaa !309
  %i.fh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !309
  %.09.in.i = add nsw i64 %.0913.i, -1
  %.09.i = sdiv i64 %.09.in.i, 2
  %i.fi = icmp sgt i64 %.0913.i, %1
  br i1 %i.fi, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !764

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_SI_T1_RT2_.exit": ; preds = %bb.m, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us28.i", %bb.l, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us31.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us.i", %bb.k, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us.us.i", %bb.j, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us.us.i", %bb.i
  %.0.lcssa.i = phi i64 [ %.1, %bb.i ], [ %.012.us.i, %bb.k ], [ %.012.us.us.i, %bb.j ], [ %.0913.us20.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us31.i" ], [ %.012.us.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us.us.i" ], [ %.0913.us.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us.us.i" ], [ %.012.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us.i" ], [ %.0913.us.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.us.i" ], [ %.012.us21.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.us28.i" ], [ %.012.us21.i, %bb.l ], [ %.012.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.i" ], [ %.0913.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESB_EEbT_RT0_.exit.thread.i" ], [ %.012.i, %bb.m ]
  %i.fj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store ptr %3, ptr %i.fj, align 8, !tbaa !309
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_SH_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr nofree readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %.sroa.0.021, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.f = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i3.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 4 uses
  %i.h = ptrtoint ptr %0 to i64
  %i.i = load ptr, ptr %.sroa.0.021, align 8, !tbaa !309 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !309    ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 80
  %.val1.i.peel = load ptr, ptr %i.k, align 8, !tbaa !9 ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 88
  %.val2.i.peel = load i64, ptr %i.l, align 8, !tbaa !19 ; 2 uses
  %i.m = getelementptr i8, ptr %i.j, i64 80
  %.val3.i.peel = load ptr, ptr %i.m, align 8, !tbaa !9 ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 88
  %.val4.i.peel = load i64, ptr %i.n, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.o = add i64 %.val2.i.peel, -8
  store ptr %.val1.i.peel, ptr %3, align 8
  store i64 %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.p = add i64 %.val4.i.peel, -8
  store ptr %.val3.i.peel, ptr %4, align 8
  store i64 %i.p, ptr %i.e, align 8
  br i1 %.not.i.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel:   ; preds = %bb.b, %.lr.ph
  %i.q = load i8, ptr %i.f, align 1, !tbaa !436
  %i.r = icmp ugt i8 %i.q, 1
  br i1 %i.r, label %bb.c, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel

bb.c:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel: ; preds = %bb.d, %bb.c
  %i.s = load i64, ptr %i.g, align 8, !tbaa !438
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.g, align 8, !tbaa !438
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !440
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !761 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.peel"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.peel": ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel
  %i.ab = icmp slt i32 %i.z, 0
  br i1 %i.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19.peel"

bb.e:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.peel, i64 %.val2.i.peel
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.0.copyload.i.i.i.i.i.peel = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3.i.peel, i64 %.val4.i.peel
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %.0.copyload.i18.i.i.i.i.peel = load i64, ptr %i.af, align 1
  %i.ag = icmp ugt i64 %.0.copyload.i.i.i.i.i.peel, %.0.copyload.i18.i.i.i.i.peel
  br i1 %i.ag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19.peel"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19.peel": ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.peel"
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.021, ptr nonnull %2)
  br label %bb.f

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.peel", %bb.e
  %i.ah = load <2 x ptr>, ptr %0, align 8, !tbaa !309
  %i.ai = shufflevector <2 x ptr> %i.ah, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ai, ptr %0, align 8, !tbaa !309
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19.peel"
  %.sroa.0.0.peel = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.0.0.peel, %1
  br i1 %i.aj, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.f, %bb.l
  %.sroa.0.023 = phi ptr [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0.peel, %bb.f ] ; 6 uses
  %.pn22 = phi ptr [ %.sroa.0.023, %bb.l ], [ %.sroa.0.021, %bb.f ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0.023, align 8, !tbaa !309 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !309   ; 2 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 80
  %.val1.i = load ptr, ptr %i.am, align 8, !tbaa !9 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 88
  %.val2.i = load i64, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 80
  %.val3.i = load ptr, ptr %i.ao, align 8, !tbaa !9 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.al, i64 88
  %.val4.i = load i64, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aq = add i64 %.val2.i, -8
  store ptr %.val1.i, ptr %3, align 8
  store i64 %i.aq, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ar = add i64 %.val4.i, -8
  store ptr %.val3.i, ptr %4, align 8
  store i64 %i.ar, ptr %i.e, align 8
  br i1 %.not.i.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.peel.next
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i:        ; preds = %bb.g, %.peel.next
  %i.as = load i8, ptr %i.f, align 1, !tbaa !436
  %i.at = icmp ugt i8 %i.as, 1
  br i1 %i.at, label %bb.h, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i:      ; preds = %bb.i, %bb.h
  %i.au = load i64, ptr %i.g, align 8, !tbaa !438
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.g, align 8, !tbaa !438
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !440
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !761 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit"

bb.j:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.val2.i
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %.val4.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %.0.copyload.i18.i.i.i.i = load i64, ptr %i.bg, align 1
  %i.bh = icmp ugt i64 %.0.copyload.i.i.i.i.i, %.0.copyload.i18.i.i.i.i
  br i1 %i.bh, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit": ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i
  %i.bi = icmp slt i32 %i.bb, 0
  br i1 %i.bi, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread": ; preds = %bb.j, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit"
  %i.bj = load ptr, ptr %.sroa.0.023, align 8, !tbaa !309
  %i.bk = ptrtoint ptr %.sroa.0.023 to i64
  %i.bl = sub i64 %i.bk, %i.h                     ; 3 uses
  %i.bm = ashr exact i64 %i.bl, 3                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 1
  br i1 %i.bn, label %bb.k, label %5, !prof !432

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread"
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn22, i64 16
  %i.bp = sub nsw i64 0, %i.bm
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.bl, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

5:                                                ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread"
  %6 = icmp eq i64 %i.bl, 8
  br i1 %6, label %7, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %.pn22, i64 8
  %9 = load ptr, ptr %0, align 8, !tbaa !309
  store ptr %9, ptr %8, align 8, !tbaa !309
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.k, %5, %7
  store ptr %i.bj, ptr %0, align 8, !tbaa !309
  br label %bb.l

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19": ; preds = %bb.j, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit"
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.023, ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8 ; 2 uses
  %i.br = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.br, label %.loopexit, label %.peel.next, !llvm.loop !765

.loopexit:                                        ; preds = %bb.l, %bb.f, %.preheader, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_"(ptr nofree captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 17 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !309    ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 80       ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 88       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.g = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 4 uses
  %.not.i3.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 8 uses
  br i1 %.not.i.i.i.i.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us:  ; preds = %.split.us, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us.us"
  %.sroa.06.0.us.us = phi ptr [ %.sroa.0.0.us.us, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us.us" ], [ %0, %.split.us ] ; 4 uses
  %.sroa.0.0.us.us = getelementptr inbounds i8, ptr %.sroa.06.0.us.us, i64 -8 ; 3 uses
  %.val1.val.us.us = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val1.val2.us.us = load i64, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.i = load ptr, ptr %.sroa.0.0.us.us, align 8, !tbaa !309 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 80
  %.val4.i.us.us = load ptr, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 88
  %.val5.i.us.us = load i64, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.l = add i64 %.val1.val2.us.us, -8
  store ptr %.val1.val.us.us, ptr %2, align 8
  store i64 %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.m = add i64 %.val5.i.us.us, -8
  store ptr %.val4.i.us.us, ptr %3, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load i8, ptr %i.g, align 1, !tbaa !436
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us.us, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us.us: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us
  %i.p = load i64, ptr %i.h, align 8, !tbaa !438
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.h, align 8, !tbaa !438
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us.us, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !440
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !766 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us.us"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us.us": ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us.us", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread10"

bb.b:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.val.us.us, i64 %.val1.val2.us.us
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %.0.copyload.i.i.i.i.i.us.us = load i64, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4.i.us.us, i64 %.val5.i.us.us
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %.0.copyload.i18.i.i.i.i.us.us = load i64, ptr %i.ac, align 1
  %i.ad = icmp ugt i64 %.0.copyload.i.i.i.i.i.us.us, %.0.copyload.i18.i.i.i.i.us.us
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us.us", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread10"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us.us": ; preds = %bb.b, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us.us"
  %i.ae = load ptr, ptr %.sroa.0.0.us.us, align 8, !tbaa !309
  store ptr %i.ae, ptr %.sroa.06.0.us.us, align 8, !tbaa !309
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us, !llvm.loop !767

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us:     ; preds = %.split.us, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us"
  %.sroa.06.0.us = phi ptr [ %.sroa.0.0.us, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us" ], [ %0, %.split.us ] ; 4 uses
  %.sroa.0.0.us = getelementptr inbounds i8, ptr %.sroa.06.0.us, i64 -8 ; 3 uses
  %.val1.val.us = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val1.val2.us = load i64, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.af = load ptr, ptr %.sroa.0.0.us, align 8, !tbaa !309 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 80
  %.val4.i.us = load ptr, ptr %i.ag, align 8, !tbaa !9 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 88
  %.val5.i.us = load i64, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ai = add i64 %.val1.val2.us, -8
  store ptr %.val1.val.us, ptr %2, align 8
  store i64 %i.ai, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aj = add i64 %.val5.i.us, -8
  store ptr %.val4.i.us, ptr %3, align 8
  store i64 %i.aj, ptr %i.f, align 8
  %i.ak = load i8, ptr %i.g, align 1, !tbaa !436
  %i.al = icmp ugt i8 %i.ak, 1
  br i1 %i.al, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us:   ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.am = load i64, ptr %i.h, align 8, !tbaa !438
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.h, align 8, !tbaa !438
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !440
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !766 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.c, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us": ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us
  %i.av = icmp slt i32 %i.at, 0
  br i1 %i.av, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread10"

bb.c:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.val.us, i64 %.val1.val2.us
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %.0.copyload.i.i.i.i.i.us = load i64, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.val4.i.us, i64 %.val5.i.us
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.0.copyload.i18.i.i.i.i.us = load i64, ptr %i.az, align 1
  %i.ba = icmp ugt i64 %.0.copyload.i.i.i.i.i.us, %.0.copyload.i18.i.i.i.i.us
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread10"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us"
  %i.bb = load ptr, ptr %.sroa.0.0.us, align 8, !tbaa !309
  store ptr %i.bb, ptr %.sroa.06.0.us, align 8, !tbaa !309
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us, !llvm.loop !767

.split:                                           ; preds = %bb.a
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us12, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us12:   ; preds = %.split, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us24"
  %.sroa.06.0.us13 = phi ptr [ %.sroa.0.0.us14, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.us24" ], [ %0, %.split ] ; 4 uses
  %.sroa.0.0.us14 = getelementptr inbounds i8, ptr %.sroa.06.0.us13, i64 -8 ; 3 uses
  %.val1.val.us15 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val1.val2.us16 = load i64, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.0.us14, align 8, !tbaa !309 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 80
  %.val4.i.us17 = load ptr, ptr %i.bd, align 8, !tbaa !9 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 88
  %.val5.i.us18 = load i64, ptr %i.be, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bf = add i64 %.val1.val2.us16, -8
  store ptr %.val1.val.us15, ptr %2, align 8
  store i64 %i.bf, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bg = add i64 %.val5.i.us18, -8
  store ptr %.val4.i.us17, ptr %3, align 8
  store i64 %i.bg, ptr %i.f, align 8
  call void @_ZTHN7rocksdb10perf_levelE()
  %i.bh = load i8, ptr %i.g, align 1, !tbaa !436
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us19, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us20

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us19: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us12
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !438
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.h, align 8, !tbaa !438
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us20

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us20: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us19, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us12
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !440
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !766 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us21"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN7rocksdb6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EclIPNS2_12FileMetaDataENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.us21": ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us20
end_hunk_0
