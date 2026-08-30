Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN12_GLOBAL__N_116IntExprEvaluator19VisitBinaryOperatorEPKN5clang14BinaryOperatorE:bb.a
  store i64 %i.ff, ptr %i.co, align 8
  store i32 %i.fe, ptr %i.cp, align 8, !tbaa !454
  store i8 %i.fg, ptr %i.cq, align 4, !tbaa !456
  %i.fh = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(56) %34) #24, !inline_history !1649 ; 0 uses
  %i.fi = load i32, ptr %34, align 8, !tbaa !769
  %switch.i.i.i.i26.i = icmp ult i32 %i.fi, 2
  br i1 %switch.i.i.i.i26.i, label %_ZN5clang7APValueD2Ev.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %34) #24, !inline_history !1649
  br label %_ZN5clang7APValueD2Ev.exit.i.i.i.i

_ZN5clang7APValueD2Ev.exit.i.i.i.i:               ; preds = %bb.x, %bb.w
  %i.fj = load i32, ptr %i.cr, align 8, !tbaa !454
  %i.fk = icmp ugt i32 %i.fj, 64
  br i1 %i.fk, label %bb.y, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i.i

bb.y:                                             ; preds = %_ZN5clang7APValueD2Ev.exit.i.i.i.i
  %i.fl = load ptr, ptr %35, align 8, !tbaa !440  ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #26, !inline_history !1649
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i.i

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i.i: ; preds = %bb.z, %bb.y, %_ZN5clang7APValueD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i

bb.aa:                                            ; preds = %bb.u, %bb.t
  store i8 1, ptr %i.bh, align 8, !tbaa !1643
  %i.fn = load ptr, ptr %i.bb, align 8, !tbaa !1650, !nonnull !412, !align !413 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !755, !nonnull !412, !align !413
  store i8 1, ptr %i.fp, align 8, !tbaa !756
  %i.fq = call noundef zeroext i1 @_ZNK5clang6interp5State29keepEvaluatingAfterSideEffectEv(ptr noundef nonnull align 8 dereferenceable(34) %i.fn) #24, !inline_history !1649
  br i1 %i.fq, label %bb.ag, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i

bb.ab:                                            ; preds = %bb.s
  %i.fr = load i8, ptr %i.bh, align 8, !tbaa !1643, !range !453, !noundef !412
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %i.bb, align 8, !tbaa !1650, !nonnull !412, !align !413 ; 2 uses
  %i.fu = call noundef zeroext i1 @_ZNK5clang6interp5State26keepEvaluatingAfterFailureEv(ptr noundef nonnull align 8 dereferenceable(984) %i.ft) #24, !inline_history !1649 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !755, !nonnull !412, !align !413 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !756, !range !453, !noundef !412
  %i.fy = zext i1 %i.fu to i8
  %i.fz = or i8 %i.fx, %i.fy
  store i8 %i.fz, ptr %i.fw, align 8, !tbaa !756
  br i1 %i.fu, label %.thread, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i.thread259

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i: ; preds = %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i.thread259

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i.thread259: ; preds = %bb.ac, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i, %.split
  %i.ga = load i32, ptr %i.ay, align 8, !tbaa !745
  %i.gb = add i32 %i.ga, -1                       ; 2 uses
  store i32 %i.gb, ptr %i.ay, align 8, !tbaa !745
  %.val.i27.i = load ptr, ptr %70, align 8, !tbaa !743
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [112 x i8], ptr %.val.i27.i, i64 %i.gc ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 80 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !1658 ; 2 uses
  %.not.i.i.i.i28.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i28.i, label %_ZN12_GLOBAL__N_125SpeculativeEvaluationRAIID2Ev.exit.i.i29.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i.thread259
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !755, !nonnull !412, !align !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !1028
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !1659
  %i.gl = load ptr, ptr %i.ge, align 8, !tbaa !1658
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 972
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !1030
  br label %_ZN12_GLOBAL__N_125SpeculativeEvaluationRAIID2Ev.exit.i.i29.i

