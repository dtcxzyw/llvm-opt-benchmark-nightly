Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@js_math_sumPrecise:bb.a

._crit_edge152.i:                                 ; preds = %bb.q
  %.pre.i = load i64, ptr %.phi.trans.insert153.i, align 8, !tbaa !240
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge152.i
  %i.ce = phi i64 [ %.pre.i, %._crit_edge152.i ], [ %i.bh, %bb.q ] ; 2 uses
  %i.cf = sub nuw nsw i32 64, %.0128.i
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %.0.i, %i.cg
  %i.ci = xor i64 %i.ch, %.neg.i
  %i.cj = add i64 %i.ce, %i.ci                    ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ce
  %i.cl = add i64 %i.cj, %i.cb                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cb
  %i.cn = or i1 %i.ck, %i.cm
  %i.co = zext i1 %i.cn to i64
  store i64 %i.cl, ptr %.phi.trans.insert153.i, align 8, !tbaa !240
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %.1123.i = phi i32 [ %i.cd, %bb.r ], [ %.0122.i, %._crit_edge.i ] ; 2 uses
  %.0121.i = phi i64 [ %i.co, %bb.r ], [ %i.cb, %._crit_edge.i ] ; 2 uses
  %i.cp = add nuw nsw i32 %.1123.i, 1             ; 3 uses
  %.not138.i = icmp slt i32 %i.cp, %i.u
  br i1 %.not138.i, label %.preheader.preheader.i, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.s
  %.pre154.i = zext nneg i32 %i.cp to i64
  br label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.cq = zext nneg i32 %.1123.i to i64
  %i.cr = add nuw nsw i64 %i.cq, 1
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.preheader.i
  %indvars.iv148.i = phi i64 [ %i.cr, %.preheader.preheader.i ], [ %indvars.iv.next149.i, %bb.t ] ; 2 uses
  %.1146.i = phi i64 [ %.0121.i, %.preheader.preheader.i ], [ %i.da, %bb.t ] ; 3 uses
  %i.cs = icmp eq i64 %.1146.i, %i.al
  br i1 %i.cs, label %sum_precise_add.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv148.i ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !240 ; 2 uses
  %i.cv = add i64 %i.cu, %.neg.i                  ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = add i64 %i.cv, %.1146.i                 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %.1146.i
  %i.cz = or i1 %i.cw, %i.cy
  %i.da = zext i1 %i.cz to i64                    ; 2 uses
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !240
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count.i
  br i1 %exitcond151.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !2211

.loopexit.i:                                      ; preds = %bb.t, %..loopexit_crit_edge.i
  %.pre-phi155.i = phi i64 [ %.pre154.i, %..loopexit_crit_edge.i ], [ %i.bd, %bb.t ]
  %.0124.i = phi i32 [ %i.cp, %..loopexit_crit_edge.i ], [ %i.u, %bb.t ] ; 2 uses
  %.2.i = phi i64 [ %.0121.i, %..loopexit_crit_edge.i ], [ %i.da, %bb.t ]
  %i.db = add nsw i64 %i.bh, %.neg.i
  %i.dc = add nsw i64 %i.db, %.2.i                ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %5, i64 %.pre-phi155.i ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !240
  %i.dg = ashr i64 %i.df, 63
  %.not139.i = icmp eq i64 %i.dc, %i.dg
  br i1 %.not139.i, label %sum_precise_add.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit.i
  %i.dh = add nuw nsw i32 %.0124.i, 1
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !240
  br label %sum_precise_add.exit

