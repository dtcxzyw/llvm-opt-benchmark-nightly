Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_node:bb.a
  %i.gi = fadd <2 x double> %i.ct, %wide.load80
  store <2 x double> %i.gh, ptr %i.ge, align 8
  store <2 x double> %i.gi, ptr %i.gg, align 8
  %index.next81 = add nuw i64 %index78, 2         ; 2 uses
  %i.gj = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.gj, label %middle.block82, label %vector.body77, !llvm.loop !314

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
  br i1 %exitcond216.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !315

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
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit87.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !316

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
  %i.hw = getelementptr i8, ptr %i.eg, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hs
  %scevgep64 = getelementptr i8, ptr %i.hx, i64 -8
  %scevgep65 = getelementptr i8, ptr %i.hm, i64 8
  %scevgep66 = getelementptr i8, ptr %i.hm, i64 %i.hs
  %i.hy = getelementptr i8, ptr %i.eg, i64 %i.hv
  %scevgep67 = getelementptr i8, ptr %i.hy, i64 8
  %i.hz = getelementptr i8, ptr %i.eg, i64 %i.hv
  %scevgep68 = getelementptr i8, ptr %i.hz, i64 %i.hs
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
  %i.ia = or disjoint i64 %index, 1               ; 2 uses
  %i.ib = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %index
  %i.ic = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.ia
  %wide.load = load <2 x double>, ptr %i.ib, align 8
  %wide.load72 = load <2 x double>, ptr %i.ic, align 8
  %i.id = fadd <2 x double> %i.ct, %wide.load
  %i.ie = fadd <2 x double> %i.ct, %wide.load72
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %index
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.ia
  store <2 x double> %i.id, ptr %i.if, align 8
  store <2 x double> %i.ie, ptr %i.ig, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !317

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
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i.ph
  %i.ij = load <2 x double>, ptr %gep209.i.prol, align 8, !tbaa !110
  %i.ik = fadd <2 x double> %i.ct, %i.ij
  store <2 x double> %i.ik, ptr %i.ii, align 8, !tbaa !110
  %i.il = or disjoint i64 %.0210.i.ph, 1
  br label %gv_calloc.exit196.i.prol.loopexit

gv_calloc.exit196.i.prol.loopexit:                ; preds = %gv_calloc.exit196.i.prol, %gv_calloc.exit196.i.preheader
  %.0210.i.unr = phi i64 [ %.0210.i.ph, %gv_calloc.exit196.i.preheader ], [ %i.il, %gv_calloc.exit196.i.prol ]
  %i.im = icmp eq i64 %spec.select190.i, %.neg
  br i1 %i.im, label %.loopexit.i, label %gv_calloc.exit196.i

bb.ar:                                            ; preds = %bb.aq
  %i.in = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.io = shl nuw i64 %spec.select190.i, 4
  %i.ip = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.in, ptr noundef nonnull @.str.45, i64 noundef %i.io) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit196.i:                              ; preds = %gv_calloc.exit196.i.prol.loopexit, %gv_calloc.exit196.i
  %.0210.i = phi i64 [ %i.ix, %gv_calloc.exit196.i ], [ %.0210.i.unr, %gv_calloc.exit196.i.prol.loopexit ] ; 4 uses
  %gep209.i = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i
  %i.ir = load <2 x double>, ptr %gep209.i, align 8, !tbaa !110
  %i.is = fadd <2 x double> %i.ct, %i.ir
  store <2 x double> %i.is, ptr %i.iq, align 8, !tbaa !110
  %i.it = add nuw i64 %.0210.i, 1                 ; 2 uses
  %gep209.i.1 = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.it
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.it
  %i.iv = load <2 x double>, ptr %gep209.i.1, align 8, !tbaa !110
  %i.iw = fadd <2 x double> %i.ct, %i.iv
  store <2 x double> %i.iw, ptr %i.iu, align 8, !tbaa !110
  %i.ix = add nuw i64 %.0210.i, 2                 ; 2 uses
  %exitcond215.not.i.1 = icmp eq i64 %i.ix, %spec.select190.i
  br i1 %exitcond215.not.i.1, label %.loopexit.i, label %gv_calloc.exit196.i, !llvm.loop !318

.thread.i:                                        ; preds = %isRect.exit.thread.i, %isFilled.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.iy, align 4, !tbaa !122
  %i.iz = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.as, label %gv_calloc.exit198.i

bb.as:                                            ; preds = %.thread.i
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.jc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit198.i:                              ; preds = %.thread.i
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !87  ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 96
  %i.jf = load <2 x double>, ptr %i.je, align 8, !tbaa !110
  %i.jg = fmul <2 x double> %i.jf, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ji = fsub <2 x double> %i.ct, %i.jh
  store <2 x double> %i.ji, ptr %i.iz, align 8, !tbaa !110
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !186
  %i.jl = fadd double %i.cu, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store double %i.jl, ptr %i.jm, align 8, !tbaa !121
  %i.jn = extractelement <2 x double> %i.jg, i64 0
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %gv_calloc.exit198.i, %bb.ah, %gv_calloc.exit.i
  %.sink232.i = phi double [ %i.fd, %gv_calloc.exit.i ], [ %i.fx, %bb.ah ], [ %i.jn, %gv_calloc.exit198.i ]
  %.sink231.i = phi ptr [ %i.ep, %gv_calloc.exit.i ], [ %i.fo, %bb.ah ], [ %i.iz, %gv_calloc.exit198.i ] ; 2 uses
  %i.jo = extractelement <2 x double> %i.ct, i64 1
  %i.jp = fadd double %i.jo, %.sink232.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink231.i, i64 24
  store double %i.jp, ptr %i.jq, align 8, !tbaa !126
  br label %.loopexit.i

.loopexit.i.loopexit87.unr-lcssa:                 ; preds = %gv_calloc.exit192.i
  %i.jr = and i32 %narrow.i, 1
  %lcmp.mod.not = icmp eq i32 %i.jr, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %gv_calloc.exit192.i.epil.preheader

gv_calloc.exit192.i.epil.preheader:               ; preds = %.loopexit.i.loopexit87.unr-lcssa, %gv_calloc.exit192.preheader.i
  %.0163207.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hj, %.loopexit.i.loopexit87.unr-lcssa ]
  %.0164206.i.epil.init = phi i64 [ 0, %gv_calloc.exit192.preheader.i ], [ %i.hi, %.loopexit.i.loopexit87.unr-lcssa ]
  %lcmp.mod88 = trunc i32 %narrow.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %gep.i.epil = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.0164206.i.epil.init
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i.epil.init
  %i.jt = load <2 x double>, ptr %gep.i.epil, align 8, !tbaa !110
  %i.ju = fadd <2 x double> %i.ct, %i.jt
  store <2 x double> %i.ju, ptr %i.js, align 8, !tbaa !110
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %gv_calloc.exit192.i.epil.preheader, %.loopexit.i.loopexit87.unr-lcssa, %gv_calloc.exit196.i.prol.loopexit, %gv_calloc.exit196.i, %.lr.ph.i, %middle.block, %middle.block82, %.loopexit.sink.split.i, %bb.ai
  %.2172.i = phi i64 [ 0, %bb.ai ], [ 2, %.loopexit.sink.split.i ], [ %i.el, %middle.block82 ], [ %spec.select190.i, %middle.block ], [ %i.el, %.lr.ph.i ], [ %spec.select190.i, %gv_calloc.exit196.i.prol.loopexit ], [ %spec.select190.i, %gv_calloc.exit196.i ], [ %i.el, %.loopexit.i.loopexit87.unr-lcssa ], [ %i.el, %gv_calloc.exit192.i.epil.preheader ] ; 2 uses
  %.2.i = phi ptr [ %i.gd, %bb.ai ], [ %.sink231.i, %.loopexit.sink.split.i ], [ %i.gd, %middle.block82 ], [ %i.hm, %middle.block ], [ %i.gd, %.lr.ph.i ], [ %i.hm, %gv_calloc.exit196.i.prol.loopexit ], [ %i.hm, %gv_calloc.exit196.i ], [ %i.gu, %.loopexit.i.loopexit87.unr-lcssa ], [ %i.gu, %gv_calloc.exit192.i.epil.preheader ] ; 3 uses
  %i.jv = and i32 %i.ak, 8192
  %.not188.i = icmp eq i32 %i.jv, 0
  br i1 %.not188.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit.i
  %i.jw = tail call ptr @gvrender_ptf_A(ptr noundef nonnull %0, ptr noundef %.2.i, ptr noundef %.2.i, i64 noundef %.2172.i) #27 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store ptr %.2.i, ptr %i.jx, align 8, !tbaa !65
  %i.jy = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  store i64 %.2172.i, ptr %i.jy, align 8, !tbaa !123
  br label %emit_begin_node.exit