_ZN12_GLOBAL__N_125SpeculativeEvaluationRAIID2Ev.exit.i.i29.i: ; preds = %bb.ad, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator17VisitBinOpLHSOnlyERNS0_10EvalResultEPKN5clang14BinaryOperatorERb.exit.i.thread259
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !769
  %switch.i.i.i.i30.i = icmp ult i32 %i.go, 2
  br i1 %switch.i.i.i.i30.i, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7processERNS0_10EvalResultE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_125SpeculativeEvaluationRAIID2Ev.exit.i.i29.i
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(57) %i.gn) #24, !inline_history !1649
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7processERNS0_10EvalResultE.exit

bb.af:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.gp = load ptr, ptr %i.bb, align 8, !tbaa !1650, !nonnull !412, !align !413 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !755, !nonnull !412, !align !413 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !tbaa.struct !1028
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 972 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !1030
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr null, ptr %i.gu, align 8, !tbaa !768
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !748
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !1030
  %i.gy = getelementptr inbounds i8, ptr %i.cw, i64 -32 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !1658 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator3Job20startSpeculativeEvalERNS_8EvalInfoE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ha = getelementptr inbounds i8, ptr %i.cw, i64 -24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !755, !nonnull !412, !align !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ha, i64 16, i1 false), !tbaa.struct !1028
  %i.hd = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !1659
  %i.hf = load ptr, ptr %i.gy, align 8, !tbaa !1658
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 972
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !1030
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator3Job20startSpeculativeEvalERNS_8EvalInfoE.exit.i

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator3Job20startSpeculativeEvalERNS_8EvalInfoE.exit.i: ; preds = %bb.ah, %bb.ag
  store ptr %i.gp, ptr %i.gy, align 8, !tbaa !1658
  %i.hh = getelementptr inbounds i8, ptr %i.cw, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !tbaa.struct !1028
  %i.hi = getelementptr inbounds i8, ptr %i.cw, i64 -8
  store i32 %i.gt, ptr %i.hi, align 8, !tbaa !1659
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.ac, %bb.r, %.split, %bb.af, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator3Job20startSpeculativeEvalERNS_8EvalInfoE.exit.i
  %i.hj = getelementptr inbounds i8, ptr %i.cw, i64 -104
  call void @_ZN5clang7APValue4swapERS0_(ptr noundef nonnull align 8 dereferenceable(57) %i.hj, ptr noundef nonnull align 8 dereferenceable(57) %69) #24, !inline_history !1649
  %i.hk = load i8, ptr %i.bh, align 8, !tbaa !1643, !range !453, !noundef !412
  %i.hl = getelementptr inbounds i8, ptr %i.cw, i64 -48
  store i8 %i.hk, ptr %i.hl, align 8, !tbaa !1643
  store i8 0, ptr %i.bh, align 8, !tbaa !1643
  store i32 2, ptr %i.cy, align 8, !tbaa !1645
  %i.hm = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !951
  call fastcc void @_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7enqueueEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(1832) %70, ptr noundef %i.hn), !inline_history !1649
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7processERNS0_10EvalResultE.exit

bb.ai:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  store i32 0, ptr %37, align 8, !tbaa !769
  %i.ho = load i8, ptr %i.bj, align 4
  %i.hp = and i8 %i.ho, -2
  store i8 %i.hp, ptr %i.bj, align 4
  store i8 0, ptr %i.bk, align 8, !tbaa !1643
  call void @_ZN5clang7APValue4swapERS0_(ptr noundef nonnull align 8 dereferenceable(57) %37, ptr noundef nonnull align 8 dereferenceable(57) %69) #24, !inline_history !1649
  %i.hq = load i8, ptr %i.bh, align 8, !tbaa !1643, !range !453, !noundef !412 ; 3 uses
  store i8 %i.hq, ptr %i.bk, align 8, !tbaa !1643
  store i8 0, ptr %i.bh, align 8, !tbaa !1643
  %i.hr = getelementptr inbounds i8, ptr %i.cw, i64 -104 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  %i.hs = load i32, ptr %i.da, align 8
  %i.ht = lshr i32 %i.hs, 19
  %i.hu = and i32 %i.ht, 63                       ; 4 uses
  %i.hv = icmp eq i32 %i.hu, 32
  br i1 %i.hv, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.hw = trunc nuw i8 %i.hq to i1
  br i1 %i.hw, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator10VisitBinOpERKNS0_10EvalResultES3_PKN5clang14BinaryOperatorERNS4_7APValueE.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hx = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(57) %37) #24, !inline_history !1649 ; 0 uses
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator10VisitBinOpERKNS0_10EvalResultES3_PKN5clang14BinaryOperatorERNS4_7APValueE.exit.i

