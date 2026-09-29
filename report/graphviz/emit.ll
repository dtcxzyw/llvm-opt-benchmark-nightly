Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_node:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !110
  %i.ex = load double, ptr %i.eu, align 8, !tbaa !327
  %i.ey = fmul <2 x double> %i.ew, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = fsub <2 x double> %i.ct, %i.ez
  store <2 x double> %i.fa, ptr %i.ep, align 8, !tbaa !110
  %i.fb = fadd double %i.cu, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store double %i.fb, ptr %i.fc, align 8, !tbaa !121
  %i.fd = extractelement <2 x double> %i.ey, i64 0
  br label %.loopexit.sink.split.i

bb.ad:                                            ; preds = %bb.aa
  %i.fe = load i64, ptr %i.dj, align 8, !tbaa !321 ; 5 uses
  %i.ff = icmp ult i64 %i.fe, 3
  br i1 %i.ff, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !324
  %i.fi = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fh, /* (pzero) */ i32 64)
  br i1 %i.fi, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !323
  %i.fl = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fk, /* (pzero) */ i32 64)
  br i1 %i.fl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fm = load i32, ptr %i.di, align 8, !tbaa !328
  %.not186.i = icmp eq i32 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 356 ; 2 uses
  br i1 %.not186.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.fn, align 4, !tbaa !122
  %i.fo = tail call fastcc ptr @gv_calloc(i64 noundef 2, i64 noundef 16) ; 4 uses
  store double %i.cu, ptr %i.fo, align 8, !tbaa !121
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = extractelement <2 x double> %i.ct, i64 1
  store double %i.fq, ptr %i.fp, align 8, !tbaa !126
  %.idx187.i = shl i64 %i.ee, 5
  %i.fr = getelementptr i8, ptr %i.eg, i64 %.idx187.i ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !121
  %i.fu = fadd double %i.cu, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !121
  %i.fw = getelementptr i8, ptr %i.fr, i64 -8
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !126
  br label %.loopexit.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.fn, align 4, !tbaa !122
  %.idx.i = shl i64 %i.ee, 5
  %i.fy = getelementptr i8, ptr %i.eg, i64 %.idx.i ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -16
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !121
  %i.gb = getelementptr i8, ptr %i.fy, i64 -8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !126
  %i.gd = tail call fastcc ptr @pEllipse(double noundef %i.ga, double noundef %i.gc, i64 noundef %i.el) ; 6 uses
  %.not212.i = icmp eq i32 %narrow.i, 0
  br i1 %.not212.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ai
  %min.iters.check74 = icmp ult i32 %narrow.i, 4
  br i1 %min.iters.check74, label %.lr.ph.i.preheader85, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.preheader
  %n.vec76 = and i64 %i.el, -2                    ; 3 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body77 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %index78 ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %index78
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load79 = load <2 x double>, ptr %i.ge, align 8
  %wide.load80 = load <2 x double>, ptr %i.gg, align 8
  %i.gh = fadd <2 x double> %i.ct, %wide.load79
  %i.gi = fadd <2 x double> %i.ct, %wide.load80
  store <2 x double> %i.gh, ptr %i.ge, align 8
  store <2 x double> %i.gi, ptr %i.gg, align 8
  %index.next81 = add nuw i64 %index78, 2         ; 2 uses
  %i.gj = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.gj, label %middle.block82, label %vector.body77, !llvm.loop !310

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %n.vec76, %i.el
  br i1 %cmp.n83, label %.loopexit.i, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block82
  %.0165211.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec76, %middle.block82 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %.0165211.i = phi i64 [ %i.gn, %.lr.ph.i ], [ %.0165211.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.0165211.i ; 2 uses
  %i.gl = load <2 x double>, ptr %i.gk, align 8, !tbaa !110
  %i.gm = fadd <2 x double> %i.ct, %i.gl
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !110
  %i.gn = add nuw i64 %.0165211.i, 1              ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.gn, %i.el
  br i1 %exitcond216.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !311

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.go = add i64 %i.ee, -1                       ; 2 uses
  %i.gp = mul i64 %i.fe, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 2, ptr %i.gq, align 4, !tbaa !122
  %.not185.i = icmp ult i64 %i.fe, %i.el
  br i1 %.not185.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = udiv i64 %i.fe, %i.el                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %narrow.i, 0
  br i1 %mul.ov.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.47, i64 noundef %i.el, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.gu = tail call noalias ptr @calloc(i64 noundef %i.el, i64 noundef 16) #28 ; 6 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.an, label %gv_calloc.exit192.preheader.i

gv_calloc.exit192.preheader.i:                    ; preds = %bb.am
  %invariant.gep.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gp ; 3 uses
  %i.gw = icmp eq i32 %narrow.i, 1
  br i1 %i.gw, label %gv_calloc.exit192.i.epil.preheader, label %gv_calloc.exit192.preheader.i.new

gv_calloc.exit192.preheader.i.new:                ; preds = %gv_calloc.exit192.preheader.i
  %unroll_iter = and i64 %i.el, 2147483646
  br label %gv_calloc.exit192.i

bb.an:                                            ; preds = %bb.am
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gy = shl nuw nsw i64 %i.el, 4
  %i.gz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.45, i64 noundef %i.gy) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit192.i:                              ; preds = %gv_calloc.exit192.i, %gv_calloc.exit192.preheader.i.new
  %.0163207.i = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %i.hj, %gv_calloc.exit192.i ] ; 3 uses
  %.0164206.i = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %i.hi, %gv_calloc.exit192.i ] ; 2 uses
  %niter = phi i64 [ 0, %gv_calloc.exit192.preheader.i.new ], [ %niter.next.1, %gv_calloc.exit192.i ]
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i
  %i.hb = load <2 x double>, ptr %gep.i, align 8, !tbaa !110
  %i.hc = fadd <2 x double> %i.ct, %i.hb
  store <2 x double> %i.hc, ptr %i.ha, align 8, !tbaa !110
  %i.hd = add i64 %.0164206.i, %i.gr              ; 2 uses
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load <2 x double>, ptr %gep.i.1, align 8, !tbaa !110
  %i.hh = fadd <2 x double> %i.ct, %i.hg
  store <2 x double> %i.hh, ptr %i.hf, align 8, !tbaa !110
  %i.hi = add i64 %i.hd, %i.gr                    ; 2 uses
  %i.hj = add nuw i64 %.0163207.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit87.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !312

