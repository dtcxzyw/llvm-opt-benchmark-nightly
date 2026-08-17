inline.NumInlined: 2996
inline.NumDeleted: 1287
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10DoubleTypeE:bb.a
  %i.aah = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i, i64 %i.aag ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aah, i64 16
  %wide.load = load <2 x double>, ptr %i.aah, align 8, !tbaa !118, !noalias !854 ; 2 uses
  %wide.load128 = load <2 x double>, ptr %i.aai, align 8, !tbaa !118, !noalias !854 ; 2 uses
  %i.aaj = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i, i64 %i.aag ; 2 uses
  %i.aak = getelementptr i8, ptr %i.aaj, i64 16
  %wide.load129 = load <2 x double>, ptr %i.aaj, align 8, !tbaa !118, !noalias !854 ; 2 uses
  %wide.load130 = load <2 x double>, ptr %i.aak, align 8, !tbaa !118, !noalias !854 ; 2 uses
  %i.aal = fcmp oeq <2 x double> %wide.load, %wide.load129
  %i.aam = fcmp oeq <2 x double> %wide.load128, %wide.load130
  %i.aan = bitcast <2 x double> %wide.load to <2 x i64>
  %i.aao = bitcast <2 x double> %wide.load128 to <2 x i64>
  %i.aap = bitcast <2 x double> %wide.load129 to <2 x i64>
  %i.aaq = bitcast <2 x double> %wide.load130 to <2 x i64>
  %i.aar = xor <2 x i64> %i.aap, %i.aan
  %i.aas = xor <2 x i64> %i.aaq, %i.aao
  %i.aat = icmp sgt <2 x i64> %i.aar, splat (i64 -1)
  %i.aau = icmp sgt <2 x i64> %i.aas, splat (i64 -1)
  %i.aav = and <2 x i1> %i.aal, %i.aat
  %i.aaw = and <2 x i1> %i.aam, %i.aau
  %i.aax = and <2 x i1> %vec.phi, %i.aav          ; 2 uses
  %i.aay = and <2 x i1> %vec.phi127, %i.aaw       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aaz = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaz, label %middle.block, label %vector.body, !llvm.loop !883

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i1> %i.aay, %i.aax
  %i.aba = bitcast <2 x i1> %bin.rdx to i2
  %i.abb = icmp eq i2 %i.aba, -1                  ; 2 uses
  %cmp.n = icmp eq i64 %i.zy, %n.vec
  br i1 %cmp.n, label %._crit_edge.i22.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i, %middle.block
  %.ph413 = phi i1 [ %i.aae, %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i ], [ %i.abb, %middle.block ]
  %.01.i17.i.i.i.i22.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i18.i.i9.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i22.i.i.i.i.i.i.i.i.i:                ; preds = %scalar.ph, %middle.block
  %.lcssa126 = phi i1 [ %i.abb, %middle.block ], [ %i.abm, %scalar.ph ]
  %i.abc = zext i1 %.lcssa126 to i8
  store i8 %i.abc, ptr %i.zw, align 8, !tbaa !94, !noalias !854
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.abd = phi i1 [ %i.abm, %scalar.ph ], [ %.ph413, %scalar.ph.preheader ]
  %.01.i17.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.abn, %scalar.ph ], [ %.01.i17.i.i.i.i22.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.abe = add nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, %i.aaa ; 2 uses
  %gep.i18.i.i.i.i23.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i10.i.i.i, i64 %i.abe
  %i.abf = load double, ptr %gep.i18.i.i.i.i23.i.i.i.i.i, align 8, !tbaa !118, !noalias !854 ; 2 uses
  %gep3.i19.i.i.i.i24.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i11.i.i.i, i64 %i.abe
  %i.abg = load double, ptr %gep3.i19.i.i.i.i24.i.i.i.i.i, align 8, !tbaa !118, !noalias !854 ; 2 uses
  %i.abh = fcmp oeq double %i.abf, %i.abg
  %i.abi = bitcast double %i.abf to i64
  %i.abj = bitcast double %i.abg to i64
  %i.abk = xor i64 %i.abj, %i.abi
  %i.abl = icmp sgt i64 %i.abk, -1
  %.0.i.i.i20.i.i.i.i.i.i.i.i.i = and i1 %i.abh, %i.abl
  %i.abm = and i1 %i.abd, %.0.i.i.i20.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.abn = add nuw nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i21.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abn, %i.zy
  br i1 %exitcond.not.i21.i.i.i.i.i.i.i.i.i, label %._crit_edge.i22.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !884

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i22.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i16.i.i7.i.i.i
  %i.abo = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !854 ; 2 uses
  %i.abp = extractvalue { i64, i64 } %i.abo, 1    ; 2 uses
  %i.abq = icmp eq i64 %i.abp, 0
  br i1 %i.abq, label %._crit_edge.i.i.i.i17.i.i8.i.i.i, label %.lr.ph.i.i.i.i16.i.i7.i.i.i

._crit_edge.i.i.i.i17.i.i8.i.i.i:                 ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit23.i.i.i.i.i.i.i.i.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !854
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_.exit: ; preds = %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %.thread.i.i.i5.i.i.i.i.i, %._crit_edge.i.i.i.i18.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, %.thread.i.i.i.i18.i.i.i.i, %._crit_edge.i.i.i.i.i29.i.i.i.i, %.thread.i.i.i5.i8.i.i.i.i, %._crit_edge.i.i.i.i17.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_10DoubleTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIdNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, %.thread.i.i.i.i.i32.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i45.i.i.i, %.thread.i.i.i5.i.i22.i.i.i, %._crit_edge.i.i.i.i.i16.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i.i.i.i, %.thread.i.i.i.i17.i.i.i.i, %._crit_edge.i.i.i.i.i.i26.i.i.i.i, %._crit_edge.i.i.i.i.i29.i17.i.i.i, %.thread.i.i.i5.i7.i.i.i.i, %._crit_edge.i.i.i.i.i14.i.i.i.i.i, %._crit_edge.i.i.i.i17.i.i8.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !885
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_10BinaryTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !noalias !888, !nonnull !40, !align !709 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !711, !noalias !888 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !888
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !99
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i:  ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !710, !noalias !888, !nonnull !40, !align !709 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !711, !noalias !888 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i2.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !888 ; 3 uses
  %i.x = icmp ne ptr %.0.i.i, null
  %i.y = icmp ne ptr %i.w, null
  %i.z = select i1 %i.u, i1 %i.y, i1 false, !prof !99
  %or.cond.i = and i1 %i.x, %i.z
  br i1 %or.cond.i, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !712, !noalias !888
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !888
  %i.aj = select i1 %i.ag, ptr %i.ai, ptr null, !prof !99
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ad
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.d ], [ null, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !91, !noalias !888 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.am ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i3.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !712, !noalias !888
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !888
  %i.ax = select i1 %i.au, ptr %i.aw, ptr null, !prof !99
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ar
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i: ; preds = %bb.e, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i
  %.0.i.i4.i.i = phi ptr [ %i.ay, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !92, !noalias !888
  %i.bb = getelementptr inbounds [4 x i8], ptr %.0.i.i4.i.i, i64 %i.ba ; 6 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i6.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !888 ; 2 uses
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond.not.i.i.i = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.h, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i: ; preds = %bb.f, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit5.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !93, !noalias !888 ; 3 uses
  %smax.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %exitcond.not.i.i.i.i19 = icmp slt i64 %i.bk, 1
  br i1 %exitcond.not.i.i.i.i19, label %._crit_edge, label %.lr.ph21

bb.g:                                             ; preds = %.lr.ph21
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bl, %smax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph21, !llvm.loop !891

.lr.ph21:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, %bb.g
  %.016.i.i.i.i20 = phi i64 [ %i.bl, %bb.g ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i ] ; 3 uses
  %i.bl = add nuw i64 %.016.i.i.i.i20, 1          ; 4 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !888
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.016.i.i.i.i20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3, !noalias !888
  %i.bq = sub nsw i32 %i.bn, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bl
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !888
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.016.i.i.i.i20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !888
  %i.bv = sub nsw i32 %i.bs, %i.bu
  %.not.i8.i.i.i = icmp eq i32 %i.bq, %i.bv
  br i1 %.not.i8.i.i.i, label %bb.g, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !891

._crit_edge:                                      ; preds = %bb.g, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i
  %i.bw = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !888 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i32, ptr %i.bb, align 4, !tbaa !3, !noalias !888
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bk
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3, !noalias !888
  %i.cc = sub nsw i32 %i.cb, %i.bw
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.bx
  %i.cf = getelementptr inbounds i8, ptr %i.w, i64 %i.bz
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ce, ptr nonnull readonly %i.cf, i64 range(i64 -2147483648, 2147483648) %i.cd), !noalias !888
  %i.cg = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.ch = zext i1 %i.cg to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %.lr.ph21, %._crit_edge
  %.1.i.i.i.i = phi i8 [ %i.ch, %._crit_edge ], [ 0, %.lr.ph21 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.1.i.i.i.i, ptr %i.ci, align 8, !tbaa !94, !noalias !888
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !888
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !712, !noalias !888
  %i.cl = add nsw i64 %i.ck, %i.am
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !93, !noalias !888
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.bh, i64 noundef %i.cl, i64 noundef %i.cn), !noalias !888
  br label %bb.i

bb.i:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %bb.h
  %i.co = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !888 ; 2 uses
  %i.cp = extractvalue { i64, i64 } %i.co, 1      ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = extractvalue { i64, i64 } %i.co, 0      ; 5 uses
  %i.cs = add nsw i64 %i.cp, %i.cr                ; 2 uses
  %smax.i9.i.i.i = call i64 @llvm.smax.i64(i64 %i.cr, i64 %i.cs)
  %exitcond.not.i11.i.i.i17.not = icmp sgt i64 %i.cp, 0
  br i1 %exitcond.not.i11.i.i.i17.not, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i

bb.k:                                             ; preds = %.lr.ph
  %exitcond.not.i11.i.i.i = icmp eq i64 %i.ct, %smax.i9.i.i.i
  br i1 %exitcond.not.i11.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, label %.lr.ph, !llvm.loop !891

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.016.i10.i.i.i18 = phi i64 [ %i.ct, %bb.k ], [ %i.cr, %bb.j ] ; 3 uses
  %i.ct = add i64 %.016.i10.i.i.i18, 1            ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !888
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.016.i10.i.i.i18
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3, !noalias !888
  %i.cy = sub nsw i32 %i.cv, %i.cx
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ct
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !888
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.016.i10.i.i.i18
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3, !noalias !888
  %i.dd = sub nsw i32 %i.da, %i.dc
  %.not.i12.i.i.i = icmp eq i32 %i.cy, %i.dd
  br i1 %.not.i12.i.i.i, label %bb.k, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !891

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i: ; preds = %bb.k, %bb.j
  %i.de = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cr
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3, !noalias !888 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cr
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3, !noalias !888
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cs
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3, !noalias !888
  %i.dm = sub nsw i32 %i.dl, %i.df
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.dg
  %i.dp = getelementptr inbounds i8, ptr %i.w, i64 %i.dj
  %bcmp.i.i18.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.do, ptr nonnull readonly %i.dp, i64 range(i64 -2147483648, 2147483648) %i.dn), !noalias !888
  %i.dq = icmp eq i32 %bcmp.i.i18.i.i.i, 0
  br i1 %i.dq, label %bb.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !892

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dr, align 8, !tbaa !94, !noalias !888
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !888
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i5.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !712, !noalias !888
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !888
  %i.eb = select i1 %i.dy, ptr %i.ea, ptr null, !prof !99
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dv
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i: ; preds = %bb.l, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %.0.i.i.i7.i = phi ptr [ %i.ec, %bb.l ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !91, !noalias !888 ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %.0.i.i.i7.i, i64 %i.ee ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i4.i.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !712, !noalias !888
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 9
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !888
  %i.ep = select i1 %i.em, ptr %i.eo, ptr null, !prof !99
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ej
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i: ; preds = %bb.m, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i
  %.0.i.i5.i.i = phi ptr [ %i.eq, %bb.m ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i6.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.es = load i64, ptr %i.er, align 8, !tbaa !92, !noalias !888
  %i.et = getelementptr inbounds [4 x i8], ptr %.0.i.i5.i.i, i64 %i.es ; 4 uses
  %i.eu = load ptr, ptr %i.d, align 8, !tbaa !174, !noalias !888 ; 3 uses
  %.not.i.i7.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i7.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 9
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !298, !range !39, !noalias !888, !noundef !40
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !888 ; 2 uses
  %i.fa = icmp ne ptr %i.ez, null
  %or.cond.not.i.i8.i = select i1 %i.ex, i1 %i.fa, i1 false
  br i1 %or.cond.not.i.i8.i, label %bb.p, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i: ; preds = %bb.n, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !93, !noalias !888 ; 3 uses
  %smax.i.i.i10.i = tail call i64 @llvm.smax.i64(i64 %i.fc, i64 0)
  %exitcond.i.i.i.i28 = icmp slt i64 %i.fc, 1
  br i1 %exitcond.i.i.i.i28, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30

bb.o:                                             ; preds = %.lr.ph30
  %exitcond.i.i.i.i = icmp eq i64 %i.fd, %smax.i.i.i10.i
  br i1 %exitcond.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30, !llvm.loop !893

.lr.ph30:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, %bb.o
  %.016.i.i.i11.i29 = phi i64 [ %i.fd, %bb.o ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ] ; 4 uses
  %i.fd = add nuw i64 %.016.i.i.i11.i29, 1        ; 4 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3, !noalias !888
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.016.i.i.i11.i29
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3, !noalias !888
  %i.fi = sub nsw i32 %i.ff, %i.fh
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.fd
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3, !noalias !888
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.016.i.i.i11.i29
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3, !noalias !888
  %i.fn = sub nsw i32 %i.fk, %i.fm
  %.not.i8.i.i12.i = icmp eq i32 %i.fi, %i.fn
  br i1 %.not.i8.i.i12.i, label %bb.o, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, !llvm.loop !893

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge: ; preds = %.lr.ph30
  %i.fo = icmp sge i64 %.016.i.i.i11.i29, %i.fc
  %i.fp = zext i1 %i.fo to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !893

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %bb.o, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i
  %.016.i.lcssa.i.i.i = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ], [ %i.fp, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge ], [ 1, %bb.o ]
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.016.i.lcssa.i.i.i, ptr %i.fq, align 8, !tbaa !94, !noalias !888
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !888
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !712, !noalias !888
  %i.ft = add nsw i64 %i.fs, %i.ee
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !93, !noalias !888
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.ez, i64 noundef %i.ft, i64 noundef %i.fv), !noalias !888
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.p
  %i.fw = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !888 ; 2 uses
  %i.fx = extractvalue { i64, i64 } %i.fw, 1      ; 3 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %.critedge.i.i16.i, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.fz = extractvalue { i64, i64 } %i.fw, 0      ; 3 uses
  %i.ga = add nsw i64 %i.fx, %i.fz                ; 2 uses
  %smax.i9.i.i13.i = call i64 @llvm.smax.i64(i64 %i.fz, i64 %i.ga)
  %exitcond.i11.i.i.i22.not = icmp sgt i64 %i.fx, 0
  br i1 %exitcond.i11.i.i.i22.not, label %.lr.ph25, label %.critedge.backedge

