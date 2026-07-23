inline.NumInlined: 2703
inline.NumDeleted: 1134
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_13HalfFloatTypeE:bb.a
  %i.zv = bitcast <8 x i1> %bin.rdx to i8
  %i.zw = icmp eq i8 %i.zv, -1                    ; 3 uses
  %cmp.n = icmp eq i64 %i.zd, %n.vec
  br i1 %cmp.n, label %._crit_edge.i21.i.i.i.i26.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !756

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.zw, %vec.epilog.iter.check ], [ %i.zj, %vector.main.loop.iter.check ]
  %n.vec97 = and i64 %i.zd, 9223372036854775804   ; 3 uses
  %i.zx = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index98 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next102, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi99 = phi <4 x i1> [ %i.zx, %vec.epilog.ph ], [ %i.aac, %vec.epilog.vector.body ]
  %i.zy = add nsw i64 %index98, %i.zf             ; 2 uses
  %i.zz = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i.i.i.i, i64 %i.zy
  %wide.load100 = load <4 x i16>, ptr %i.zz, align 2, !tbaa !748, !noalias !743
  %i.aaa = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i, i64 %i.zy
  %wide.load101 = load <4 x i16>, ptr %i.aaa, align 2, !tbaa !748, !noalias !743
  %i.aab = icmp eq <4 x i16> %wide.load100, %wide.load101
  %i.aac = and <4 x i1> %vec.phi99, %i.aab        ; 2 uses
  %index.next102 = add nuw i64 %index98, 4        ; 2 uses
  %i.aad = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.aad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !778

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aae = bitcast <4 x i1> %i.aac to i4
  %i.aaf = icmp eq i4 %i.aae, -1                  ; 2 uses
  %cmp.n103 = icmp eq i64 %i.zd, %n.vec97
  br i1 %cmp.n103, label %._crit_edge.i21.i.i.i.i26.i.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph400 = phi i1 [ %i.zj, %iter.check ], [ %i.zw, %vec.epilog.iter.check ], [ %i.aaf, %vec.epilog.middle.block ]
  %.01.i17.i.i.i.i22.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec97, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i21.i.i.i.i26.i.i.i.i.i:              ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa90 = phi i1 [ %i.aaf, %vec.epilog.middle.block ], [ %i.zw, %middle.block ], [ %i.aam, %vec.epilog.scalar.ph ]
  %i.aag = zext i1 %.lcssa90 to i8
  store i8 %i.aag, ptr %i.zb, align 8, !tbaa !68, !noalias !743
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.aah = phi i1 [ %i.aam, %vec.epilog.scalar.ph ], [ %.ph400, %vec.epilog.scalar.ph.preheader ]
  %.01.i17.i.i.i.i22.i.i.i.i.i = phi i64 [ %i.aan, %vec.epilog.scalar.ph ], [ %.01.i17.i.i.i.i22.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aai = add nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, %i.zf ; 2 uses
  %gep.i18.i.i.i.i23.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i14.i.i.i.i19.i.i.i.i.i, i64 %i.aai
  %i.aaj = load i16, ptr %gep.i18.i.i.i.i23.i.i.i.i.i, align 2, !tbaa !748, !noalias !743
  %gep3.i19.i.i.i.i24.i.i.i.i.i = getelementptr [2 x i8], ptr %invariant.gep2.i15.i.i.i.i20.i.i.i.i.i, i64 %i.aai
  %i.aak = load i16, ptr %gep3.i19.i.i.i.i24.i.i.i.i.i, align 2, !tbaa !748, !noalias !743
  %i.aal = icmp eq i16 %i.aaj, %i.aak
  %i.aam = and i1 %i.aah, %i.aal                  ; 2 uses
  %i.aan = add nuw nsw i64 %.01.i17.i.i.i.i22.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i20.i.i.i.i25.i.i.i.i.i = icmp eq i64 %i.aan, %i.zd
  br i1 %exitcond.not.i20.i.i.i.i25.i.i.i.i.i, label %._crit_edge.i21.i.i.i.i26.i.i.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !779

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i21.i.i.i.i26.i.i.i.i.i, %.lr.ph.i.i.i.i16.i.i.i.i.i
  %i.aao = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !743 ; 2 uses
  %i.aap = extractvalue { i64, i64 } %i.aao, 1    ; 2 uses
  %i.aaq = icmp eq i64 %i.aap, 0
  br i1 %i.aaq, label %._crit_edge.i.i.i.i17.i.i.i.i.i, label %.lr.ph.i.i.i.i16.i.i.i.i.i

._crit_edge.i.i.i.i17.i.i.i.i.i:                  ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb0ELb0ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit22.i.i.i.i.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !743
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_.exit: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb0ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_13HalfFloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityItNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i, %.thread.i.i.i5.i.i.i.i.i, %._crit_edge.i.i.i.i13.i.i.i.i.i, %.thread.i.i.i.i12.i.i.i.i, %._crit_edge.i.i.i.i.i19.i.i.i.i, %.thread.i.i.i5.i8.i.i.i.i, %._crit_edge.i.i.i.i12.i.i.i.i.i, %.thread.i.i.i.i.i10.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i17.i.i.i, %.thread.i.i.i5.i.i7.i.i.i, %._crit_edge.i.i.i.i.i16.i.i.i.i.i, %._crit_edge.i.i.i.i19.i.i.i.i.i, %.thread.i.i.i.i16.i.i.i.i, %._crit_edge.i.i.i.i.i.i25.i.i.i.i, %._crit_edge.i.i.i.i.i28.i.i.i.i, %.thread.i.i.i5.i7.i.i.i.i, %._crit_edge.i.i.i.i.i14.i.i.i.i.i, %._crit_edge.i.i.i.i17.i.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !70, !alias.scope !780
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_9FloatTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %3 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %5 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %6 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %7 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %8 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %9 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !657, !noalias !783, !nonnull !59, !align !658 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !660, !noalias !783 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140, !noalias !783 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !661, !noalias !783
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !267, !range !58, !noalias !783, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !783
  %i.n = select i1 %i.k, ptr %i.m, ptr null, !prof !73
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  br label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !659, !noalias !783, !nonnull !59, !align !658 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !660, !noalias !783
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !140, !noalias !783 ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !661, !noalias !783
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !267, !range !58, !noalias !783, !noundef !59
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !783
  %i.ac = select i1 %i.z, ptr %i.ab, ptr null, !prof !73
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.w
  br label %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i

_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i:  ; preds = %bb.c, %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i
  %.0.i.i2.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit.i ] ; 16 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !746, !noalias !783, !nonnull !59, !align !658 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !62, !range !58, !noalias !783, !noundef !59
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !53, !range !58, !noalias !783, !noundef !59
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !747, !range !58, !noalias !783, !noundef !59
  %i.an = trunc nuw i8 %i.am to i1                ; 4 uses
  br i1 %i.ah, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIfEEPKT_i.exit3.i
  %.val.i.i.i.i.i = load double, ptr %i.ae, align 8, !tbaa !299, !noalias !783
  %i.ao = fptrunc double %.val.i.i.i.i.i to float ; 16 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !661, !noalias !783
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !783 ; 5 uses
  %i.at = add nsw i64 %i.as, %i.aq                ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !67, !noalias !783 ; 24 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !140, !noalias !783 ; 9 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !267, !range !58, !noalias !783, !noundef !59
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !783 ; 2 uses
  %i.bb = icmp ne ptr %i.ba, null
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.j, label %.thread.i.i.i.i.i.i.i.i, !prof !682

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.g, %bb.f
  %i.bc = icmp sgt i64 %i.av, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.thread.i.i.i.i.i.i.i.i
  %invariant.gep.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.as ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !66, !noalias !783
  %invariant.gep2.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted7.i.i.i.i.i = load i8, ptr %i.bf, align 8, !tbaa !68, !noalias !783
  %i.bg = icmp ne i8 %.promoted7.i.i.i.i.i, 0     ; 2 uses
  %min.iters.check429 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check429, label %scalar.ph428.preheader, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %n.vec432 = and i64 %i.av, 9223372036854775800  ; 3 uses
  %i.bh = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.bg, i64 0
  %broadcast.splatinsert433 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat434 = shufflevector <4 x float> %broadcast.splatinsert433, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph430
  %index436 = phi i64 [ 0, %vector.ph430 ], [ %index.next447, %vector.body435 ] ; 3 uses
  %vec.phi437 = phi <4 x i1> [ %i.bh, %vector.ph430 ], [ %predphi441, %vector.body435 ]
  %vec.phi438 = phi <4 x i1> [ splat (i1 true), %vector.ph430 ], [ %predphi446, %vector.body435 ]
  %i.bi = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %index436 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load439.a = load <4 x float>, ptr %i.bi, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %wide.load440.a = load <4 x float>, ptr %i.bj, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %index436 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %wide.load441 = load <4 x float>, ptr %i.bk, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %wide.load442 = load <4 x float>, ptr %i.bl, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %i.bm = fcmp oeq <4 x float> %wide.load439.a, %wide.load441
  %i.bn = fcmp oeq <4 x float> %wide.load440.a, %wide.load442
  %i.bo = fcmp uno <4 x float> %wide.load439.a, zeroinitializer
  %i.bp = fcmp uno <4 x float> %wide.load440.a, zeroinitializer
  %i.bq = fcmp uno <4 x float> %wide.load441, zeroinitializer
  %i.br = fcmp uno <4 x float> %wide.load442, zeroinitializer
  %i.bs = and <4 x i1> %i.bo, %i.bq
  %i.bt = and <4 x i1> %i.bp, %i.br
  %i.bu = fsub <4 x float> %wide.load439.a, %wide.load441
  %i.bv = fsub <4 x float> %wide.load440.a, %wide.load442
  %i.bw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bu)
  %i.bx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bv)
  %i.by = fcmp ole <4 x float> %i.bw, %broadcast.splat434
  %i.bz = fcmp ole <4 x float> %i.bx, %broadcast.splat434
  %i.ca = or <4 x i1> %i.bs, %i.bm
  %10 = or <4 x i1> %i.bt, %i.bn
  %11 = select <4 x i1> %i.ca, <4 x i1> splat (i1 true), <4 x i1> %i.by
  %predphi441 = and <4 x i1> %vec.phi437, %11     ; 2 uses
  %predphi445 = select <4 x i1> %10, <4 x i1> splat (i1 true), <4 x i1> %i.bz
  %predphi446 = and <4 x i1> %vec.phi438, %predphi445 ; 2 uses
  %index.next447 = add nuw i64 %index436, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next447, %n.vec432
  br i1 %i.cb, label %middle.block448, label %vector.body435, !llvm.loop !786

