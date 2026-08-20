inline.NumInlined: 5179
inline.NumDeleted: 2218
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_14VersionBuilder3Rep13BySmallestKeyEEEET_SG_SG_SG_T0_:bb.a
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i11

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i11:      ; preds = %bb.h, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread31
  %i.be = load i8, ptr %i.d, align 1, !tbaa !806
  %i.bf = icmp ugt i8 %i.be, 1
  br i1 %i.bf, label %bb.i, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i12

bb.i:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i11
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i21, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i21

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i21:    ; preds = %bb.j, %bb.i
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !808
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.e, align 8, !tbaa !808
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i12

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i12: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i21, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i11
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !810
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5), !inline_history !1090 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13

bb.k:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %.0.copyload.i.i.i.i.i16 = load i64, ptr %i.bq, align 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %.0.copyload.i18.i.i.i.i17 = load i64, ptr %i.bs, align 1 ; 2 uses
  %i.bt = icmp ugt i64 %.0.copyload.i.i.i.i.i16, %.0.copyload.i18.i.i.i.i17
  br i1 %i.bt, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread31.backedge, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i18

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread31.backedge: ; preds = %bb.k, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit22
  br label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread31, !llvm.loop !1095

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i18: ; preds = %bb.k
  %.not.i.i19 = icmp ult i64 %.0.copyload.i.i.i.i.i16, %.0.copyload.i18.i.i.i.i17
  br i1 %.not.i.i19, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13.thread34, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit22

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i12
  %i.bu = icmp slt i32 %i.bn, 0
  br i1 %i.bu, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread31.backedge, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13.thread34

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit22: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !304
  %i.bx = and i64 %i.bw, 4611686018427387903
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !304
  %i.ca = and i64 %i.bz, 4611686018427387903
  %i.cb = icmp samesign ult i64 %i.bx, %i.ca
  br i1 %i.cb, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread31.backedge, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13.thread34

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13.thread34: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i18, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit22
  %.not = icmp ult ptr %.sroa.027.1, %.sroa.024.1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13.thread34
  ret ptr %.sroa.027.1

bb.m:                                             ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i13.thread34
  %i.cc = load ptr, ptr %.sroa.027.1, align 8, !tbaa !350
  %i.cd = load ptr, ptr %.sroa.024.1, align 8, !tbaa !350
  store ptr %i.cd, ptr %.sroa.027.1, align 8, !tbaa !350
  store ptr %i.cc, ptr %.sroa.024.1, align 8, !tbaa !350
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.027.1, i64 8
  br label %bb.b, !llvm.loop !1096
}

; Function Attrs: uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_14VersionBuilder3Rep13BySmallestKeyEEEEvT_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #24 comdat {
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
  %i.i = load ptr, ptr %.sroa.0.021, align 8, !tbaa !350 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !350    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !243  ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.s = add i64 %i.o, -8
  store ptr %i.m, ptr %3, align 8
  store i64 %i.s, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.t = add i64 %i.r, -8
  store ptr %i.p, ptr %4, align 8
  store i64 %i.t, ptr %i.e, align 8
  br i1 %.not.i.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel:   ; preds = %bb.b, %.lr.ph
  %i.u = load i8, ptr %i.f, align 1, !tbaa !806
  %i.v = icmp ugt i8 %i.u, 1
  br i1 %i.v, label %bb.c, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel

bb.c:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel: ; preds = %bb.d, %bb.c
  %i.w = load i64, ptr %i.g, align 8, !tbaa !808
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.g, align 8, !tbaa !808
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.peel, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.peel
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !810
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !1090 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.peel

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.peel: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel
  %i.af = icmp slt i32 %i.ad, 0
  br i1 %i.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19.peel