emit_begin_node.exit:                             ; preds = %bb.p, %bb.r, %bb.au
  %i.jz = tail call ptr @agget(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #27
  %i.ka = tail call ptr @setColorScheme(ptr noundef %i.jz) #27
  store ptr %i.ka, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @gvrender_begin_node(ptr noundef nonnull %0) #27
  %i.kb = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !319
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !336
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !338
  tail call void %i.kh(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.ki = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 144
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !339 ; 3 uses
  %.not40 = icmp eq ptr %i.kk, null
  br i1 %.not40, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %emit_begin_node.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 105
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !187, !range !145, !noundef !181
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @emit_label(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %i.kk) #27
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %emit_begin_node.exit
  tail call void @gvrender_end_node(ptr noundef nonnull %0) #27
  %i.ko = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  %i.kp = tail call ptr @setColorScheme(ptr noundef %i.ko) #27
  tail call void @free(ptr noundef %i.kp) #27
  %i.kq = load ptr, ptr @saved_color_scheme, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.kq) #27
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
  %6 = alloca %struct.bezier, align 8             ; 38 uses
  %7 = alloca %struct.agxbuf, align 8             ; 17 uses
  %8 = alloca %struct.corners_t, align 8          ; 32 uses
  %9 = alloca %struct.anon.12, align 8            ; 18 uses
  %10 = alloca %struct.points_t, align 8          ; 16 uses
  %11 = alloca [4 x %struct.pointf_s], align 16   ; 7 uses
  %12 = alloca [50 x %struct.pointf_s], align 16  ; 5 uses
  %13 = alloca [50 x %struct.pointf_s], align 16  ; 5 uses
  %14 = alloca %struct.agxbuf, align 8            ; 6 uses
  %15 = alloca %struct.points_t, align 8          ; 15 uses
  %16 = alloca %struct.pbs_size_t, align 8        ; 12 uses
  %17 = alloca %struct.boxf, align 8              ; 6 uses
  %18 = alloca %struct.agxbuf, align 8            ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 19 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %boxf_overlap.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load <4 x double>, ptr %i.f, align 8     ; 2 uses
  %i.h = load <4 x double>, ptr %17, align 8      ; 2 uses
  %i.i = shufflevector <4 x double> %i.g, <4 x double> %i.h, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.j = shufflevector <4 x double> %i.h, <4 x double> %i.g, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.k = fcmp oge <4 x double> %i.i, %i.j
  %i.l = freeze <4 x i1> %i.k
  %i.m = bitcast <4 x i1> %i.l to i4
  %i.n = icmp eq i4 %i.m, -1
  br i1 %i.n, label %bb.g, label %boxf_overlap.exit.thread.i

boxf_overlap.exit.thread.i:                       ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !382  ; 2 uses
  %.not14.i = icmp eq ptr %i.p, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %boxf_overlap.exit.thread.i
  %i.q = tail call zeroext i1 @overlap_label(ptr noundef nonnull %i.p, ptr noundef nonnull byval(%struct.boxf) align 8 %i.a) #27
  br i1 %i.q, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %boxf_overlap.exit.thread.i
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.c, %boxf_overlap.exit.thread.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !383  ; 3 uses
  %.not15.i = icmp eq ptr %i.t, null
  br i1 %.not15.i, label %edge_in_box.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 105
  %i.v = load i8, ptr %i.u, align 1, !tbaa !187, !range !145, !noundef !181
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %edge_in_box.exit

bb.f:                                             ; preds = %bb.e
  %i.x = tail call zeroext i1 @overlap_label(ptr noundef nonnull %i.t, ptr noundef nonnull byval(%struct.boxf) align 8 %17) #27
  br i1 %i.x, label %bb.g, label %edge_in_box.exit

edge_in_box.exit:                                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %edge_in_layer.exit.thread122

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f
end_hunk_0
begin_hunk_1_@emit_edge:bb.a
bb.go:                                            ; preds = %bb.gn
  %i.tw = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !191 ; 3 uses
  %.not350.i = icmp eq ptr %i.ty, null
  br i1 %.not350.i, label %bb.hj, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.tz = getelementptr inbounds nuw i8, ptr %i.fy, i64 248
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !53
  %.not351.i = icmp eq ptr %i.ua, null
  br i1 %.not351.i, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ub = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !57
  %.not352.i = icmp eq ptr %i.uc, null
  %i.ud = and i32 %i.fx, 524288
  %.not353.i = icmp eq i32 %i.ud, 0
  %or.cond.i = select i1 %.not352.i, i1 true, i1 %.not353.i
  br i1 %or.cond.i, label %bb.hj, label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %.old.i = and i32 %i.fx, 524288
  %.not353.old.i = icmp eq i32 %.old.i, 0
  br i1 %.not353.old.i, label %bb.hj, label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ue = load ptr, ptr %i.gc, align 8, !tbaa !39
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 176
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !49
  %i.uh = fmul nsz double %i.ug, 5.000000e-01
  %i.ui = call nsz double @llvm.maxnum.f64(double %i.uh, double 2.000000e+00)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !195 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %16, i8 0, i64 48, i1 false)
  %.not421.i = icmp eq i64 %i.uk, 0
  br i1 %.not421.i, label %._crit_edge.i77, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gs
  %i.ul = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.un = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ur = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.us = shufflevector <2 x double> %i.ur, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.gt

._crit_edge.i77:                                  ; preds = %map_output_bspline.exit.i, %bb.gs
  %i.ut = and i32 %i.fx, 8192
  %.not354.i = icmp eq i32 %i.ut, 0
  br i1 %.not354.i, label %.preheader.i, label %bb.hi

.preheader.i:                                     ; preds = %._crit_edge.i77
  %i.uu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.val416.i = load i64, ptr %i.uu, align 8, !tbaa !109
  %.not422.i = icmp eq i64 %.val416.i, 0
  br i1 %.not422.i, label %._crit_edge420.i, label %.lr.ph419.i