sum_precise_add.exit:                             ; preds = %.preheader.i, %bb.k, %.loopexit.i, %bb.u, %bb.j, %bb.m, %bb.o
  %i.di = phi i32 [ %spec.store.select, %bb.m ], [ 4, %bb.j ], [ 1, %bb.u ], [ 1, %.loopexit.i ], [ %i.t, %bb.o ], [ %spec.select, %bb.k ], [ 1, %.preheader.i ]
  %i.dj = phi i32 [ %i.u, %bb.m ], [ %i.u, %bb.j ], [ %i.dh, %bb.u ], [ %.0124.i, %.loopexit.i ], [ %i.u, %bb.o ], [ %i.u, %bb.k ], [ %i.u, %.preheader.i ]
  %i.dk = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %0, i64 %i.f, i64 %i.g, i64 %i.k, i64 %i.l, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.dl = extractvalue { i64, i64 } %i.dk, 1      ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295
  %i.dn = icmp eq i64 %i.dm, 6
  br i1 %i.dn, label %sum_precise_get_result.exit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  switch i32 %i.t, label %sum_precise_get_result.exit [
    i32 1, label %bb.z
    i32 4, label %bb.y
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.x:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.y:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.z:                                             ; preds = %bb.v
  %i.do = sext i32 %i.u to i64
  %i.dp = getelementptr [8 x i8], ptr %5, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !240 ; 2 uses
  %i.ds = and i64 %i.dr, -9223372036854775808     ; 3 uses
  %.not85.i = icmp slt i64 %i.dr, 0
  %i.dt = icmp sgt i32 %i.u, 0                    ; 2 uses
  %or.cond96.i = and i1 %i.dt, %.not85.i
  br i1 %or.cond96.i, label %.lr.ph.preheader.i53, label %.loopexit89.i

.lr.ph.preheader.i53:                             ; preds = %bb.z
  %wide.trip.count.i54 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i54, 1
  %i.du = icmp eq i32 %i.u, 1
  br i1 %i.du, label %.lr.ph.i55.epil.preheader, label %.lr.ph.preheader.i53.new

.lr.ph.preheader.i53.new:                         ; preds = %.lr.ph.preheader.i53
  %unroll_iter = and i64 %wide.trip.count.i54, 2147483646
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.preheader.i53.new
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %indvars.iv.next.i57.1, %.lr.ph.i55 ] ; 3 uses
  %.07591.i = phi i64 [ 1, %.lr.ph.preheader.i53.new ], [ %i.eh, %.lr.ph.i55 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %niter.next.1, %.lr.ph.i55 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !240
  %i.dx = xor i64 %i.dw, -1
  %i.dy = add i64 %.07591.i, %i.dx                ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %.07591.i
  %i.ea = zext i1 %i.dz to i64                    ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !240
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !240
  %i.ee = xor i64 %i.ed, -1
  %i.ef = add i64 %i.ea, %i.ee                    ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ea
  %i.eh = zext i1 %i.eg to i64                    ; 2 uses
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !240
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i56, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph93.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i55, !llvm.loop !2212

.loopexit89.i:                                    ; preds = %bb.z
  br i1 %i.dt, label %.lr.ph93.i.preheader, label %.critedge.i

.lr.ph93.i.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph.i55
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph93.i.preheader, label %.lr.ph.i55.epil.preheader

.lr.ph.i55.epil.preheader:                        ; preds = %.lr.ph93.i.preheader.loopexit.unr-lcssa, %.lr.ph.preheader.i53
  %indvars.iv.i56.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %indvars.iv.next.i57.1, %.lr.ph93.i.preheader.loopexit.unr-lcssa ]
  %.07591.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i53 ], [ %i.eh, %.lr.ph93.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56.epil.init ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !240
  %i.ek = xor i64 %i.ej, -1
  %i.el = add i64 %.07591.i.epil.init, %i.ek
  store i64 %i.el, ptr %i.ei, align 8, !tbaa !240
  br label %.lr.ph93.i.preheader

.lr.ph93.i.preheader:                             ; preds = %.lr.ph.i55.epil.preheader, %.lr.ph93.i.preheader.loopexit.unr-lcssa, %.loopexit89.i
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i.preheader, %bb.aa
  %.07292.i = phi i32 [ %i.er, %bb.aa ], [ %i.u, %.lr.ph93.i.preheader ] ; 4 uses
  %i.em = zext nneg i32 %.07292.i to i64
  %i.en = getelementptr [8 x i8], ptr %5, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !240
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %.lr.ph93.i
  %i.er = add nsw i32 %.07292.i, -1
  %i.es = icmp sgt i32 %.07292.i, 1
  br i1 %i.es, label %.lr.ph93.i, label %sum_precise_get_result.exit, !llvm.loop !2213

.critedge.i:                                      ; preds = %.lr.ph93.i, %.loopexit89.i
  %.072.lcssa.i = phi i32 [ %i.u, %.loopexit89.i ], [ %.07292.i, %.lr.ph93.i ] ; 5 uses
  switch i32 %.072.lcssa.i, label %bb.ad [
    i32 0, label %sum_precise_get_result.exit
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %.critedge.i
  %i.et = load i64, ptr %5, align 8, !tbaa !240   ; 2 uses
  %i.eu = icmp ult i64 %i.et, 4503599627370496
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = or disjoint i64 %i.et, %i.ds
  br label %sum_precise_get_result.exit

bb.ad:                                            ; preds = %bb.ab, %.critedge.i
  %i.ew = shl nsw i32 %.072.lcssa.i, 6
  %i.ex = add nsw i32 %.072.lcssa.i, -1           ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !240 ; 3 uses
  %i.fb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true) ; 4 uses
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = sub nsw i32 %i.ew, %i.fc
  %.not86.i = icmp eq i64 %i.fb, 0
  br i1 %.not86.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fe = shl i64 %i.fa, %i.fb                    ; 2 uses
  %i.ff = icmp sgt i32 %.072.lcssa.i, 1
  br i1 %i.ff, label %bb.af, label %.loopexit.i50

bb.af:                                            ; preds = %bb.ae
  %i.fg = add nsw i32 %.072.lcssa.i, -2           ; 2 uses
  %i.fh = sub nuw nsw i64 64, %i.fb               ; 2 uses
  %i.fi = zext nneg i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !240 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.fh
  %i.fl = xor i64 %notmask.i, -1
  %i.fm = and i64 %i.fk, %i.fl
  %i.fn = lshr i64 %i.fk, %i.fh
  %i.fo = icmp ne i64 %i.fm, 0
  %i.fp = zext i1 %i.fo to i64
  %i.fq = or i64 %i.fn, %i.fp
  %i.fr = or i64 %i.fq, %i.fe
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.076.i = phi i64 [ %i.fr, %bb.af ], [ %i.fa, %bb.ad ] ; 4 uses
  %.074.i = phi i32 [ %i.fg, %bb.af ], [ %i.ex, %bb.ad ] ; 2 uses
  %i.fs = and i64 %.076.i, 1023
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = icmp sgt i32 %.074.i, 0
  %or.cond.i = and i1 %i.ft, %i.fu
  br i1 %or.cond.i, label %.preheader.preheader.i51, label %.loopexit.i50

.preheader.preheader.i51:                         ; preds = %bb.ag
  %i.fv = zext nneg i32 %.074.i to i64
  br label %.preheader.i52

bb.ah:                                            ; preds = %.preheader.i52
  %.old1.i = icmp samesign ugt i64 %indvars.iv98.i, 1
  br i1 %.old1.i, label %.preheader.i52, label %.loopexit.i50

.preheader.i52:                                   ; preds = %bb.ah, %.preheader.preheader.i51
  %indvars.iv98.i = phi i64 [ %i.fv, %.preheader.preheader.i51 ], [ %indvars.iv.next99.i, %bb.ah ] ; 2 uses
  %indvars.iv.next99.i = add nsw i64 %indvars.iv98.i, -1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next99.i
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !240
  %.not87.i = icmp eq i64 %i.fx, 0
  br i1 %.not87.i, label %bb.ah, label %bb.ai, !llvm.loop !2214

bb.ai:                                            ; preds = %.preheader.i52
  %i.fy = or disjoint i64 %.076.i, 1
  br label %.loopexit.i50

.loopexit.i50:                                    ; preds = %bb.ah, %bb.ai, %bb.ag, %bb.ae
  %.177.i = phi i64 [ %i.fy, %bb.ai ], [ %i.fe, %bb.ae ], [ %.076.i, %bb.ag ], [ %.076.i, %bb.ah ] ; 2 uses
  %i.fz = lshr i64 %.177.i, 11
  %i.ga = and i64 %i.fz, 1
  %i.gb = add i64 %.177.i, 1023
  %i.gc = add i64 %i.gb, %i.ga
  %i.gd = lshr i64 %i.gc, 11                      ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  %spec.select.v.i = select i1 %i.ge, i32 -51, i32 -52
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.fd ; 2 uses
  %i.gf = icmp sgt i32 %spec.select.i, 2046
  br i1 %i.gf, label %bb.aj, label %bb.ak, !prof !192

bb.aj:                                            ; preds = %.loopexit.i50
  %i.gg = or disjoint i64 %i.ds, 9218868437227405312
  br label %sum_precise_get_result.exit

bb.ak:                                            ; preds = %.loopexit.i50
  %i.gh = and i64 %i.gd, 4503599627370495
  %i.gi = zext i32 %spec.select.i to i64
  %i.gj = shl i64 %i.gi, 52
  %i.gk = or disjoint i64 %i.gj, %i.gh
  %i.gl = or i64 %i.gk, %i.ds
  br label %sum_precise_get_result.exit

sum_precise_get_result.exit:                      ; preds = %sum_precise_add.exit, %bb.aa, %bb.c, %bb.ak, %bb.aj, %bb.ac, %.critedge.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.b, %JS_FreeValue.exit
  %.sroa.6.0 = phi i64 [ 6, %bb.b ], [ 6, %bb.c ], [ 6, %JS_FreeValue.exit ], [ 8, %bb.v ], [ 8, %bb.w ], [ 8, %bb.x ], [ 8, %bb.y ], [ 8, %bb.ak ], [ 8, %.critedge.i ], [ 8, %bb.ac ], [ 8, %bb.aj ], [ 8, %bb.aa ], [ 6, %sum_precise_add.exit ] ; 3 uses
  %.sroa.013.sroa.5.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %JS_FreeValue.exit ], [ -9223372036854775808, %bb.v ], [ 9218868437227405312, %bb.w ], [ -4503599627370496, %bb.x ], [ 9221120237041090560, %bb.y ], [ %i.gl, %bb.ak ], [ 0, %.critedge.i ], [ %i.ev, %bb.ac ], [ %i.gg, %bb.aj ], [ 0, %bb.aa ], [ 0, %sum_precise_add.exit ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !232 ; 3 uses
  %i.go = trunc i64 %i.g to i32
  %i.gp = icmp ugt i32 %i.go, -10
  br i1 %i.gp, label %bb.al, label %JS_FreeValue.exit59

bb.al:                                            ; preds = %sum_precise_get_result.exit
  %i.gq = inttoptr i64 %i.f to ptr
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !191 ; 2 uses
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !191
  %i.gu = icmp slt i32 %i.gs, 2
  br i1 %i.gu, label %bb.am, label %JS_FreeValue.exit59

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gn, i64 %i.f, i64 %i.g), !inline_history !291
  %.pre = load ptr, ptr %i.gm, align 8, !tbaa !232
  br label %JS_FreeValue.exit59

