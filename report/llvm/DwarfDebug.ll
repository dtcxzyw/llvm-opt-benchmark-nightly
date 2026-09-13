Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DwarfDebug?download=true
inline.NumInlined: 13851
inline.NumDeleted: 7025
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj:bb.a
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1220 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1219
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !22

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1215 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !1213
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1213
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1214
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1215 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1214 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1213
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1215
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !829  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !836  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !829
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !829
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !3556

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !836
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1227
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1227
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1219
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !829
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !829
  %i.bd = add i32 %.0.i17, -1
  %i.be = and i32 %i.bd, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3557

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !3558

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1215
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1216
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !1216
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1213
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DwarfCompileUnitESt6vectorI10ArangeSpanSaIS8_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !3559

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !836  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !836
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !836
  %i.ac = getelementptr i8, ptr %i.aa, i64 72
  %.val.i.i.us.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !947
  %i.ad = getelementptr i8, ptr %i.ab, i64 72
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !947
  %i.ae = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !836
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !836
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !3560

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 72
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !947
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !836 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 72
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.am, align 8, !tbaa !947
  %i.an = icmp ult i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !836
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !3561

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !836
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !3562

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !836 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !836
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !836
  %i.bc = getelementptr i8, ptr %i.ba, i64 72
  %.val.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !947
  %i.bd = getelementptr i8, ptr %i.bb, i64 72
  %.val1.i.i.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !947
  %i.be = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !836
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !836
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3560

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !836
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !836
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 72
  %.val.val.i.i.i.i.i = load i32, ptr %i.bm, align 8, !tbaa !947
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !836 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 72
  %.val.i.i.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !947
  %i.bq = icmp ult i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !836
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !3561

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !836
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !3562

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !836 ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !836
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !836
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !836
  %i.cl = getelementptr i8, ptr %i.cj, i64 72
  %.val.i.i.i.i21.i = load i32, ptr %i.cl, align 8, !tbaa !947
  %i.cm = getelementptr i8, ptr %i.ck, i64 72
  %.val1.i.i.i.i22.i = load i32, ptr %i.cm, align 8, !tbaa !947
  %i.cn = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !836
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !836
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !3560

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !836
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !836
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 72
  %.val.val.i.i.i.i14.i = load i32, ptr %i.dc, align 8, !tbaa !947
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !836 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 72
  %.val.i.i.i.i.i17.i = load i32, ptr %i.df, align 8, !tbaa !947
  %i.dg = icmp ult i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !836
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", label %bb.k, !llvm.loop !3561

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !836
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !3563

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !836 ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !836 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 72
  %.val.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !947 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 72
  %.val1.i.i.i = load i32, ptr %i.ds, align 8, !tbaa !947 ; 3 uses
  %i.dt = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !836 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 72
  %.val1.i27.i.i = load i32, ptr %i.dv, align 8, !tbaa !947 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8, !tbaa !836 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8, !tbaa !836 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !836
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !836
  %i.ef = getelementptr i8, ptr %i.ee, i64 72
  %.val1.i.i13.i = load i32, ptr %i.ef, align 8, !tbaa !947 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !836 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 72
  %.val.i.i14.i = load i32, ptr %i.eh, align 8, !tbaa !947
  %i.ei = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !3564

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !836 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 72
  %.val1.i9.i.i = load i32, ptr %i.el, align 8, !tbaa !947
  %i.em = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !3565

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEET_SF_SF_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !836
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !836
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !3566

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !3559

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm16DwarfCompileUnitESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10DwarfDebug16emitDebugARangesEvE3$_0EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !813, !noalias !3571 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1389, !noalias !3571 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !812, !noalias !3571 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !928    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !829
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !856

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !928
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !147

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !829
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !859, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1508
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1509
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !147

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1508
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1389
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !813
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !829
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !829
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1509
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !928
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !928
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !937
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !813, !noalias !3576 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1389, !noalias !3576 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !812, !noalias !3576 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !928    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !829
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !856

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !928
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !147

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !829
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !859, !llvm.loop !64

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1508
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.249", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !812
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !813
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1389
end_hunk_0