bb.ao:                                            ; preds = %bb.aj
  %mul.ov.i195.i = icmp ugt i64 %spec.select190.i, 1152921504606846975
  br i1 %mul.ov.i195.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.47, i64 noundef %spec.select190.i, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hm = tail call noalias ptr @calloc(i64 noundef %spec.select190.i, i64 noundef 16) #28 ; 13 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.ar, label %gv_calloc.exit196.preheader.i

gv_calloc.exit196.preheader.i:                    ; preds = %bb.aq
  %invariant.gep208.i = getelementptr [16 x i8], ptr %i.eg, i64 %i.gp ; 8 uses
  %min.iters.check = icmp ult i64 %spec.select190.i, 28
  br i1 %min.iters.check, label %gv_calloc.exit196.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %gv_calloc.exit196.preheader.i
  %i.ho = add nsw i64 %spec.select190.i, -1       ; 2 uses
  %mul.result = shl i64 %i.ho, 4
  %mul.overflow = icmp ugt i64 %i.ho, 1152921504606846975
  %i.hp = getelementptr i8, ptr %invariant.gep208.i, i64 %mul.result
  %i.hq = icmp ult ptr %i.hp, %invariant.gep208.i
  %i.hr = or i1 %i.hq, %mul.overflow
  br i1 %i.hr, label %gv_calloc.exit196.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.hs = shl nuw i64 %spec.select190.i, 4        ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hm, i64 %i.hs
  %scevgep = getelementptr i8, ptr %i.ht, i64 -8
  %i.hu = mul i64 %i.fe, %i.go
  %i.hv = shl i64 %i.hu, 4                        ; 3 uses
  %2 = getelementptr i8, ptr %i.eg, i64 %i.hv
  %i.hw = getelementptr i8, ptr %2, i64 %i.hs
  %scevgep64 = getelementptr i8, ptr %i.hw, i64 -8
  %scevgep65 = getelementptr i8, ptr %i.hm, i64 8
  %scevgep66 = getelementptr i8, ptr %i.hm, i64 %i.hs
  %i.hx = getelementptr i8, ptr %i.eg, i64 %i.hv
  %scevgep67 = getelementptr i8, ptr %i.hx, i64 8
  %i.hy = getelementptr i8, ptr %i.eg, i64 %i.hv
  %scevgep68 = getelementptr i8, ptr %i.hy, i64 %i.hs
  %bound0 = icmp ult ptr %i.hm, %scevgep64
  %bound1 = icmp ult ptr %invariant.gep208.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound069 = icmp ult ptr %scevgep65, %scevgep68
  %bound170 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx = or i1 %found.conflict, %found.conflict71
  br i1 %conflict.rdx, label %gv_calloc.exit196.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %spec.select190.i, 1152921504606846974 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.hz = or disjoint i64 %index, 1               ; 2 uses
  %i.ia = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %index
  %i.ib = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.hz
  %wide.load = load <2 x double>, ptr %i.ia, align 8
  %wide.load72 = load <2 x double>, ptr %i.ib, align 8
  %i.ic = fadd <2 x double> %i.ct, %wide.load
  %i.id = fadd <2 x double> %i.ct, %wide.load72
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %index
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hz
  store <2 x double> %i.ic, ptr %i.ie, align 8
  store <2 x double> %i.id, ptr %i.if, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select190.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %gv_calloc.exit196.i.preheader