bb.al:                                            ; preds = %bb.ai
  %i.hy = add nsw i32 %i.hu, -19
  %i.hz = icmp ult i32 %i.hy, 2
  br i1 %i.hz, label %bb.am, label %bb.be

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ia = call fastcc noundef zeroext i1 @_ZL22HandleConversionToBoolRKN5clang7APValueERb(ptr noundef nonnull align 8 dereferenceable(57) %i.hr, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !inline_history !1649
  %i.ib = call fastcc noundef zeroext i1 @_ZL22HandleConversionToBoolRKN5clang7APValueERb(ptr noundef nonnull align 8 dereferenceable(57) %37, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !1649 ; 2 uses
  br i1 %i.ia, label %bb.an, label %bb.ax

bb.an:                                            ; preds = %bb.am
  br i1 %i.ib, label %bb.ao, label %bb.bd

bb.ao:                                            ; preds = %bb.an
  %i.ic = load i32, ptr %i.da, align 8
  %i.id = and i32 %i.ic, 33030144
  %i.ie = icmp eq i32 %i.id, 10485760
  %i.if = load i8, ptr %i.a, align 1, !tbaa !754, !range !453, !noundef !412
  %i.ig = trunc nuw i8 %i.if to i1                ; 2 uses
  %i.ih = load i8, ptr %i.b, align 1, !range !453 ; 2 uses
  %.val77.i.i = load ptr, ptr %i.ba, align 8, !tbaa !1660
  %i.ii = getelementptr i8, ptr %i.da, i64 8
  %.val78.i.i = load i64, ptr %i.ii, align 8, !tbaa !440 ; 2 uses
  %.val77.val.i.i = load ptr, ptr %.val77.i.i, align 8, !tbaa !1581
  %i.ij = getelementptr i8, ptr %.val77.val.i.i, i64 16
  %.val77.val.val.i.i = load ptr, ptr %i.ij, align 8, !tbaa !794 ; 2 uses
  br i1 %i.ie, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %narrow74.i.i = select i1 %i.ig, i8 1, i8 %i.ih
  %88 = zext nneg i8 %narrow74.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  call void @_ZNK5clang10ASTContext12MakeIntValueEmNS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %30, ptr noundef nonnull align 8 dereferenceable(23904) %.val77.val.val.i.i, i64 noundef range(i64 0, 2) %88, i64 %.val78.i.i), !inline_history !1649
  %i.ik = load i8, ptr %i.ch, align 4
  %i.il = and i8 %i.ik, -2
  store i8 %i.il, ptr %i.ch, align 4
  store i32 2, ptr %29, align 8, !tbaa !769
  %i.im = load i32, ptr %i.cl, align 8, !tbaa !454
  %i.in = load i64, ptr %30, align 8
  store i32 0, ptr %i.cl, align 8, !tbaa !454
  %i.io = load i8, ptr %i.cm, align 4, !tbaa !456, !range !453, !noundef !412
  store i64 %i.in, ptr %i.ci, align 8
  store i32 %i.im, ptr %i.cj, align 8, !tbaa !454
  store i8 %i.io, ptr %i.ck, align 4, !tbaa !456
  %i.ip = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(56) %29) #24, !inline_history !1649 ; 0 uses
  %i.iq = load i32, ptr %29, align 8, !tbaa !769
  %switch.i.i.i.i36.i = icmp ult i32 %i.iq, 2
  br i1 %switch.i.i.i.i36.i, label %_ZN5clang7APValueD2Ev.exit.i.i.i37.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %29) #24, !inline_history !1649
  br label %_ZN5clang7APValueD2Ev.exit.i.i.i37.i

_ZN5clang7APValueD2Ev.exit.i.i.i37.i:             ; preds = %bb.aq, %bb.ap
  %i.ir = load i32, ptr %i.cl, align 8, !tbaa !454
  %i.is = icmp ugt i32 %i.ir, 64
  br i1 %i.is, label %bb.ar, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i38.i

