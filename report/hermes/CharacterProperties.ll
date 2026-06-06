inline.NumInlined: 252
inline.NumDeleted: 137
begin_hunk_0_@_ZN6hermes14isUnicodeDigitEj:bb.a
  %or.cond = icmp ult i32 %i.a, 10
  br i1 %or.cond, label %_ZN6hermes6lookupIA63_NS_12UnicodeRangeEEEbRKT_j.exit, label %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i, %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ @_ZN6hermesL13UNICODE_DIGITE, %bb.a ] ; 2 uses
  %.0114.i.i.i = phi i64 [ %.112.i.i.i, %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ 63, %bb.a ] ; 2 uses
  %i.b = lshr i64 %.0114.i.i.i, 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.05.i.i.i, i64 %i.b ; 2 uses
  %.val.i.i.i = load i64, ptr %i.c, align 4
  %.sroa.1.0.extract.shift.i.i.i.i.i = lshr i64 %.val.i.i.i, 32
  %.sroa.1.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i to i32
  %i.d = icmp ugt i32 %0, %.sroa.1.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = xor i64 %i.b, -1
  %i.g = add nsw i64 %.0114.i.i.i, %i.f
  %.112.i.i.i = select i1 %i.d, i64 %i.g, i64 %i.b ; 2 uses
  %.1.i.i.i = select i1 %i.d, ptr %i.e, ptr %.05.i.i.i ; 3 uses
  %i.h = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.h, label %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i, !llvm.loop !7

_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i.i = icmp eq ptr %.1.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13UNICODE_DIGITE, i64 504)
  br i1 %.not.i.i, label %_ZN6hermes6lookupIA63_NS_12UnicodeRangeEEEbRKT_j.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.1.i.i.i, align 4
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.i = icmp uge i32 %0, %.sroa.0.0.extract.trunc.i.i.i
  br label %_ZN6hermes6lookupIA63_NS_12UnicodeRangeEEEbRKT_j.exit

_ZN6hermes6lookupIA63_NS_12UnicodeRangeEEEbRKT_j.exit: ; preds = %bb.b, %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes29isUnicodeConnectorPunctuationEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 95
  br i1 %i.a, label %_ZN6hermes6lookupIA6_NS_12UnicodeRangeEEEbRKT_j.exit, label %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i, %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ @_ZN6hermesL29UNICODE_CONNECTOR_PUNCTUATIONE, %bb.a ] ; 2 uses
  %.0114.i.i.i = phi i64 [ %.112.i.i.i, %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ 6, %bb.a ] ; 2 uses
  %i.b = lshr i64 %.0114.i.i.i, 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.05.i.i.i, i64 %i.b ; 2 uses
  %.val.i.i.i = load i64, ptr %i.c, align 4
  %.sroa.1.0.extract.shift.i.i.i.i.i = lshr i64 %.val.i.i.i, 32
  %.sroa.1.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i to i32
  %i.d = icmp ugt i32 %0, %.sroa.1.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = xor i64 %i.b, -1
  %i.g = add nsw i64 %.0114.i.i.i, %i.f
  %.112.i.i.i = select i1 %i.d, i64 %i.g, i64 %i.b ; 2 uses
  %.1.i.i.i = select i1 %i.d, ptr %i.e, ptr %.05.i.i.i ; 3 uses
  %i.h = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.h, label %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i, !llvm.loop !7

_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPKN6hermes12UnicodeRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i.i = icmp eq ptr %.1.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN6hermesL29UNICODE_CONNECTOR_PUNCTUATIONE, i64 48)
  br i1 %.not.i.i, label %_ZN6hermes6lookupIA6_NS_12UnicodeRangeEEEbRKT_j.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %.1.i.i.i, align 4
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.i = icmp uge i32 %0, %.sroa.0.0.extract.trunc.i.i.i
  br label %_ZN6hermes6lookupIA6_NS_12UnicodeRangeEEEbRKT_j.exit

_ZN6hermes6lookupIA6_NS_12UnicodeRangeEEEbRKT_j.exit: ; preds = %bb.b, %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %_ZSt13__lower_boundIPKN6hermes12UnicodeRangeEjN9__gnu_cxx5__ops14_Iter_comp_valINS0_12_GLOBAL__N_116UnicodeRangeCompEEEET_SA_SA_RKT0_T1_.exit.i.i ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb(ptr dead_on_unwind noalias writable sret(%"class.hermes::CodePointSet") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %"struct.hermes::CodePointRange", align 8 ; 6 uses
  %4 = alloca %"struct.hermes::CodePointRange", align 8 ; 6 uses
  %5 = alloca %"class.hermes::CodePointSet", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 15 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12   ; 7 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  %i.f = icmp eq ptr %5, %1
  %or.cond.i.i = or i1 %i.f, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN6hermes12CodePointSetC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %i.e, 4
  br i1 %i.g, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.a, i64 noundef %i.h, i64 noundef 8) #10
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !9
  br label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.b
  %i.i = phi ptr [ %.pre.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.a, %bb.b ]
  %i.j = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.e, %bb.b ]
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %1, align 8, !tbaa !9
  %gepdiff.i.i.i = shl nuw nsw i64 %i.k, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 4 %i.l, i64 %gepdiff.i.i.i, i1 false)
  %.pre.pre = load i32, ptr %i.d, align 8, !tbaa !12
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre = phi i32 [ %.pre.pre, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i ], [ 0, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i ]
  store i32 %i.e, ptr %i.b, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSetC2ERKS0_.exit

_ZN6hermes12CodePointSetC2ERKS0_.exit:            ; preds = %bb.a, %.sink.split.i.i.i
  %i.m = phi i32 [ 0, %bb.a ], [ %i.e, %.sink.split.i.i.i ]
  %i.n = phi i32 [ %i.e, %bb.a ], [ %.pre, %.sink.split.i.i.i ] ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.p = zext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not118 = icmp eq i32 %i.n, 0
  br i1 %.not118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit
  %i.r = select i1 %2, ptr @_ZN6hermesL13UNICODE_FOLDSE, ptr @_ZN6hermesL13LEGACY_CANONSE ; 3 uses
  %i.s = select i1 %2, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13UNICODE_FOLDSE, i64 1608), ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13LEGACY_CANONSE, i64 1400) ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.pre141 = load i32, ptr %i.b, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes12CodePointSetC2ERKS0_.exit
  %i.y = phi i32 [ %.pre141, %._crit_edge.loopexit ], [ %i.m, %_ZN6hermes12CodePointSetC2ERKS0_.exit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 4, ptr %i.ab, align 4, !tbaa !13
  %.not.i.i.i21 = icmp eq i32 %i.y, 0
  %i.ac = icmp eq ptr %0, %5
  %or.cond.i.i22 = or i1 %i.ac, %.not.i.i.i21
  br i1 %or.cond.i.i22, label %_ZN6hermes12CodePointSetC2ERKS0_.exit31, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ad = icmp ugt i32 %i.y, 4
  br i1 %i.ad, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i26, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i23

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i26: ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.z, i64 noundef %i.ae, i64 noundef 8) #10
  %.pre.i.i27 = load i32, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i28 = icmp eq i32 %.pre.i.i27, 0
  br i1 %.not.i.i.i.i28, label %.sink.split.i.i.i25, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i29

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i29: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i26
  %.pre.i30 = load ptr, ptr %0, align 8, !tbaa !9
  br label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i23

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i23: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i29, %bb.c
  %i.af = phi ptr [ %.pre.i30, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i29 ], [ %i.z, %bb.c ]
  %i.ag = phi i32 [ %.pre.i.i27, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i29 ], [ %i.y, %bb.c ]
  %i.ah = zext i32 %i.ag to i64
  %i.ai = load ptr, ptr %5, align 8, !tbaa !9
  %gepdiff.i.i.i24 = shl nuw nsw i64 %i.ah, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.ai, i64 %gepdiff.i.i.i24, i1 false)
  %.pre142.pre = load i32, ptr %i.b, align 8, !tbaa !12
  br label %.sink.split.i.i.i25