gv_calloc.exit196.i.preheader:                    ; preds = %vector.memcheck, %vector.scevcheck, %gv_calloc.exit196.preheader.i, %middle.block
  %.0210.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %gv_calloc.exit196.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0210.i.ph, 1
  %xtraiter89 = and i64 %spec.select190.i, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %gv_calloc.exit196.i.prol.loopexit, label %gv_calloc.exit196.i.prol

gv_calloc.exit196.i.prol:                         ; preds = %gv_calloc.exit196.i.preheader
  %gep209.i.prol = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i.ph
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i.ph
  %i.ii = load <2 x double>, ptr %gep209.i.prol, align 8, !tbaa !110
  %i.ij = fadd <2 x double> %i.ct, %i.ii
  store <2 x double> %i.ij, ptr %i.ih, align 8, !tbaa !110
  %i.ik = or disjoint i64 %.0210.i.ph, 1
  br label %gv_calloc.exit196.i.prol.loopexit

gv_calloc.exit196.i.prol.loopexit:                ; preds = %gv_calloc.exit196.i.prol, %gv_calloc.exit196.i.preheader
  %.0210.i.unr = phi i64 [ %.0210.i.ph, %gv_calloc.exit196.i.preheader ], [ %i.ik, %gv_calloc.exit196.i.prol ]
  %i.il = icmp eq i64 %spec.select190.i, %.neg
  br i1 %i.il, label %.loopexit.i, label %gv_calloc.exit196.i

bb.ar:                                            ; preds = %bb.aq
  %i.im = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.in = shl nuw i64 %spec.select190.i, 4
  %i.io = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.45, i64 noundef %i.in) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit196.i:                              ; preds = %gv_calloc.exit196.i.prol.loopexit, %gv_calloc.exit196.i
  %.0210.i = phi i64 [ %i.iw, %gv_calloc.exit196.i ], [ %.0210.i.unr, %gv_calloc.exit196.i.prol.loopexit ] ; 4 uses
  %gep209.i = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i
  %i.iq = load <2 x double>, ptr %gep209.i, align 8, !tbaa !110
  %i.ir = fadd <2 x double> %i.ct, %i.iq
  store <2 x double> %i.ir, ptr %i.ip, align 8, !tbaa !110
  %i.is = add nuw nsw i64 %.0210.i, 1             ; 2 uses
  %gep209.i.1 = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.is
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.is
  %i.iu = load <2 x double>, ptr %gep209.i.1, align 8, !tbaa !110
  %i.iv = fadd <2 x double> %i.ct, %i.iu
  store <2 x double> %i.iv, ptr %i.it, align 8, !tbaa !110
  %i.iw = add nuw nsw i64 %.0210.i, 2             ; 2 uses
  %exitcond215.not.i.1 = icmp eq i64 %i.iw, %spec.select190.i
  br i1 %exitcond215.not.i.1, label %.loopexit.i, label %gv_calloc.exit196.i, !llvm.loop !314

.thread.i:                                        ; preds = %isRect.exit.thread.i, %isFilled.exit.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.ix, align 4, !tbaa !122
  %i.iy = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.as, label %gv_calloc.exit198.i

bb.as:                                            ; preds = %.thread.i
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.jb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit198.i:                              ; preds = %.thread.i
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 96
  %i.je = load <2 x double>, ptr %i.jd, align 8, !tbaa !110
  %i.jf = fmul <2 x double> %i.je, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jh = fsub <2 x double> %i.ct, %i.jg
  store <2 x double> %i.jh, ptr %i.iy, align 8, !tbaa !110
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 112
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !186
  %i.jk = fadd double %i.cu, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store double %i.jk, ptr %i.jl, align 8, !tbaa !121
  %i.jm = extractelement <2 x double> %i.jf, i64 0
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %gv_calloc.exit198.i, %bb.ah, %gv_calloc.exit.i
  %.sink232.i = phi double [ %i.fd, %gv_calloc.exit.i ], [ %i.fx, %bb.ah ], [ %i.jm, %gv_calloc.exit198.i ]
  %.sink231.i = phi ptr [ %i.ep, %gv_calloc.exit.i ], [ %i.fo, %bb.ah ], [ %i.iy, %gv_calloc.exit198.i ] ; 2 uses
  %i.jn = extractelement <2 x double> %i.ct, i64 1
  %i.jo = fadd double %i.jn, %.sink232.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink231.i, i64 24
  store double %i.jo, ptr %i.jp, align 8, !tbaa !126
  br label %.loopexit.i