bb.ar:                                            ; preds = %_ZN5clang7APValueD2Ev.exit.i.i.i37.i
  %i.it = load ptr, ptr %30, align 8, !tbaa !440  ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i38.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.it) #26, !inline_history !1649
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i38.i

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i38.i: ; preds = %bb.as, %bb.ar, %_ZN5clang7APValueD2Ev.exit.i.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %bb.bd

bb.at:                                            ; preds = %bb.ao
  %narrow.i.i = select i1 %i.ig, i8 %i.ih, i8 0
  %89 = zext nneg i8 %narrow.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  call void @_ZNK5clang10ASTContext12MakeIntValueEmNS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %28, ptr noundef nonnull align 8 dereferenceable(23904) %.val77.val.val.i.i, i64 noundef range(i64 0, 2) %89, i64 %.val78.i.i), !inline_history !1649
  %i.iv = load i8, ptr %i.cb, align 4
  %i.iw = and i8 %i.iv, -2
  store i8 %i.iw, ptr %i.cb, align 4
  store i32 2, ptr %27, align 8, !tbaa !769
  %i.ix = load i32, ptr %i.cf, align 8, !tbaa !454
  %i.iy = load i64, ptr %28, align 8
  store i32 0, ptr %i.cf, align 8, !tbaa !454
  %i.iz = load i8, ptr %i.cg, align 4, !tbaa !456, !range !453, !noundef !412
  store i64 %i.iy, ptr %i.cc, align 8
  store i32 %i.ix, ptr %i.cd, align 8, !tbaa !454
  store i8 %i.iz, ptr %i.ce, align 4, !tbaa !456
  %i.ja = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(56) %27) #24, !inline_history !1649 ; 0 uses
  %i.jb = load i32, ptr %27, align 8, !tbaa !769
  %switch.i.i.i80.i.i = icmp ult i32 %i.jb, 2
  br i1 %switch.i.i.i80.i.i, label %_ZN5clang7APValueD2Ev.exit.i.i81.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #24, !inline_history !1649
  br label %_ZN5clang7APValueD2Ev.exit.i.i81.i.i

_ZN5clang7APValueD2Ev.exit.i.i81.i.i:             ; preds = %bb.au, %bb.at
  %i.jc = load i32, ptr %i.cf, align 8, !tbaa !454
  %i.jd = icmp ugt i32 %i.jc, 64
  br i1 %i.jd, label %bb.av, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit82.i.i

bb.av:                                            ; preds = %_ZN5clang7APValueD2Ev.exit.i.i81.i.i
  %i.je = load ptr, ptr %28, align 8, !tbaa !440  ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit82.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.je) #26, !inline_history !1649
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit82.i.i

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit82.i.i: ; preds = %bb.aw, %bb.av, %_ZN5clang7APValueD2Ev.exit.i.i81.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.am
  br i1 %i.ib, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.jg = load i8, ptr %i.b, align 1, !tbaa !754, !range !453, !noundef !412 ; 2 uses
  %i.jh = load i32, ptr %i.da, align 8
  %i.ji = and i32 %i.jh, 33030144
  %i.jj = icmp eq i32 %i.ji, 10485760
  %i.jk = zext i1 %i.jj to i8
  %i.jl = icmp eq i8 %i.jg, %i.jk
  br i1 %i.jl, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.jm = zext nneg i8 %i.jg to i64
  %.val.i33.i = load ptr, ptr %i.ba, align 8, !tbaa !1660
  %i.jn = getelementptr i8, ptr %i.da, i64 8
  %.val74.i.i = load i64, ptr %i.jn, align 8, !tbaa !440
  %.val.val.i34.i = load ptr, ptr %.val.i33.i, align 8, !tbaa !1581
  %i.jo = getelementptr i8, ptr %.val.val.i34.i, i64 16
  %.val.val.val.i35.i = load ptr, ptr %i.jo, align 8, !tbaa !794
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @_ZNK5clang10ASTContext12MakeIntValueEmNS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %26, ptr noundef nonnull align 8 dereferenceable(23904) %.val.val.val.i35.i, i64 noundef range(i64 0, 2) %i.jm, i64 %.val74.i.i), !inline_history !1649
  %i.jp = load i8, ptr %i.bv, align 4
  %i.jq = and i8 %i.jp, -2
  store i8 %i.jq, ptr %i.bv, align 4
  store i32 2, ptr %25, align 8, !tbaa !769
  %i.jr = load i32, ptr %i.bz, align 8, !tbaa !454
  %i.js = load i64, ptr %26, align 8
  store i32 0, ptr %i.bz, align 8, !tbaa !454
  %i.jt = load i8, ptr %i.ca, align 4, !tbaa !456, !range !453, !noundef !412
  store i64 %i.js, ptr %i.bw, align 8
  store i32 %i.jr, ptr %i.bx, align 8, !tbaa !454
  store i8 %i.jt, ptr %i.by, align 4, !tbaa !456
  %i.ju = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(56) %25) #24, !inline_history !1649 ; 0 uses
  %i.jv = load i32, ptr %25, align 8, !tbaa !769
  %switch.i.i.i83.i.i = icmp ult i32 %i.jv, 2
  br i1 %switch.i.i.i83.i.i, label %_ZN5clang7APValueD2Ev.exit.i.i84.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %25) #24, !inline_history !1649
  br label %_ZN5clang7APValueD2Ev.exit.i.i84.i.i

