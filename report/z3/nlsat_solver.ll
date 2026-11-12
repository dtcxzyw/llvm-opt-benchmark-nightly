Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_solver?download=true
inline.NumInlined: 3993
inline.NumDeleted: 1516
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN5nlsat6solver3imp2gcEv:bb.a
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !191
  br label %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i

_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i: ; preds = %bb.t, %bb.s
  %i.dn = phi i32 [ %.pre2.i.i, %bb.t ], [ %i.dj, %bb.s ] ; 2 uses
  %i.do = phi ptr [ %.pre.i.i, %bb.t ], [ %i.dg, %bb.s ] ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.dq = zext i32 %i.dn to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dq
  store ptr %i.bv, ptr %i.dr, align 8, !tbaa !41
  %i.ds = add i32 %i.dn, 1
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !191
  br label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i: ; preds = %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i, %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.dt, %i.bt
  br i1 %.not.i20, label %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit.loopexit, label %bb.n

_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit.loopexit: ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !235
  br label %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit

_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit: ; preds = %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit.loopexit, %_ZN6vectorIPN5nlsat6clauseELb0EjE6resizeEj.exit, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i
  %i.du = phi ptr [ %.pre, %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit.loopexit ], [ %i.bm, %_ZN6vectorIPN5nlsat6clauseELb0EjE6resizeEj.exit ], [ %i.bm, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i ] ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit45, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i21

_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i21: ; preds = %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !191 ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dz
  %.not13.i22 = icmp eq i32 %i.dx, 0
  br i1 %.not13.i22, label %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit45, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i21
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 584
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40, %.lr.ph.i23
  %.014.i24 = phi ptr [ %i.du, %.lr.ph.i23 ], [ %i.ga, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40 ] ; 2 uses
  %i.ec = load ptr, ptr %.014.i24, align 8, !tbaa !41 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !237 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 3 uses
  %.not16.i.i.i25 = icmp eq i32 %i.ee, 0
  br i1 %.not16.i.i.i25, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %bb.u
  %i.eg = load ptr, ptr %i.al, align 8, !tbaa !243 ; 3 uses
  %wide.trip.count.i.i.i27 = zext i32 %i.ee to i64 ; 2 uses
  %xtraiter112 = and i64 %wide.trip.count.i.i.i27, 1
  %i.eh = icmp eq i32 %i.ee, 1
  br i1 %i.eh, label %.epil.preheader111, label %.lr.ph.i.i.i26.new