bb.gt:                                            ; preds = %map_output_bspline.exit.i, %.lr.ph.i
  %.0244415.i = phi i64 [ 0, %.lr.ph.i ], [ %i.yj, %map_output_bspline.exit.i ] ; 2 uses
  %i.uv = load ptr, ptr %i.ty, align 8, !tbaa !196
  %i.uw = getelementptr inbounds nuw [56 x i8], ptr %i.uv, i64 %.0244415.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !198
  %i.uz = add i64 %i.uy, -1                       ; 2 uses
  %i.va = udiv i64 %i.uz, 3
  %.not.i412.i = icmp ult i64 %i.uz, 3
  br i1 %.not.i412.i, label %map_output_bspline.exit.i, label %.preheader46.i.i

.preheader46.i.i:                                 ; preds = %bb.gt, %.preheader46.i.i
  %.03748.i.i = phi i64 [ %i.vg, %.preheader46.i.i ], [ 0, %bb.gt ] ; 2 uses
  %i.vb = load ptr, ptr %i.uw, align 8, !tbaa !199
  %.idx.i.i = mul nuw i64 %.03748.i.i, 48
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i64 16, i1 false), !tbaa.struct !120
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %i.vd, i64 16, i1 false), !tbaa.struct !120
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.um, ptr noundef nonnull align 8 dereferenceable(16) %i.ve, i64 16, i1 false), !tbaa.struct !120
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.un, ptr noundef nonnull align 8 dereferenceable(16) %i.vf, i64 16, i1 false), !tbaa.struct !120
  call fastcc void @approx_bezier(ptr noundef %11, ptr noundef %10)
  %i.vg = add nuw nsw i64 %.03748.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.vg, %i.va
  br i1 %exitcond.not.i.i, label %.preheader45.i.i, label %.preheader46.i.i, !llvm.loop !341

.preheader45.i.i:                                 ; preds = %.preheader46.i.i
  %.val4349.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109 ; 2 uses
  %.not55.i.i = icmp eq i64 %.val4349.pre.i.i, 0
  br i1 %.not55.i.i, label %map_output_bspline.exit.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.he
  %i.vh = icmp eq i64 %.val43.i.i, 0
  br i1 %i.vh, label %map_output_bspline.exit.i, label %.lr.ph54.i.i

.lr.ph.i.i:                                       ; preds = %.preheader45.i.i, %bb.he
  %.val4262.i.i = phi i64 [ %.val43.i.i, %bb.he ], [ %.val4349.pre.i.i, %.preheader45.i.i ]
  %.03451.i.i = phi i64 [ %.1.i.i, %bb.he ], [ 0, %.preheader45.i.i ] ; 5 uses
  %.03550.i.i = phi i64 [ %i.vn, %bb.he ], [ 0, %.preheader45.i.i ] ; 4 uses
  %i.vi = icmp eq i64 %.03550.i.i, 0
  %.pre58.pre63.i.i = load ptr, ptr %10, align 8, !tbaa !14 ; 2 uses
  br i1 %i.vi, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i
  %i.vj = add i64 %.03550.i.i, -1
  %i.vk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %i.vj) #27
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %.pre58.pre63.i.i, i64 %i.vk
  %.val42.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109
  %.pre58.pre.i.i = load ptr, ptr %10, align 8, !tbaa !14
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.lr.ph.i.i
  %.pre58.i.i = phi ptr [ %.pre58.pre.i.i, %bb.gu ], [ %.pre58.pre63.i.i, %.lr.ph.i.i ] ; 2 uses
  %.val42.i.i = phi i64 [ %.val42.pre.i.i, %bb.gu ], [ %.val4262.i.i, %.lr.ph.i.i ]
  %i.vm = phi ptr [ %i.vl, %bb.gu ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.vn = add nuw i64 %.03550.i.i, 1              ; 5 uses
  %i.vo = icmp ult i64 %i.vn, %.val42.i.i
  br i1 %i.vo, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.vp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %i.vn) #27
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %.pre58.i.i, i64 %i.vp
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !14
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.vr = phi ptr [ %.pre.i.i, %bb.gw ], [ %.pre58.i.i, %bb.gv ]
  %i.vs = phi ptr [ %i.vq, %bb.gw ], [ null, %bb.gv ] ; 4 uses
  %i.vt = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.03550.i.i) #27
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %i.vt
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %.03451.i.i ; 2 uses
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %.03451.i.i ; 2 uses
  %i.vx = load <2 x double>, ptr %i.vu, align 8   ; 7 uses
  %.not.i.i413.i = icmp eq ptr %i.vm, null
  br i1 %.not.i.i413.i, label %bb.hb, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vy = load <2 x double>, ptr %i.vm, align 8, !tbaa !110 ; 3 uses
  %.not44.i.i.i = icmp eq ptr %i.vs, null
  br i1 %.not44.i.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vz = load <2 x double>, ptr %i.vs, align 8, !tbaa !110
  br label %mkSegPts.exit.i.i

bb.ha:                                            ; preds = %bb.gy
  %i.wa = fsub <2 x double> %i.vx, %i.vy
  %i.wb = fmul <2 x double> %i.wa, splat (double 2.000000e+00)
  br label %mkSegPts.exit.i.i

bb.hb:                                            ; preds = %bb.gx
  %.sroa.7.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.sroa.7.0.copyload27.i.i.i = load double, ptr %.sroa.7.0..sroa_idx26.i.i.i, align 8, !tbaa !110
  %i.wc = load <2 x double>, ptr %i.vs, align 8, !tbaa !110 ; 2 uses
  %i.wd = fsub <2 x double> %i.vx, %i.wc
  %i.we = fmul <2 x double> %i.wd, splat (double 2.000000e+00)
  %i.wf = insertelement <2 x double> %i.wc, double %.sroa.7.0.copyload27.i.i.i, i64 1
  br label %mkSegPts.exit.i.i