.sink.split.i.i.i25:                              ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i23, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i26
  %.pre142 = phi i32 [ %.pre142.pre, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i23 ], [ 0, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i26 ]
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSetC2ERKS0_.exit31

_ZN6hermes12CodePointSetC2ERKS0_.exit31:          ; preds = %._crit_edge, %.sink.split.i.i.i25
  %i.aj = phi i32 [ %i.y, %._crit_edge ], [ %.pre142, %.sink.split.i.i.i25 ] ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !9     ; 3 uses
  %i.al = zext i32 %i.aj to i64
  %.idx124 = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx124
  %.not20120 = icmp eq i32 %i.aj, 0
  br i1 %.not20120, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit31
  %i.an = select i1 %2, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13UNICODE_FOLDSE, i64 1608), ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13LEGACY_CANONSE, i64 1400)
  %i.ao = select i1 %2, ptr @_ZN6hermesL13UNICODE_FOLDSE, ptr @_ZN6hermesL13LEGACY_CANONSE
  br label %bb.w

bb.d:                                             ; preds = %.lr.ph, %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.0119 = phi ptr [ %i.o, %.lr.ph ], [ %i.gq, %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit ] ; 2 uses
  %.sroa.08.0.copyload = load i64, ptr %.0119, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.08.0.copyload to i32 ; 4 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.08.0.copyload, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  br i1 %i.x, label %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i