.loopexit.i.loopexit87.unr-lcssa:                 ; preds = %gv_calloc.exit192.i
  %i.jq = and i32 %narrow.i, 1
  %lcmp.mod.not = icmp eq i32 %i.jq, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %gv_calloc.exit192.i.epil.preheader

gv_calloc.exit192.i.epil.preheader:               ; preds = %.loopexit.i.loopexit87.unr-lcssa, %gv_calloc.exit192.preheader.i
  %.0163207.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hj, %.loopexit.i.loopexit87.unr-lcssa ]
  %.0164206.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hi, %.loopexit.i.loopexit87.unr-lcssa ]
  %lcmp.mod88 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %gep.i.epil = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i.epil.init
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i.epil.init
  %i.js = load <2 x double>, ptr %gep.i.epil, align 8, !tbaa !110
  %i.jt = fadd <2 x double> %i.ct, %i.js
  store <2 x double> %i.jt, ptr %i.jr, align 8, !tbaa !110
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %gv_calloc.exit192.i.epil.preheader, %.loopexit.i.loopexit87.unr-lcssa, %gv_calloc.exit196.i.prol.loopexit, %gv_calloc.exit196.i, %.lr.ph.i, %middle.block, %middle.block82, %.loopexit.sink.split.i, %bb.ai
  %.2172.i = phi i64 [ 0, %bb.ai ], [ 2, %.loopexit.sink.split.i ], [ %i.el, %middle.block82 ], [ %spec.select190.i, %middle.block ], [ %i.el, %.lr.ph.i ], [ %spec.select190.i, %gv_calloc.exit196.i.prol.loopexit ], [ %spec.select190.i, %gv_calloc.exit196.i ], [ %i.el, %.loopexit.i.loopexit87.unr-lcssa ], [ %i.el, %gv_calloc.exit192.i.epil.preheader ] ; 2 uses
  %.2.i = phi ptr [ %i.gd, %bb.ai ], [ %.sink231.i, %.loopexit.sink.split.i ], [ %i.gd, %middle.block82 ], [ %i.hm, %middle.block ], [ %i.gd, %.lr.ph.i ], [ %i.hm, %gv_calloc.exit196.i.prol.loopexit ], [ %i.hm, %gv_calloc.exit196.i ], [ %i.gu, %.loopexit.i.loopexit87.unr-lcssa ], [ %i.gu, %gv_calloc.exit192.i.epil.preheader ] ; 3 uses
  %i.ju = and i32 %i.ak, 8192
  %.not188.i = icmp eq i32 %i.ju, 0
  br i1 %.not188.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.i
  %i.jv = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef %.2.i, ptr noundef %.2.i, i64 noundef %.2172.i) #27 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store ptr %.2.i, ptr %i.jw, align 8, !tbaa !65
  %i.jx = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  store i64 %.2172.i, ptr %i.jx, align 8, !tbaa !123
  br label %emit_begin_node.exit

emit_begin_node.exit:                             ; preds = %bb.p, %bb.r, %bb.au
  %i.jy = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #27
  %i.jz = tail call ptr @setColorScheme(ptr noundef %i.jy) #27
  store ptr %i.jz, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @gvrender_begin_node(ptr noundef nonnull %0) #27
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !315
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !332
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !334
  tail call void %i.kg(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.kh = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 144
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !335 ; 3 uses
  %.not40 = icmp eq ptr %i.kj, null
  br i1 %.not40, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %emit_begin_node.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 105
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !187, !range !145, !noundef !181
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @emit_label(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.kj) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %emit_begin_node.exit
  tail call void @gvrender_end_node(ptr noundef nonnull %0) #27
  %i.kn = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  %i.ko = tail call ptr @setColorScheme(ptr noundef %i.kn) #27
  tail call void @free(ptr noundef %i.ko) #27
  %i.kp = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.kp) #27
  store ptr null, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @pop_obj_state(ptr noundef nonnull %0)
  br label %.loopexit44

.loopexit44:                                      ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.d, %bb.ax
  ret void
}

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_edge(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.anon.14, align 8            ; 15 uses
  %3 = alloca %struct.bezier, align 8             ; 10 uses
  %4 = alloca %struct.bezier, align 8             ; 9 uses
  %5 = alloca %struct.colorsegs_t, align 8        ; 16 uses
end_hunk_0