mkSegPts.exit.i.i:                                ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.wg = phi <2 x double> [ %i.vy, %bb.gz ], [ %i.vy, %bb.ha ], [ %i.we, %bb.hb ] ; 2 uses
  %i.wh = phi <2 x double> [ %i.vz, %bb.gz ], [ %i.wb, %bb.ha ], [ %i.wf, %bb.hb ] ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.wh, %i.vx
  %i.wi = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.wj = shufflevector <2 x double> %i.wh, <2 x double> %i.wg, <2 x i32> <i32 1, i32 3>
  %i.wk = shufflevector <2 x double> %i.vx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wl = fsub <2 x double> %i.wj, %i.wk          ; 2 uses
  %i.wm = extractelement <2 x double> %i.wl, i64 0
  %i.wn = call double @atan2(double noundef %i.wm, double noundef %i.wi) #27
  %foldExtExtBinop342 = fsub <2 x double> %i.wg, %i.vx
  %i.wo = extractelement <2 x double> %foldExtExtBinop342, i64 0
  %i.wp = extractelement <2 x double> %i.wl, i64 1
  %i.wq = call double @atan2(double noundef %i.wp, double noundef %i.wo) #27 ; 2 uses
  %i.wr = fsub double %i.wn, %i.wq                ; 3 uses
  %i.ws = fcmp ogt double %i.wr, 0.000000e+00
  %i.wt = fadd nnan double %i.wr, f0xC01921FB54442D18
  %.0.i.i.i.i = select i1 %i.ws, double %i.wt, double %i.wr
  %i.wu = fmul double %.0.i.i.i.i, 5.000000e-01
  %i.wv = fadd double %i.wq, %i.wu                ; 2 uses
  %i.ww = call double @cos(double noundef %i.wv) #27
  %i.wx = call double @sin(double noundef %i.wv) #27
  %i.wy = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.wz = insertelement <2 x double> %i.wy, double %i.wx, i64 1
  %i.xa = fmul <2 x double> %i.us, %i.wz          ; 2 uses
  %i.xb = fadd <2 x double> %i.vx, %i.xa
  store <2 x double> %i.xb, ptr %i.vv, align 16, !tbaa !110
  %i.xc = fsub <2 x double> %i.vx, %i.xa
  store <2 x double> %i.xc, ptr %i.vw, align 16, !tbaa !110
  %i.xd = add i64 %.03451.i.i, 1                  ; 5 uses
  %.val41.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109 ; 2 uses
  %i.xe = icmp eq i64 %i.vn, %.val41.i.i
  %i.xf = icmp eq i64 %i.xd, 50
  %or.cond.i.i = select i1 %i.xe, i1 true, i1 %i.xf
  br i1 %or.cond.i.i, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %mkSegPts.exit.i.i
  %i.xg = shl i64 %i.xd, 1
  store i64 %i.xg, ptr %i.uo, align 8, !tbaa !393
  %i.xh = call i64 @gv_list_append_slot_(ptr noundef nonnull %16, i64 noundef 8) #27
  %i.xi = load i64, ptr %i.uo, align 8, !tbaa !393
  %i.xj = load ptr, ptr %16, align 8, !tbaa !14
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %i.xh
  store i64 %i.xi, ptr %i.xk, align 8, !tbaa !200
  %.not.i44.i.i = icmp eq i64 %i.xd, 0
  br i1 %.not.i44.i.i, label %map_bspline_poly.exit.i.i, label %.lr.ph.i.i414.i

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph.i.i414.i
  %i.xl = getelementptr [16 x i8], ptr %13, i64 %i.xd
  br label %bb.hd

.lr.ph.i.i414.i:                                  ; preds = %bb.hc, %.lr.ph.i.i414.i
  %.02729.i.i.i = phi i64 [ %i.xq, %.lr.ph.i.i414.i ], [ 0, %bb.hc ] ; 3 uses
  %i.xm = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %.02729.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.xm, i64 16, i1 false), !tbaa.struct !120
  %i.xn = call i64 @gv_list_append_slot_(ptr noundef nonnull %15, i64 noundef 16) #27
  %i.xo = load ptr, ptr %15, align 8, !tbaa !14
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %i.xo, i64 %i.xn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !120
  %i.xq = add nuw i64 %.02729.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.02729.i.i.i, %.03451.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph31.i.i.i, label %.lr.ph.i.i414.i, !llvm.loop !342

bb.hd:                                            ; preds = %bb.hd, %.lr.ph31.i.i.i
  %.030.i.i.i = phi i64 [ 0, %.lr.ph31.i.i.i ], [ %i.xw, %bb.hd ] ; 3 uses
  %i.xr = xor i64 %.030.i.i.i, -1
  %i.xs = getelementptr [16 x i8], ptr %i.xl, i64 %i.xr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.xs, i64 16, i1 false), !tbaa.struct !120
  %i.xt = call i64 @gv_list_append_slot_(ptr noundef nonnull %15, i64 noundef 16) #27
  %i.xu = load ptr, ptr %15, align 8, !tbaa !14
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %i.xu, i64 %i.xt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !120
  %i.xw = add nuw i64 %.030.i.i.i, 1
  %exitcond33.not.i.i.i = icmp eq i64 %.030.i.i.i, %.03451.i.i
  br i1 %exitcond33.not.i.i.i, label %map_bspline_poly.exit.i.i, label %bb.hd, !llvm.loop !343

map_bspline_poly.exit.i.i:                        ; preds = %bb.hd, %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %i.vv, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %i.vw, i64 16, i1 false), !tbaa.struct !120
  %.val43.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109
  br label %bb.he

bb.he:                                            ; preds = %map_bspline_poly.exit.i.i, %mkSegPts.exit.i.i
  %.val43.i.i = phi i64 [ %.val43.pre.i.i, %map_bspline_poly.exit.i.i ], [ %.val41.i.i, %mkSegPts.exit.i.i ] ; 3 uses
  %.1.i.i = phi i64 [ 1, %map_bspline_poly.exit.i.i ], [ %i.xd, %mkSegPts.exit.i.i ]
  %i.xx = icmp ult i64 %i.vn, %.val43.i.i
  br i1 %i.xx, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !344

.lr.ph54.i.i:                                     ; preds = %.preheader.i.i, %bb.hh
  %.053.i.i = phi i64 [ %i.yh, %bb.hh ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.xy = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.053.i.i) #27
  %i.xz = load ptr, ptr %i.uq, align 8, !tbaa !395 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %i.xz to i64
  switch i64 %magicptr.i.i, label %bb.hg [
    i64 1, label %bb.hf
    i64 0, label %bb.hh
  ]

bb.hf:                                            ; preds = %.lr.ph54.i.i
  %i.ya = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.yb = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.ya) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.hg:                                            ; preds = %.lr.ph54.i.i
  %i.yc = load ptr, ptr %10, align 8, !tbaa !14
  %i.yd = getelementptr inbounds nuw [16 x i8], ptr %i.yc, i64 %i.xy ; 2 uses
  %i.ye = load double, ptr %i.yd, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yg = load double, ptr %i.yf, align 8
  call void %i.xz(double %i.ye, double %i.yg) #27, !inline_history !345
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph54.i.i
  %i.yh = add nuw i64 %.053.i.i, 1                ; 2 uses
  %.val.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109
  %i.yi = icmp ult i64 %i.yh, %.val.i.i
  br i1 %i.yi, label %.lr.ph54.i.i, label %map_output_bspline.exit.i, !llvm.loop !346

map_output_bspline.exit.i:                        ; preds = %bb.hh, %.preheader.i.i, %.preheader45.i.i, %bb.gt
  call void @gv_list_clear_(ptr noundef nonnull %10, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.yj = add nuw i64 %.0244415.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.yj, %i.uk
  br i1 %exitcond.not.i, label %._crit_edge.i77, label %bb.gt, !llvm.loop !347

._crit_edge420.i:                                 ; preds = %.lr.ph419.i, %.preheader.i
  %.0243.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.yv, %.lr.ph419.i ]
  %i.yk = load ptr, ptr %15, align 8, !tbaa !14
  %i.yl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %i.yl
  %i.yn = load ptr, ptr %15, align 8, !tbaa !14
  %i.yo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.yn, i64 %i.yo
  %i.yq = call ptr @gvrender_ptf_A(ptr noundef %0, ptr noundef %i.ym, ptr noundef %i.yp, i64 noundef %.0243.lcssa.i) #27 ; 0 uses
  br label %bb.hi

.lr.ph419.i:                                      ; preds = %.preheader.i, %.lr.ph419.i
  %.0418.i = phi i64 [ %i.yw, %.lr.ph419.i ], [ 0, %.preheader.i ] ; 2 uses
  %.0243417.i = phi i64 [ %i.yv, %.lr.ph419.i ], [ 0, %.preheader.i ]
  %i.yr = load ptr, ptr %16, align 8, !tbaa !14
  %i.ys = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %16, i64 noundef %.0418.i) #27
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.ys
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !200
  %i.yv = add i64 %i.yu, %.0243417.i              ; 2 uses
  %i.yw = add nuw i64 %.0418.i, 1                 ; 2 uses
  %.val.i78 = load i64, ptr %i.uu, align 8, !tbaa !109
  %i.yx = icmp ult i64 %i.yw, %.val.i78
  br i1 %i.yx, label %.lr.ph419.i, label %._crit_edge420.i, !llvm.loop !348