_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi ptr [ %.1.i.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.01116.i.i.i = phi i64 [ %.112.i.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %i.ap = lshr i64 %.01116.i.i.i, 1               ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i.i, i64 %i.ap ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.aq, align 4
  %i.ar = trunc i64 %.val.i.i.i.i to i32          ; 2 uses
  %i.as = and i32 %i.ar, 16777215
  %i.at = lshr i32 %i.ar, 24
  %i.au = add nuw nsw i32 %i.as, %i.at
  %.not.i.i.i35 = icmp ugt i32 %i.au, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = xor i64 %i.ap, -1
  %i.ax = add nsw i64 %.01116.i.i.i, %i.aw
  %.112.i.i.i = select i1 %.not.i.i.i35, i64 %i.ap, i64 %i.ax ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i35, ptr %.017.i.i.i, ptr %i.av ; 2 uses
  %i.ay = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.ay, label %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i, !llvm.loop !14

_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i: ; preds = %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.r, %bb.d ], [ %.1.i.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.az = add i32 %.sroa.4.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i ; 3 uses
  %i.ba = icmp ugt i32 %i.az, %.sroa.0.0.extract.trunc.i
  %i.bb = icmp ne ptr %.0.lcssa.i.i.i, %i.s
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph47.i, label %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit

.lr.ph47.i:                                       ; preds = %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i, %bb.u
  %.046.i = phi ptr [ %.1.i, %bb.u ], [ %.0.lcssa.i.i.i, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i ] ; 4 uses
  %.02145.i = phi i32 [ %.2.i, %bb.u ], [ %.sroa.0.0.extract.trunc.i, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i ] ; 4 uses
  %i.bd = load i64, ptr %.046.i, align 4
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = and i32 %i.be, 16777215                 ; 3 uses
  %i.bg = icmp ugt i32 %i.bf, %.02145.i
  br i1 %i.bg, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph47.i
  %i.bh = lshr i32 %i.be, 24
  %i.bi = add nuw nsw i32 %i.bf, %i.bh
  %invariant.umin.i = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.az) ; 3 uses
  %i.bj = icmp ult i32 %.02145.i, %invariant.umin.i
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6hermes12CodePointSet3addEj.exit.i
  %.12244.i = phi i32 [ %i.gl, %_ZN6hermes12CodePointSet3addEj.exit.i ], [ %.02145.i, %.preheader.i ] ; 3 uses
  %.0.val.i = load i64, ptr %.046.i, align 4      ; 3 uses
  %i.bk = trunc i64 %.0.val.i to i32
  %i.bl = and i32 %i.bk, 16777215
  %i.bm = sub i32 %.12244.i, %i.bl
  %i.bn = lshr i64 %.0.val.i, 56
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = urem i32 %i.bm, %i.bo
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = shl i64 %.0.val.i, 8
  %i.bs = ashr i64 %i.br, 40
  %i.bt = trunc nsw i64 %i.bs to i32
  %i.bu = select i1 %i.bq, i32 %i.bt, i32 0
  %.0.i.i = add nsw i32 %i.bu, %.12244.i          ; 14 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.0.i.i to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %4, align 8
  %i.bv = load ptr, ptr %5, align 8, !tbaa !9     ; 7 uses
  %i.bw = load i32, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.bx = zext i32 %i.bw to i64                   ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  %i.bz = ptrtoint ptr %i.bv to i64               ; 2 uses
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %.lr.ph.i
  %i.ca = add i32 %.0.i.i, 1                      ; 8 uses
  br label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.h, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.01368.i.i = phi i64 [ %i.bx, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.2.i.i, %bb.h ] ; 3 uses
  %.067.i.i = phi ptr [ %i.bv, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %bb.h ] ; 4 uses
  %i.cb = lshr i64 %.01368.i.i, 1                 ; 5 uses
  %.idx206 = shl nuw nsw i64 %i.cb, 3             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 %.idx206 ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.cc, align 4 ; 2 uses
  %.sroa.04.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i to i32 ; 6 uses
  %.sroa.47.0.extract.shift.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i, 32
  %.sroa.47.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.47.0.extract.shift.i.i.i.i to i32
  %i.cd = icmp ugt i32 %i.ca, %.sroa.04.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ce = add i32 %.sroa.47.0.extract.trunc.i.i.i.i, %.sroa.04.0.extract.trunc.i.i.i.i ; 3 uses
  %i.cf = icmp ugt i32 %i.ce, %.0.i.i             ; 2 uses
  %i.cg = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.ch = icmp ne i32 %i.ca, %.sroa.04.0.extract.trunc.i.i.i.i
  %i.ci = icmp ne i32 %i.ce, %.0.i.i
  %.not10.i.i.i.i = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = icmp ugt i32 %.0.i.i, %.sroa.04.0.extract.trunc.i.i.i.i
  %spec.select.i.i.i.i = and i1 %i.cj, %.not10.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cl = xor i64 %i.cb, -1
  %i.cm = add nsw i64 %.01368.i.i, %i.cl
  br label %bb.h

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.cn = and i1 %i.cd, %i.cf
  br i1 %i.cn, label %.critedge.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i
  %i.co = icmp ne i32 %i.ce, %.0.i.i
  %i.cp = icmp ne i32 %i.ca, %.sroa.04.0.extract.trunc.i.i.i.i
  %.not10.i.i22.i.i = and i1 %i.cp, %i.co
  %i.cq = icmp ult i32 %.0.i.i, %.sroa.04.0.extract.trunc.i.i.i.i
  %spec.select.i.i23.i.i = and i1 %i.cq, %.not10.i.i22.i.i
  br i1 %spec.select.i.i23.i.i, label %bb.h, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i
  %.not204 = icmp eq i64 %i.cb, 0
  br i1 %.not204, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.critedge.i.i, %.thread.i.i.i
  %.025.i.i.i = phi ptr [ %i.de, %.thread.i.i.i ], [ %.067.i.i, %.critedge.i.i ] ; 3 uses
  %.01124.i.i.i = phi i64 [ %i.dd, %.thread.i.i.i ], [ %i.cb, %.critedge.i.i ] ; 2 uses
  %i.cr = lshr i64 %.01124.i.i.i, 1               ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.025.i.i.i, i64 %i.cr ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.cs, align 4 ; 2 uses
  %.sroa.04.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i.i to i32 ; 4 uses
  %.sroa.47.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i.i.i, 32
  %.sroa.47.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.47.0.extract.shift.i.i.i.i.i to i32
  %i.ct = icmp ugt i32 %i.ca, %.sroa.04.0.extract.trunc.i.i.i.i.i
  %i.cu = add i32 %.sroa.47.0.extract.trunc.i.i.i.i.i, %.sroa.04.0.extract.trunc.i.i.i.i.i ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, %.0.i.i
  %i.cw = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %i.cw, label %.thread.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.cx = icmp ne i32 %i.ca, %.sroa.04.0.extract.trunc.i.i.i.i.i
  %i.cy = icmp ne i32 %i.cu, %.0.i.i
  %.not10.i.i.i.i.i = select i1 %i.cx, i1 %i.cy, i1 false
  %i.cz = icmp ugt i32 %.0.i.i, %.sroa.04.0.extract.trunc.i.i.i.i.i
  %spec.select.i.i.i.i.i = and i1 %i.cz, %.not10.i.i.i.i.i
  %cond.fr.i.i.i = freeze i1 %spec.select.i.i.i.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.db = xor i64 %i.cr, -1
  %i.dc = add nsw i64 %.01124.i.i.i, %i.db
  %spec.select.i.i.i = select i1 %cond.fr.i.i.i, i64 %i.dc, i64 %i.cr
  %spec.select23.i.i.i = select i1 %cond.fr.i.i.i, ptr %i.da, ptr %.025.i.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.dd = phi i64 [ %i.cr, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %spec.select.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i ] ; 2 uses
  %i.de = phi ptr [ %.025.i.i.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %spec.select23.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i ] ; 2 uses
  %i.df = icmp sgt i64 %i.dd, 0
  br i1 %i.df, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i, !llvm.loop !15

_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i: ; preds = %.thread.i.i.i, %.critedge.i.i
  %.0.lcssa.i.i27.i = phi ptr [ %.067.i.i, %.critedge.i.i ], [ %i.de, %.thread.i.i.i ] ; 6 uses
  %.idx205 = shl nuw nsw i64 %.01368.i.i, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.dh = add nuw nsw i64 %.idx206, 8
  %gepdiff = sub nsw i64 %.idx205, %i.dh
  %i.di = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i: ; preds = %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i, %bb.g
  %.024.i.i.i = phi ptr [ %i.ea, %bb.g ], [ %i.dg, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i ] ; 2 uses
  %.01123.i.i.i = phi i64 [ %i.dz, %bb.g ], [ %i.di, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i ] ; 3 uses
  %i.dk = lshr i64 %.01123.i.i.i, 1               ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.024.i.i.i, i64 %i.dk ; 3 uses
  %.sroa.0.0.copyload.i.i37.i.i = load i64, ptr %i.dl, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i38.i.i = trunc i64 %.sroa.0.0.copyload.i.i37.i.i to i32 ; 4 uses
  %.sroa.4.0.extract.shift.i.i.i39.i.i = lshr i64 %.sroa.0.0.copyload.i.i37.i.i, 32
  %.sroa.4.0.extract.trunc.i.i.i40.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i39.i.i to i32
  %i.dm = add i32 %.sroa.4.0.extract.trunc.i.i.i40.i.i, %.sroa.0.0.extract.trunc.i.i.i38.i.i ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, %.0.i.i
  %i.do = icmp ugt i32 %i.ca, %.sroa.0.0.extract.trunc.i.i.i38.i.i
  %i.dp = and i1 %i.do, %i.dn
  br i1 %i.dp, label %.thread.i44.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i

.thread.i44.i.i:                                  ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dr = xor i64 %i.dk, -1
  %i.ds = add nsw i64 %.01123.i.i.i, %i.dr
  br label %bb.g

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i
  %i.dt = icmp ne i32 %i.dm, %.0.i.i
  %i.du = icmp ne i32 %i.ca, %.sroa.0.0.extract.trunc.i.i.i38.i.i
  %.not10.i.i.i41.i.i = and i1 %i.du, %i.dt
end_hunk_0
begin_hunk_1_@_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb:bb.a
  %.2.i.i = phi i64 [ %i.cm, %bb.e ], [ %i.cb, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i ] ; 2 uses
  %i.ec = icmp sgt i64 %.2.i.i, 0
  br i1 %i.ec, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i, !llvm.loop !17

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i: ; preds = %bb.g, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %i.dg, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i ], [ %i.ea, %bb.g ] ; 6 uses
  %i.ed = icmp eq ptr %.0.lcssa.i.i27.i, %.sroa.3.0.i.i
  br i1 %i.ed, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i, label %bb.q

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i: ; preds = %bb.h, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i, %.lr.ph.i
  %.sroa.0.0.i37.i = phi ptr [ %.0.lcssa.i.i27.i, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i ], [ %i.bv, %.lr.ph.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.ee = icmp eq ptr %.sroa.0.0.i37.i, %i.by
  %i.ef = load i32, ptr %i.c, align 4, !tbaa !13
  %.not.i.i25.i = icmp ult i32 %i.bw, %i.ef       ; 2 uses
  br i1 %i.ee, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i
  br i1 %.not.i.i25.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !12
  %.pre19.i.i = load ptr, ptr %5, align 8, !tbaa !9
  %.pre20.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i: ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i64 [ %i.bx, %bb.i ], [ %.pre20.i.i, %bb.j ]
  %i.eg = phi ptr [ %i.bv, %bb.i ], [ %.pre19.i.i, %bb.j ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.pre-phi.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.b, align 8, !tbaa !12
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.b, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

bb.k:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i
  br i1 %.not.i.i25.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ek = ptrtoint ptr %.sroa.0.0.i37.i to i64
  %i.el = sub i64 %i.ek, %i.bz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #10
  %i.em = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  %.pre.i.i34 = load i32, ptr %i.b, align 8, !tbaa !12
  %.pre21.i.i = zext i32 %.pre.i.i34 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi22.i.i = phi i64 [ %.pre21.i.i, %bb.l ], [ %i.bx, %bb.k ]
  %i.eo = phi ptr [ %i.em, %bb.l ], [ %i.bv, %bb.k ]
  %.015.i.i = phi ptr [ %i.en, %bb.l ], [ %.sroa.0.0.i37.i, %bb.k ] ; 5 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.pre-phi22.i.i ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -8
  %i.er = load i64, ptr %i.eq, align 4
  store i64 %i.er, ptr %i.ep, align 4
  %i.es = load ptr, ptr %5, align 8, !tbaa !9
  %i.et = load i32, ptr %i.b, align 8, !tbaa !12
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %.015.i.i to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = ashr exact i64 %i.ez, 3                 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 1
  br i1 %i.fb, label %bb.n, label %bb.o, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.fc = sub nsw i64 0, %i.fa
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %.015.i.i, i64 %i.ez, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.fe = icmp eq i64 %i.ez, 8
  br i1 %i.fe, label %bb.p, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.ff = load i64, ptr %.015.i.i, align 4
  store i64 %i.ff, ptr %i.ew, align 4
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.fg = load i32, ptr %i.b, align 8, !tbaa !12
  %i.fh = add i32 %i.fg, 1                        ; 2 uses
  store i32 %i.fh, ptr %i.b, align 8, !tbaa !12
  %.not18.i.i = icmp ugt ptr %.015.i.i, %4
  %i.fi = load ptr, ptr %5, align 8
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = icmp uge ptr %4, %i.fk
  %i.fm = select i1 %.not18.i.i, i1 true, i1 %i.fl
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fm, i64 0, i64 8
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.fn = load i64, ptr %.0.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8
  store i64 %i.fn, ptr %.015.i.i, align 4
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

bb.q:                                             ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i
  %i.fo = load i32, ptr %.0.lcssa.i.i27.i, align 4, !tbaa !3
  %i.fp = call i32 @llvm.umin.i32(i32 %i.fo, i32 %.0.i.i) ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.3.0.i.i, i64 -8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !19
  %i.fs = getelementptr inbounds i8, ptr %.sroa.3.0.i.i, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !21
  %i.fu = add i32 %i.ft, %i.fr
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.ca, i32 %i.fu)
  %i.fv = sub i32 %.sroa.speculated.i.i.i, %i.fp
  store i32 %i.fp, ptr %.0.lcssa.i.i27.i, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i27.i, i64 4
  store i32 %i.fv, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !3
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i27.i, i64 8 ; 3 uses
  %i.fx = load i32, ptr %i.b, align 8, !tbaa !12
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.fy
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %.sroa.3.0.i.i to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 4 uses
  %i.gd = icmp sgt i64 %i.gc, 8
  br i1 %i.gd, label %bb.r, label %bb.s, !prof !18

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr nonnull align 4 %.sroa.3.0.i.i, i64 %i.gc, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ge = icmp eq i64 %i.gc, 8
  br i1 %i.ge, label %bb.t, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.gf = load i64, ptr %.sroa.3.0.i.i, align 4
  store i64 %i.gf, ptr %i.fw, align 4
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.gg = getelementptr inbounds i8, ptr %i.fw, i64 %i.gc
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.bz
  %i.gj = lshr exact i64 %i.gi, 3
  %i.gk = trunc i64 %i.gj to i32
  store i32 %i.gk, ptr %i.b, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i

_ZN6hermes12CodePointSet3addEj.exit.i:            ; preds = %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i, %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i.i, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.gl = add i32 %.12244.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gl, %invariant.umin.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i, %.preheader.i
  %.122.lcssa.i = phi i32 [ %.02145.i, %.preheader.i ], [ %invariant.umin.i, %_ZN6hermes12CodePointSet3addEj.exit.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i, %.lr.ph47.i
  %.2.i = phi i32 [ %.122.lcssa.i, %._crit_edge.i ], [ %i.bf, %.lr.ph47.i ] ; 2 uses
  %.1.i = phi ptr [ %i.gm, %._crit_edge.i ], [ %.046.i, %.lr.ph47.i ] ; 2 uses
  %i.gn = icmp ult i32 %.2.i, %i.az
  %i.go = icmp ne ptr %.1.i, %i.s
  %i.gp = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %i.gp, label %.lr.ph47.i, label %_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit, !llvm.loop !23

_ZN6hermesL17canonicalizeRangeENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %bb.u, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.0119, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gq, %i.q
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge123.loopexit:                          ; preds = %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.pre143 = load ptr, ptr %5, align 8, !tbaa !9
  br label %._crit_edge123

._crit_edge123:                                   ; preds = %._crit_edge123.loopexit, %_ZN6hermes12CodePointSetC2ERKS0_.exit31
  %i.gr = phi ptr [ %.pre143, %._crit_edge123.loopexit ], [ %i.ak, %_ZN6hermes12CodePointSetC2ERKS0_.exit31 ] ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.a
  br i1 %i.gs, label %_ZN6hermes12CodePointSetD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge123
  call void @free(ptr noundef %i.gr) #10
  br label %_ZN6hermes12CodePointSetD2Ev.exit

_ZN6hermes12CodePointSetD2Ev.exit:                ; preds = %._crit_edge123, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.w:                                             ; preds = %.lr.ph122, %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit
  %.019121 = phi ptr [ %i.ak, %.lr.ph122 ], [ %i.ms, %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.019121, align 4 ; 2 uses
  %.sroa.028.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i36 = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %i.gt = icmp eq i64 %.sroa.4.0.extract.shift.i36, 0
  br i1 %i.gt, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.w
  %.sroa.4.0.extract.trunc.i37 = trunc nuw i64 %.sroa.4.0.extract.shift.i36 to i32
  %i.gu = add i32 %.sroa.4.0.extract.trunc.i37, %.sroa.028.0.extract.trunc.i ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.i, %.lr.ph54.i
  %.053.i = phi ptr [ %i.ao, %.lr.ph54.i ], [ %i.mr, %.loopexit.i ] ; 2 uses
  %i.gv = load i64, ptr %.053.i, align 4          ; 4 uses
  %i.gw = trunc i64 %i.gv to i32                  ; 2 uses
  %i.gx = and i32 %i.gw, 16777215                 ; 2 uses
  %i.gy = lshr i32 %i.gw, 24                      ; 3 uses
  %i.gz = shl i64 %i.gv, 8
  %i.ha = ashr i64 %i.gz, 40
  %i.hb = trunc nsw i64 %i.ha to i32              ; 2 uses
  %i.hc = add nsw i32 %i.gx, %i.hb                ; 2 uses
  %i.hd = add nsw i32 %i.hc, %i.gy
  %i.he = icmp ule i32 %i.hd, %.sroa.028.0.extract.trunc.i
  %i.hf = icmp uge i32 %i.hc, %i.gu
  %.not79.i = select i1 %i.he, i1 true, i1 %i.hf
  %.not55.i = icmp eq i32 %i.gy, 0
  %or.cond.i = or i1 %.not55.i, %.not79.i
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.x
  %i.hg = add nuw nsw i32 %i.gy, %i.gx
  %i.hh = lshr i64 %i.gv, 56
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = and i64 %i.gv, 16777215                 ; 2 uses
  %i.hk = zext nneg i32 %i.hg to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.aq, %.lr.ph.i38
  %indvars.iv.i = phi i64 [ %i.hj, %.lr.ph.i38 ], [ %indvars.iv.next.i, %bb.aq ] ; 19 uses
  %indvars62.i = trunc i64 %indvars.iv.i to i32   ; 3 uses
  %i.hl = sub nuw nsw i64 %indvars.iv.i, %i.hj
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = urem i32 %i.hm, %i.hi
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = select i1 %i.ho, i32 %i.hb, i32 0       ; 2 uses
  %.0.i.i39 = add nsw i32 %i.hp, %indvars62.i     ; 2 uses
  %.not21.i = icmp ne i32 %i.hp, 0
  %.not22.i = icmp uge i32 %.0.i.i39, %.sroa.028.0.extract.trunc.i
  %or.cond.not39.i = and i1 %.not21.i, %.not22.i
  %i.hq = icmp ult i32 %.0.i.i39, %i.gu
  %or.cond38.i = and i1 %i.hq, %or.cond.not39.i
  br i1 %or.cond38.i, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.insert.insert.i.i41 = or disjoint i64 %indvars.iv.i, 4294967296 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.insert.insert.i.i41, ptr %3, align 8
  %i.hr = load ptr, ptr %0, align 8, !tbaa !9     ; 7 uses
  %i.hs = load i32, ptr %i.aa, align 8, !tbaa !12 ; 3 uses
  %.not40.i = icmp eq i32 %i.hs, 0
  %i.ht = lshr i64 %.sroa.0.0.insert.insert.i.i41, 32
  %i.hu = trunc nuw i64 %i.ht to i32
  br i1 %.not40.i, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i67, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42: ; preds = %bb.z
  %i.hv = zext i32 %i.hs to i64                   ; 3 uses
  %i.hw = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  br label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43: ; preds = %bb.ad, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42
  %.01368.i.i44 = phi i64 [ %i.hv, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42 ], [ %.2.i.i95, %bb.ad ] ; 3 uses
  %.067.i.i45 = phi ptr [ %i.hr, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i42 ], [ %.1.i.i94, %bb.ad ] ; 4 uses
  %i.hx = lshr i64 %.01368.i.i44, 1               ; 5 uses
  %.idx210 = shl nuw nsw i64 %i.hx, 3             ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.067.i.i45, i64 %.idx210 ; 3 uses
  %.sroa.01.0.copyload.i.i.i48 = load i64, ptr %i.hy, align 4 ; 3 uses
  %.sroa.47.0.extract.shift.i.i.i.i49 = lshr i64 %.sroa.01.0.copyload.i.i.i48, 32
  %i.hz = and i64 %.sroa.01.0.copyload.i.i.i48, 4294967295 ; 4 uses
  %i.ia = icmp samesign uge i64 %indvars.iv.i, %i.hz ; 2 uses
  %i.ib = add i64 %.sroa.47.0.extract.shift.i.i.i.i49, %.sroa.01.0.copyload.i.i.i48
  %i.ic = and i64 %i.ib, 4294967295               ; 3 uses
  %i.id = icmp samesign ugt i64 %i.ic, %indvars.iv.i ; 2 uses
  %i.ie = select i1 %i.ia, i1 %i.id, i1 false
  br i1 %i.ie, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43
  %i.if = icmp ne i64 %i.ic, %indvars.iv.i
  %i.ig = icmp samesign ugt i64 %indvars.iv.i, %i.hz
  %spec.select.i.i.i.i51 = and i1 %i.ig, %i.if
  br i1 %spec.select.i.i.i.i51, label %bb.aa, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ii = xor i64 %i.hx, -1
  %i.ij = add nsw i64 %.01368.i.i44, %i.ii
  br label %bb.ad

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i50, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43
  %i.ik = and i1 %i.ia, %i.id
  br i1 %i.ik, label %.critedge.i.i56, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52
  %i.il = icmp ne i64 %i.ic, %indvars.iv.i
  %i.im = icmp ne i64 %i.hw, %i.hz
  %.not10.i.i22.i.i54 = and i1 %i.im, %i.il
  %i.in = icmp samesign ult i64 %indvars.iv.i, %i.hz
  %spec.select.i.i23.i.i55 = and i1 %i.in, %.not10.i.i22.i.i54
  br i1 %spec.select.i.i23.i.i55, label %bb.ad, label %.critedge.i.i56

.critedge.i.i56:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i.i52
  %.not208 = icmp eq i64 %i.hx, 0
  br i1 %.not208, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81: ; preds = %.critedge.i.i56, %.thread.i.i.i93
  %.025.i.i.i82 = phi ptr [ %i.jc, %.thread.i.i.i93 ], [ %.067.i.i45, %.critedge.i.i56 ] ; 3 uses
  %.01124.i.i.i83 = phi i64 [ %i.jb, %.thread.i.i.i93 ], [ %i.hx, %.critedge.i.i56 ] ; 2 uses
  %i.io = lshr i64 %.01124.i.i.i83, 1             ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.025.i.i.i82, i64 %i.io ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i86 = load i64, ptr %i.ip, align 4 ; 3 uses
  %.sroa.47.0.extract.shift.i.i.i.i.i87 = lshr i64 %.sroa.01.0.copyload.i.i.i.i86, 32
  %i.iq = and i64 %.sroa.01.0.copyload.i.i.i.i86, 4294967295 ; 2 uses
  %i.ir = icmp samesign uge i64 %indvars.iv.i, %i.iq
  %i.is = add i64 %.sroa.47.0.extract.shift.i.i.i.i.i87, %.sroa.01.0.copyload.i.i.i.i86
  %i.it = and i64 %i.is, 4294967295               ; 2 uses
  %i.iu = icmp samesign ugt i64 %i.it, %indvars.iv.i
  %i.iv = select i1 %i.ir, i1 %i.iu, i1 false
  br i1 %i.iv, label %.thread.i.i.i93, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i88

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i88: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81
  %i.iw = icmp ne i64 %i.it, %indvars.iv.i
  %i.ix = icmp samesign ugt i64 %indvars.iv.i, %i.iq
  %spec.select.i.i.i.i.i89 = and i1 %i.ix, %i.iw
  %cond.fr.i.i.i90 = freeze i1 %spec.select.i.i.i.i.i89 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iz = xor i64 %i.io, -1
  %i.ja = add nsw i64 %.01124.i.i.i83, %i.iz
  %spec.select.i.i.i91 = select i1 %cond.fr.i.i.i90, i64 %i.ja, i64 %i.io
  %spec.select23.i.i.i92 = select i1 %cond.fr.i.i.i90, ptr %i.iy, ptr %.025.i.i.i82
  br label %.thread.i.i.i93

.thread.i.i.i93:                                  ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i88, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81
  %i.jb = phi i64 [ %i.io, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81 ], [ %spec.select.i.i.i91, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i88 ] ; 2 uses
  %i.jc = phi ptr [ %.025.i.i.i82, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81 ], [ %spec.select23.i.i.i92, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i.i.i88 ] ; 2 uses
  %i.jd = icmp sgt i64 %i.jb, 0
  br i1 %i.jd, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57, !llvm.loop !15

_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57: ; preds = %.thread.i.i.i93, %.critedge.i.i56
  %.0.lcssa.i.i.i58 = phi ptr [ %.067.i.i45, %.critedge.i.i56 ], [ %i.jc, %.thread.i.i.i93 ] ; 6 uses
  %.idx209 = shl nuw nsw i64 %.01368.i.i44, 3
  %i.je = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.jf = add nuw nsw i64 %.idx210, 8
  %gepdiff211 = sub nsw i64 %.idx209, %i.jf
  %i.jg = ashr exact i64 %gepdiff211, 3           ; 2 uses
  %i.jh = icmp sgt i64 %i.jg, 0
  br i1 %i.jh, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i69, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i69: ; preds = %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57, %bb.ac
  %.024.i.i.i70 = phi ptr [ %i.ka, %bb.ac ], [ %i.je, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57 ] ; 2 uses
  %.01123.i.i.i71 = phi i64 [ %i.jz, %bb.ac ], [ %i.jg, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57 ] ; 3 uses
  %i.ji = lshr i64 %.01123.i.i.i71, 1             ; 4 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.024.i.i.i70, i64 %i.ji ; 3 uses
  %.sroa.0.0.copyload.i.i37.i.i74 = load i64, ptr %i.jj, align 4 ; 3 uses
  %.sroa.4.0.extract.shift.i.i.i39.i.i75 = lshr i64 %.sroa.0.0.copyload.i.i37.i.i74, 32
  %i.jk = add i64 %.sroa.4.0.extract.shift.i.i.i39.i.i75, %.sroa.0.0.copyload.i.i37.i.i74
  %i.jl = and i64 %i.jk, 4294967295               ; 2 uses
  %i.jm = icmp samesign ugt i64 %i.jl, %indvars.iv.i
  %i.jn = and i64 %.sroa.0.0.copyload.i.i37.i.i74, 4294967295 ; 3 uses
  %i.jo = icmp samesign uge i64 %indvars.iv.i, %i.jn
  %i.jp = and i1 %i.jo, %i.jm
  br i1 %i.jp, label %.thread.i44.i.i80, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i76

.thread.i44.i.i80:                                ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i69
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jr = xor i64 %i.ji, -1
  %i.js = add nsw i64 %.01123.i.i.i71, %i.jr
  br label %bb.ac

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i76: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i69
  %i.jt = icmp ne i64 %i.jl, %indvars.iv.i
  %i.ju = icmp ne i64 %i.hw, %i.jn
  %.not10.i.i.i41.i.i77 = and i1 %i.ju, %i.jt
  %i.jv = icmp samesign ult i64 %indvars.iv.i, %i.jn
  %spec.select.i.i.i42.i.i78 = and i1 %i.jv, %.not10.i.i.i41.i.i77
  %cond.fr.i43.i.i79 = freeze i1 %spec.select.i.i.i42.i.i78
  br i1 %cond.fr.i43.i.i79, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i76
  %i.jw = xor i64 %i.ji, -1
  %i.jx = add nsw i64 %.01123.i.i.i71, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i76, %.thread.i44.i.i80
  %i.jz = phi i64 [ %i.js, %.thread.i44.i.i80 ], [ %i.jx, %bb.ab ], [ %i.ji, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i76 ] ; 2 uses
  %i.ka = phi ptr [ %i.jq, %.thread.i44.i.i80 ], [ %i.jy, %bb.ab ], [ %.024.i.i.i70, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i.i76 ] ; 2 uses
  %i.kb = icmp sgt i64 %i.jz, 0
  br i1 %i.kb, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34.i.i69, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61, !llvm.loop !16

bb.ad:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53, %bb.aa
  %.1.i.i94 = phi ptr [ %i.ih, %bb.aa ], [ %.067.i.i45, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53 ] ; 2 uses
  %.2.i.i95 = phi i64 [ %i.ij, %bb.aa ], [ %i.hx, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i.i53 ] ; 2 uses
  %i.kc = icmp sgt i64 %.2.i.i95, 0
  br i1 %i.kc, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i43, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i67, !llvm.loop !17

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61: ; preds = %bb.ac, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57
  %.sroa.3.0.i.i62 = phi ptr [ %i.je, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit.i.i57 ], [ %i.ka, %bb.ac ] ; 6 uses
  %i.kd = icmp eq ptr %.0.lcssa.i.i.i58, %.sroa.3.0.i.i62
  br i1 %i.kd, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i67, label %bb.am

_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i67: ; preds = %bb.ad, %bb.z, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61
  %.pre-phi = phi i64 [ %i.hv, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61 ], [ 0, %bb.z ], [ %i.hv, %bb.ad ] ; 3 uses
  %.sroa.0.0.i37.i68 = phi ptr [ %.0.lcssa.i.i.i58, %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61 ], [ %i.hr, %bb.z ], [ %.1.i.i94, %bb.ad ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.pre-phi
  %i.kf = icmp eq ptr %.sroa.0.0.i37.i68, %i.ke
  %i.kg = load i32, ptr %i.ab, align 4, !tbaa !13
  %.not.i.i = icmp ult i32 %i.hs, %i.kg           ; 2 uses
  br i1 %i.kf, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i67
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, label %bb.af, !prof !18

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i97 = load i32, ptr %i.aa, align 8, !tbaa !12
  %.pre19.i = load ptr, ptr %0, align 8, !tbaa !9
  %.pre20.i = zext i32 %.pre.i.i97 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i: ; preds = %bb.af, %bb.ae
  %.pre-phi.i = phi i64 [ %.pre-phi, %bb.ae ], [ %.pre20.i, %bb.af ]
  %i.kh = phi ptr [ %i.hr, %bb.ae ], [ %.pre19.i, %bb.af ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.pre-phi.i
  store i64 %.sroa.0.0.insert.insert.i.i41, ptr %i.ki, align 1
  %i.kj = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.aa, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i66

bb.ag:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread.i67
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kl = ptrtoint ptr %.sroa.0.0.i37.i68 to i64
  %i.km = ptrtoint ptr %i.hr to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 8) #10
  %i.ko = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kn
  %.pre.i96 = load i32, ptr %i.aa, align 8, !tbaa !12
  %.pre21.i = zext i32 %.pre.i96 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre-phi22.i = phi i64 [ %.pre21.i, %bb.ah ], [ %.pre-phi, %bb.ag ]
  %i.kq = phi ptr [ %i.ko, %bb.ah ], [ %i.hr, %bb.ag ]
  %.015.i = phi ptr [ %i.kp, %bb.ah ], [ %.sroa.0.0.i37.i68, %bb.ag ] ; 5 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.pre-phi22.i ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8
  %i.kt = load i64, ptr %i.ks, align 4
  store i64 %i.kt, ptr %i.kr, align 4
  %i.ku = load ptr, ptr %0, align 8, !tbaa !9
  %i.kv = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -8 ; 2 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %.015.i to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 3 uses
  %i.lc = ashr exact i64 %i.lb, 3                 ; 2 uses
  %i.ld = icmp sgt i64 %i.lc, 1
  br i1 %i.ld, label %bb.aj, label %bb.ak, !prof !18

bb.aj:                                            ; preds = %bb.ai
  %i.le = sub nsw i64 0, %i.lc
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.le
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %.015.i, i64 %i.lb, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.lg = icmp eq i64 %i.lb, 8
  br i1 %i.lg, label %bb.al, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.lh = load i64, ptr %.015.i, align 4
  store i64 %i.lh, ptr %i.ky, align 4
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.li = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.lj = add i32 %i.li, 1                        ; 2 uses
  store i32 %i.lj, ptr %i.aa, align 8, !tbaa !12
  %.not18.i = icmp ugt ptr %.015.i, %3
  %i.lk = load ptr, ptr %0, align 8
  %i.ll = zext i32 %i.lj to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.ll
  %i.ln = icmp uge ptr %3, %i.lm
  %i.lo = select i1 %.not18.i, i1 true, i1 %i.ln
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.lo, i64 0, i64 8
  %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.lp = load i64, ptr %.0.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8
  store i64 %i.lp, ptr %.015.i, align 4
  br label %_ZN6hermes12CodePointSet3addEj.exit.i66

bb.am:                                            ; preds = %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.i61
  %i.lq = load i32, ptr %.0.lcssa.i.i.i58, align 4, !tbaa !3
  %i.lr = call i32 @llvm.umin.i32(i32 %i.lq, i32 %indvars62.i) ; 2 uses
  %i.ls = add i32 %i.hu, %indvars62.i
  %i.lt = getelementptr inbounds i8, ptr %.sroa.3.0.i.i62, i64 -8
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !19
  %i.lv = getelementptr inbounds i8, ptr %.sroa.3.0.i.i62, i64 -4
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !21
  %i.lx = add i32 %i.lw, %i.lu
  %.sroa.speculated.i.i.i63 = call i32 @llvm.umax.i32(i32 %i.ls, i32 %i.lx)
  %i.ly = sub i32 %.sroa.speculated.i.i.i63, %i.lr
  store i32 %i.lr, ptr %.0.lcssa.i.i.i58, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i.i64 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i58, i64 4
  store i32 %i.ly, ptr %.sroa.4.0..sroa_idx.i.i.i64, align 4, !tbaa !3
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i58, i64 8 ; 3 uses
  %i.ma = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.mb
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %.sroa.3.0.i.i62 to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 4 uses
  %i.mg = icmp sgt i64 %i.mf, 8
  br i1 %i.mg, label %bb.an, label %bb.ao, !prof !18

bb.an:                                            ; preds = %bb.am
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lz, ptr nonnull align 4 %.sroa.3.0.i.i62, i64 %i.mf, i1 false)
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i65

bb.ao:                                            ; preds = %bb.am
  %i.mh = icmp eq i64 %i.mf, 8
  br i1 %i.mh, label %bb.ap, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i65

bb.ap:                                            ; preds = %bb.ao
  %i.mi = load i64, ptr %.sroa.3.0.i.i62, align 4
  store i64 %i.mi, ptr %i.lz, align 4
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i65

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i65: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.mj = getelementptr inbounds i8, ptr %i.lz, i64 %i.mf
  %i.mk = load ptr, ptr %0, align 8, !tbaa !9
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = lshr exact i64 %i.mn, 3
  %i.mp = trunc i64 %i.mo to i32
  store i32 %i.mp, ptr %i.aa, align 8, !tbaa !12
  br label %_ZN6hermes12CodePointSet3addEj.exit.i66

_ZN6hermes12CodePointSet3addEj.exit.i66:          ; preds = %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i66, %bb.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mq = icmp samesign ult i64 %indvars.iv.next.i, %i.hk
  br i1 %i.mq, label %bb.y, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.aq, %bb.x
  %i.mr = getelementptr inbounds nuw i8, ptr %.053.i, i64 8 ; 2 uses
  %.not.i40 = icmp eq ptr %i.mr, %i.an
  br i1 %.not.i40, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %bb.x, !llvm.loop !25

_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %.loopexit.i, %bb.w
  %i.ms = getelementptr inbounds nuw i8, ptr %.019121, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.ms, %i.am
  br i1 %.not20, label %._crit_edge123.loopexit, label %bb.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN6hermes12canonicalizeEjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = select i1 %1, ptr @_ZN6hermesL13UNICODE_FOLDSE, ptr @_ZN6hermesL13LEGACY_CANONSE ; 3 uses
  %i.b = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13UNICODE_FOLDSE, i64 1608), ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13LEGACY_CANONSE, i64 1400) ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit

_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi ptr [ %.1.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i, i64 %i.h ; 2 uses
  %.val.i.i.i = load i64, ptr %i.i, align 4
  %i.j = trunc i64 %.val.i.i.i to i32             ; 2 uses
  %i.k = and i32 %i.j, 16777215
  %i.l = lshr i32 %i.j, 24
  %i.m = add nuw nsw i32 %i.k, %i.l
  %.not.i.i = icmp ugt i32 %i.m, %0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = xor i64 %i.h, -1
  %i.p = add nsw i64 %.01116.i.i, %i.o
  %.112.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.p ; 2 uses
  %.1.i.i = select i1 %.not.i.i, ptr %.017.i.i, ptr %i.n ; 2 uses
  %i.q = icmp sgt i64 %.112.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit, !llvm.loop !14

_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit: ; preds = %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.1.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.b
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit
  %i.r = load i64, ptr %.0.lcssa.i.i, align 4     ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = and i32 %i.s, 16777215                   ; 3 uses
  %.not13 = icmp ugt i32 %i.t, %0
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.s, 24
  %i.v = add nuw nsw i32 %i.t, %i.u
  %i.w = icmp ult i32 %0, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sub nsw i32 %0, %i.t
  %i.y = lshr i64 %i.r, 56
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = urem i32 %i.x, %i.z
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = shl i64 %i.r, 8
  %i.ad = ashr i64 %i.ac, 40
  %i.ae = trunc nsw i64 %i.ad to i32
  %i.af = select i1 %i.ab, i32 %i.ae, i32 0
  %.0.i = add nsw i32 %i.af, %0
  br label %bb.e

bb.e:                                             ; preds = %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %.0.i, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN6hermes21unicodePropertyRangesESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL39canonicalPropertyNameMap_BinaryPropertyE, i64 99, i64 %0, ptr %1) ; 2 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL40canonicalPropertyNameMap_GeneralCategoryE, i64 80, i64 %0, ptr %1) ; 2 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %.critedge4, label %bb.e