middle.block448:                                  ; preds = %vector.body435
  %bin.rdx449 = and <4 x i1> %predphi446, %predphi441
  %i.cc = bitcast <4 x i1> %bin.rdx449 to i4
  %i.cd = icmp eq i4 %i.cc, -1                    ; 2 uses
  %cmp.n450 = icmp eq i64 %i.av, %n.vec432
  br i1 %cmp.n450, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph428.preheader

scalar.ph428.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block448
  %.ph = phi i1 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cd, %middle.block448 ]
  %.01.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %n.vec432, %middle.block448 ]
  br label %scalar.ph428

scalar.ph428:                                     ; preds = %scalar.ph428.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.ce = phi i1 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph, %scalar.ph428.preheader ] ; 3 uses
  %.01.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph428.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.cf = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %gep3.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i.i.i.i.i.i, i64 %.01.i.i.i.i.i.i.i.i.i.i
  %i.cg = load float, ptr %gep3.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %i.ch = fcmp oeq float %i.cf, %i.cg
  br i1 %i.ch, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %scalar.ph428
  %i.ci = fcmp uno float %i.cf, 0.000000e+00
  %i.cj = fcmp uno float %i.cg, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ci, %i.cj
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = fsub float %i.cf, %i.cg
  %i.cl = tail call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp ole float %i.cl, %i.ao
  %i.cn = and i1 %i.ce, %i.cm
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %scalar.ph428
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ce, %bb.h ], [ %i.ce, %scalar.ph428 ], [ %i.cn, %bb.i ] ; 2 uses
  %i.co = add nuw nsw i64 %.01.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit.i.i.i.i.i, label %scalar.ph428, !llvm.loop !787

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !783
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef %i.av), !noalias !783
  %i.cp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %9), !noalias !783 ; 2 uses
  %i.cq = extractvalue { i64, i64 } %i.cp, 1      ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i:               ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert408 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat409 = shufflevector <4 x float> %broadcast.splatinsert408, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i
  %i.cu = phi i64 [ %i.en, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.cq, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.cv = phi { i64, i64 } [ %i.em, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.cp, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i ]
  %i.cw = extractvalue { i64, i64 } %i.cv, 0      ; 2 uses
  %i.cx = icmp sgt i64 %i.cu, 0
  br i1 %i.cx, label %.lr.ph.i13.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cy = load i64, ptr %i.ar, align 8, !tbaa !65, !noalias !783
  %invariant.gep.i14.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.cy ; 2 uses
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !66, !noalias !783
  %invariant.gep2.i15.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.cz ; 2 uses
  %.promoted5.i.i.i.i.i = load i8, ptr %i.cs, align 8, !tbaa !68, !noalias !783
  %i.da = icmp ne i8 %.promoted5.i.i.i.i.i, 0     ; 2 uses
  %min.iters.check404 = icmp ult i64 %i.cu, 8
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i
  %n.vec407 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.db = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.da, i64 0
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph405
  %index411 = phi i64 [ 0, %vector.ph405 ], [ %index.next422, %vector.body410 ] ; 2 uses
  %vec.phi412 = phi <4 x i1> [ %i.db, %vector.ph405 ], [ %predphi418, %vector.body410 ]
  %vec.phi413 = phi <4 x i1> [ splat (i1 true), %vector.ph405 ], [ %predphi421, %vector.body410 ]
  %i.dc = add nsw i64 %index411, %i.cw            ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.dc ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %wide.load414 = load <4 x float>, ptr %i.dd, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %wide.load415 = load <4 x float>, ptr %i.de, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %i.df = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.dc ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %wide.load416 = load <4 x float>, ptr %i.df, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %wide.load417 = load <4 x float>, ptr %i.dg, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %i.dh = fcmp oeq <4 x float> %wide.load414, %wide.load416
  %i.di = fcmp oeq <4 x float> %wide.load415, %wide.load417
  %i.dj = fcmp uno <4 x float> %wide.load414, zeroinitializer
  %i.dk = fcmp uno <4 x float> %wide.load415, zeroinitializer
  %i.dl = fcmp uno <4 x float> %wide.load416, zeroinitializer
  %i.dm = fcmp uno <4 x float> %wide.load417, zeroinitializer
  %i.dn = and <4 x i1> %i.dj, %i.dl
  %i.do = and <4 x i1> %i.dk, %i.dm
  %i.dp = fsub <4 x float> %wide.load414, %wide.load416
  %i.dq = fsub <4 x float> %wide.load415, %wide.load417
  %i.dr = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dp)
  %i.ds = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.dq)
  %i.dt = fcmp ole <4 x float> %i.dr, %broadcast.splat409
  %i.du = fcmp ole <4 x float> %i.ds, %broadcast.splat409
  %i.dv = or <4 x i1> %i.dn, %i.dh
  %12 = or <4 x i1> %i.do, %i.di
  %13 = select <4 x i1> %i.dv, <4 x i1> splat (i1 true), <4 x i1> %i.dt
  %predphi418 = and <4 x i1> %vec.phi412, %13     ; 2 uses
  %predphi420 = select <4 x i1> %12, <4 x i1> splat (i1 true), <4 x i1> %i.du
  %predphi421 = and <4 x i1> %vec.phi413, %predphi420 ; 2 uses
  %index.next422 = add nuw i64 %index411, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next422, %n.vec407
  br i1 %i.dw, label %middle.block423, label %vector.body410, !llvm.loop !788