_ZN5clang7APValueD2Ev.exit.i.i84.i.i:             ; preds = %bb.ba, %bb.az
  %i.jw = load i32, ptr %i.bz, align 8, !tbaa !454
  %i.jx = icmp ugt i32 %i.jw, 64
  br i1 %i.jx, label %bb.bb, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit85.i.i

bb.bb:                                            ; preds = %_ZN5clang7APValueD2Ev.exit.i.i84.i.i
  %i.jy = load ptr, ptr %26, align 8, !tbaa !440  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit85.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.jy) #26, !inline_history !1649
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit85.i.i

_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit85.i.i: ; preds = %bb.bc, %bb.bb, %_ZN5clang7APValueD2Ev.exit.i.i84.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit85.i.i, %bb.ay, %bb.ax, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit82.i.i, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i38.i, %bb.an
  %.0.i32.i = phi i1 [ true, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit.i38.i ], [ true, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit82.i.i ], [ true, %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator7SuccessEmPKN5clang4ExprERNS1_7APValueE.exit85.i.i ], [ false, %bb.ax ], [ false, %bb.ay ], [ false, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator10VisitBinOpERKNS0_10EvalResultES3_PKN5clang14BinaryOperatorERNS4_7APValueE.exit.i

bb.be:                                            ; preds = %bb.al
  %i.ka = getelementptr inbounds i8, ptr %i.cw, i64 -48
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !1643, !range !453, !noundef !412
  %i.kc = or i8 %i.kb, %i.hq
  %or.cond100.i.i.not = icmp eq i8 %i.kc, 0
  br i1 %or.cond100.i.i.not, label %bb.bf, label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator10VisitBinOpERKNS0_10EvalResultES3_PKN5clang14BinaryOperatorERNS4_7APValueE.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.kd = add nsw i32 %i.hu, -5
  %i.ke = icmp ult i32 %i.kd, 2
  %i.kf = load i32, ptr %i.hr, align 8            ; 3 uses
  %i.kg = icmp eq i32 %i.kf, 7                    ; 2 uses
  %or.cond102.i.i = select i1 %i.ke, i1 %i.kg, i1 false
  %i.kh = load i32, ptr %37, align 8              ; 3 uses
  %i.ki = icmp eq i32 %i.kh, 2                    ; 2 uses
  %or.cond104.i.i = select i1 %or.cond102.i.i, i1 %i.ki, i1 false
  br i1 %or.cond104.i.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.kj = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(57) %i.hr) #24, !inline_history !1649 ; 0 uses
  %i.kk = load i32, ptr %i.da, align 8
  %i.kl = and i32 %i.kk, 33030144
  %i.km = icmp eq i32 %i.kl, 3145728
  %i.kn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang7APValue15getLValueOffsetEv(ptr noundef nonnull align 8 dereferenceable(57) %69) #24 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.kp = load i8, ptr %i.bu, align 4, !tbaa !456, !range !453, !noalias !1661, !noundef !412
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZN4llvm5APIntD2Ev.exit.i.i199, label %_ZN4llvm5APIntD2Ev.exit2.i.i191

_ZN4llvm5APIntD2Ev.exit.i.i199:                   ; preds = %bb.bg
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(13) %i.bq, i32 noundef 64) #24, !noalias !1661
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i193