bb.e:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i.i.i.i.peel = load i64, ptr %i.ah, align 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %.0.copyload.i18.i.i.i.i.peel = load i64, ptr %i.aj, align 1 ; 2 uses
  %i.ak = icmp ugt i64 %.0.copyload.i.i.i.i.i.peel, %.0.copyload.i18.i.i.i.i.peel
  br i1 %i.ak, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.peel

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.peel: ; preds = %bb.e
  %.not.i.i.peel = icmp ult i64 %.0.copyload.i.i.i.i.i.peel, %.0.copyload.i18.i.i.i.i.peel
  br i1 %.not.i.i.peel, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19.peel, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.peel

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.peel: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.peel
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !304
  %i.an = and i64 %i.am, 4611686018427387903
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !304
  %i.aq = and i64 %i.ap, 4611686018427387903
  %i.ar = icmp samesign ult i64 %i.an, %i.aq
  br i1 %i.ar, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19.peel

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19.peel: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.peel, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.peel, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.peel
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS2_14VersionBuilder3Rep13BySmallestKeyEEEEvT_T0_(ptr nonnull %.sroa.0.021, ptr nonnull %2)
  br label %bb.f

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.peel, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.peel
  %i.as = load <2 x ptr>, ptr %0, align 8, !tbaa !350
  %i.at = shufflevector <2 x ptr> %i.as, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.at, ptr %0, align 8, !tbaa !350
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.peel, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19.peel
  %.sroa.0.0.peel = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = icmp eq ptr %.sroa.0.0.peel, %1
  br i1 %i.au, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.f, %bb.l
  %.sroa.0.023 = phi ptr [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0.peel, %bb.f ] ; 6 uses
  %.pn22 = phi ptr [ %.sroa.0.023, %bb.l ], [ %.sroa.0.021, %bb.f ]
  %i.av = load ptr, ptr %.sroa.0.023, align 8, !tbaa !350 ; 3 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !350   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !9  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !243 ; 2 uses
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !9  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bf = add i64 %i.bb, -8
  store ptr %i.az, ptr %3, align 8
  store i64 %i.bf, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.bg = add i64 %i.be, -8
  store ptr %i.bc, ptr %4, align 8
  store i64 %i.bg, ptr %i.e, align 8
  br i1 %.not.i.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.peel.next
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i:        ; preds = %bb.g, %.peel.next
  %i.bh = load i8, ptr %i.f, align 1, !tbaa !806
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %bb.h, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i

bb.h:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i:      ; preds = %bb.i, %bb.h
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !808
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.g, align 8, !tbaa !808
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !810
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !1090 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.j, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i

bb.j:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.bt, align 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %.0.copyload.i18.i.i.i.i = load i64, ptr %i.bv, align 1 ; 2 uses
  %i.bw = icmp ugt i64 %.0.copyload.i.i.i.i.i, %.0.copyload.i18.i.i.i.i
  br i1 %i.bw, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i: ; preds = %bb.j
  %.not.i.i = icmp ult i64 %.0.copyload.i.i.i.i.i, %.0.copyload.i18.i.i.i.i
  br i1 %.not.i.i, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i
  %i.bx = icmp slt i32 %i.bq, 0
  br i1 %i.bx, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !304
  %i.ca = and i64 %i.bz, 4611686018427387903
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !304
  %i.cd = and i64 %i.cc, 4611686018427387903
  %i.ce = icmp samesign ult i64 %i.ca, %i.cd
  br i1 %i.ce, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread: ; preds = %bb.j, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  %i.cf = load ptr, ptr %.sroa.0.023, align 8, !tbaa !350
  %i.cg = ptrtoint ptr %.sroa.0.023 to i64
  %i.ch = sub i64 %i.cg, %i.h                     ; 2 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 1
  br i1 %i.cj, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !prof !862