middle.block423:                                  ; preds = %vector.body410
  %bin.rdx424 = and <4 x i1> %predphi421, %predphi418
  %i.dx = bitcast <4 x i1> %bin.rdx424 to i4
  %i.dy = icmp eq i4 %i.dx, -1                    ; 2 uses
  %cmp.n425 = icmp eq i64 %i.cu, %n.vec407
  br i1 %cmp.n425, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i, %middle.block423
  %.ph454 = phi i1 [ %i.da, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %i.dy, %middle.block423 ]
  %.01.i16.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i13.i.i.i.i.i.i.i.i.i ], [ %n.vec407, %middle.block423 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i
  %i.dz = phi i1 [ %.0.i.i.i22.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.ph454, %scalar.ph403.preheader ] ; 3 uses
  %.01.i16.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ek, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ], [ %.01.i16.i.i.i.i.i.i.i.i.i.ph, %scalar.ph403.preheader ] ; 2 uses
  %i.ea = add nsw i64 %.01.i16.i.i.i.i.i.i.i.i.i, %i.cw ; 2 uses
  %gep.i17.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i14.i.i.i.i.i.i.i.i.i, i64 %i.ea
  %i.eb = load float, ptr %gep.i17.i.i.i.i.i.i.i.i.i, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %gep3.i18.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i15.i.i.i.i.i.i.i.i.i, i64 %i.ea
  %i.ec = load float, ptr %gep3.i18.i.i.i.i.i.i.i.i.i, align 4, !tbaa !314, !noalias !783 ; 3 uses
  %i.ed = fcmp oeq float %i.eb, %i.ec
  br i1 %i.ed, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %scalar.ph403
  %i.ee = fcmp uno float %i.eb, 0.000000e+00
  %i.ef = fcmp uno float %i.ec, 0.000000e+00
  %or.cond.i.i.i20.i.i.i.i.i.i.i.i.i = and i1 %i.ee, %i.ef
  br i1 %or.cond.i.i.i20.i.i.i.i.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = fsub float %i.eb, %i.ec
  %i.eh = call float @llvm.fabs.f32(float %i.eg)
  %i.ei = fcmp ole float %i.eh, %i.ao
  %i.ej = and i1 %i.dz, %i.ei
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %scalar.ph403
  %.0.i.i.i22.i.i.i.i.i.i.i.i.i = phi i1 [ %i.dz, %bb.k ], [ %i.dz, %scalar.ph403 ], [ %i.ej, %bb.l ] ; 2 uses
  %i.ek = add nuw nsw i64 %.01.i16.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ek, %i.cu
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, label %scalar.ph403, !llvm.loop !789

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i: ; preds = %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i, %middle.block423
  %.0.i.i.i22.i.i.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.dy, %middle.block423 ], [ %.0.i.i.i22.i.i.i.i.i.i.i.i.i, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_ENKUllE_clEl.exit.i21.i.i.i.i.i.i.i.i.i ]
  %i.el = zext i1 %.0.i.i.i22.i.i.i.i.i.i.i.i.i.lcssa to i8
  store i8 %i.el, ptr %i.cs, align 8, !tbaa !68, !noalias !783
  br label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.em = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %9), !noalias !783 ; 2 uses
  %i.en = extractvalue { i64, i64 } %i.em, 1      ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !783
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