bb.hi:                                            ; preds = %._crit_edge420.i, %._crit_edge.i77
  %i.yy = load ptr, ptr %15, align 8, !tbaa !14
  %i.yz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %i.yy, i64 %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.fy, i64 392
  store ptr %i.za, ptr %i.zb, align 8, !tbaa !66
  %i.zc = getelementptr inbounds nuw i8, ptr %i.fy, i64 356
  store i32 2, ptr %i.zc, align 4, !tbaa !122
  %i.zd = getelementptr inbounds nuw i8, ptr %i.fy, i64 368
  call void @gv_list_detach_(ptr noundef nonnull %15, ptr noundef nonnull %i.zd, ptr noundef null, i64 noundef 16) #27
  %i.ze = load ptr, ptr %16, align 8, !tbaa !14
  %i.zf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %16, i64 noundef 0) #27
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zf
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !200
  %i.zi = getelementptr inbounds nuw i8, ptr %i.fy, i64 360
  store i64 %i.zh, ptr %i.zi, align 8, !tbaa !123
  %i.zj = getelementptr inbounds nuw i8, ptr %i.fy, i64 384
  %i.zk = getelementptr inbounds nuw i8, ptr %i.fy, i64 376
  call void @gv_list_detach_(ptr noundef nonnull %16, ptr noundef nonnull %i.zj, ptr noundef nonnull %i.zk, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.gr, %bb.gq, %bb.go, %bb.gn
  call void @gvrender_begin_edge(ptr noundef %0) #27
  %i.zl = getelementptr inbounds nuw i8, ptr %i.fy, i64 248
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !53 ; 2 uses
  %.not355.i = icmp eq ptr %i.zm, null
  br i1 %.not355.i, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.zn = getelementptr inbounds nuw i8, ptr %i.fy, i64 352
  %i.zo = load i16, ptr %i.zn, align 8
  %i.zp = and i16 %i.zo, 1
  %.not356.i = icmp eq i16 %i.zp, 0
  br i1 %.not356.i, label %emit_begin_edge.exit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.zq = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !57
  %i.zs = getelementptr inbounds nuw i8, ptr %i.fy, i64 320
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !61
  %i.zu = getelementptr inbounds nuw i8, ptr %i.fy, i64 256
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef %0, ptr noundef %i.zm, ptr noundef %i.zr, ptr noundef %i.zt, ptr noundef %i.zv) #27
  br label %emit_begin_edge.exit

emit_begin_edge.exit:                             ; preds = %bb.hk, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.zw = load ptr, ptr %i.gc, align 8, !tbaa !39
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 176
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !49 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.zz = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !191
  %.not.i81 = icmp eq ptr %i.aab, null
  br i1 %.not.i81, label %.loopexit542.i, label %bb.hm

bb.hm:                                            ; preds = %emit_begin_edge.exit
  %i.aac = load ptr, ptr @E_arrowsz, align 8, !tbaa !167
  %i.aad = call double @late_double(ptr noundef nonnull %1, ptr noundef %i.aac, double noundef 1.000000e+00, double noundef 0.000000e+00) #27 ; 8 uses
  %i.aae = load ptr, ptr @E_color, align 8, !tbaa !167
  %i.aaf = call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.aae, ptr noundef nonnull @.str.13) #27 ; 3 uses
  br i1 %.not39, label %.preheader543.i, label %.loopexit544.i

.preheader543.i:                                  ; preds = %bb.hm, %bb.hn
  %.0412.i = phi ptr [ %i.aah, %bb.hn ], [ %.036, %bb.hm ] ; 2 uses
  %i.aag = load ptr, ptr %.0412.i, align 8, !tbaa !105 ; 2 uses
  %.not433.not.not.i.not.not = icmp ne ptr %i.aag, null ; 3 uses
  br i1 %.not433.not.not.i.not.not, label %bb.hn, label %.loopexit544.i

bb.hn:                                            ; preds = %.preheader543.i
  %i.aah = getelementptr inbounds nuw i8, ptr %.0412.i, i64 8
  %i.aai = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aag, ptr noundef nonnull dereferenceable(8) @.str.90) #31
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %.loopexit544.i, label %.preheader543.i, !llvm.loop !349