JS_FreeValue.exit59:                              ; preds = %sum_precise_get_result.exit, %bb.al, %bb.am
  %i.gv = phi ptr [ %i.gn, %sum_precise_get_result.exit ], [ %i.gn, %bb.al ], [ %.pre, %bb.am ]
  %i.gw = trunc i64 %i.l to i32
  %i.gx = icmp ugt i32 %i.gw, -10
  br i1 %i.gx, label %bb.an, label %JS_FreeValue.exit60

bb.an:                                            ; preds = %JS_FreeValue.exit59
  %i.gy = inttoptr i64 %i.k to ptr
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -4 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !191 ; 2 uses
  %i.hb = add nsw i32 %i.ha, -1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !191
  %i.hc = icmp slt i32 %i.ha, 2
  br i1 %i.hc, label %bb.ao, label %JS_FreeValue.exit60

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gv, i64 %i.k, i64 %i.l), !inline_history !291
  br label %JS_FreeValue.exit60

JS_FreeValue.exit60:                              ; preds = %bb.ao, %bb.an, %JS_FreeValue.exit59, %bb.a
  %.sroa.447.0 = phi i64 [ 6, %bb.a ], [ %.sroa.6.0, %JS_FreeValue.exit59 ], [ %.sroa.6.0, %bb.an ], [ %.sroa.6.0, %bb.ao ]
  %.sroa.045.0.insert.insert = phi i64 [ 0, %bb.a ], [ %.sroa.013.sroa.5.0, %JS_FreeValue.exit59 ], [ %.sroa.013.sroa.5.0, %bb.an ], [ %.sroa.013.sroa.5.0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.045.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.447.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acosh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @expm1(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #44

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_reflect_apply(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i64 } @js_function_apply(ptr noundef %0, i64 %i.b, i64 %i.d, i32 poison, ptr noundef nonnull %i.a, i32 noundef 2)
  ret { i64, i64 } %i.e
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_reflect_construct(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %.sroa.015.0.copyload = load i64, ptr %4, align 8, !tbaa !218 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.013.0.copyload = load i64, ptr %i.c, align 8, !tbaa !218
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !240
  %i.d = icmp sgt i32 %3, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.e = and i64 %.sroa.7.0.copyload, 4294967295
  %.not.i = icmp eq i64 %i.e, 4294967295
  br i1 %.not.i, label %JS_IsConstructor.exit, label %js_class_has_bytecode.exit.i

JS_IsConstructor.exit:                            ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.05.0.copyload = load i64, ptr %i.f, align 8, !tbaa !218 ; 2 uses
  %i.g = inttoptr i64 %.sroa.05.0.copyload to ptr ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 32
  %.not35 = icmp eq i16 %i.j, 0
  br i1 %.not35, label %bb.c, label %bb.f

bb.c:                                             ; preds = %JS_IsConstructor.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.l = load i16, ptr %i.k, align 2, !tbaa !276
  %i.m = zext i16 %i.l to i32
  %i.n = add nsw i32 %i.m, -13                    ; 2 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 31)
  switch i32 %i.o, label %js_class_has_bytecode.exit.i [
    i32 21, label %bb.d
    i32 2, label %bb.d
    i32 0, label %bb.d
    i32 23, label %bb.d
  ]
end_hunk_0