bb.m:                                             ; preds = %bb.e
  br i1 %.not3.i.i.i.i.i.i.i.i, label %.thread.i.i.i5.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 9
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !267, !range !58, !noalias !783, !noundef !59
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !noalias !783 ; 2 uses
  %i.eu = icmp ne ptr %i.et, null
  %or.cond.not.i.i.i4.i.i.i.i.i = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %or.cond.not.i.i.i4.i.i.i.i.i, label %bb.r, label %.thread.i.i.i5.i.i.i.i.i, !prof !682

.thread.i.i.i5.i.i.i.i.i:                         ; preds = %bb.n, %bb.m
  %i.ev = icmp sgt i64 %i.av, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i6.i.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_.exit

.lr.ph.i.i.i.i.i6.i.i.i.i.i:                      ; preds = %.thread.i.i.i5.i.i.i.i.i
  %invariant.gep.i.i.i.i.i7.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.as ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !66, !noalias !783
  %invariant.gep2.i.i.i.i.i8.i.i.i.i.i = getelementptr [4 x i8], ptr %.0.i.i2.i, i64 %i.ex ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.promoted3.i.i.i.i.i = load i8, ptr %i.ey, align 8, !tbaa !68, !noalias !783
  %i.ez = icmp ne i8 %.promoted3.i.i.i.i.i, 0     ; 2 uses
  %min.iters.check379 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check379, label %scalar.ph378.preheader, label %vector.ph380