bb.r:                                             ; preds = %.lr.ph25
  %exitcond.i11.i.i.i = icmp eq i64 %i.gb, %smax.i9.i.i13.i
  br i1 %exitcond.i11.i.i.i, label %.critedge.backedge, label %.lr.ph25, !llvm.loop !893

.lr.ph25:                                         ; preds = %bb.q, %bb.r
  %.016.i10.i.i14.i23 = phi i64 [ %i.gb, %bb.r ], [ %i.fz, %bb.q ] ; 4 uses
  %i.gb = add i64 %.016.i10.i.i14.i23, 1          ; 4 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3, !noalias !888
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.016.i10.i.i14.i23
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3, !noalias !888
  %i.gg = sub nsw i32 %i.gd, %i.gf
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.gb
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3, !noalias !888
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.016.i10.i.i14.i23
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3, !noalias !888
  %i.gl = sub nsw i32 %i.gi, %i.gk
  %.not.i12.i.i15.i = icmp eq i32 %i.gg, %i.gl
  br i1 %.not.i12.i.i15.i, label %bb.r, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, !llvm.loop !893

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge: ; preds = %.lr.ph25
  %i.gm = icmp slt i64 %.016.i10.i.i14.i23, %i.ga
  br i1 %i.gm, label %bb.s, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.r, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, %bb.q
  br label %.critedge, !llvm.loop !894