bb.k:                                             ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn22, i64 16
  %i.cl = sub nsw i64 0, %i.ci
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ch, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread, %bb.k
  store ptr %i.cf, ptr %0, align 8, !tbaa !350
  br label %bb.l

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclINS_17__normal_iteratorIPPNS2_12FileMetaDataESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS2_14VersionBuilder3Rep13BySmallestKeyEEEEvT_T0_(ptr nonnull %.sroa.0.023, ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread19
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8 ; 2 uses
  %i.cn = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.cn, label %.loopexit, label %.peel.next, !llvm.loop !1097

.loopexit:                                        ; preds = %bb.l, %bb.f, %.preheader, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS2_14VersionBuilder3Rep13BySmallestKeyEEEEvT_T0_(ptr %0, ptr %1) local_unnamed_addr #24 comdat {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 17 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !350    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.h = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 4 uses
  %.not.i3.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 8 uses
  br i1 %.not.i.i.i.i.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us:  ; preds = %.split.us, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us.us
  %.sroa.05.0.us.us = phi ptr [ %.sroa.0.0.us.us, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us.us ], [ %0, %.split.us ] ; 5 uses
  %.sroa.0.0.us.us = getelementptr inbounds i8, ptr %.sroa.05.0.us.us, i64 -8 ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.0.us.us, align 8, !tbaa !350 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !243  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.q = add i64 %i.m, -8
  store ptr %i.l, ptr %2, align 8
  store i64 %i.q, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = add i64 %i.p, -8
  store ptr %i.n, ptr %3, align 8
  store i64 %i.r, ptr %i.g, align 8
  %i.s = load i8, ptr %i.h, align 1, !tbaa !806
  %i.t = icmp ugt i8 %i.s, 1
  br i1 %i.t, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us.us, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us.us: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us
  %i.u = load i64, ptr %i.i, align 8, !tbaa !808
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.i, align 8, !tbaa !808
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us.us, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !810
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !1099 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.us.us

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.us.us: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread9

bb.b:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %.0.copyload.i.i.i.i.i.us.us = load i64, ptr %i.af, align 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i18.i.i.i.i.us.us = load i64, ptr %i.ah, align 1 ; 2 uses
  %i.ai = icmp ugt i64 %.0.copyload.i.i.i.i.i.us.us, %.0.copyload.i18.i.i.i.i.us.us
  br i1 %i.ai, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.us.us

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.us.us: ; preds = %bb.b
  %.not.i.i.us.us = icmp ult i64 %.0.copyload.i.i.i.i.i.us.us, %.0.copyload.i18.i.i.i.i.us.us
  br i1 %.not.i.i.us.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread9, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclIPNS2_12FileMetaDataENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.us

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclIPNS2_12FileMetaDataENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.us: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.us.us
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !304
  %i.ak = and i64 %i.aj, 4611686018427387903
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !304
  %i.an = and i64 %i.am, 4611686018427387903
  %i.ao = icmp samesign ult i64 %i.ak, %i.an
  br i1 %i.ao, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread9

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us.us: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclIPNS2_12FileMetaDataENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us.us, %bb.b, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.us.us
  %i.ap = load ptr, ptr %.sroa.0.0.us.us, align 8, !tbaa !350
  store ptr %i.ap, ptr %.sroa.05.0.us.us, align 8, !tbaa !350
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us.us, !llvm.loop !1100

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us:     ; preds = %.split.us, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us
  %.sroa.05.0.us = phi ptr [ %.sroa.0.0.us, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us ], [ %0, %.split.us ] ; 5 uses
  %.sroa.0.0.us = getelementptr inbounds i8, ptr %.sroa.05.0.us, i64 -8 ; 3 uses
  %i.aq = load ptr, ptr %.sroa.0.0.us, align 8, !tbaa !350 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %i.at = load i64, ptr %i.d, align 8, !tbaa !243 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !9  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ax = add i64 %i.at, -8
  store ptr %i.as, ptr %2, align 8
  store i64 %i.ax, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ay = add i64 %i.aw, -8
  store ptr %i.au, ptr %3, align 8
  store i64 %i.ay, ptr %i.g, align 8
  %i.az = load i8, ptr %i.h, align 1, !tbaa !806
  %i.ba = icmp ugt i8 %i.az, 1
  br i1 %i.ba, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us

_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us:   ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !808
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !808
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.i.i.us, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !810
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !1099 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.us

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.us: ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us
  %i.bk = icmp slt i32 %i.bi, 0
  br i1 %i.bk, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread9

bb.c:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.i.i.us
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %.0.copyload.i.i.i.i.i.us = load i64, ptr %i.bm, align 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.0.copyload.i18.i.i.i.i.us = load i64, ptr %i.bo, align 1 ; 2 uses
  %i.bp = icmp ugt i64 %.0.copyload.i.i.i.i.i.us, %.0.copyload.i18.i.i.i.i.us
  br i1 %i.bp, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.us

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.us: ; preds = %bb.c
  %.not.i.i.us = icmp ult i64 %.0.copyload.i.i.i.i.i.us, %.0.copyload.i18.i.i.i.i.us
  br i1 %.not.i.i.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread9, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclIPNS2_12FileMetaDataENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclIPNS2_12FileMetaDataENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us: ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.i.i.us
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !304
  %i.br = and i64 %i.bq, 4611686018427387903
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !304
  %i.bu = and i64 %i.bt, 4611686018427387903
  %i.bv = icmp samesign ult i64 %i.br, %i.bu
  br i1 %i.bv, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread9

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb14VersionBuilder3Rep13BySmallestKeyEEclIPNS2_12FileMetaDataENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.us, %bb.c, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.us
  %i.bw = load ptr, ptr %.sroa.0.0.us, align 8, !tbaa !350
  store ptr %i.bw, ptr %.sroa.05.0.us, align 8, !tbaa !350
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us, !llvm.loop !1100

.split:                                           ; preds = %bb.a
  br i1 %.not.i3.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us11, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.i.i.us11:   ; preds = %.split, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us22
  %.sroa.05.0.us12 = phi ptr [ %.sroa.0.0.us13, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread.i.i.thread.us22 ], [ %0, %.split ] ; 5 uses
  %.sroa.0.0.us13 = getelementptr inbounds i8, ptr %.sroa.05.0.us12, i64 -8 ; 3 uses
  %i.bx = load ptr, ptr %.sroa.0.0.us13, align 8, !tbaa !350 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !243 ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !9  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ce = add i64 %i.ca, -8
  store ptr %i.bz, ptr %2, align 8
  store i64 %i.ce, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
end_hunk_0