.lr.ph.i.i.i26.new:                               ; preds = %.lr.ph.i.i.i26
  %unroll_iter117 = and i64 %wide.trip.count.i.i.i27, 4294967294
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph.i.i.i26.new
  %indvars.iv.i.i.i28 = phi i64 [ 0, %.lr.ph.i.i.i26.new ], [ %indvars.iv.next.i.i.i35.1, %bb.x ] ; 3 uses
  %.015.i.i.i29 = phi i32 [ -1, %.lr.ph.i.i.i26.new ], [ %.2.i.i.i34.1, %bb.x ] ; 3 uses
  %niter118 = phi i64 [ 0, %.lr.ph.i.i.i26.new ], [ %niter118.next.1, %bb.x ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i28
  %.sroa.03.0.copyload.i.i.i30 = load i32, ptr %i.ei, align 4, !tbaa !191
  %i.ej = lshr i32 %.sroa.03.0.copyload.i.i.i30, 1
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i31, label %bb.w, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32: ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !259 ; 2 uses
  %i.ep = icmp eq i32 %.015.i.i.i29, -1
  %i.eq = tail call i32 @llvm.umax.i32(i32 %i.eo, i32 %.015.i.i.i29)
  %.1.i.i.i33 = select i1 %i.ep, i32 %i.eo, i32 %i.eq
  br label %bb.w

bb.w:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32, %bb.v
  %.2.i.i.i34 = phi i32 [ %.1.i.i.i33, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32 ], [ %.015.i.i.i29, %bb.v ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i28
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.03.0.copyload.i.i.i30.1 = load i32, ptr %i.es, align 4, !tbaa !191
  %i.et = lshr i32 %.sroa.03.0.copyload.i.i.i30.1, 1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i31.1 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i31.1, label %bb.x, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.1

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.1: ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !259 ; 2 uses
  %i.ez = icmp eq i32 %.2.i.i.i34, -1
  %i.fa = tail call i32 @llvm.umax.i32(i32 %i.ey, i32 %.2.i.i.i34)
  %.1.i.i.i33.1 = select i1 %i.ez, i32 %i.ey, i32 %i.fa
  br label %bb.x

bb.x:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.1, %bb.w
  %.2.i.i.i34.1 = phi i32 [ %.1.i.i.i33.1, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.1 ], [ %.2.i.i.i34, %bb.w ] ; 3 uses
  %indvars.iv.next.i.i.i35.1 = add nuw nsw i64 %indvars.iv.i.i.i28, 2 ; 2 uses
  %niter118.next.1 = add i64 %niter118, 2         ; 2 uses
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
  br i1 %niter118.ncmp.1, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa, label %bb.v, !llvm.loop !5

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa: ; preds = %bb.x
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37, label %.epil.preheader111

.epil.preheader111:                               ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa, %.lr.ph.i.i.i26
  %indvars.iv.i.i.i28.epil.init = phi i64 [ 0, %.lr.ph.i.i.i26 ], [ %indvars.iv.next.i.i.i35.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa ]
  %.015.i.i.i29.epil.init = phi i32 [ -1, %.lr.ph.i.i.i26 ], [ %.2.i.i.i34.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i28.epil.init
  %.sroa.03.0.copyload.i.i.i30.epil = load i32, ptr %i.fb, align 4, !tbaa !191
  %i.fc = lshr i32 %.sroa.03.0.copyload.i.i.i30.epil, 1
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i31.epil = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i31.epil, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37, label %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.epil

_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.epil: ; preds = %.epil.preheader111
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !259 ; 2 uses
  %i.fi = icmp eq i32 %.015.i.i.i29.epil.init, -1
  %i.fj = tail call i32 @llvm.umax.i32(i32 %i.fh, i32 %.015.i.i.i29.epil.init)
  %.1.i.i.i33.epil = select i1 %i.fi, i32 %i.fh, i32 %i.fj
  br label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37: ; preds = %.epil.preheader111, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.epil, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa
  %.2.i.i.i34.lcssa = phi i32 [ %.2.i.i.i34.1, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37.unr-lcssa ], [ %.1.i.i.i33.epil, %_ZNK5nlsat6solver3imp7max_varEN3sat7literalE.exit.i.i.i32.epil ], [ %.015.i.i.i29.epil.init, %.epil.preheader111 ] ; 2 uses
  %.not10.i38 = icmp eq i32 %.2.i.i.i34.lcssa, -1
  br i1 %.not10.i38, label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40, label %bb.y

bb.y:                                             ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37
  %i.fk = load ptr, ptr %i.eb, align 8, !tbaa !247
  %i.fl = zext i32 %.2.i.i.i34.lcssa to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !235 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !191 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 -8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !191
  %i.ft = icmp eq i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.aa, label %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i39

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @_ZN6vectorIPN5nlsat6clauseELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
  %.pre.i.i42 = load ptr, ptr %i.fm, align 8, !tbaa !235 ; 2 uses
  %.phi.trans.insert.i.i43 = getelementptr inbounds i8, ptr %.pre.i.i42, i64 -4
  %.pre2.i.i44 = load i32, ptr %.phi.trans.insert.i.i43, align 4, !tbaa !191
  br label %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i39

_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i39: ; preds = %bb.aa, %bb.z
  %i.fu = phi i32 [ %.pre2.i.i44, %bb.aa ], [ %i.fq, %bb.z ] ; 2 uses
  %i.fv = phi ptr [ %.pre.i.i42, %bb.aa ], [ %i.fn, %bb.z ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fx = zext i32 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fx
  store ptr %i.ec, ptr %i.fy, align 8, !tbaa !41
  %i.fz = add i32 %i.fu, 1
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !191
  br label %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40

_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40: ; preds = %_ZN6vectorIPN5nlsat6clauseELb0EjE9push_backERKS2_.exit.i39, %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.i37, %bb.u
  %i.ga = getelementptr inbounds nuw i8, ptr %.014.i24, i64 8 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ga, %i.ea
  br i1 %.not.i41, label %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit45, label %bb.u

bb.ab:                                            ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit17.thread
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !41 ; 5 uses
  %i.gd = load ptr, ptr %i.f, align 8, !tbaa !235 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47

_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47: ; preds = %bb.ab
  %i.gf = sub i32 %indvars60, %.01255
  %i.gg = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !191
  %i.gi = icmp ult i32 %i.gf, %i.gh
  br i1 %i.gi, label %bb.ac, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread

bb.ac:                                            ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !237
  %i.gl = icmp ugt i32 %i.gk, 1
  br i1 %i.gl, label %bb.ad, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %1 = load i32, ptr %i.gm, align 4
  %2 = trunc i32 %1 to i1
  br i1 %2, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN5nlsat6solver3imp10del_clauseEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull %i.gc)
  br label %bb.af

_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread: ; preds = %bb.ab, %bb.ad, %bb.ac, %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47
  %i.gn = add i32 %.01255, 1
  %i.go = zext i32 %.01255 to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.go
  store ptr %i.gc, ptr %i.gp, align 8, !tbaa !41
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = and i64 %i.gr, -4294967297
  store i64 %i.gs, ptr %i.gq, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread, %bb.ae
  %.1 = phi i32 [ %i.gn, %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit47.thread ], [ %.01255, %bb.ae ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !235 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit.i, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit17.thread, !llvm.loop !669

_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit45: ; preds = %_ZNK5nlsat6solver3imp7max_varERKNS_6clauseE.exit.thread.i40, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit.i21, %_ZN5nlsat6solver3imp22reattach_arith_clausesERK10ptr_vectorINS_6clauseEE.exit, %_ZNK6vectorIPN5nlsat6clauseELb0EjE4sizeEv.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp12reinit_cacheERK10ptr_vectorINS_6clauseEE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !235    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit

_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit:    ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5nlsat6solver3imp12reinit_cacheERKNS_6clauseE.exit, %bb.a, %_ZNK6vectorIPN5nlsat6clauseELb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5nlsat6solver3imp12reinit_cacheERKNS_6clauseE.exit
  %.012 = phi ptr [ %i.a, %.lr.ph ], [ %i.ap, %_ZN5nlsat6solver3imp12reinit_cacheERKNS_6clauseE.exit ] ; 2 uses
  %i.j = load ptr, ptr %.012, align 8, !tbaa !41  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !237  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %_ZN5nlsat6solver3imp12reinit_cacheERKNS_6clauseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE.exit
  %.010.i = phi ptr [ %i.ao, %_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE.exit ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload.i = load i32, ptr %.010.i, align 4, !tbaa !191
  %i.p = lshr i32 %.sroa.01.0.copyload.i, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !243
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !239  ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = load i32, ptr %i.t, align 4, !tbaa !242
  %i.w = icmp slt i32 %i.v, 3
  br i1 %i.w, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !262  ; 2 uses
  %.not.i9 = icmp eq i32 %i.y, 0
  br i1 %.not.i9, label %.sink.split.i, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %wide.trip.count.i = zext i32 %i.y to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i10
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.02124.i = phi i32 [ 0, %.lr.ph.i10 ], [ %spec.select.i, %bb.g ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !264
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, -8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = tail call noundef ptr @_ZN10polynomial5cache9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.ae)
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3180, ptr noundef nonnull @.str.139)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = tail call noundef i32 @_ZN10polynomial7manager7max_varEPKNS_10polynomialE(ptr noundef %i.ae)
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %.02124.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.sink.split.i, label %bb.e, !llvm.loop !28

bb.h:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !266 ; 3 uses
  %i.ak = tail call noundef ptr @_ZN10polynomial5cache9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.aj)
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3189, ptr noundef nonnull @.str.139)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = tail call noundef i32 @_ZN10polynomial7manager7max_varEPKNS_10polynomialE(ptr noundef %i.aj)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.j, %bb.d
  %.021.lcssa.sink.i = phi i32 [ %i.am, %bb.j ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %.021.lcssa.sink.i, ptr %i.an, align 4, !tbaa !259
  br label %_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE.exit

_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE.exit: ; preds = %.lr.ph.i, %.sink.split.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.o
  br i1 %.not.i, label %_ZN5nlsat6solver3imp12reinit_cacheERKNS_6clauseE.exit, label %.lr.ph.i

_ZN5nlsat6solver3imp12reinit_cacheERKNS_6clauseE.exit: ; preds = %_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE.exit, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5nlsat6solver3imp12reinit_cacheEPNS_4atomE(ptr noundef nonnull align 8 dereferenceable(1017) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !242
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.02124 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.f ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = tail call noundef ptr @_ZN10polynomial5cache9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.l)
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.11, i32 noundef 3180, ptr noundef nonnull @.str.139)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = tail call noundef i32 @_ZN10polynomial7manager7max_varEPKNS_10polynomialE(ptr noundef %i.l)
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %.02124) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %bb.d, !llvm.loop !28

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !266  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = tail call noundef ptr @_ZN10polynomial5cache9mk_uniqueEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.q)
  %i.t = icmp eq ptr %i.s, %i.q
end_hunk_0