bb.s:                                             ; preds = %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.gn, align 8, !tbaa !94, !noalias !888
  br label %.critedge.i.i16.i

.critedge.i.i16.i:                                ; preds = %.critedge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !888
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiRKZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIiZNS1_13CompareBinaryINS_10BinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i16.i
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !895
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !nonnull !40, !align !709 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !711  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !712
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !298, !range !39, !noundef !40
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !99
  %i.o = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !91   ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %.0.i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !710, !nonnull !40, !align !709 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !711  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !174  ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1, label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !712
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !298, !range !39, !noundef !40
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %i.ac, ptr %i.ae, ptr null, !prof !99
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.z
  br label %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3

_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3: ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit, %bb.c
  %.0.i.i2 = phi ptr [ %i.ag, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !92
  %i.aj = getelementptr inbounds [16 x i8], ptr %.0.i.i2, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !174 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.am, null
  br i1 %.not.i.i4, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !298, !range !39, !noundef !40
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp ne ptr %i.ar, null
  %or.cond.not.i = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %or.cond.not.i, label %bb.g, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i: ; preds = %bb.d, %_ZNK5arrow9ArrayData9GetValuesINS_14BinaryViewType6c_typeEEEPKT_i.exit3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !93 ; 2 uses
  %i.av = icmp slt i64 %i.au, 1
  br i1 %i.av, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, %bb.f
  %.01114.i.i = phi i64 [ %i.bt, %bb.f ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.01114.i.i ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.aw, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !276 ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.01114.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !276 ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.e, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %.sroa.011.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i to i32
  %i.ay = icmp slt i32 %.sroa.011.0.extract.trunc.i.i.i, 13
  br i1 %i.ay, label %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %sext.i.i.i = shl i64 %.sroa.22.0.copyload.i.i, 32
  %i.az = ashr exact i64 %sext.i.i.i, 28
  %i.ba = getelementptr inbounds i8, ptr %i.ak, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !174
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ashr i64 %.sroa.22.0.copyload.i.i, 32
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %sext15.i.i.i = shl i64 %.sroa.2.0.copyload.i.i, 32
  %i.bg = ashr exact i64 %sext15.i.i.i, 28
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !174
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ashr i64 %.sroa.2.0.copyload.i.i, 32
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = add i64 %.sroa.01.0.copyload.i.i, 4294967292
  %i.bq = and i64 %i.bp, 4294967295
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %i.bo, i64 %i.bq)
  %i.br = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.br, label %bb.f, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeE:bb.a
  %i.ce = phi { i64, i64 } [ %i.dg, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i ], [ %i.ca, %bb.g ]
  %i.cf = extractvalue { i64, i64 } %i.ce, 0      ; 2 uses
  %i.cg = add nsw i64 %i.cf, %i.cd
  %i.ch = icmp slt i64 %i.cd, 1
  br i1 %i.ch, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i, %bb.i
  %.01114.i10.i = phi i64 [ %i.df, %bb.i ], [ %i.cf, %.lr.ph.i ] ; 3 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.r, i64 %.01114.i10.i ; 2 uses
  %.sroa.01.0.copyload.i11.i = load i64, ptr %i.ci, align 8 ; 3 uses
  %.sroa.22.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.22.0.copyload.i13.i = load i64, ptr %.sroa.22.0..sroa_idx.i12.i, align 8, !tbaa !276 ; 3 uses
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %.01114.i10.i ; 2 uses
  %.sroa.0.0.copyload.i14.i = load i64, ptr %i.cj, align 8
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2.0.copyload.i16.i = load i64, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !tbaa !276 ; 3 uses
  %.not.i.i17.i = icmp eq i64 %.sroa.01.0.copyload.i11.i, %.sroa.0.0.copyload.i14.i
  br i1 %.not.i.i17.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i9.i
  %.sroa.011.0.extract.trunc.i.i19.i = trunc i64 %.sroa.01.0.copyload.i11.i to i32
  %i.ck = icmp slt i32 %.sroa.011.0.extract.trunc.i.i19.i, 13
  br i1 %i.ck, label %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i, label %.split.i20.i

.split.i20.i:                                     ; preds = %bb.h
  %sext.i.i21.i = shl i64 %.sroa.22.0.copyload.i13.i, 32
  %i.cl = ashr exact i64 %sext.i.i21.i, 28
  %i.cm = getelementptr inbounds i8, ptr %i.ak, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !174
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ashr i64 %.sroa.22.0.copyload.i13.i, 32
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  %sext15.i.i22.i = shl i64 %.sroa.2.0.copyload.i16.i, 32
  %i.cs = ashr exact i64 %sext15.i.i22.i, 28
  %i.ct = getelementptr inbounds i8, ptr %i.al, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !174
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ashr i64 %.sroa.2.0.copyload.i16.i, 32
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.db = add i64 %.sroa.01.0.copyload.i11.i, 4294967292
  %i.dc = and i64 %i.db, 4294967295
  %bcmp.i.i23.i = call i32 @bcmp(ptr nonnull %i.cz, ptr nonnull %i.da, i64 %i.dc)
  %i.dd = icmp eq i32 %bcmp.i.i23.i, 0
  br i1 %i.dd, label %bb.i, label %bb.j

_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i: ; preds = %bb.h
  %i.de = icmp eq i64 %.sroa.22.0.copyload.i13.i, %.sroa.2.0.copyload.i16.i
  br i1 %i.de, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i, %.split.i20.i
  %i.df = add nsw i64 %.01114.i10.i, 1            ; 2 uses
  %.not.i24.i = icmp slt i64 %i.df, %i.cg
  br i1 %.not.i24.i, label %.lr.ph.i9.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i, !llvm.loop !898

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i: ; preds = %bb.i, %.lr.ph.i
  %i.dg = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %i.dh = extractvalue { i64, i64 } %i.dg, 1      ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.critedge.i, label %.lr.ph.i, !llvm.loop !899

bb.j:                                             ; preds = %_ZN5arrow4util15EqualBinaryViewISt10shared_ptrINS_6BufferEEEEbNS_14BinaryViewType6c_typeES6_PKT_S9_.exit.i25.i, %.split.i20.i, %.lr.ph.i9.i
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dj, align 8, !tbaa !94
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit26.i, %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_5VisitERKNS_14BinaryViewTypeEEUlllE_EEvOT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_5VisitERKNS_14BinaryViewTypeEEUlllE_EEvOT_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_14BinaryViewTypeEENKUlllE_clEll.exit.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !900
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_15LargeBinaryTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !noalias !903, !nonnull !40, !align !709 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !711, !noalias !903 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !903
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !99
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i:  ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !710, !noalias !903, !nonnull !40, !align !709 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !711, !noalias !903 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i2.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !903 ; 3 uses
  %i.x = icmp ne ptr %.0.i.i, null
  %i.y = icmp ne ptr %i.w, null
  %i.z = select i1 %i.u, i1 %i.y, i1 false, !prof !99
  %or.cond.i = and i1 %i.x, %i.z
  br i1 %or.cond.i, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !712, !noalias !903
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !903
  %i.aj = select i1 %i.ag, ptr %i.ai, ptr null, !prof !99
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ad
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.d ], [ null, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !91, !noalias !903 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.am ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i3.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !712, !noalias !903
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !903
  %i.ax = select i1 %i.au, ptr %i.aw, ptr null, !prof !99
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ar
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i: ; preds = %bb.e, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i
  %.0.i.i4.i.i = phi ptr [ %i.ay, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !92, !noalias !903
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0.i.i4.i.i, i64 %i.ba ; 6 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i6.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !903 ; 2 uses
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond.not.i.i.i = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.h, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i: ; preds = %bb.f, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit5.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !93, !noalias !903 ; 3 uses
  %smax.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 0)
  %exitcond.not.i.i.i.i19 = icmp slt i64 %i.bk, 1
  br i1 %exitcond.not.i.i.i.i19, label %._crit_edge, label %.lr.ph21

bb.g:                                             ; preds = %.lr.ph21
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bl, %smax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph21, !llvm.loop !906

.lr.ph21:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i, %bb.g
  %.016.i.i.i.i20 = phi i64 [ %i.bl, %bb.g ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i ] ; 3 uses
  %i.bl = add nuw i64 %.016.i.i.i.i20, 1          ; 4 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !228, !noalias !903
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.016.i.i.i.i20
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !228, !noalias !903
  %i.bq = sub nsw i64 %i.bn, %i.bp
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bl
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !228, !noalias !903
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.016.i.i.i.i20
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !228, !noalias !903
  %i.bv = sub nsw i64 %i.bs, %i.bu
  %.not.i8.i.i.i = icmp eq i64 %i.bq, %i.bv
  br i1 %.not.i8.i.i.i, label %bb.g, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !906

._crit_edge:                                      ; preds = %bb.g, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i.i
  %i.bw = load i64, ptr %i.an, align 8, !tbaa !228, !noalias !903 ; 2 uses
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !228, !noalias !903
  %i.by = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bk
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !228, !noalias !903
  %i.ca = sub nsw i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.bw
  %i.cc = getelementptr inbounds i8, ptr %i.w, i64 %i.bx
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.cb, ptr nonnull readonly %i.cc, i64 %i.ca), !noalias !903
  %i.cd = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.ce = zext i1 %i.cd to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %.lr.ph21, %._crit_edge
  %.1.i.i.i.i = phi i8 [ %i.ce, %._crit_edge ], [ 0, %.lr.ph21 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.1.i.i.i.i, ptr %i.cf, align 8, !tbaa !94, !noalias !903
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !903
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !712, !noalias !903
  %i.ci = add nsw i64 %i.ch, %i.am
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !93, !noalias !903
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %i.bh, i64 noundef %i.ci, i64 noundef %i.ck), !noalias !903
  br label %bb.i