.loopexit544.i:                                   ; preds = %bb.hn, %.preheader543.i, %bb.hm
  %.1414.i = phi i1 [ false, %bb.hm ], [ %.not433.not.not.i.not.not, %.preheader543.i ], [ %.not433.not.not.i.not.not, %bb.hn ]
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hr, %.loopexit544.i
  %.0415.i = phi ptr [ %i.aaf, %.loopexit544.i ], [ %i.aan, %bb.hr ] ; 2 uses
  %.0410.i = phi i64 [ 0, %.loopexit544.i ], [ %.1411.i, %bb.hr ] ; 5 uses
  %.0372.i = phi i32 [ 0, %.loopexit544.i ], [ %.1373.i, %bb.hr ] ; 4 uses
  %i.aak = load i8, ptr %.0415.i, align 1, !tbaa !14
  switch i8 %i.aak, label %bb.hr [
    i8 0, label %bb.hs
    i8 58, label %bb.hp
    i8 59, label %bb.hq
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.aal = add i64 %.0410.i, 1
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.aam = add nsw i32 %.0372.i, 1
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho
  %.1411.i = phi i64 [ %i.aal, %bb.hp ], [ %.0410.i, %bb.hq ], [ %.0410.i, %bb.ho ]
  %.1373.i = phi i32 [ %.0372.i, %bb.hp ], [ %i.aam, %bb.hq ], [ %.0372.i, %bb.ho ]
  %i.aan = getelementptr inbounds nuw i8, ptr %.0415.i, i64 1
  br label %bb.ho, !llvm.loop !350

bb.hs:                                            ; preds = %bb.ho
  %i.aao = icmp ne i32 %.0372.i, 0
  %i.aap = icmp ne i64 %.0410.i, 0                ; 2 uses
  %or.cond.i82 = select i1 %i.aao, i1 %i.aap, i1 false
  br i1 %or.cond.i82, label %bb.ht, label %bb.is

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.aaq = call fastcc i32 @parseSegs(ptr noundef %i.aaf, ptr noundef %5) ; 3 uses
  %i.aar = icmp sgt i32 %i.aaq, 1
  br i1 %i.aar, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
end_hunk_1
begin_hunk_2_@emit_edge:bb.a
  %i.bhn = phi ptr [ null, %bb.ol ], [ %i.bhm, %bb.om ]
  %i.bho = lshr i16 %i.bhc, 3
  %i.bhp = and i16 %i.bho, 1
  %i.bhq = zext nneg i16 %i.bhp to i32
  call fastcc void @emit_edge_label(ptr noundef nonnull %0, ptr noundef %i.bhb, i32 noundef 11, i32 noundef %i.bhq, ptr noundef %i.bhd, ptr noundef %i.bhe, ptr noundef %i.bhf, ptr noundef %i.bhg, ptr noundef %i.bhn)
  %i.bhr = load ptr, ptr %i.bez, align 8, !tbaa !87
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 128
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !391
  %i.bhu = load i16, ptr %i.bgf, align 8
  %i.bhv = lshr i16 %i.bhu, 2
  %i.bhw = and i16 %i.bhv, 1
  %i.bhx = zext nneg i16 %i.bhw to i32
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bdp, i64 280
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !56
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bdp, i64 312
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !60
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bdp, i64 344
  %i.bid = load ptr, ptr %i.bic, align 8, !tbaa !64
  %i.bie = load ptr, ptr %i.bgq, align 8, !tbaa !52
  call fastcc void @emit_edge_label(ptr noundef nonnull %0, ptr noundef %i.bht, i32 noundef 7, i32 noundef %i.bhx, ptr noundef %i.bhz, ptr noundef %i.bib, ptr noundef %i.bid, ptr noundef %i.bie, ptr noundef null)
  %i.bif = load ptr, ptr %i.bez, align 8, !tbaa !87
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 136
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !390
  %i.bii = load i16, ptr %i.bgf, align 8
  %i.bij = lshr i16 %i.bii, 1
  %i.bik = and i16 %i.bij, 1
  %i.bil = zext nneg i16 %i.bik to i32
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bdp, i64 272
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !55
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bdp, i64 304
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !59
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 336
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !63
  %i.bis = load ptr, ptr %i.bgq, align 8, !tbaa !52
  call fastcc void @emit_edge_label(ptr noundef nonnull %0, ptr noundef %i.bih, i32 noundef 6, i32 noundef %i.bil, ptr noundef %i.bin, ptr noundef %i.bip, ptr noundef %i.bir, ptr noundef %i.bis, ptr noundef null)
  call void @gvrender_end_edge(ptr noundef nonnull %0) #27
  call void @pop_obj_state(ptr noundef nonnull %0)
  %i.bit = call ptr @setColorScheme(ptr noundef %i.fv) #27
  call void @free(ptr noundef %i.fv) #27
  call void @free(ptr noundef %i.bit) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %edge_in_layer.exit.thread122

bb.on:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %edge_in_layer.exit.thread122

edge_in_layer.exit.thread122:                     ; preds = %bb.i, %edge_in_box.exit, %edge_in_layer.exit, %emit_end_edge.exit, %bb.on
  ret void
}

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @parse_style(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  br label %agxbputc.exit45.outer

agxbputc.exit45.outer:                            ; preds = %agxbputc.exit45.outer.backedge, %bb.a
  %.047.ph = phi ptr [ %0, %bb.a ], [ %.1.i, %agxbputc.exit45.outer.backedge ]
  %.022.ph = phi i64 [ 0, %bb.a ], [ %.123, %agxbputc.exit45.outer.backedge ] ; 10 uses
  %.021.ph = phi i8 [ 0, %bb.a ], [ %.021, %agxbputc.exit45.outer.backedge ]
  br label %agxbputc.exit45

agxbputc.exit45:                                  ; preds = %agxbputc.exit45.backedge, %agxbputc.exit45.outer
  %.047 = phi ptr [ %.047.ph, %agxbputc.exit45.outer ], [ %i.j, %agxbputc.exit45.backedge ]
  %.021 = phi i8 [ %.021.ph, %agxbputc.exit45.outer ], [ %.021.be, %agxbputc.exit45.backedge ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %agxbputc.exit45
  %.0.i = phi ptr [ %.047, %agxbputc.exit45 ], [ %i.c, %.critedge.i ] ; 8 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !14, !noalias !412 ; 3 uses
  switch i8 %i.b, label %.preheader.i [
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 11, label %.critedge.i
    i8 12, label %.critedge.i
    i8 13, label %.critedge.i
    i8 32, label %.critedge.i
    i8 44, label %.critedge.i
    i8 0, label %style_token.exit.thread52
    i8 40, label %style_token.exit
    i8 41, label %style_token.exit
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !408

.preheader.i:                                     ; preds = %bb.b, %is_style_delim.exit.i
  %i.d = phi i8 [ %.pre.i, %is_style_delim.exit.i ], [ %i.b, %bb.b ]
  %.1.i = phi ptr [ %i.e, %is_style_delim.exit.i ], [ %.0.i, %bb.b ] ; 4 uses
  switch i8 %i.d, label %is_style_delim.exit.i [
    i8 40, label %style_token.exit.thread
    i8 41, label %style_token.exit.thread
    i8 44, label %style_token.exit.thread
    i8 0, label %style_token.exit.thread
  ]

is_style_delim.exit.i:                            ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.e, align 1, !tbaa !14, !noalias !412
  br label %.preheader.i, !llvm.loop !409

style_token.exit.thread:                          ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.f = ptrtoint ptr %.1.i to i64
  %i.g = ptrtoint ptr %.0.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = trunc nuw i8 %.021 to i1
  br i1 %i.i, label %style_token.exit.thread._crit_edge, label %bb.g

style_token.exit.thread._crit_edge:               ; preds = %style_token.exit.thread
  %.val.i.i35.pr.pre92.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %bb.m

style_token.exit:                                 ; preds = %bb.b, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.k = icmp eq i8 %i.b, 41
  %i.l = trunc nuw i8 %.021 to i1                 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %style_token.exit
  br i1 %i.l, label %bb.d, label %agxbputc.exit45.backedge

agxbputc.exit45.backedge:                         ; preds = %bb.c, %bb.e
  %.021.be = phi i8 [ 1, %bb.c ], [ 0, %bb.e ]
  br label %agxbputc.exit45

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.31, ptr noundef %0) #27
  store ptr null, ptr @parse_style.parse, align 16, !tbaa !105
  br label %agxbputc.exit45.thread

bb.e:                                             ; preds = %style_token.exit
  br i1 %i.l, label %agxbputc.exit45.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.32, ptr noundef %0) #27
  store ptr null, ptr @parse_style.parse, align 16, !tbaa !105
  br label %agxbputc.exit45.thread

bb.g:                                             ; preds = %style_token.exit.thread
  %i.m = icmp eq i64 %.022.ph, 63
  br i1 %i.m, label %bb.h, label %agxbsizeof.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.33, ptr noundef %0) #27
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @parse_style.parse, i64 504), align 8, !tbaa !105
  br label %agxbputc.exit45.thread

agxbsizeof.exit.i:                                ; preds = %bb.g
  %.val.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14 ; 3 uses
  %.not.i.i = icmp eq i8 %.val.i.i, -1            ; 2 uses
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 16), align 8
  %i.p = zext i8 %.val.i.i to i64
  %.0.i20.i = select i1 %.not.i.i, i64 %i.n, i64 %i.p
  %.0.i14.i = select i1 %.not.i.i, i64 %i.o, i64 31
  %.not.i = icmp ult i64 %.0.i20.i, %.0.i14.i
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %agxbsizeof.exit.i
  tail call fastcc void @agxbmore(ptr noundef nonnull @parse_style.ps_xb, i64 noundef 1)
  %.val.i15.pre.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %agxbsizeof.exit.i
  %.val.i15.i = phi i8 [ %.val.i15.pre.i, %bb.i ], [ %.val.i.i, %agxbsizeof.exit.i ] ; 2 uses
  %.not.i16.i = icmp eq i8 %.val.i15.i, -1
  br i1 %.not.i16.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = zext i8 %.val.i15.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr @parse_style.ps_xb, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  %i.t = add i8 %i.s, 1                           ; 2 uses
  store i8 %i.t, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8
  br label %agxbputc.exit