vector.ph380:                                     ; preds = %.lr.ph.i.i.i.i.i6.i.i.i.i.i
  %n.vec382 = and i64 %i.av, 9223372036854775800  ; 3 uses
  %i.fa = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %i.ez, i64 0
  %broadcast.splatinsert383 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat384 = shufflevector <4 x float> %broadcast.splatinsert383, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph380
  %index386 = phi i64 [ 0, %vector.ph380 ], [ %index.next397, %vector.body385 ] ; 3 uses
  %vec.phi387 = phi <4 x i1> [ %i.fa, %vector.ph380 ], [ %i.gb, %vector.body385 ]
  %vec.phi388 = phi <4 x i1> [ splat (i1 true), %vector.ph380 ], [ %i.gc, %vector.body385 ]
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i.i.i.i, i64 %index386 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %wide.load389 = load <4 x float>, ptr %i.fb, align 4, !tbaa !314, !noalias !783 ; 4 uses
  %wide.load390 = load <4 x float>, ptr %i.fc, align 4, !tbaa !314, !noalias !783 ; 4 uses
  %i.fd = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i.i.i.i, i64 %index386 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  %wide.load391 = load <4 x float>, ptr %i.fd, align 4, !tbaa !314, !noalias !783 ; 4 uses
  %wide.load392 = load <4 x float>, ptr %i.fe, align 4, !tbaa !314, !noalias !783 ; 4 uses
  %i.ff = fcmp une <4 x float> %wide.load389, %wide.load391
  %i.fg = fcmp une <4 x float> %wide.load390, %wide.load392
  %i.fh = fcmp uno <4 x float> %wide.load389, zeroinitializer
  %i.fi = fcmp uno <4 x float> %wide.load390, zeroinitializer
  %i.fj = fcmp uno <4 x float> %wide.load391, zeroinitializer
  %i.fk = fcmp uno <4 x float> %wide.load392, zeroinitializer
  %i.fl = and <4 x i1> %i.fh, %i.fj
  %i.fm = and <4 x i1> %i.fi, %i.fk
  %i.fn = fsub <4 x float> %wide.load389, %wide.load391
  %i.fo = fsub <4 x float> %wide.load390, %wide.load392
  %i.fp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fn)
  %i.fq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fo)
  %i.fr = fcmp ole <4 x float> %i.fp, %broadcast.splat384
  %i.fs = fcmp ole <4 x float> %i.fq, %broadcast.splat384
  %i.ft = bitcast <4 x float> %wide.load389 to <4 x i32>
  %i.fu = bitcast <4 x float> %wide.load390 to <4 x i32>
  %i.fv = bitcast <4 x float> %wide.load391 to <4 x i32>
  %i.fw = bitcast <4 x float> %wide.load392 to <4 x i32>
  %i.fx = xor <4 x i32> %i.fv, %i.ft
  %i.fy = xor <4 x i32> %i.fw, %i.fu
  %i.fz = icmp sgt <4 x i32> %i.fx, splat (i32 -1)
  %i.ga = icmp sgt <4 x i32> %i.fy, splat (i32 -1)
  %predphi393 = select <4 x i1> %i.fl, <4 x i1> splat (i1 true), <4 x i1> %i.fr
  %predphi394 = select <4 x i1> %i.ff, <4 x i1> %predphi393, <4 x i1> %i.fz
  %predphi395 = select <4 x i1> %i.fm, <4 x i1> splat (i1 true), <4 x i1> %i.fs
  %predphi396 = select <4 x i1> %i.fg, <4 x i1> %predphi395, <4 x i1> %i.ga
  %i.gb = and <4 x i1> %vec.phi387, %predphi394   ; 2 uses
  %i.gc = and <4 x i1> %vec.phi388, %predphi396   ; 2 uses
  %index.next397 = add nuw i64 %index386, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next397, %n.vec382
  br i1 %i.gd, label %middle.block398, label %vector.body385, !llvm.loop !790