bb.i:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %bb.h
  %i.cl = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !903 ; 2 uses
  %i.cm = extractvalue { i64, i64 } %i.cl, 1      ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = extractvalue { i64, i64 } %i.cl, 0      ; 5 uses
  %i.cp = add nsw i64 %i.cm, %i.co                ; 2 uses
  %smax.i9.i.i.i = call i64 @llvm.smax.i64(i64 %i.co, i64 %i.cp)
  %exitcond.not.i11.i.i.i17.not = icmp sgt i64 %i.cm, 0
  br i1 %exitcond.not.i11.i.i.i17.not, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i

bb.k:                                             ; preds = %.lr.ph
  %exitcond.not.i11.i.i.i = icmp eq i64 %i.cq, %smax.i9.i.i.i
  br i1 %exitcond.not.i11.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, label %.lr.ph, !llvm.loop !906

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.016.i10.i.i.i18 = phi i64 [ %i.cq, %bb.k ], [ %i.co, %bb.j ] ; 3 uses
  %i.cq = add i64 %.016.i10.i.i.i18, 1            ; 4 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !228, !noalias !903
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.016.i10.i.i.i18
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !228, !noalias !903
  %i.cv = sub nsw i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.cq
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !228, !noalias !903
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.016.i10.i.i.i18
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !228, !noalias !903
  %i.da = sub nsw i64 %i.cx, %i.cz
  %.not.i12.i.i.i = icmp eq i64 %i.cv, %i.da
  br i1 %.not.i12.i.i.i, label %bb.k, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !906

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i: ; preds = %bb.k, %bb.j
  %i.db = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.co
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !228, !noalias !903 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.co
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !228, !noalias !903
  %i.df = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cp
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !228, !noalias !903
  %i.dh = sub nsw i64 %i.dg, %i.dc
  %i.di = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.dc
  %i.dj = getelementptr inbounds i8, ptr %i.w, i64 %i.de
  %bcmp.i.i18.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.di, ptr nonnull readonly %i.dj, i64 %i.dh), !noalias !903
  %i.dk = icmp eq i32 %bcmp.i.i18.i.i.i, 0
  br i1 %i.dk, label %bb.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i, !llvm.loop !907

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.i.i.i, %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.dl, align 8, !tbaa !94, !noalias !903
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit19.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !903
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i5.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !712, !noalias !903
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !903
  %i.dv = select i1 %i.ds, ptr %i.du, ptr null, !prof !99
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dp
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i: ; preds = %bb.l, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i
  %.0.i.i.i7.i = phi ptr [ %i.dw, %bb.l ], [ null, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit4.thread.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !91, !noalias !903 ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0.i.i.i7.i, i64 %i.dy ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i4.i.i, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !712, !noalias !903
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !903
  %i.ej = select i1 %i.eg, ptr %i.ei, ptr null, !prof !99
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ed
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i: ; preds = %bb.m, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i
  %.0.i.i5.i.i = phi ptr [ %i.ek, %bb.m ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i6.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !92, !noalias !903
  %i.en = getelementptr inbounds [8 x i8], ptr %.0.i.i5.i.i, i64 %i.em ; 4 uses
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !174, !noalias !903 ; 3 uses
  %.not.i.i7.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i7.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, label %bb.n

bb.n:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 9
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !298, !range !39, !noalias !903, !noundef !40
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !noalias !903 ; 2 uses
  %i.eu = icmp ne ptr %i.et, null
  %or.cond.not.i.i8.i = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %or.cond.not.i.i8.i, label %bb.p, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i: ; preds = %bb.n, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !93, !noalias !903 ; 3 uses
  %smax.i.i.i10.i = tail call i64 @llvm.smax.i64(i64 %i.ew, i64 0)
  %exitcond.i.i.i.i28 = icmp slt i64 %i.ew, 1
  br i1 %exitcond.i.i.i.i28, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30

bb.o:                                             ; preds = %.lr.ph30
  %exitcond.i.i.i.i = icmp eq i64 %i.ex, %smax.i.i.i10.i
  br i1 %exitcond.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, label %.lr.ph30, !llvm.loop !908

.lr.ph30:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i, %bb.o
  %.016.i.i.i11.i29 = phi i64 [ %i.ex, %bb.o ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ] ; 4 uses
  %i.ex = add nuw i64 %.016.i.i.i11.i29, 1        ; 4 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !228, !noalias !903
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.016.i.i.i11.i29
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !228, !noalias !903
  %i.fc = sub nsw i64 %i.ez, %i.fb
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.ex
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !228, !noalias !903
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.016.i.i.i11.i29
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !228, !noalias !903
  %i.fh = sub nsw i64 %i.fe, %i.fg
  %.not.i8.i.i12.i = icmp eq i64 %i.fc, %i.fh
  br i1 %.not.i8.i.i12.i, label %bb.o, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, !llvm.loop !908

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge: ; preds = %.lr.ph30
  %i.fi = icmp sge i64 %.016.i.i.i11.i29, %i.ew
  %i.fj = zext i1 %i.fi to i8
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, !llvm.loop !908

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i: ; preds = %bb.o, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i
  %.016.i.lcssa.i.i.i = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i.i9.i ], [ %i.fj, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i_crit_edge ], [ 1, %bb.o ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.016.i.lcssa.i.i.i, ptr %i.fk, align 8, !tbaa !94, !noalias !903
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !903
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !712, !noalias !903
  %i.fn = add nsw i64 %i.fm, %i.dy
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !93, !noalias !903
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %i.et, i64 noundef %i.fn, i64 noundef %i.fp), !noalias !903
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.p
  %i.fq = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !903 ; 2 uses
  %i.fr = extractvalue { i64, i64 } %i.fq, 1      ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.critedge.i.i16.i, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.ft = extractvalue { i64, i64 } %i.fq, 0      ; 3 uses
  %i.fu = add nsw i64 %i.fr, %i.ft                ; 2 uses
  %smax.i9.i.i13.i = call i64 @llvm.smax.i64(i64 %i.ft, i64 %i.fu)
  %exitcond.i11.i.i.i22.not = icmp sgt i64 %i.fr, 0
  br i1 %exitcond.i11.i.i.i22.not, label %.lr.ph25, label %.critedge.backedge

bb.r:                                             ; preds = %.lr.ph25
  %exitcond.i11.i.i.i = icmp eq i64 %i.fv, %smax.i9.i.i13.i
  br i1 %exitcond.i11.i.i.i, label %.critedge.backedge, label %.lr.ph25, !llvm.loop !908

.lr.ph25:                                         ; preds = %bb.q, %bb.r
  %.016.i10.i.i14.i23 = phi i64 [ %i.fv, %bb.r ], [ %i.ft, %bb.q ] ; 4 uses
  %i.fv = add i64 %.016.i10.i.i14.i23, 1          ; 4 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !228, !noalias !903
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %.016.i10.i.i14.i23
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !228, !noalias !903
  %i.ga = sub nsw i64 %i.fx, %i.fz
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fv
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !228, !noalias !903
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.016.i10.i.i14.i23
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !228, !noalias !903
  %i.gf = sub nsw i64 %i.gc, %i.ge
  %.not.i12.i.i15.i = icmp eq i64 %i.ga, %i.gf
  br i1 %.not.i12.i.i15.i, label %bb.r, label %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, !llvm.loop !908

._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge: ; preds = %.lr.ph25
  %i.gg = icmp slt i64 %.016.i10.i.i14.i23, %i.fu
  br i1 %i.gg, label %bb.s, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.r, %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge, %bb.q
  br label %.critedge, !llvm.loop !909

bb.s:                                             ; preds = %._ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit14.i.i.i_crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.gh, align 8, !tbaa !94, !noalias !903
  br label %.critedge.i.i16.i

.critedge.i.i16.i:                                ; preds = %.critedge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !903
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlRKZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUllllE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i.i, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl18CompareWithOffsetsIlZNS1_13CompareBinaryINS_15LargeBinaryTypeEEENS_6StatusERKT_EUlzE_EEviOT0_ENKUlllE_clEll.exit.i.i.i, %.critedge.i.i16.i
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !910
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_19FixedSizeBinaryTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(76) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !273
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(76) %2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !708, !nonnull !40, !align !709 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !711  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !298, !range !39, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.o, ptr null, !prof !99
  br label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit:    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !710, !nonnull !40, !align !709 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !711
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174  ; 3 uses
  %.not.i3 = icmp eq ptr %i.v, null
  br i1 %.not.i3, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5:   ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !298, !range !39, !noundef !40
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp ne ptr %.0.i, null
  %i.ac = icmp ne ptr %i.aa, null
  %i.ad = select i1 %i.y, i1 %i.ac, i1 false, !prof !99
  %or.cond = and i1 %i.ab, %i.ad
  br i1 %or.cond, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5.thread

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit5
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !174 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !298, !range !39, !noundef !40
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ne ptr %i.aj, null
  %or.cond.not.i = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not.i, label %bb.e, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread.i: ; preds = %bb.d, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !93
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !712
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = sext i32 %i.d to i64                    ; 3 uses
  %i.at = mul nsw i64 %i.ar, %i.as
  %i.au = getelementptr inbounds i8, ptr %.0.i, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !712
  %i.az = add i64 %i.ay, %i.aw
  %i.ba = mul nsw i64 %i.az, %i.as
  %i.bb = getelementptr inbounds i8, ptr %i.aa, i64 %i.ba
  %i.bc = mul nsw i64 %i.am, %i.as
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.au, ptr nonnull %i.bb, i64 %i.bc)
  %i.bd = icmp eq i32 %bcmp.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = zext i1 %i.bd to i8
  store i8 %i.bf, ptr %i.be, align 8, !tbaa !94
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_19FixedSizeBinaryTypeEEUlllE_EEvOT_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !712
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !91
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !93
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.aj, i64 noundef %i.bk, i64 noundef %i.bm)
  %i.bn = sext i32 %i.d to i64                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4) ; 2 uses
  %i.bq = extractvalue { i64, i64 } %i.bp, 1      ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = extractvalue { i64, i64 } %i.bp, 0      ; 2 uses
  %i.bt = load i64, ptr %i.bi, align 8, !tbaa !91
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !708, !nonnull !40, !align !709
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !712
  %i.bx = add i64 %i.bt, %i.bs
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = mul nsw i64 %i.by, %i.bn
end_hunk_1