bb.l:                                             ; preds = %bb.j
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.v = load ptr, ptr @parse_style.ps_xb, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.y = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %.val.i.pr = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbputc.exit

agxbputc.exit:                                    ; preds = %bb.k, %bb.l
  %i.z = phi i64 [ %.pre, %bb.k ], [ %i.y, %bb.l ]
  %.val.i = phi i8 [ %i.t, %bb.k ], [ %.val.i.pr, %bb.l ] ; 3 uses
  %.not.i29 = icmp eq i8 %.val.i, -1
  %i.aa = zext i8 %.val.i to i64
  %.0.i30 = select i1 %.not.i29, i64 %i.z, i64 %i.aa
  %i.ab = add i64 %.022.ph, 1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.022.ph
  store i64 %.0.i30, ptr %i.ac, align 8, !tbaa !200
  br label %bb.m

bb.m:                                             ; preds = %style_token.exit.thread._crit_edge, %agxbputc.exit
  %.val.i.i35.pr.pre92 = phi i8 [ %.val.i.i35.pr.pre92.pre, %style_token.exit.thread._crit_edge ], [ %.val.i, %agxbputc.exit ] ; 4 uses
  %.123 = phi i64 [ %.022.ph, %style_token.exit.thread._crit_edge ], [ %i.ab, %agxbputc.exit ]
  %i.ad = icmp eq ptr %.1.i, %.0.i
  br i1 %i.ad, label %agxbput_n.exit, label %agxblen.exit.i34

agxblen.exit.i34:                                 ; preds = %bb.m
  %.not.i.i32 = icmp eq i8 %.val.i.i35.pr.pre92, -1 ; 2 uses
  %i.ae = zext i8 %.val.i.i35.pr.pre92 to i64
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 16), align 8
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8
  %.0.i30.i = select i1 %.not.i.i32, i64 %i.af, i64 31
  %.0.i24.i = select i1 %.not.i.i32, i64 %i.ag, i64 %i.ae
  %i.ah = sub i64 %.0.i30.i, %.0.i24.i
  %i.ai = icmp ugt i64 %i.h, %i.ah
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %agxblen.exit.i34
  tail call fastcc void @agxbmore(ptr noundef nonnull @parse_style.ps_xb, i64 noundef %i.h)
  %.val.i25.pre.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %agxblen.exit.i34
  %.val.i25.i = phi i8 [ %.val.i25.pre.i, %bb.n ], [ %.val.i.i35.pr.pre92, %agxblen.exit.i34 ] ; 2 uses
  %.not.i26.i = icmp eq i8 %.val.i25.i, -1
  br i1 %.not.i26.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = zext i8 %.val.i25.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @parse_style.ps_xb, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %.0.i, i64 %i.h, i1 false)
  %i.al = trunc i64 %i.h to i8
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  %i.an = add i8 %i.am, %i.al                     ; 2 uses
  store i8 %i.an, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbput_n.exit

bb.q:                                             ; preds = %bb.o
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.ap = load ptr, ptr @parse_style.ps_xb, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull readonly align 1 %.0.i, i64 %i.h, i1 false)
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.as = add i64 %i.ar, %i.h
  store i64 %i.as, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %.val.i.i35.pr.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbput_n.exit

agxbput_n.exit:                                   ; preds = %bb.m, %bb.q, %bb.p
  %.val.i.i35 = phi i8 [ %i.an, %bb.p ], [ %.val.i.i35.pr.pre, %bb.q ], [ %.val.i.i35.pr.pre92, %bb.m ] ; 3 uses
  %.not.i.i36 = icmp eq i8 %.val.i.i35, -1        ; 2 uses
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 16), align 8
  %i.av = zext i8 %.val.i.i35 to i64
  %.0.i20.i39 = select i1 %.not.i.i36, i64 %i.at, i64 %i.av
  %.0.i14.i40 = select i1 %.not.i.i36, i64 %i.au, i64 31
  %.not.i41 = icmp ult i64 %.0.i20.i39, %.0.i14.i40
  br i1 %.not.i41, label %bb.s, label %bb.r

bb.r:                                             ; preds = %agxbput_n.exit
  tail call fastcc void @agxbmore(ptr noundef nonnull @parse_style.ps_xb, i64 noundef 1)
  %.val.i15.pre.i42 = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %agxbput_n.exit
  %.val.i15.i43 = phi i8 [ %.val.i15.pre.i42, %bb.r ], [ %.val.i.i35, %agxbput_n.exit ] ; 2 uses
  %.not.i16.i44 = icmp eq i8 %.val.i15.i43, -1
  br i1 %.not.i16.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = zext i8 %.val.i15.i43 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @parse_style.ps_xb, i64 %i.aw
  store i8 0, ptr %i.ax, align 1, !tbaa !14
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbputc.exit45.outer.backedge

agxbputc.exit45.outer.backedge:                   ; preds = %bb.t, %bb.u
  br label %agxbputc.exit45.outer

bb.u:                                             ; preds = %bb.s
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.bb = load ptr, ptr @parse_style.ps_xb, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !14
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  br label %agxbputc.exit45.outer.backedge

style_token.exit.thread52:                        ; preds = %bb.b
  %i.bf = trunc nuw i8 %.021 to i1
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %style_token.exit.thread52
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.34, ptr noundef %0) #27
  store ptr null, ptr @parse_style.parse, align 16, !tbaa !105
  br label %agxbputc.exit45.thread