_ZN4llvm5APIntD2Ev.exit2.i.i191:                  ; preds = %bb.bg
  call void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(13) %i.bq, i32 noundef 64) #24, !noalias !1661
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i193

_ZNK4llvm6APSInt10extOrTruncEj.exit.i193:         ; preds = %_ZN4llvm5APIntD2Ev.exit2.i.i191, %_ZN4llvm5APIntD2Ev.exit.i.i199
  %.sink7.i.sroa.phi.i194 = phi ptr [ %.sink7.i.sroa.gep.i192, %_ZN4llvm5APIntD2Ev.exit2.i.i191 ], [ %.sink7.i.sroa.gep12.i200, %_ZN4llvm5APIntD2Ev.exit.i.i199 ]
  %.sink7.i.i195 = phi ptr [ %7, %_ZN4llvm5APIntD2Ev.exit2.i.i191 ], [ %6, %_ZN4llvm5APIntD2Ev.exit.i.i199 ]
  %i.kr = load i32, ptr %.sink7.i.sroa.phi.i194, align 8, !tbaa !454, !noalias !1661
  %i.ks = load i64, ptr %.sink7.i.i195, align 8, !noalias !1661 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.kt = icmp ult i32 %i.kr, 65
  br i1 %i.kt, label %_ZL23addOrSubLValueAsIntegerRN5clang7APValueERKN4llvm6APSIntEb.exit201, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i193
  %i.ku = inttoptr i64 %i.ks to ptr               ; 2 uses
  %.0.i.else.val.i196 = load i64, ptr %i.ku, align 8, !tbaa !440
  call void @_ZdaPv(ptr noundef nonnull %i.ku) #26
  br label %_ZL23addOrSubLValueAsIntegerRN5clang7APValueERKN4llvm6APSIntEb.exit201

_ZL23addOrSubLValueAsIntegerRN5clang7APValueERKN4llvm6APSIntEb.exit201: ; preds = %_ZNK4llvm6APSInt10extOrTruncEj.exit.i193, %bb.bh
  %.0.i14.i198 = phi i64 [ %.0.i.else.val.i196, %bb.bh ], [ %i.ks, %_ZNK4llvm6APSInt10extOrTruncEj.exit.i193 ] ; 2 uses
  %i.kv = sub i64 0, %.0.i14.i198
  %.p.i = select i1 %i.km, i64 %i.kv, i64 %.0.i14.i198
  %i.kw = add i64 %.p.i, %i.ko
  store i64 %i.kw, ptr %i.kn, align 8, !tbaa !446
  br label %_ZN12_GLOBAL__N_130DataRecursiveIntBinOpEvaluator10VisitBinOpERKNS0_10EvalResultES3_PKN5clang14BinaryOperatorERNS4_7APValueE.exit.i

bb.bi:                                            ; preds = %bb.bf
  switch i32 %i.hu, label %thread-pre-split.i.i [
    i32 5, label %bb.bj
    i32 6, label %bb.bn
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.kx = icmp eq i32 %i.kh, 7
  br i1 %i.kx, label %bb.bk, label %thread-pre-split.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ky = icmp eq i32 %i.kf, 2
  br i1 %i.ky, label %bb.bl, label %.thread97.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.kz = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(57) %69, ptr noundef nonnull align 8 dereferenceable(57) %37) #24, !inline_history !1649 ; 0 uses
  %i.la = getelementptr inbounds i8, ptr %i.cw, i64 -96 ; 2 uses
  %i.lb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang7APValue15getLValueOffsetEv(ptr noundef nonnull align 8 dereferenceable(57) %69) #24 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !773
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ld = getelementptr inbounds i8, ptr %i.cw, i64 -84
  %i.le = load i8, ptr %i.ld, align 4, !tbaa !456, !range !453, !noalias !1664, !noundef !412
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %_ZN4llvm5APIntD2Ev.exit.i.i190, label %_ZN4llvm5APIntD2Ev.exit2.i.i

_ZN4llvm5APIntD2Ev.exit.i.i190:                   ; preds = %bb.bl
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %8, ptr noundef nonnull align 8 dereferenceable(13) %i.la, i32 noundef 64) #24, !noalias !1664
  br label %_ZNK4llvm6APSInt10extOrTruncEj.exit.i

end_hunk_0