middle.block398:                                  ; preds = %vector.body385
  %bin.rdx399 = and <4 x i1> %i.gc, %i.gb
  %i.ge = bitcast <4 x i1> %bin.rdx399 to i4
  %i.gf = icmp eq i4 %i.ge, -1                    ; 2 uses
  %cmp.n400 = icmp eq i64 %i.av, %n.vec382
  br i1 %cmp.n400, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph378.preheader

scalar.ph378.preheader:                           ; preds = %.lr.ph.i.i.i.i.i6.i.i.i.i.i, %middle.block398
  %.ph456.a = phi i1 [ %i.ez, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %i.gf, %middle.block398 ]
  %.01.i.i.i.i.i9.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i6.i.i.i.i.i ], [ %n.vec382, %middle.block398 ]
  br label %scalar.ph378

scalar.ph378:                                     ; preds = %scalar.ph378.preheader, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.gg = phi i1 [ %i.gt, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.ph456.a, %scalar.ph378.preheader ]
  %.01.i.i.i.i.i9.i.i.i.i.i = phi i64 [ %i.gu, %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i ], [ %.01.i.i.i.i.i9.i.i.i.i.i.ph, %scalar.ph378.preheader ] ; 3 uses
  %gep.i.i.i.i.i10.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i7.i.i.i.i.i, i64 %.01.i.i.i.i.i9.i.i.i.i.i
  %i.gh = load float, ptr %gep.i.i.i.i.i10.i.i.i.i.i, align 4, !tbaa !314, !noalias !783 ; 4 uses
  %gep3.i.i.i.i.i11.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i.i.i8.i.i.i.i.i, i64 %.01.i.i.i.i.i9.i.i.i.i.i
  %i.gi = load float, ptr %gep3.i.i.i.i.i11.i.i.i.i.i, align 4, !tbaa !314, !noalias !783 ; 4 uses
  %i.gj = fcmp oeq float %i.gh, %i.gi
  br i1 %i.gj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %scalar.ph378
  %i.gk = bitcast float %i.gh to i32
  %i.gl = bitcast float %i.gi to i32
  %i.gm = xor i32 %i.gl, %i.gk
  %i.gn = icmp sgt i32 %i.gm, -1
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %scalar.ph378
  %i.go = fcmp uno float %i.gh, 0.000000e+00
  %i.gp = fcmp uno float %i.gi, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i13.i.i.i.i.i = and i1 %i.go, %i.gp
  br i1 %or.cond.i.i.i.i.i.i.i13.i.i.i.i.i, label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gq = fsub float %i.gh, %i.gi
  %i.gr = tail call float @llvm.fabs.f32(float %i.gq)
  %i.gs = fcmp ole float %i.gr, %i.ao
  br label %_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i

_ZZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS8_ENKUllE_clEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i14.i.i.i.i.i = phi i1 [ %i.gn, %bb.o ], [ true, %bb.p ], [ %i.gs, %bb.q ]
  %i.gt = and i1 %i.gg, %.0.i.i.i.i.i.i.i14.i.i.i.i.i ; 2 uses
  %i.gu = add nuw nsw i64 %.01.i.i.i.i.i9.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i15.i.i.i.i.i = icmp eq i64 %i.gu, %i.av
  br i1 %exitcond.not.i.i.i.i.i15.i.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS5_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb1EEEEEEEDaS8_.exit.loopexit2.i.i.i.i.i, label %scalar.ph378, !llvm.loop !791

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !783
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull %i.et, i64 noundef %i.at, i64 noundef %i.av), !noalias !783
  %i.gv = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %8), !noalias !783 ; 2 uses
  %i.gw = extractvalue { i64, i64 } %i.gv, 1      ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %._crit_edge.i.i.i.i18.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i

.lr.ph.i.preheader.i.i.i16.i.i.i.i.i:             ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %broadcast.splatinsert358 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat359 = shufflevector <4 x float> %broadcast.splatinsert358, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.i.i.i.i17.i.i.i.i.i

.lr.ph.i.i.i.i17.i.i.i.i.i:                       ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i
  %i.ha = phi i64 [ %i.jg, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl11VisitValuesIZZNS1_15CompareFloatingINS_9FloatTypeEEENS_6StatusERKT_ENKUlOS6_E_clINS0_16FloatingEqualityIfNS0_21FloatingEqualityFlagsILb1ELb1ELb0EEEEEEEDaS9_EUllE_EEvS9_ENKUlllE_clEll.exit24.i.i.i.i.i.i.i.i.i ], [ %i.gw, %.lr.ph.i.preheader.i.i.i16.i.i.i.i.i ] ; 5 uses
end_hunk_0