bb.w:                                             ; preds = %style_token.exit.thread52
  %.val.i46 = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14 ; 3 uses
  switch i8 %.val.i46, label %agxblen.exit.i.i [
    i8 -1, label %bb.x
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i:                                 ; preds = %bb.w
  %i.bg = zext i8 %.val.i46 to i64
  br label %agxbsizeof.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 16), align 8, !tbaa !14
  br label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %bb.x, %agxblen.exit.i.i
  %.0.i20.i.i = phi i64 [ %i.bh, %bb.x ], [ %i.bg, %agxblen.exit.i.i ]
  %.0.i14.i.i = phi i64 [ %i.bi, %bb.x ], [ 31, %agxblen.exit.i.i ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i5.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %agxbsizeof.exit.i.i
  tail call fastcc void @agxbmore(ptr noundef nonnull @parse_style.ps_xb, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %agxbsizeof.exit.i.i
  %.val.i15.i.i = phi i8 [ %.val.i15.pre.i.i, %bb.y ], [ %.val.i46, %agxbsizeof.exit.i.i ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i15.i.i, -1
  br i1 %.not.i16.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = zext i8 %.val.i15.i.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @parse_style.ps_xb, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !14
  %i.bl = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  %i.bm = add i8 %i.bl, 1                         ; 2 uses
  store i8 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbputc.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.bo = load ptr, ptr @parse_style.ps_xb, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !14
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %.val.i6.pr.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %bb.ab, %bb.aa
  %.val.i8.pr.i = phi i8 [ %.val.i6.pr.i, %bb.ab ], [ %i.bm, %bb.aa ]
  %.not.i7.i = icmp eq i8 %.val.i8.pr.i, -1
  br i1 %.not.i7.i, label %bb.ac, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i, %bb.w
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 31), align 1, !tbaa !14
  br label %agxbuse.exit

bb.ac:                                            ; preds = %agxbputc.exit.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @parse_style.ps_xb, i64 8), align 8, !tbaa !14
  %i.bs = load ptr, ptr @parse_style.ps_xb, align 8, !tbaa !14
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.ac
  %i.bt = phi ptr [ %i.bs, %bb.ac ], [ @parse_style.ps_xb, %agxbclear.exit.thread.i ] ; 3 uses
  %.not = icmp eq i64 %.022.ph, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %agxbuse.exit
  %min.iters.check = icmp ult i64 %.022.ph, 4
  br i1 %min.iters.check, label %.lr.ph.preheader117, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.022.ph, -4                   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 16, !tbaa !200
  %wide.load115 = load <2 x i64>, ptr %i.bv, align 16, !tbaa !200
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.bt, <2 x i64> %wide.load
  %wide.gep116 = getelementptr inbounds nuw i8, ptr %i.bt, <2 x i64> %wide.load115
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @parse_style.parse, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x ptr> %wide.gep, ptr %i.bw, align 16, !tbaa !105
  store <2 x ptr> %wide.gep116, ptr %i.bx, align 16, !tbaa !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.022.ph, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader117

.lr.ph.preheader117:                              ; preds = %.lr.ph.preheader, %middle.block
  %.077.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %agxbuse.exit
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @parse_style.parse, i64 %.022.ph
  store ptr null, ptr %i.bz, align 8, !tbaa !105
  br label %agxbputc.exit45.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader117, %.lr.ph
  %.077 = phi i64 [ %i.ce, %.lr.ph ], [ %.077.ph, %.lr.ph.preheader117 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.077
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !200
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @parse_style.parse, i64 %.077
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !105
  %i.ce = add nuw i64 %.077, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %.022.ph
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !411

agxbputc.exit45.thread:                           ; preds = %bb.d, %bb.h, %bb.f, %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr @parse_style.parse
}

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @gv_fixLocale(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %i.a = load i32, ptr @gv_fixLocale.cnt, align 4, !tbaa !47 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @gv_fixLocale.cnt, align 4, !tbaa !47
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @setlocale(i32 noundef 1, ptr noundef null) #27 ; 2 uses
  %i.e = tail call noalias ptr @strdup(ptr noundef readonly %i.d) #27 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %gv_strdup.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #31
  %i.i = add i64 %i.h, 1
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.45, i64 noundef %i.i) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit:                                   ; preds = %bb.c
  store ptr %i.e, ptr @gv_fixLocale.save_locale, align 8, !tbaa !105
  %i.k = tail call ptr @setlocale(i32 noundef 1, ptr noundef nonnull @.str.35) #27 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.a, 0
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.m, ptr @gv_fixLocale.cnt, align 4, !tbaa !47
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @gv_fixLocale.save_locale, align 8, !tbaa !105
  %i.p = tail call ptr @setlocale(i32 noundef 1, ptr noundef %i.o) #27 ; 0 uses
  %i.q = load ptr, ptr @gv_fixLocale.save_locale, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.q) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.b, %gv_strdup.exit
  ret void
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @gvRenderJobs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %2 = alloca %struct.pointf_s, align 16          ; 8 uses
  %3 = alloca %struct.pointf_s, align 16          ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.anon.16, align 8            ; 18 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %5 = alloca %struct.boxf, align 16              ; 5 uses
  %6 = alloca %struct.boxf, align 16              ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = load i8, ptr @Verbose, align 1, !tbaa !14
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @start_timer() #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @agbindrec(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 1) #27
  %.not101 = icmp eq ptr %i.j, null
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %.not102 = icmp eq ptr %i.n, null
  br i1 %.not102, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.37) #27
  %i.o = load i8, ptr @Verbose, align 1, !tbaa !14
  %.not103 = icmp eq i8 %i.o, 0
  br i1 %.not103, label %bb.em, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !17
  tail call void @flockfile(ptr noundef %i.p) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.q = tail call i64 @time(ptr noundef null) #27
  store i64 %i.q, ptr %i.e, align 8, !tbaa !200
  %i.r = call ptr @localtime(ptr noundef nonnull %i.e) #27 ; 6 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !427
  %i.v = add nsw i32 %i.u, 1900
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !428
  %i.y = add nsw i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !429
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !430
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !431
  %i.af = load i32, ptr %i.r, align 8, !tbaa !432
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.39, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 45), i32 noundef 4212, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.af) #29 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ai = call ptr @agnameof(ptr noundef %1) #27
  %i.aj = call double @elapsed_sec() #27
  %i.ak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.40, ptr noundef %i.ai, double noundef %i.aj) #29 ; 0 uses
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc = call i32 @fputc(i32 10, ptr %i.al)     ; 0 uses
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !17
  call void @funlockfile(ptr noundef %i.am) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.em

bb.g:                                             ; preds = %bb.d
  %i.an = tail call ptr @agfstnode(ptr noundef nonnull %1) #27 ; 2 uses
  %.not13.i = icmp eq ptr %i.an, null
  br i1 %.not13.i, label %init_bb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.9.0..sroa_idx51.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.h

bb.h:                                             ; preds = %init_bb_node.exit.i, %.lr.ph.i
  %.014.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.eo, %init_bb_node.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.at = load <2 x double>, ptr %i.aq, align 8, !tbaa !110 ; 2 uses
  %i.au = load <2 x double>, ptr %i.as, align 8, !tbaa !110
  %i.av = fmul <2 x double> %i.au, <double 5.000000e-01, double 1.000000e+00>
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ax = fsub <2 x double> %i.at, %i.aw
  store <2 x double> %i.ax, ptr %i.ar, align 8, !tbaa !110
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.az = load double, ptr %i.ay, align 8, !tbaa !186
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.bb = insertelement <2 x double> %i.aw, double %i.az, i64 0
  %i.bc = fadd <2 x double> %i.at, %i.bb
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !110
  %i.bd = call ptr @agfstout(ptr noundef nonnull %1, ptr noundef nonnull %.014.i) #27 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.bd, null
  br i1 %.not25.i.i, label %init_bb_node.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %init_bb_edge.exit.i.i
  %.026.i.i = phi ptr [ %i.en, %init_bb_edge.exit.i.i ], [ %i.bd, %bb.h ] ; 2 uses
  %i.be = getelementptr i8, ptr %.026.i.i, i64 16
  %.0.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !87
  %i.bf = getelementptr i8, ptr %.0.val.i.i, i64 16
  %.0.val.val.i.i = load ptr, ptr %i.bf, align 8, !tbaa !191 ; 6 uses
  %.not.i.i.i = icmp eq ptr %.0.val.val.i.i, null
  br i1 %.not.i.i.i, label %init_bb_edge.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bg = load ptr, ptr %.0.val.val.i.i, align 8, !tbaa !196 ; 5 uses
  %.sroa.077.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !201 ; 3 uses
  %.sroa.880.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.880.0.copyload.i.i.i.i = load i64, ptr %.sroa.880.0..sroa_idx.i.i.i.i, align 8, !tbaa !200 ; 3 uses
  %.sroa.1183.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.1183.0.copyload.i.i.i.i = load i32, ptr %.sroa.1183.0..sroa_idx.i.i.i.i, align 8, !tbaa !47
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.sroa.12.0.copyload.i.i.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !tbaa !47
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bh = load <4 x double>, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !tbaa !110
  %i.bi = load <2 x double>, ptr %.sroa.077.0.copyload.i.i.i.i, align 8, !tbaa !110 ; 4 uses
  %i.bj = icmp ugt i64 %.sroa.880.0.copyload.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %bezier_bb.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
end_hunk_2