bb.d:                                             ; preds = %bb.a
  switch i64 %0, label %.critedge4 [
    i64 16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65
    i64 17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %i.d = load i128, ptr %1, align 1
  %i.e = icmp ne i128 %i.d, 161430768871213215975044779250010711367
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61: ; preds = %bb.d
  %bcmp.i62 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.1, i64 %0)
  %i.h = icmp eq i32 %bcmp.i62, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL40canonicalPropertyNameMap_GeneralCategoryE, i64 80, i64 %2, ptr %3) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %bb.e

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  switch i64 %0, label %.critedge4 [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65: ; preds = %bb.d, %.critedge
  %bcmp.i66 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.2, i64 %0)
  %i.j = icmp eq i32 %bcmp.i66, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61, %.critedge
  %bcmp.i70 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.3, i64 %0)
  %i.k = icmp eq i32 %bcmp.i70, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68, label %.critedge4

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65
  %i.l = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL31canonicalPropertyNameMap_ScriptE, i64 322, i64 %2, ptr %3) ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.critedge2, label %bb.e

.critedge2:                                       ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68
  %cond = icmp eq i64 %0, 3
  br i1 %cond, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73: ; preds = %bb.d
  %bcmp.i74 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.4, i64 %0)
  %i.m = icmp eq i32 %bcmp.i74, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77: ; preds = %.critedge2, %.critedge, %bb.d
  %bcmp.i78 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.5, i64 %0)
  %i.n = icmp eq i32 %bcmp.i78, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76, label %.critedge4

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  %i.o = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL31canonicalPropertyNameMap_ScriptE, i64 322, i64 %2, ptr %3) ; 2 uses
  %.not47 = icmp eq ptr %i.o, null
  br i1 %.not47, label %.critedge4, label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68, %bb.b, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76
  %.sroa.9.0.ph = phi i64 [ 68, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ 38, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ 164, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68 ], [ 53, %bb.b ], [ 38, %bb.c ] ; 2 uses
  %.sroa.0110.0.ph = phi ptr [ @_ZN6hermesL40unicodePropertyRangeMap_ScriptExtensionsE, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ @_ZN6hermesL39unicodePropertyRangeMap_GeneralCategoryE, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ @_ZN6hermesL30unicodePropertyRangeMap_ScriptE, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68 ], [ @_ZN6hermesL38unicodePropertyRangeMap_BinaryPropertyE, %bb.b ], [ @_ZN6hermesL39unicodePropertyRangeMap_GeneralCategoryE, %bb.c ] ; 2 uses
  %.0.ph = phi ptr [ %i.o, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ %i.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %i.l, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68 ], [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !26   ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 3 uses
  %i.s = icmp ugt i16 %i.q, 3012
  br i1 %i.s, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.r, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0.ph, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !30
  %i.v = zext i16 %i.u to i64
  %i.w = sub nuw nsw i64 3012, %i.r
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.v) ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.r ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0110.0.ph, i64 %.sroa.9.0.ph
  %i.z = trunc nuw nsw i64 %.sroa.speculated.i to i32
  br label %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i ], [ %.sroa.0110.0.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 2 uses
  %.0115.i.i.i = phi i64 [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i ], [ %.sroa.9.0.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 2 uses
  %i.aa = lshr i64 %.0115.i.i.i, 1                ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.06.i.i.i, i64 %i.aa ; 3 uses
  %.val.i.i.i = load i16, ptr %i.ab, align 2, !tbaa !31 ; 2 uses
  %i.ac = zext i16 %.val.i.i.i to i64             ; 3 uses
  %i.ad = icmp ugt i16 %.val.i.i.i, 3012
  br i1 %i.ad, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.ac, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.ae = getelementptr i8, ptr %i.ab, i64 2
  %.val13.i.i.i = load i16, ptr %i.ae, align 2, !tbaa !33
  %i.af = zext i16 %.val13.i.i.i to i64
  %i.ag = sub nuw nsw i64 3012, %i.ac
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.af) ; 2 uses
  %.sroa.speculated.i4.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated.i, i64 %.sroa.speculated.i.i.i.i.i.i.i) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i4.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.ac
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull readonly %i.x, i64 noundef %.sroa.speculated.i4.i.i.i.i.i.i) #10 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i
  %i.al = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i to i32
  %i.am = sub nsw i32 %i.al, %i.z
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ap = xor i64 %i.aa, -1
  %i.aq = add nsw i64 %.0115.i.i.i, %i.ap
  %.112.i.i.i = select i1 %i.an, i64 %i.aq, i64 %i.aa ; 2 uses
  %.1.i.i.i = select i1 %i.an, ptr %i.ao, ptr %.06.i.i.i ; 6 uses
  %i.ar = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.ar, label %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i, !llvm.loop !34

_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i
  %i.as = icmp eq ptr %.1.i.i.i, %i.y
  br i1 %i.as, label %.critedge4, label %bb.h

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i
  %i.at = load i16, ptr %.1.i.i.i, align 2, !tbaa !31 ; 2 uses
  %i.au = zext i16 %i.at to i64                   ; 3 uses
  %i.av = icmp ugt i16 %i.at, 3012
  br i1 %i.av, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.au, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !33
end_hunk_1
