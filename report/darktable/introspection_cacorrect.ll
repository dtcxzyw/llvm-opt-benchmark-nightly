inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a

.lr.ph1991:                                       ; preds = %._crit_edge.1, %.lr.ph1991.preheader.new
  %.016161990 = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %i.cr, %._crit_edge.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1991.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %.01616.tr = trunc i64 %.016161990 to i32
  %i.bs = shl i32 %.01616.tr, 2
  %.tr.i = and i32 %i.bs, 24
  %i.bt = lshr i32 %i.q, %.tr.i
  %i.bu = and i32 %i.bt, 1                        ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %i.ae
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph1991
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = mul i64 %.016161990, %i.af
  %i.by = getelementptr [4 x i8], ptr %i.av, i64 %i.bx
  %i.bz = mul i64 %.016161990, %i.ap
  %i.ca = getelementptr [4 x i8], ptr %i.bp, i64 %i.bz
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %.lr.ph1991
  %i.cb = or disjoint i64 %.016161990, 1          ; 3 uses
  %.01616.tr.1 = trunc i64 %i.cb to i32
  %i.cc = shl i32 %.01616.tr.1, 2
  %.tr.i.1 = and i32 %i.cc, 28
  %i.cd = lshr i32 %i.q, %.tr.i.1
  %i.ce = and i32 %i.cd, 1                        ; 2 uses
  %i.cf = icmp ult i32 %i.ce, %i.ae
  br i1 %i.cf, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = mul i64 %i.cb, %i.af
  %i.ci = getelementptr [4 x i8], ptr %i.av, i64 %i.ch
  %i.cj = mul i64 %i.cb, %i.ap
  %i.ck = getelementptr [4 x i8], ptr %i.bp, i64 %i.cj
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.1
  %.016171989.1 = phi i64 [ %i.cg, %.lr.ph.1 ], [ %i.cp, %bb.h ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %.016171989.1
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !58
  %i.cn = lshr i64 %.016171989.1, 1
  %i.co = getelementptr [4 x i8], ptr %i.ck, i64 %i.cn
  store float %i.cm, ptr %i.co, align 4, !tbaa !58
  %i.cp = add i64 %.016171989.1, 2                ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.af
  br i1 %i.cq, label %bb.h, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.h, %._crit_edge
  %i.cr = add nuw i64 %.016161990, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1977.loopexit.unr-lcssa, label %.lr.ph1991

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.016171989 = phi i64 [ %i.bw, %.lr.ph ], [ %i.cw, %bb.i ] ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %i.by, i64 %.016171989
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !58
  %i.cu = lshr i64 %.016171989, 1
  %i.cv = getelementptr [4 x i8], ptr %i.ca, i64 %i.cu
  store float %i.ct, ptr %i.cv, align 4, !tbaa !58
  %i.cw = add i64 %.016171989, 2                  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.af
  br i1 %i.cx, label %bb.i, label %._crit_edge

.loopexit1977.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %i.cy = and i32 %i.ah, 1
  %lcmp.mod.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod.not, label %.loopexit1977, label %.lr.ph1991.epil.preheader

.lr.ph1991.epil.preheader:                        ; preds = %.preheader1976, %.loopexit1977.loopexit.unr-lcssa
  %.016161990.epil.init = phi i64 [ 0, %.preheader1976 ], [ %i.cr, %.loopexit1977.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod4217 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod4217)
  %.01616.tr.epil = trunc i64 %.016161990.epil.init to i32
  %i.cz = shl i32 %.01616.tr.epil, 2
  %.tr.i.epil = and i32 %i.cz, 28
  %i.da = lshr i32 %i.q, %.tr.i.epil
  %i.db = and i32 %i.da, 1                        ; 2 uses
  %i.dc = icmp ult i32 %i.db, %i.ae
  br i1 %i.dc, label %.lr.ph.epil, label %.loopexit1977

.lr.ph.epil:                                      ; preds = %.lr.ph1991.epil.preheader
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = mul i64 %.016161990.epil.init, %i.af
  %i.df = getelementptr [4 x i8], ptr %i.av, i64 %i.de
  %i.dg = mul i64 %.016161990.epil.init, %i.ap
  %i.dh = getelementptr [4 x i8], ptr %i.bp, i64 %i.dg
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.epil
  %.016171989.epil = phi i64 [ %i.dd, %.lr.ph.epil ], [ %i.dm, %bb.j ] ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %i.df, i64 %.016171989.epil
  %i.dj = load float, ptr %i.di, align 4, !tbaa !58
  %i.dk = lshr i64 %.016171989.epil, 1
  %i.dl = getelementptr [4 x i8], ptr %i.dh, i64 %i.dk
  store float %i.dj, ptr %i.dl, align 4, !tbaa !58
  %i.dm = add i64 %.016171989.epil, 2             ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.af
  br i1 %i.dn, label %bb.j, label %.loopexit1977

.loopexit1977:                                    ; preds = %.loopexit1977.loopexit.unr-lcssa, %bb.j, %.lr.ph1991.epil.preheader, %.preheader1976, %bb.d
  %.01607 = phi ptr [ null, %bb.d ], [ %i.bp, %.preheader1976 ], [ %i.bp, %.lr.ph1991.epil.preheader ], [ %i.bp, %bb.j ], [ %i.bp, %.loopexit1977.loopexit.unr-lcssa ] ; 7 uses
  %.01605 = phi ptr [ null, %bb.d ], [ %i.bn, %.preheader1976 ], [ %i.bn, %.lr.ph1991.epil.preheader ], [ %i.bn, %bb.j ], [ %i.bn, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.01603 = phi ptr [ null, %bb.d ], [ %i.bm, %.preheader1976 ], [ %i.bm, %.lr.ph1991.epil.preheader ], [ %i.bm, %bb.j ], [ %i.bm, %.loopexit1977.loopexit.unr-lcssa ] ; 24 uses
  %.016053951 = ptrtoaddr ptr %.01605 to i64      ; 2 uses
  %.016033952 = ptrtoaddr ptr %.01603 to i64      ; 2 uses
  %i.do = tail call ptr @dt_alloc_aligned(i64 noundef %i.au) #20 ; 102 uses
  %i.dp = ptrtoaddr ptr %i.do to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64) ]
  %.not.i1812 = icmp eq ptr %i.do, null
  br i1 %.not.i1812, label %dt_calloc_align_float.exit1813, label %bb.k

bb.k:                                             ; preds = %.loopexit1977
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.do, i8 0, i64 %i.au, i1 false)
  br label %dt_calloc_align_float.exit1813

dt_calloc_align_float.exit1813:                   ; preds = %.loopexit1977, %bb.k
  %i.dq = shl i64 %i.ak, 1
  %i.dr = and i64 %i.dq, -4
  %i.ds = tail call ptr @dt_alloc_aligned(i64 noundef %i.dr) #20 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  %i.dt = icmp ne ptr %i.do, null
  %i.du = icmp ne ptr %i.ds, null
  %or.cond5 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dt_calloc_align_float.exit1813
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5) #20
  br label %bb.et

bb.m:                                             ; preds = %dt_calloc_align_float.exit1813
  %i.dv = add nsw <2 x i32> %i.ad, splat (i32 16) ; 2 uses
  %i.dw = srem <2 x i32> %i.dv, splat (i32 112)
  %i.dx = icmp eq <2 x i32> %i.dw, zeroinitializer
  %i.dy = sitofp <2 x i32> %i.dv to <2 x float>
  %i.dz = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.dy, splat (float f0x3C124925)
  %i.ea = fadd reassoc nsz arcp contract afn <2 x float> %i.dz, splat (float 2.000000e+00)
  %i.eb = uitofp <2 x i1> %i.dx to <2 x float>
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.ea, %i.eb
  %i.ed = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ec)
  %i.ee = fptosi <2 x float> %i.ed to <2 x i32>   ; 3 uses
  %i.ef = extractelement <2 x i32> %i.ee, i64 0   ; 9 uses
  %i.eg = extractelement <2 x i32> %i.ee, i64 1   ; 4 uses
  %i.eh = mul i32 %i.eg, %i.ef                    ; 2 uses
  %i.ei = mul i32 %i.eh, 5
  %i.ej = sext i32 %i.ei to i64
  %i.ek = shl nsw i64 %i.ej, 2                    ; 2 uses
  %i.el = tail call ptr @dt_alloc_aligned(i64 noundef %i.ek) #20 ; 37 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.el, i64 64) ]
  %.not.i1814 = icmp eq ptr %i.el, null
  br i1 %.not.i1814, label %dt_calloc_align_float.exit1815, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.el, i8 0, i64 %i.ek, i1 false)
  br label %dt_calloc_align_float.exit1815

dt_calloc_align_float.exit1815:                   ; preds = %bb.m, %bb.n
  %i.em = sext i32 %i.eh to i64                   ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.el, i64 %i.em ; 21 uses
  %i.eo = icmp sgt i32 %i.aa, 0
  br i1 %i.eo, label %.lr.ph2243, label %._crit_edge2244

.lr.ph2243:                                       ; preds = %dt_calloc_align_float.exit1815
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.er = icmp slt i32 %i.ah, -7
  %i.es = icmp slt i32 %i.ae, -7
  %i.et = add nsw i32 %i.ah, 8                    ; 2 uses
  %i.eu = add i32 %i.ae, 8                        ; 11 uses
  %i.ev = add i32 %i.ah, -2                       ; 6 uses
  %i.ew = add i32 %i.ae, -2                       ; 20 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.fc = add i32 %i.eg, -1                       ; 3 uses
  %i.fd = icmp sgt i32 %i.ef, 0
  %i.fe = shl i32 %i.ef, 1
  %i.ff = add i32 %i.eg, -3
  %i.fg = mul i32 %i.ff, %i.ef
  %i.fh = mul i32 %i.fc, %i.ef
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 6144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.fl = add i32 %i.ef, -1
  %i.fm = icmp slt <2 x i32> %i.ee, splat (i32 3) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fo = icmp slt i32 %i.ah, -7
  %i.fp = icmp sgt i32 %i.ae, -8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.fw = icmp sgt i32 %i.ah, 0
  %i.fx = sext i32 %i.ef to i64                   ; 10 uses
  %6 = zext i32 %i.fe to i64                      ; 2 uses
  %i.fy = sext i32 %i.fg to i64                   ; 2 uses
  %i.fz = sext i32 %i.fh to i64                   ; 2 uses
  %brmerge2271 = or i1 %i.er, %i.es
  %i.ga = shl i32 %i.ae, 4
  %i.gb = add i32 %i.ew, %i.ga                    ; 8 uses
  %i.gc = mul i32 %i.ae, 15
  %i.gd = add i32 %i.ew, %i.gc                    ; 8 uses
  %i.ge = mul i32 %i.ae, 14
  %i.gf = add i32 %i.ew, %i.ge                    ; 8 uses
  %i.gg = mul i32 %i.ae, 13
  %i.gh = add i32 %i.ew, %i.gg                    ; 8 uses
  %i.gi = mul i32 %i.ae, 12
  %i.gj = add i32 %i.ew, %i.gi                    ; 8 uses
  %i.gk = mul i32 %i.ae, 11
  %i.gl = add i32 %i.ew, %i.gk                    ; 8 uses
  %i.gm = mul i32 %i.ae, 10
  %i.gn = add i32 %i.ew, %i.gm                    ; 8 uses
  %i.go = mul i32 %i.ae, 9
  %i.gp = add i32 %i.ew, %i.go                    ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %wide.trip.count2526 = zext i32 %i.fc to i64
  %invariant.gep2981 = getelementptr [16 x i8], ptr %i.en, i64 %i.fx ; 5 uses
  %wide.trip.count2541 = zext i32 %i.ef to i64    ; 6 uses
  %invariant.gep2983 = getelementptr [16 x i8], ptr %i.en, i64 %6 ; 13 uses
  %invariant.gep2985 = getelementptr [16 x i8], ptr %i.en, i64 %i.fy ; 14 uses
  %invariant.gep2987 = getelementptr [16 x i8], ptr %i.en, i64 %i.fz ; 13 uses
  %wide.trip.count2581 = zext nneg i32 %i.fc to i64
  %wide.trip.count2576 = zext i32 %i.fl to i64
  %i.gw = shl i32 %i.ae, 4
  %i.gx = add i32 %i.ew, %i.gw                    ; 8 uses
  %i.gy = mul i32 %i.ae, 15
  %i.gz = add i32 %i.ew, %i.gy                    ; 8 uses
  %i.ha = mul i32 %i.ae, 14
  %i.hb = add i32 %i.ew, %i.ha                    ; 8 uses
  %i.hc = mul i32 %i.ae, 13
  %i.hd = add i32 %i.ew, %i.hc                    ; 8 uses
  %i.he = mul i32 %i.ae, 12
  %i.hf = add i32 %i.ew, %i.he                    ; 8 uses
  %i.hg = mul i32 %i.ae, 11
  %i.hh = add i32 %i.ew, %i.hg                    ; 8 uses
  %i.hi = mul i32 %i.ae, 10
  %i.hj = add i32 %i.ew, %i.hi                    ; 8 uses
  %i.hk = mul i32 %i.ae, 9
  %i.hl = add i32 %i.ew, %i.hk                    ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.trip.count2765 = zext nneg i32 %i.ah to i64
  %i.hr = shl nsw i64 %i.af, 2
  %scevgep3038 = getelementptr i8, ptr %i.ds, i64 4
  %scevgep3063 = getelementptr i8, ptr %i.ds, i64 4
  %scevgep3152.a = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %scevgep3203.a = getelementptr inbounds nuw i8, ptr %i.l, i64 2048
  %i.hs = shl nuw nsw i64 %wide.trip.count2541, 4 ; 16 uses
  %i.ht = shl nsw i64 %i.em, 2                    ; 28 uses
  %i.hu = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.hv = getelementptr i8, ptr %i.hu, i64 %i.ht
  %i.hw = shl nsw i64 %i.fz, 4                    ; 7 uses
  %i.hx = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hs
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.ht  ; 2 uses
  %i.ia = getelementptr i8, ptr %i.el, i64 %i.ht  ; 2 uses
  %i.ib = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.ht  ; 3 uses
  %i.id = insertelement <2 x ptr> poison, ptr %i.hv, i64 0
  %i.ie = insertelement <2 x ptr> %i.id, ptr %i.ic, i64 1
  %i.if = getelementptr i8, <2 x ptr> %i.ie, <2 x i64> <i64 -12, i64 -8> ; 3 uses
  %i.ig = shufflevector <2 x ptr> %i.if, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ih = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.ht  ; 3 uses
  %scevgep3354 = getelementptr i8, ptr %i.ii, i64 4 ; 3 uses
  %i.ij = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.ik = getelementptr i8, ptr %i.ij, i64 %i.hs
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.ht  ; 5 uses
  %i.im = insertelement <2 x ptr> poison, ptr %i.hz, i64 0
  %i.in = insertelement <2 x ptr> %i.im, ptr %i.il, i64 1 ; 3 uses
  %i.io = getelementptr i8, <2 x ptr> %i.in, <2 x i64> <i64 -12, i64 -8> ; 4 uses
  %scevgep3355 = getelementptr i8, ptr %i.il, i64 -8 ; 3 uses
  %i.ip = getelementptr i8, ptr %i.el, i64 %i.ht  ; 3 uses
  %i.iq = insertelement <2 x ptr> poison, ptr %i.ia, i64 0
  %i.ir = insertelement <2 x ptr> %i.iq, ptr %i.ip, i64 1 ; 3 uses
  %i.is = getelementptr i8, <2 x ptr> %i.ir, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.it = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.ht  ; 3 uses
  %i.iv = insertelement <2 x ptr> %i.in, ptr %i.iu, i64 1 ; 2 uses
  %i.iw = insertelement <2 x ptr> poison, ptr %i.ic, i64 0
  %i.ix = insertelement <2 x ptr> %i.iw, ptr %i.iu, i64 1 ; 2 uses
  %i.iy = getelementptr i8, <2 x ptr> %i.iv, <2 x i64> <i64 -12, i64 -4> ; 5 uses
  %i.iz = getelementptr i8, <2 x ptr> %i.ix, <2 x i64> <i64 -8, i64 -4> ; 4 uses
  %i.ja = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.jb = getelementptr i8, ptr %i.ja, i64 %i.ht  ; 4 uses
  %i.jc = insertelement <2 x ptr> %i.ir, ptr %i.jb, i64 1 ; 2 uses
  %i.jd = insertelement <2 x ptr> poison, ptr %i.ii, i64 0
  %i.je = insertelement <2 x ptr> %i.jd, ptr %i.jb, i64 1
  %i.jf = getelementptr i8, <2 x ptr> %i.jc, <2 x i64> <i64 4, i64 8>
  %i.jg = getelementptr i8, <2 x ptr> %i.je, <2 x i64> <i64 4, i64 8> ; 4 uses
  %i.jh = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.ji = getelementptr i8, ptr %i.jh, i64 %i.hs
  %i.jj = getelementptr i8, ptr %i.ji, i64 %i.ht  ; 5 uses
  %i.jk = insertelement <4 x ptr> poison, ptr %i.il, i64 0
  %i.jl = insertelement <4 x ptr> %i.jk, ptr %i.hz, i64 1
  %i.jm = insertelement <4 x ptr> %i.jl, ptr %i.jj, i64 2
  %i.jn = shufflevector <4 x ptr> %i.jm, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.jo = getelementptr i8, <4 x ptr> %i.jn, <4 x i64> <i64 -8, i64 -12, i64 -4, i64 -12> ; 4 uses
  %i.jp = insertelement <2 x ptr> %i.ix, ptr %i.jj, i64 1
  %i.jq = insertelement <2 x ptr> poison, ptr %i.il, i64 0
  %i.jr = insertelement <2 x ptr> %i.jq, ptr %i.jj, i64 1
  %i.js = getelementptr i8, <2 x ptr> %i.jp, <2 x i64> <i64 -8, i64 -4> ; 5 uses
  %i.jt = getelementptr i8, <2 x ptr> %i.jr, <2 x i64> <i64 -8, i64 -4>
  %i.ju = getelementptr i8, ptr %i.el, i64 %i.ht  ; 4 uses
  %i.jv = getelementptr i8, ptr %i.el, i64 %i.hs
  %scevgep3361 = getelementptr i8, ptr %i.jv, i64 %i.ht ; 9 uses
  %i.jw = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.jx = getelementptr i8, ptr %i.jw, i64 %i.ht  ; 6 uses
  %i.jy = insertelement <2 x ptr> poison, ptr %i.jb, i64 0
  %i.jz = insertelement <2 x ptr> %i.jy, ptr %i.jx, i64 1
  %i.ka = getelementptr i8, <2 x ptr> %i.jz, <2 x i64> <i64 8, i64 12> ; 2 uses
  %i.kb = shufflevector <2 x ptr> %i.ka, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kc = insertelement <2 x ptr> %i.jc, ptr %i.jx, i64 0 ; 2 uses
  %i.kd = insertelement <2 x ptr> poison, ptr %i.jx, i64 0
  %i.ke = insertelement <2 x ptr> %i.kd, ptr %i.ju, i64 1 ; 2 uses
  %i.kf = insertelement <2 x ptr> poison, ptr %i.ip, i64 0
  %i.kg = insertelement <2 x ptr> %i.kf, ptr %i.jx, i64 1
  %i.kh = getelementptr i8, <2 x ptr> %i.kc, <2 x i64> <i64 12, i64 8> ; 2 uses
  %i.ki = getelementptr i8, <2 x ptr> %i.ke, i64 12
  %i.kj = getelementptr i8, <2 x ptr> %i.kg, <2 x i64> <i64 8, i64 12>
  %scevgep3362 = getelementptr i8, ptr %i.jx, i64 12 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.el, i64 %i.hw
  %i.kl = getelementptr i8, ptr %i.kk, i64 %i.hs
  %scevgep3363 = getelementptr i8, ptr %i.kl, i64 %i.ht ; 11 uses
  %i.km = shl nuw nsw i64 %6, 4                   ; 7 uses
  %i.kn = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.ko = getelementptr i8, ptr %i.kn, i64 %i.km
  %i.kp = getelementptr i8, ptr %i.ko, i64 %i.ht  ; 4 uses
  %i.kq = insertelement <2 x ptr> poison, ptr %i.jj, i64 0
  %i.kr = insertelement <2 x ptr> %i.kq, ptr %i.kp, i64 1 ; 2 uses
  %i.ks = getelementptr i8, <2 x ptr> %i.kr, <2 x i64> <i64 -4, i64 -12>
  %scevgep3364 = getelementptr i8, ptr %i.kp, i64 -12
  %i.kt = shl nsw i64 %i.fy, 4                    ; 7 uses
  %i.ku = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 %i.hs
  %i.kw = getelementptr i8, ptr %i.kv, i64 %i.ht  ; 3 uses
  %scevgep3365 = getelementptr i8, ptr %i.kw, i64 -12 ; 3 uses
  %i.kx = getelementptr i8, ptr %i.el, i64 %i.km
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.ht  ; 6 uses
  %i.kz = insertelement <2 x ptr> %i.ke, ptr %i.ky, i64 0
  %i.la = getelementptr i8, <2 x ptr> %i.kz, <2 x i64> <i64 4, i64 12>
  %i.lb = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.lc = getelementptr i8, ptr %i.lb, i64 %i.km
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.ht  ; 6 uses
  %i.le = insertelement <4 x ptr> poison, ptr %i.kp, i64 0
  %i.lf = insertelement <4 x ptr> %i.le, ptr %i.ic, i64 1 ; 2 uses
  %i.lg = insertelement <4 x ptr> %i.lf, ptr %i.ld, i64 2
  %i.lh = shufflevector <4 x ptr> %i.lg, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.li = getelementptr i8, <4 x ptr> %i.lh, <4 x i64> <i64 -12, i64 -8, i64 -8, i64 -8> ; 2 uses
  %scevgep3367 = getelementptr i8, ptr %i.ld, i64 -8 ; 3 uses
  %i.lj = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.lk = getelementptr i8, ptr %i.lj, i64 %i.ht  ; 2 uses
  %i.ll = shufflevector <2 x ptr> %i.kc, <2 x ptr> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lm = insertelement <2 x ptr> %i.ll, ptr %i.lk, i64 0
  %i.ln = getelementptr i8, <2 x ptr> %i.lm, <2 x i64> <i64 4, i64 12>
  %i.lo = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.lp = getelementptr i8, ptr %i.lo, i64 %i.hs
  %i.lq = getelementptr i8, ptr %i.lp, i64 %i.ht  ; 6 uses
  %i.lr = shufflevector <4 x ptr> %i.lf, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.ls = insertelement <4 x ptr> %i.lr, ptr %i.kw, i64 1
  %i.lt = insertelement <4 x ptr> %i.ls, ptr %i.lq, i64 3
  %i.lu = getelementptr i8, <4 x ptr> %i.lt, <4 x i64> <i64 -8, i64 -12, i64 -8, i64 -8> ; 4 uses
  %i.lv = insertelement <4 x ptr> poison, ptr %i.kw, i64 0 ; 4 uses
  %i.lw = insertelement <4 x ptr> %i.lv, ptr %i.il, i64 1 ; 2 uses
  %i.lx = insertelement <4 x ptr> %i.lw, ptr %i.lq, i64 2
  %i.ly = shufflevector <4 x ptr> %i.lx, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.lz = getelementptr i8, <4 x ptr> %i.ly, <4 x i64> <i64 -12, i64 -8, i64 -8, i64 -8>
  %i.ma = insertelement <4 x ptr> %i.lv, ptr %i.iu, i64 1 ; 2 uses
  %i.mb = insertelement <4 x ptr> %i.ma, ptr %i.lq, i64 2
  %i.mc = shufflevector <4 x ptr> %i.mb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.md = getelementptr i8, <4 x ptr> %i.mc, <4 x i64> <i64 -12, i64 -4, i64 -8, i64 -4>
  %i.me = insertelement <4 x ptr> %i.lv, ptr %i.jj, i64 1 ; 2 uses
  %i.mf = insertelement <4 x ptr> %i.me, ptr %i.lq, i64 2
  %i.mg = shufflevector <4 x ptr> %i.mf, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.mh = getelementptr i8, <4 x ptr> %i.mg, <4 x i64> <i64 -12, i64 -4, i64 -8, i64 -4>
  %scevgep3369 = getelementptr i8, ptr %i.lq, i64 -8 ; 3 uses
  %i.mi = getelementptr i8, ptr %i.el, i64 %i.km
  %i.mj = getelementptr i8, ptr %i.mi, i64 %i.ht  ; 7 uses
  %i.mk = insertelement <4 x ptr> poison, ptr %i.ii, i64 0
  %i.ml = insertelement <4 x ptr> %i.mk, ptr %i.ky, i64 1
  %i.mm = insertelement <4 x ptr> %i.ml, ptr %i.mj, i64 3
  %i.mn = shufflevector <4 x ptr> %i.mm, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.mo = getelementptr i8, <4 x ptr> %i.mn, <4 x i64> <i64 4, i64 4, i64 4, i64 8> ; 7 uses
  %i.mp = insertelement <4 x ptr> poison, ptr %i.ip, i64 0
  %i.mq = insertelement <4 x ptr> %i.mp, ptr %i.ky, i64 1
  %i.mr = insertelement <4 x ptr> %i.mq, ptr %i.mj, i64 3
  %i.ms = shufflevector <4 x ptr> %i.mr, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.mt = getelementptr i8, <4 x ptr> %i.ms, <4 x i64> <i64 8, i64 4, i64 8, i64 8> ; 5 uses
  %i.mu = insertelement <4 x ptr> poison, ptr %i.jb, i64 0
  %i.mv = insertelement <4 x ptr> %i.mu, ptr %i.ky, i64 1
  %i.mw = insertelement <4 x ptr> %i.mv, ptr %i.mj, i64 3
  %i.mx = shufflevector <4 x ptr> %i.mw, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.my = getelementptr i8, <4 x ptr> %i.mx, <4 x i64> <i64 8, i64 4, i64 8, i64 8> ; 4 uses
  %i.mz = insertelement <4 x ptr> poison, ptr %i.ju, i64 0
  %i.na = insertelement <4 x ptr> %i.mz, ptr %i.ky, i64 1
  %i.nb = insertelement <4 x ptr> %i.na, ptr %i.mj, i64 3
  %i.nc = shufflevector <4 x ptr> %i.nb, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.nd = getelementptr i8, <4 x ptr> %i.nc, <4 x i64> <i64 12, i64 4, i64 12, i64 8> ; 4 uses
  %scevgep3370 = getelementptr i8, ptr %i.mj, i64 8
  %i.ne = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.nf = getelementptr i8, ptr %i.ne, i64 %i.km
  %i.ng = getelementptr i8, ptr %i.nf, i64 %i.ht  ; 5 uses
  %i.nh = insertelement <4 x ptr> %i.lv, ptr %i.ld, i64 1
  %i.ni = insertelement <4 x ptr> %i.nh, ptr %i.lq, i64 2
  %i.nj = insertelement <4 x ptr> %i.ni, ptr %i.ng, i64 3
  %i.nk = getelementptr i8, <4 x ptr> %i.nj, <4 x i64> <i64 -12, i64 -8, i64 -8, i64 -4>
  %i.nl = shufflevector <4 x ptr> %i.lw, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.nm = insertelement <4 x ptr> %i.nl, ptr %i.ld, i64 1
  %i.nn = insertelement <4 x ptr> %i.nm, ptr %i.ng, i64 3
  %i.no = getelementptr i8, <4 x ptr> %i.nn, <4 x i64> <i64 -8, i64 -8, i64 -8, i64 -4> ; 3 uses
  %i.np = shufflevector <4 x ptr> %i.ma, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.nq = insertelement <4 x ptr> %i.np, ptr %i.ld, i64 1
  %i.nr = insertelement <4 x ptr> %i.nq, ptr %i.ng, i64 3
  %i.ns = getelementptr i8, <4 x ptr> %i.nr, <4 x i64> <i64 -4, i64 -8, i64 -4, i64 -4> ; 4 uses
  %i.nt = shufflevector <4 x ptr> %i.me, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.nu = insertelement <4 x ptr> %i.nt, ptr %i.ld, i64 1
  %i.nv = insertelement <4 x ptr> %i.nu, ptr %i.ng, i64 3
  %i.nw = getelementptr i8, <4 x ptr> %i.nv, <4 x i64> <i64 -4, i64 -8, i64 -4, i64 -4>
  %i.nx = insertelement <2 x ptr> %i.kr, ptr %i.ng, i64 0
  %i.ny = getelementptr i8, <2 x ptr> %i.nx, <2 x i64> <i64 -4, i64 -12> ; 2 uses
  %i.nz = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.oa = getelementptr i8, ptr %i.nz, i64 %i.ht  ; 5 uses
  %i.ob = insertelement <4 x ptr> poison, ptr %i.jx, i64 0
  %i.oc = insertelement <4 x ptr> %i.ob, ptr %i.ju, i64 1
  %i.od = insertelement <4 x ptr> %i.oc, ptr %i.oa, i64 2
  %i.oe = insertelement <4 x ptr> %i.od, ptr %i.ky, i64 3
  %i.of = getelementptr i8, <4 x ptr> %i.oe, <4 x i64> <i64 12, i64 12, i64 8, i64 4> ; 5 uses
  %i.og = insertelement <2 x ptr> %i.ir, ptr %i.oa, i64 0
  %i.oh = insertelement <2 x ptr> poison, ptr %i.ju, i64 0 ; 2 uses
  %i.oi = insertelement <2 x ptr> %i.oh, ptr %i.oa, i64 1
  %i.oj = getelementptr i8, <2 x ptr> %i.og, i64 8 ; 3 uses
  %i.ok = getelementptr i8, <2 x ptr> %i.oi, <2 x i64> <i64 12, i64 8>
  %i.ol = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.hs
  %i.on = getelementptr i8, ptr %i.om, i64 %i.ht  ; 3 uses
  %i.oo = insertelement <2 x ptr> poison, ptr %i.kp, i64 0
  %i.op = insertelement <2 x ptr> %i.oo, ptr %i.on, i64 1
  %i.oq = insertelement <2 x ptr> %i.in, ptr %i.on, i64 1
  %i.or = insertelement <2 x ptr> %i.iv, ptr %i.on, i64 0
  %i.os = getelementptr i8, <2 x ptr> %i.op, <2 x i64> <i64 -12, i64 -4> ; 6 uses
  %i.ot = getelementptr i8, <2 x ptr> %i.oq, <2 x i64> <i64 -12, i64 -4>
  %i.ou = getelementptr i8, <2 x ptr> %i.or, i64 -4
  %i.ov = getelementptr i8, ptr %i.el, i64 %i.km
  %i.ow = getelementptr i8, ptr %i.ov, i64 %i.ht  ; 4 uses
  %i.ox = insertelement <4 x ptr> poison, ptr %i.mj, i64 0
  %i.oy = insertelement <4 x ptr> %i.ox, ptr %i.ia, i64 1 ; 2 uses
  %i.oz = insertelement <4 x ptr> %i.oy, ptr %i.ow, i64 2
  %i.pa = shufflevector <4 x ptr> %i.oz, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.pb = getelementptr i8, <4 x ptr> %i.pa, <4 x i64> <i64 8, i64 4, i64 12, i64 4> ; 9 uses
  %i.pc = insertelement <2 x ptr> poison, ptr %i.oa, i64 0
  %i.pd = insertelement <2 x ptr> %i.pc, ptr %i.ow, i64 1
  %i.pe = getelementptr i8, <2 x ptr> %i.pd, <2 x i64> <i64 8, i64 12>
  %i.pf = insertelement <2 x ptr> %i.ll, ptr %i.ow, i64 1
  %i.pg = getelementptr i8, <2 x ptr> %i.pf, <2 x i64> <i64 8, i64 12> ; 2 uses
  %i.ph = getelementptr i8, ptr %i.el, i64 %i.hs
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.km
  %scevgep3375 = getelementptr i8, ptr %i.pi, i64 %i.ht ; 5 uses
  %i.pj = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.ht  ; 4 uses
  %i.pl = shufflevector <4 x ptr> %i.oy, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.pm = insertelement <4 x ptr> %i.pl, ptr %i.oa, i64 1
  %i.pn = insertelement <4 x ptr> %i.pm, ptr %i.pk, i64 3
  %i.po = getelementptr i8, <4 x ptr> %i.pn, <4 x i64> <i64 4, i64 8, i64 4, i64 12> ; 3 uses
  %i.pp = insertelement <4 x ptr> poison, ptr %i.ow, i64 0
  %i.pq = insertelement <4 x ptr> %i.pp, ptr %i.pk, i64 1
  %i.pr = insertelement <4 x ptr> %i.pq, ptr %i.lk, i64 2
  %i.ps = insertelement <4 x ptr> %i.pr, ptr %i.mj, i64 3
  %i.pt = getelementptr i8, <4 x ptr> %i.ps, <4 x i64> <i64 12, i64 12, i64 4, i64 8> ; 9 uses
  %i.pu = insertelement <2 x ptr> %i.oh, ptr %i.pk, i64 1
  %i.pv = getelementptr i8, <2 x ptr> %i.pu, i64 12
  %scevgep3376 = getelementptr i8, ptr %i.pk, i64 12 ; 2 uses
  %i.pw = getelementptr i8, ptr %i.el, i64 %i.kt
  %i.px = getelementptr i8, ptr %i.pw, i64 %i.hs
  %scevgep3377 = getelementptr i8, ptr %i.px, i64 %i.ht ; 8 uses
  %i.py = add i64 %i.dp, -65536
  %.neg = mul nsw i64 %i.af, -20
  %i.pz = add i64 %.neg, %i.py
  %i.qa = mul nsw i64 %i.af, 448
  %i.qb = shl nsw i64 %i.af, 2
  %i.qc = insertelement <8 x ptr> poison, ptr %i.en, i64 0
  %i.qd = shufflevector <8 x ptr> %i.qc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qe = insertelement <4 x ptr> poison, ptr %i.en, i64 0 ; 2 uses
  %i.qf = shufflevector <4 x ptr> %i.qe, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qg = shufflevector <2 x ptr> %i.if, <2 x ptr> poison, <4 x i32> zeroinitializer
  %i.qh = insertelement <4 x ptr> %i.mo, ptr %invariant.gep2987, i64 1
  %i.qi = insertelement <4 x ptr> poison, ptr %invariant.gep2987, i64 0 ; 2 uses
  %i.qj = insertelement <4 x ptr> poison, ptr %scevgep3375, i64 0 ; 3 uses
  %i.qk = shufflevector <4 x ptr> %i.jo, <4 x ptr> %i.lu, <8 x i32> <i32 1, i32 4, i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison>
  %i.ql = shufflevector <4 x ptr> %i.li, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qm = shufflevector <8 x ptr> %i.qk, <8 x ptr> %i.ql, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 4, i32 poison, i32 poison, i32 8>
  %i.qn = shufflevector <4 x ptr> %i.pb, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.qo = insertelement <4 x ptr> %i.pb, ptr %invariant.gep2983, i64 0
  %i.qp = shufflevector <4 x ptr> %i.qi, <4 x ptr> %i.pb, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.qq = shufflevector <4 x ptr> %i.qp, <4 x ptr> %i.po, <4 x i32> <i32 0, i32 7, i32 2, i32 poison>
  %i.qr = shufflevector <4 x ptr> %i.pb, <4 x ptr> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>
  %i.qs = shufflevector <4 x ptr> %i.pb, <4 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qt = insertelement <8 x ptr> %i.qs, ptr %invariant.gep2987, i64 0
  %i.qu = shufflevector <4 x ptr> %i.pb, <4 x ptr> %i.po, <4 x i32> <i32 5, i32 2, i32 7, i32 poison>
  %i.qv = shufflevector <4 x ptr> %i.mo, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.qw = insertelement <4 x ptr> %i.qv, ptr %invariant.gep2985, i64 0
  %i.qx = shufflevector <4 x ptr> %i.no, <4 x ptr> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.qy = shufflevector <4 x ptr> %i.mo, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qz = shufflevector <8 x ptr> %i.qt, <8 x ptr> %i.qy, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ra = insertelement <4 x ptr> %i.mo, ptr %invariant.gep2985, i64 0
  %i.rb = shufflevector <4 x ptr> %i.mt, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.rc = insertelement <4 x ptr> %i.rb, ptr %invariant.gep2985, i64 0
  %i.rd = shufflevector <4 x ptr> %i.jo, <4 x ptr> %i.ns, <4 x i32> <i32 1, i32 4, i32 1, i32 poison>
  %i.re = shufflevector <4 x ptr> %i.ns, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rf = shufflevector <8 x ptr> %i.qm, <8 x ptr> %i.re, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 poison, i32 poison, i32 7>
  %i.rg = shufflevector <4 x ptr> %i.qq, <4 x ptr> %i.mt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.rh = shufflevector <4 x ptr> %i.qi, <4 x ptr> %i.mt, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ri = shufflevector <4 x ptr> %i.mt, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rj = shufflevector <8 x ptr> %i.qz, <8 x ptr> %i.ri, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rk = shufflevector <4 x ptr> %i.my, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.rl = insertelement <4 x ptr> %i.rk, ptr %invariant.gep2985, i64 0
  %i.rm = shufflevector <4 x ptr> %i.my, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rn = shufflevector <8 x ptr> %i.rj, <8 x ptr> %i.rm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %i.ro = insertelement <4 x ptr> poison, ptr %scevgep3361, i64 0 ; 3 uses
  %i.rp = insertelement <4 x ptr> %i.ro, ptr %scevgep3367, i64 1
  %i.rq = insertelement <4 x ptr> poison, ptr %scevgep3365, i64 0
  %i.rr = insertelement <4 x ptr> %i.rq, ptr %scevgep3361, i64 1
  %i.rs = insertelement <4 x ptr> %i.rr, ptr %scevgep3369, i64 2
  %i.rt = shufflevector <4 x ptr> %i.rs, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ru = shufflevector <4 x ptr> %i.nd, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.rv = insertelement <4 x ptr> %i.ru, ptr %invariant.gep2985, i64 0
  %i.rw = shufflevector <4 x ptr> %i.nd, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rx = shufflevector <8 x ptr> %i.rn, <8 x ptr> %i.rw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.ry = insertelement <4 x ptr> %i.ro, ptr %scevgep3377, i64 1
  %i.rz = insertelement <4 x ptr> %i.ry, ptr %scevgep3363, i64 2
  %i.sa = insertelement <4 x ptr> %i.rz, ptr %scevgep3365, i64 3
  %i.sb = insertelement <4 x ptr> %i.qj, ptr %scevgep3361, i64 1
  %i.sc = insertelement <4 x ptr> poison, ptr %scevgep3363, i64 0
  %i.sd = insertelement <4 x ptr> %i.sc, ptr %scevgep3361, i64 1
  %i.se = shufflevector <4 x ptr> %i.of, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0>
  %i.sf = insertelement <4 x ptr> %i.se, ptr %invariant.gep2983, i64 1
  %i.sg = shufflevector <4 x ptr> %i.pt, <4 x ptr> %i.of, <4 x i32> <i32 0, i32 5, i32 poison, i32 4>
  %i.sh = shufflevector <4 x ptr> %i.of, <4 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.si = shufflevector <8 x ptr> %i.rx, <8 x ptr> %i.sh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %i.sj = insertelement <4 x ptr> %i.qj, ptr %scevgep3377, i64 1
  %i.sk = insertelement <4 x ptr> %i.sj, ptr %scevgep3369, i64 2
  %i.sl = shufflevector <2 x ptr> %i.ka, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.sm = shufflevector <4 x ptr> %i.of, <4 x ptr> %i.pt, <4 x i32> <i32 1, i32 5, i32 0, i32 poison>
  %i.sn = shufflevector <4 x ptr> %i.rv, <4 x ptr> %i.pt, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.so = shufflevector <4 x ptr> %i.rl, <4 x ptr> %i.pt, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.sp = shufflevector <4 x ptr> %i.rc, <4 x ptr> %i.pt, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.sq = shufflevector <4 x ptr> %i.qw, <4 x ptr> %i.pt, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.sr = shufflevector <4 x ptr> %i.ra, <4 x ptr> %i.pt, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ss = insertelement <2 x ptr> poison, ptr %scevgep3365, i64 0
  %i.st = insertelement <2 x ptr> %i.ss, ptr %scevgep3375, i64 1 ; 2 uses
  %i.su = insertelement <2 x ptr> poison, ptr %scevgep3367, i64 0
  %i.sv = insertelement <2 x ptr> %i.su, ptr %scevgep3361, i64 1 ; 2 uses
  %i.sw = insertelement <2 x ptr> poison, ptr %scevgep3361, i64 0
  %i.sx = insertelement <2 x ptr> %i.sw, ptr %scevgep3377, i64 1
  %i.sy = insertelement <2 x ptr> %i.os, ptr %scevgep3361, i64 0
  %i.sz = shufflevector <2 x ptr> %i.oj, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ta = insertelement <2 x ptr> %i.sz, ptr %invariant.gep2983, i64 0 ; 2 uses
  %i.tb = insertelement <2 x ptr> %i.pg, ptr %invariant.gep2985, i64 0
  %i.tc = insertelement <2 x ptr> %i.oj, ptr %invariant.gep2987, i64 0 ; 5 uses
  %i.td = insertelement <2 x ptr> %i.js, ptr %scevgep3363, i64 0 ; 2 uses
  %i.te = shufflevector <2 x ptr> %i.os, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.tf = shufflevector <4 x ptr> %i.ro, <4 x ptr> %i.te, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.tg = shufflevector <4 x ptr> %i.sb, <4 x ptr> %i.te, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.th = shufflevector <2 x ptr> %i.os, <2 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %i.ti = shufflevector <4 x ptr> %i.sd, <4 x ptr> %i.te, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tj = shufflevector <2 x ptr> %i.os, <2 x ptr> %i.iz, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.tk = shufflevector <2 x ptr> %i.os, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.tl = shufflevector <2 x ptr> %i.io, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.tm = shufflevector <4 x ptr> %i.qj, <4 x ptr> %i.tl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.tn = shufflevector <2 x ptr> %i.ny, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.to = shufflevector <4 x ptr> %i.sk, <4 x ptr> %i.tn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tp = shufflevector <2 x ptr> %i.iz, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.tq = shufflevector <4 x ptr> %i.qx, <4 x ptr> %i.tp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.tr = shufflevector <2 x ptr> %i.js, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ts = extractelement <2 x i1> %i.fm, i64 0
  %i.tt = extractelement <2 x i1> %i.fm, i64 1    ; 2 uses
  %i.tu = add nsw i64 %wide.trip.count2526, -1    ; 2 uses
  %i.tv = and i32 %i.q, 3
  %i.tw = sext i32 %i.gb to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.tw
  %i.ty = zext nneg i32 %i.tv to i64
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ty
  %i.ua = lshr i32 %i.q, 2
  %i.ub = and i32 %i.ua, 3
  %i.uc = add i32 %i.gb, -1
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ud
  %i.uf = zext nneg i32 %i.ub to i64
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.uf
  %i.uh = and i32 %i.q, 3
  %i.ui = add i32 %i.gb, -2
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.uj
  %i.ul = zext nneg i32 %i.uh to i64
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ul
  %i.un = lshr i32 %i.q, 2
  %i.uo = and i32 %i.un, 3
  %i.up = add i32 %i.gb, -3
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.uq
  %i.us = zext nneg i32 %i.uo to i64
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.us
  %i.uu = and i32 %i.q, 3
  %i.uv = add i32 %i.gb, -4
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.uw
  %i.uy = zext nneg i32 %i.uu to i64
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.uy
  %i.va = lshr i32 %i.q, 2
  %i.vb = and i32 %i.va, 3
  %i.vc = add i32 %i.gb, -5
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.vd
  %i.vf = zext nneg i32 %i.vb to i64
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.vf
  %i.vh = and i32 %i.q, 3
  %i.vi = add i32 %i.gb, -6
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.vj
  %i.vl = zext nneg i32 %i.vh to i64
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.vl
  %i.vn = lshr i32 %i.q, 2
  %i.vo = and i32 %i.vn, 3
  %i.vp = add i32 %i.gb, -7
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.vq
  %i.vs = zext nneg i32 %i.vo to i64
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.vs
  %i.vu = lshr i32 %i.q, 4
  %i.vv = and i32 %i.vu, 3
  %i.vw = sext i32 %i.gd to i64
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.vw
  %i.vy = zext nneg i32 %i.vv to i64
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.vy
  %i.wa = lshr i32 %i.q, 6
  %i.wb = and i32 %i.wa, 3
  %i.wc = add i32 %i.gd, -1
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.wd
  %i.wf = zext nneg i32 %i.wb to i64
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.wf
  %i.wh = lshr i32 %i.q, 4
  %i.wi = and i32 %i.wh, 3
  %i.wj = add i32 %i.gd, -2
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.wk
  %i.wm = zext nneg i32 %i.wi to i64
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.wm
  %i.wo = lshr i32 %i.q, 6
  %i.wp = and i32 %i.wo, 3
  %i.wq = add i32 %i.gd, -3
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.wr
  %i.wt = zext nneg i32 %i.wp to i64
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.wt
  %i.wv = lshr i32 %i.q, 4
  %i.ww = and i32 %i.wv, 3
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.bsb = add i32 %i.hl, -3
  %i.bsc = sext i32 %i.bsb to i64                 ; 2 uses
  %i.bsd = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsc
  %i.bse = zext nneg i32 %i.bsa to i64
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bse
  %i.bsg = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.bsc
  %i.bsh = lshr i32 %i.q, 28
  %i.bsi = and i32 %i.bsh, 3
  %i.bsj = add i32 %i.hl, -4
  %i.bsk = sext i32 %i.bsj to i64                 ; 2 uses
  %i.bsl = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsk
  %i.bsm = zext nneg i32 %i.bsi to i64
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bsm
  %i.bso = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.bsk
  %i.bsp = lshr i32 %i.q, 30
  %i.bsq = add i32 %i.hl, -5
  %i.bsr = sext i32 %i.bsq to i64                 ; 2 uses
  %i.bss = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsr
  %i.bst = zext nneg i32 %i.bsp to i64
  %i.bsu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bst
  %i.bsv = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.bsr
  %i.bsw = lshr i32 %i.q, 28
  %i.bsx = and i32 %i.bsw, 3
  %i.bsy = add i32 %i.hl, -6
  %i.bsz = sext i32 %i.bsy to i64                 ; 2 uses
  %i.bta = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bsz
  %i.btb = zext nneg i32 %i.bsx to i64
  %i.btc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.btb
  %i.btd = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.bsz
  %i.bte = lshr i32 %i.q, 30
  %i.btf = add i32 %i.hl, -7
  %i.btg = sext i32 %i.btf to i64                 ; 2 uses
  %i.bth = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.btg
  %i.bti = zext nneg i32 %i.bte to i64
  %i.btj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bti
  %i.btk = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.btg
  br label %bb.o

._crit_edge2244.loopexit:                         ; preds = %.thread1866
  %i.btl = and i1 %i.y, %i.iks
  br i1 %i.btl, label %.preheader1893, label %bb.et

._crit_edge2244:                                  ; preds = %dt_calloc_align_float.exit1815
  br i1 %i.y, label %.preheader1893, label %bb.et

.preheader1893:                                   ; preds = %._crit_edge2244.loopexit, %._crit_edge2244
  %i.btm = icmp sgt i32 %i.ah, 0                  ; 2 uses
  br i1 %i.btm, label %.lr.ph2250.preheader, label %._crit_edge2251

.lr.ph2250.preheader:                             ; preds = %.preheader1893
  %wide.trip.count2773 = zext nneg i32 %i.ah to i64
  %i.btn = shl nsw i64 %i.ap, 2
  %i.bto = shl nsw i64 %i.af, 2
  br label %.lr.ph2250

bb.o:                                             ; preds = %.lr.ph2243, %.thread1866
  %.sroa.42816.0 = phi nsz float [ 0.000000e+00, %.lr.ph2243 ], [ %.sroa.62793.0, %.thread1866 ] ; 2 uses
  %.sroa.7.0 = phi nsz float [ 0.000000e+00, %.lr.ph2243 ], [ %.sroa.9.0, %.thread1866 ] ; 2 uses
  %.sroa.102819.0 = phi nsz float [ 0.000000e+00, %.lr.ph2243 ], [ %.sroa.12.0, %.thread1866 ] ; 2 uses
  %.sroa.02829.0 = phi nsz float [ 0.000000e+00, %.lr.ph2243 ], [ %.sroa.02805.0, %.thread1866 ] ; 2 uses
  %.016192241 = phi i32 [ 4, %.lr.ph2243 ], [ %.216211872, %.thread1866 ] ; 9 uses
  %.016222239 = phi i32 [ 16, %.lr.ph2243 ], [ %.216241871, %.thread1866 ] ; 5 uses
  %.016252238 = phi i32 [ 0, %.lr.ph2243 ], [ %i.ikt, %.thread1866 ]
  %i.btp = phi <8 x float> [ zeroinitializer, %.lr.ph2243 ], [ %i.bum, %.thread1866 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.btq = tail call ptr @dt_alloc_aligned(i64 noundef 393216) #20 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.btq, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store ptr %i.btq, ptr %i.k, align 16, !tbaa !59
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btq, i64 65536 ; 178 uses
  store ptr %i.btr, ptr %i.ep, align 8, !tbaa !59
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btq, i64 131072
  store ptr %i.bts, ptr %i.eq, align 16, !tbaa !59
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btq, i64 196608 ; 12 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btq, i64 229376 ; 12 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btq, i64 262144 ; 5 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btq, i64 294912 ; 5 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btq, i64 327680 ; 5 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btq, i64 360448 ; 5 uses
  br i1 %brmerge2271, label %.preheader1975, label %.preheader1968.preheader

.preheader1968.preheader:                         ; preds = %bb.o
  %i.btz = ptrtoaddr ptr %i.btq to i64
  %i.bua = sub i64 %i.pz, %i.btz
  %scevgep3863 = getelementptr i8, ptr %i.btq, i64 64000
  %scevgep3865 = getelementptr i8, ptr %i.btq, i64 67076
  br label %.preheader1968

.preheader1975.loopexit:                          ; preds = %._crit_edge2081
  %i.bub = fadd reassoc nsz arcp contract afn float %.sroa.02829.0, %.sroa.02805.3
  %i.buc = fadd reassoc nsz arcp contract afn float %.sroa.42816.0, %.sroa.62793.3
  %i.bud = fadd reassoc nsz arcp contract afn float %.sroa.7.0, %.sroa.9.3
  %i.bue = fadd reassoc nsz arcp contract afn float %.sroa.102819.0, %.sroa.12.3
  %i.buf = insertelement <8 x float> poison, float %.sroa.92801.3, i64 4
  %i.bug = insertelement <8 x float> %i.buf, float %.sroa.122811.3, i64 5
  %i.buh = insertelement <8 x float> %i.bug, float %.sroa.122803.3, i64 6
  %i.bui = insertelement <8 x float> %i.buh, float %.sroa.02791.3, i64 7
  %i.buj = shufflevector <4 x float> %i.eto, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buk = shufflevector <8 x float> %i.buj, <8 x float> %i.bui, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bul = fadd reassoc nsz arcp contract afn <8 x float> %i.btp, %i.buk
  br label %.preheader1975

.preheader1975:                                   ; preds = %.preheader1975.loopexit, %bb.o
  %.sroa.02805.0 = phi float [ %.sroa.02829.0, %bb.o ], [ %i.bub, %.preheader1975.loopexit ] ; 2 uses
  %.sroa.62793.0 = phi float [ %.sroa.42816.0, %bb.o ], [ %i.buc, %.preheader1975.loopexit ] ; 4 uses
  %.sroa.9.0 = phi float [ %.sroa.7.0, %bb.o ], [ %i.bud, %.preheader1975.loopexit ] ; 4 uses
  %.sroa.12.0 = phi float [ %.sroa.102819.0, %bb.o ], [ %i.bue, %.preheader1975.loopexit ] ; 4 uses
  %i.bum = phi <8 x float> [ %i.btp, %bb.o ], [ %i.bul, %.preheader1975.loopexit ] ; 9 uses
  %i.bun = extractelement <8 x float> %i.bum, i64 7 ; 3 uses
  %i.buo = fcmp reassoc nsz arcp contract afn une float %i.bun, 0.000000e+00
  br i1 %i.buo, label %bb.ak, label %bb.al

.preheader1968:                                   ; preds = %.preheader1968.preheader, %._crit_edge2081
  %indvar3823 = phi i64 [ 0, %.preheader1968.preheader ], [ %indvar.next3824, %._crit_edge2081 ] ; 2 uses
  %.sroa.02805.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.02805.3, %._crit_edge2081 ]
  %.sroa.122811.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.122811.3, %._crit_edge2081 ]
  %.sroa.92801.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.92801.3, %._crit_edge2081 ]
  %.sroa.122803.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.122803.3, %._crit_edge2081 ]
  %.sroa.02791.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.02791.3, %._crit_edge2081 ]
  %.sroa.62793.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.62793.3, %._crit_edge2081 ]
  %.sroa.9.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.9.3, %._crit_edge2081 ]
  %.sroa.12.1 = phi nsz float [ 0.000000e+00, %.preheader1968.preheader ], [ %.sroa.12.3, %._crit_edge2081 ]
  %indvars.iv2497 = phi i64 [ -8, %.preheader1968.preheader ], [ %indvars.iv.next2498, %._crit_edge2081 ] ; 9 uses
  %i.bup = phi <4 x float> [ zeroinitializer, %.preheader1968.preheader ], [ %i.eto, %._crit_edge2081 ]
  %i.buq = mul i64 %i.qa, %indvar3823
  %i.bur = add i64 %i.bua, %i.buq
  %i.bus = add nsw i64 %indvars.iv2497, 8
  %i.but = udiv i64 %i.bus, 112
  %i.buu = add nuw nsw i64 %i.but, 1
  %i.buv = add nsw i64 %indvars.iv2497, 128       ; 2 uses
  %i.buw = trunc nuw nsw i64 %i.buv to i32
  %i.bux = tail call i32 @llvm.smin.i32(i32 %i.buw, i32 %i.et)
  %i.buy = trunc nsw i64 %indvars.iv2497 to i32   ; 2 uses
  %i.buz = sub nsw i32 %i.bux, %i.buy             ; 9 uses
  %i.bva = icmp sgt i64 %indvars.iv2497, -1       ; 3 uses
  %i.bvb = select i1 %i.bva, i32 0, i32 8         ; 3 uses
  %i.bvc = icmp sgt i64 %i.buv, %i.bk
  %i.bvd = trunc i64 %indvars.iv2497 to i32
  %i.bve = sub i32 %i.ah, %i.bvd
  %i.bvf = select i1 %i.bvc, i32 %i.bve, i32 %i.buz ; 8 uses
  %i.bvg = icmp slt i32 %i.bvb, %i.bvf            ; 2 uses
  %i.bvh = icmp slt i32 %i.bvf, %i.buz            ; 3 uses
  %i.bvi = sub nsw i32 %i.buz, %i.bvf             ; 3 uses
  %i.bvj = tail call i32 @llvm.smin.i32(i32 %i.bvi, i32 8)
  %i.bvk = icmp sgt i32 %i.bvi, 0                 ; 2 uses
  %i.bvl = icmp sge i32 %i.bvb, %i.bvf
  %.not1793 = xor i1 %i.bvh, true
  %i.bvm = icmp slt i32 %i.bvi, 1
  %i.bvn = add nsw i32 %i.buz, -3
  %i.bvo = icmp sgt i32 %i.buz, 6
  %i.bvp = add nsw i32 %i.buz, -4
  %i.bvq = icmp sgt i32 %i.buz, 8
  %i.bvr = add nsw i32 %i.buz, -8
  %i.bvs = icmp sgt i32 %i.buz, 16
  %i.bvt = mul nsw i64 %i.buu, %i.fx
  %i.bvu = zext nneg i32 %i.bvb to i64            ; 3 uses
  %i.bvv = sext i32 %i.bvf to i64                 ; 3 uses
  %i.bvw = sext i32 %i.bvj to i64                 ; 3 uses
  %i.bvx = sext i32 %i.bvn to i64
  %wide.trip.count2343 = zext nneg i32 %i.bvf to i64
  %brmerge2277.not2309 = select i1 %i.bvh, i1 %i.bvk, i1 false
  %wide.trip.count2370 = zext nneg i32 %i.bvf to i64
  %wide.trip.count2378 = zext nneg i32 %i.bvf to i64
  %invariant.op4501 = add i64 1, %i.bvt
  br label %bb.p

._crit_edge2081:                                  ; preds = %bb.aj
  %indvars.iv.next2498 = add nsw i64 %indvars.iv2497, 112 ; 2 uses
  %i.bvy = icmp slt i64 %indvars.iv.next2498, %i.bk
  %indvar.next3824 = add i64 %indvar3823, 1
  br i1 %i.bvy, label %.preheader1968, label %.preheader1975.loopexit

bb.p:                                             ; preds = %.preheader1968, %bb.aj
  %indvar3766 = phi i32 [ 0, %.preheader1968 ], [ %indvar.next3767, %bb.aj ] ; 5 uses
  %.sroa.02805.2 = phi nsz float [ %.sroa.02805.1, %.preheader1968 ], [ %.sroa.02805.3, %bb.aj ] ; 2 uses
  %.sroa.122811.2 = phi nsz float [ %.sroa.122811.1, %.preheader1968 ], [ %.sroa.122811.3, %bb.aj ] ; 2 uses
  %.sroa.92801.2 = phi nsz float [ %.sroa.92801.1, %.preheader1968 ], [ %.sroa.92801.3, %bb.aj ] ; 2 uses
  %.sroa.122803.2 = phi nsz float [ %.sroa.122803.1, %.preheader1968 ], [ %.sroa.122803.3, %bb.aj ] ; 2 uses
  %.sroa.02791.2 = phi nsz float [ %.sroa.02791.1, %.preheader1968 ], [ %.sroa.02791.3, %bb.aj ] ; 2 uses
  %.sroa.62793.2 = phi nsz float [ %.sroa.62793.1, %.preheader1968 ], [ %.sroa.62793.3, %bb.aj ] ; 2 uses
  %.sroa.9.2 = phi nsz float [ %.sroa.9.1, %.preheader1968 ], [ %.sroa.9.3, %bb.aj ] ; 2 uses
  %.sroa.12.2 = phi nsz float [ %.sroa.12.1, %.preheader1968 ], [ %.sroa.12.3, %bb.aj ] ; 2 uses
  %indvars.iv2493 = phi i64 [ -8, %.preheader1968 ], [ %indvars.iv.next2494, %bb.aj ] ; 10 uses
  %indvars.iv2454 = phi i32 [ -5, %.preheader1968 ], [ %indvars.iv.next2455, %bb.aj ] ; 4 uses
  %indvars.iv2403 = phi i32 [ 8, %.preheader1968 ], [ %indvars.iv.next2404, %bb.aj ] ; 2 uses
  %indvars.iv2401 = phi i32 [ 120, %.preheader1968 ], [ %indvars.iv.next2402, %bb.aj ] ; 7 uses
  %i.bvz = phi <4 x float> [ %i.bup, %.preheader1968 ], [ %i.eto, %bb.aj ] ; 2 uses
  %smin3875 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  %i.bwa = mul nsw i32 %indvar3766, -112
  %i.bwb = or disjoint i32 %i.bwa, 1
  %smin3866 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  %i.bwc = mul nsw i32 %indvar3766, -112
  %i.bwd = or disjoint i32 %i.bwc, 1
  %smin3827 = call i32 @llvm.smax.i32(i32 %indvars.iv2454, i32 0)
  %7 = zext nneg i32 %smin3827 to i64             ; 2 uses
  %8 = add nuw nsw i64 %7, 1
  %i.bwe = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  %9 = add i32 %i.bwe, -3
  %smax3829 = call i32 @llvm.smin.i32(i32 %i.ae, i32 %9)
  %i.bwf = zext i32 %smax3829 to i64
  %umax3831 = call i64 @llvm.umax.i64(i64 %8, i64 %i.bwf)
  %i.bwg = sub nsw i64 %umax3831, %7              ; 7 uses
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv2454, i32 0)
  %i.bwh = zext nneg i32 %smax to i64
  %i.bwi = shl nuw nsw i64 %i.bwh, 2
  %i.bwj = add i64 %i.bur, %i.bwi
  %smin3768 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  %i.bwk = mul nsw i32 %indvar3766, -112
  %i.bwl = add i32 %i.bwk, -9
  %smin3765 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  %.neg4053 = mul i32 %indvar3766, 112
  %smax2456 = call i32 @llvm.smax.i32(i32 %indvars.iv2454, i32 0)
  %i.bwm = zext nneg i32 %smax2456 to i64         ; 5 uses
  %smin2431 = call i32 @llvm.smin.i32(i32 %indvars.iv2401, i32 %i.eu)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(393216) %i.btq, i8 0, i64 393216, i1 false)
  %i.bwn = add nsw i64 %indvars.iv2493, 8
  %i.bwo = udiv i64 %i.bwn, 112
  %i.bwp = add nsw i64 %indvars.iv2493, 128       ; 2 uses
  %i.bwq = trunc i64 %i.bwp to i32
  %i.bwr = tail call i32 @llvm.smin.i32(i32 %i.bwq, i32 %i.eu) ; 2 uses
  %i.bws = trunc i64 %indvars.iv2493 to i32       ; 2 uses
  %i.bwt = sub i32 %i.bwr, %i.bws                 ; 7 uses
  %i.bwu = icmp slt i64 %indvars.iv2493, 0        ; 4 uses
  %i.bwv = select i1 %i.bwu, i32 8, i32 0         ; 5 uses
  %i.bww = icmp sgt i64 %i.bwp, %i.af
  %i.bwx = trunc i64 %indvars.iv2493 to i32
  %i.bwy = sub i32 %i.ae, %i.bwx
  %i.bwz = select i1 %i.bww, i32 %i.bwy, i32 %i.bwt ; 12 uses
  %i.bxa = icmp slt i32 %i.bwv, %i.bwz            ; 2 uses
  %or.cond2272 = select i1 %i.bvg, i1 %i.bxa, i1 false
  br i1 %or.cond2272, label %.lr.ph1995.preheader, label %._crit_edge2000.split

.lr.ph1995.preheader:                             ; preds = %bb.p
  %i.bxb = zext nneg i32 %i.bwv to i64            ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bwz to i64  ; 3 uses
  %invariant.gep2978 = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv2493
  %xtraiter4218 = and i64 %wide.trip.count, 7     ; 2 uses
  %lcmp.mod4219.not = icmp eq i64 %xtraiter4218, 0
  %i.bxc = sub nsw i64 %i.bxb, %wide.trip.count
  %i.bxd = icmp ugt i64 %i.bxc, -8
  br label %.lr.ph1995

._crit_edge2000.split:                            ; preds = %._crit_edge1996, %bb.p
  %i.bxe = icmp sge i32 %i.bwv, %i.bwz
  %or.cond2274.not = select i1 %i.bva, i1 true, i1 %i.bxe
  br i1 %or.cond2274.not, label %.loopexit1959.split, label %.preheader1918.preheader

.preheader1918.preheader:                         ; preds = %._crit_edge2000.split
  %i.bxf = zext nneg i32 %i.bwv to i64            ; 17 uses
  %wide.trip.count2349 = zext nneg i32 %i.bwz to i64 ; 17 uses
  %i.bxg = xor i64 %i.bxf, -1
  %i.bxh = add nsw i64 %i.bxg, %wide.trip.count2349 ; 8 uses
  %xtraiter4222 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4223.not = icmp eq i64 %xtraiter4222, 0
  br i1 %lcmp.mod4223.not, label %.prol.loopexit4221, label %.prol.preheader4220

.prol.preheader4220:                              ; preds = %.preheader1918.preheader, %.prol.preheader4220
  %indvars.iv2345.prol = phi i64 [ %indvars.iv.next2346.prol, %.prol.preheader4220 ], [ %i.bxf, %.preheader1918.preheader ] ; 4 uses
  %prol.iter4224 = phi i64 [ %prol.iter4224.next, %.prol.preheader4220 ], [ 0, %.preheader1918.preheader ]
  %indvars.iv2345.tr.prol = trunc i64 %indvars.iv2345.prol to i32
  %i.bxi = shl i32 %indvars.iv2345.tr.prol, 1
  %i.bxj = and i32 %i.bxi, 2
  %i.bxk = lshr i32 %i.q, %i.bxj
  %i.bxl = and i32 %i.bxk, 3
  %i.bxm = zext nneg i32 %i.bxl to i64
  %i.bxn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bxm
  %i.bxo = load ptr, ptr %i.bxn, align 8, !tbaa !59 ; 2 uses
  %i.bxp = shl i64 %indvars.iv2345.prol, 32
  %sext.prol = add i64 %i.bxp, 8796093022208
  %i.bxq = ashr exact i64 %sext.prol, 30
  %i.bxr = getelementptr inbounds i8, ptr %i.bxo, i64 %i.bxq
  %i.bxs = load float, ptr %i.bxr, align 4, !tbaa !58
  %i.bxt = getelementptr inbounds nuw [4 x i8], ptr %i.bxo, i64 %indvars.iv2345.prol
  store float %i.bxs, ptr %i.bxt, align 4, !tbaa !58
  %indvars.iv.next2346.prol = add nuw nsw i64 %indvars.iv2345.prol, 1 ; 2 uses
  %prol.iter4224.next = add i64 %prol.iter4224, 1 ; 2 uses
  %prol.iter4224.cmp.not = icmp eq i64 %prol.iter4224.next, %xtraiter4222
  br i1 %prol.iter4224.cmp.not, label %.prol.loopexit4221, label %.prol.preheader4220, !llvm.loop !60

.prol.loopexit4221:                               ; preds = %.prol.preheader4220, %.preheader1918.preheader
  %indvars.iv2345.unr = phi i64 [ %i.bxf, %.preheader1918.preheader ], [ %indvars.iv.next2346.prol, %.prol.preheader4220 ]
  %i.bxu = icmp ult i64 %i.bxh, 3
  br i1 %i.bxu, label %._crit_edge2003.preheader, label %.preheader1918.preheader.new

.lr.ph1995:                                       ; preds = %.lr.ph1995.preheader, %._crit_edge1996
  %indvars.iv2340 = phi i64 [ %i.bvu, %.lr.ph1995.preheader ], [ %indvars.iv.next2341, %._crit_edge1996 ] ; 4 uses
  %i.bxv = add nsw i64 %indvars.iv2340, %indvars.iv2497
  %indvars.iv2340.tr = trunc i64 %indvars.iv2340 to i32
  %i.bxw = shl i32 %indvars.iv2340.tr, 2
  %.tr.i1816 = and i32 %i.bxw, 28                 ; 2 uses
  %i.bxx = lshr i32 %i.q, %.tr.i1816              ; 2 uses
  %i.bxy = and i32 %i.bxx, 3                      ; 2 uses
  %i.bxz = or disjoint i32 %.tr.i1816, 2
  %i.bya = lshr i32 %i.q, %i.bxz
  %i.byb = xor i32 %i.bya, %i.bxx
  %i.byc = and i32 %i.byb, 3                      ; 5 uses
  %i.byd = mul nsw i64 %i.bxv, %i.af
  %.idx = shl nuw nsw i64 %indvars.iv2340, 9      ; 9 uses
  %gep2979 = getelementptr [4 x i8], ptr %invariant.gep2978, i64 %i.byd ; 9 uses
  br i1 %lcmp.mod4219.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph1995, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.bxb, %.lr.ph1995 ] ; 3 uses
  %.016311993.prol = phi i32 [ %i.byk, %.prol.preheader ], [ %i.bxy, %.lr.ph1995 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph1995 ]
  %gep.prol = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.prol
  %i.bye = load float, ptr %gep.prol, align 4, !tbaa !58
  %i.byf = zext nneg i32 %.016311993.prol to i64
  %i.byg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byf
  %i.byh = load ptr, ptr %i.byg, align 8, !tbaa !59
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 %.idx
  %i.byj = getelementptr inbounds nuw [4 x i8], ptr %i.byi, i64 %indvars.iv.prol
  store float %i.bye, ptr %i.byj, align 4, !tbaa !58
  %i.byk = xor i32 %.016311993.prol, %i.byc       ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4218
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !62

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph1995
  %indvars.iv.unr = phi i64 [ %i.bxb, %.lr.ph1995 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %.016311993.unr = phi i32 [ %i.bxy, %.lr.ph1995 ], [ %i.byk, %.prol.preheader ] ; 8 uses
  br i1 %i.bxd, label %._crit_edge1996, label %.lr.ph1995.new

.lr.ph1995.new:                                   ; preds = %.prol.loopexit
  %i.byl = zext nneg i32 %.016311993.unr to i64
  %i.bym = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byl
  %i.byn = load ptr, ptr %i.bym, align 8, !tbaa !59
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 %.idx
  %i.byp = xor i32 %.016311993.unr, %i.byc
  %i.byq = zext nneg i32 %i.byp to i64
  %i.byr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byq
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !59
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bys, i64 %.idx
  %i.byu = zext nneg i32 %.016311993.unr to i64
  %i.byv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byu
  %i.byw = load ptr, ptr %i.byv, align 8, !tbaa !59
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byw, i64 %.idx
  %i.byy = xor i32 %.016311993.unr, %i.byc
  %i.byz = zext nneg i32 %i.byy to i64
  %i.bza = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.byz
  %i.bzb = load ptr, ptr %i.bza, align 8, !tbaa !59
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.bzb, i64 %.idx
  %i.bzd = zext nneg i32 %.016311993.unr to i64
  %i.bze = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzd
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !59
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 %.idx
  %i.bzh = xor i32 %.016311993.unr, %i.byc
  %i.bzi = zext nneg i32 %i.bzh to i64
  %i.bzj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzi
  %i.bzk = load ptr, ptr %i.bzj, align 8, !tbaa !59
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 %.idx
  %i.bzm = zext nneg i32 %.016311993.unr to i64
  %i.bzn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzm
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !59
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 %.idx
  %i.bzq = xor i32 %.016311993.unr, %i.byc
  %i.bzr = zext nneg i32 %i.bzq to i64
  %i.bzs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bzr
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !59
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 %.idx
  br label %bb.q

._crit_edge1996:                                  ; preds = %bb.q, %.prol.loopexit
  %indvars.iv.next2341 = add nuw nsw i64 %indvars.iv2340, 1 ; 2 uses
  %exitcond2344.not = icmp eq i64 %indvars.iv.next2341, %wide.trip.count2343
  br i1 %exitcond2344.not, label %._crit_edge2000.split, label %.lr.ph1995

bb.q:                                             ; preds = %bb.q, %.lr.ph1995.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph1995.new ], [ %indvars.iv.next.7, %bb.q ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv
  %i.bzv = load float, ptr %gep, align 4, !tbaa !58
  %i.bzw = getelementptr inbounds nuw [4 x i8], ptr %i.byo, i64 %indvars.iv
  store float %i.bzv, ptr %i.bzw, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.next
  %i.bzx = load float, ptr %gep.1, align 4, !tbaa !58
  %i.bzy = getelementptr inbounds nuw [4 x i8], ptr %i.byt, i64 %indvars.iv.next
  store float %i.bzx, ptr %i.bzy, align 4, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.next.1
  %i.bzz = load float, ptr %gep.2, align 4, !tbaa !58
  %i.caa = getelementptr inbounds nuw [4 x i8], ptr %i.byx, i64 %indvars.iv.next.1
  store float %i.bzz, ptr %i.caa, align 4, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.next.2
  %i.cab = load float, ptr %gep.3, align 4, !tbaa !58
  %i.cac = getelementptr inbounds nuw [4 x i8], ptr %i.bzc, i64 %indvars.iv.next.2
  store float %i.cab, ptr %i.cac, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.next.3
  %i.cad = load float, ptr %gep.4, align 4, !tbaa !58
  %i.cae = getelementptr inbounds nuw [4 x i8], ptr %i.bzg, i64 %indvars.iv.next.3
  store float %i.cad, ptr %i.cae, align 4, !tbaa !58
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.next.4
  %i.caf = load float, ptr %gep.5, align 4, !tbaa !58
  %i.cag = getelementptr inbounds nuw [4 x i8], ptr %i.bzl, i64 %indvars.iv.next.4
  store float %i.caf, ptr %i.cag, align 4, !tbaa !58
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %gep2979, i64 %indvars.iv.next.5
  %i.cah = load float, ptr %gep.6, align 4, !tbaa !58
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.drp = getelementptr i8, ptr %i.dro, i64 3600
  store float %i.drm, ptr %i.drp, align 4, !tbaa !58
  %exitcond2406.not.4 = icmp eq i32 %i.djm, 5
  br i1 %exitcond2406.not.4, label %.loopexit1947.split, label %._crit_edge2023.6.5

._crit_edge2023.6.5:                              ; preds = %._crit_edge2023.6.4
  %i.drq = load float, ptr %i.ajv, align 4, !tbaa !58
  %i.drr = load ptr, ptr %i.ajx, align 8, !tbaa !59
  %i.drs = getelementptr [4 x i8], ptr %i.drr, i64 %i.djk
  %i.drt = getelementptr i8, ptr %i.drs, i64 3604
  store float %i.drq, ptr %i.drt, align 4, !tbaa !58
  %exitcond2406.not.5 = icmp eq i32 %i.djm, 6
  br i1 %exitcond2406.not.5, label %.loopexit1947.split, label %._crit_edge2023.6.6

._crit_edge2023.6.6:                              ; preds = %._crit_edge2023.6.5
  %i.dru = load float, ptr %i.akc, align 4, !tbaa !58
  %i.drv = load ptr, ptr %i.ake, align 8, !tbaa !59
  %i.drw = getelementptr [4 x i8], ptr %i.drv, i64 %i.djk
  %i.drx = getelementptr i8, ptr %i.drw, i64 3608
  store float %i.dru, ptr %i.drx, align 4, !tbaa !58
  %exitcond2406.not.6 = icmp eq i32 %i.djm, 7
  br i1 %exitcond2406.not.6, label %.loopexit1947.split, label %._crit_edge2023.6.7

._crit_edge2023.6.7:                              ; preds = %._crit_edge2023.6.6
  %i.dry = load float, ptr %i.aki, align 4, !tbaa !58
  %i.drz = load ptr, ptr %i.akk, align 8, !tbaa !59
  %i.dsa = getelementptr [4 x i8], ptr %i.drz, i64 %i.djk
  %i.dsb = getelementptr i8, ptr %i.dsa, i64 3612
  store float %i.dry, ptr %i.dsb, align 4, !tbaa !58
  br label %.loopexit1947.split

bb.v:                                             ; preds = %.preheader1912.preheader
  %i.dsc = load float, ptr %i.ue, align 4, !tbaa !58
  %i.dsd = load ptr, ptr %i.ug, align 8, !tbaa !59
  %i.dse = getelementptr i8, ptr %i.dsd, i64 4
  %i.dsf = getelementptr [4 x i8], ptr %i.dse, i64 %i.djk
  store float %i.dsc, ptr %i.dsf, align 4, !tbaa !58
  %exitcond2434.not.1 = icmp eq i32 %i.djm, 2
  br i1 %exitcond2434.not.1, label %._crit_edge2023.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dsg = load float, ptr %i.uk, align 4, !tbaa !58
  %i.dsh = load ptr, ptr %i.um, align 8, !tbaa !59
  %i.dsi = getelementptr i8, ptr %i.dsh, i64 8
  %i.dsj = getelementptr [4 x i8], ptr %i.dsi, i64 %i.djk
  store float %i.dsg, ptr %i.dsj, align 4, !tbaa !58
  %exitcond2434.not.2 = icmp eq i32 %i.djm, 3
  br i1 %exitcond2434.not.2, label %._crit_edge2023.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dsk = load float, ptr %i.ur, align 4, !tbaa !58
  %i.dsl = load ptr, ptr %i.ut, align 8, !tbaa !59
  %i.dsm = getelementptr i8, ptr %i.dsl, i64 12
  %i.dsn = getelementptr [4 x i8], ptr %i.dsm, i64 %i.djk
  store float %i.dsk, ptr %i.dsn, align 4, !tbaa !58
  %exitcond2434.not.3 = icmp eq i32 %i.djm, 4
  br i1 %exitcond2434.not.3, label %._crit_edge2023.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dso = load float, ptr %i.ux, align 4, !tbaa !58
  %i.dsp = load ptr, ptr %i.uz, align 8, !tbaa !59
  %i.dsq = getelementptr i8, ptr %i.dsp, i64 16
  %i.dsr = getelementptr [4 x i8], ptr %i.dsq, i64 %i.djk
  store float %i.dso, ptr %i.dsr, align 4, !tbaa !58
  %exitcond2434.not.4 = icmp eq i32 %i.djm, 5
  br i1 %exitcond2434.not.4, label %._crit_edge2023.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dss = load float, ptr %i.ve, align 4, !tbaa !58
  %i.dst = load ptr, ptr %i.vg, align 8, !tbaa !59
  %i.dsu = getelementptr i8, ptr %i.dst, i64 20
  %i.dsv = getelementptr [4 x i8], ptr %i.dsu, i64 %i.djk
  store float %i.dss, ptr %i.dsv, align 4, !tbaa !58
  %exitcond2434.not.5 = icmp eq i32 %i.djm, 6
  br i1 %exitcond2434.not.5, label %._crit_edge2023.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dsw = load float, ptr %i.vk, align 4, !tbaa !58
  %i.dsx = load ptr, ptr %i.vm, align 8, !tbaa !59
  %i.dsy = getelementptr i8, ptr %i.dsx, i64 24
  %i.dsz = getelementptr [4 x i8], ptr %i.dsy, i64 %i.djk
  store float %i.dsw, ptr %i.dsz, align 4, !tbaa !58
  %exitcond2434.not.6 = icmp eq i32 %i.djm, 7
  br i1 %exitcond2434.not.6, label %._crit_edge2023.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dta = load float, ptr %i.vr, align 4, !tbaa !58
  %i.dtb = load ptr, ptr %i.vt, align 8, !tbaa !59
  %i.dtc = getelementptr i8, ptr %i.dtb, i64 28
  %i.dtd = getelementptr [4 x i8], ptr %i.dtc, i64 %i.djk
  store float %i.dta, ptr %i.dtd, align 4, !tbaa !58
  br label %._crit_edge2023.preheader

._crit_edge2023.preheader:                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader1912.preheader
  %i.dte = load float, ptr %i.vx, align 4, !tbaa !58
  %i.dtf = load ptr, ptr %i.vz, align 8, !tbaa !59
  %i.dtg = getelementptr [4 x i8], ptr %i.dtf, i64 %i.djk
  %i.dth = getelementptr i8, ptr %i.dtg, i64 512
  store float %i.dte, ptr %i.dth, align 4, !tbaa !58
  %exitcond2430.not = icmp slt i32 %i.djm, 2
  br i1 %exitcond2430.not, label %._crit_edge2023.1, label %._crit_edge2023.14287

.loopexit1947.split:                              ; preds = %._crit_edge2023.6, %._crit_edge2023.6.1, %._crit_edge2023.6.2, %._crit_edge2023.6.3, %._crit_edge2023.6.4, %._crit_edge2023.6.5, %._crit_edge2023.6.6, %._crit_edge2023.6.7, %.loopexit1949
  %or.cond9 = and i1 %i.bvh, %i.bwu
  %brmerge2287.not = select i1 %or.cond9, i1 %i.bvk, i1 false
  br i1 %brmerge2287.not, label %.preheader1911, label %.loopexit1945

.preheader1911:                                   ; preds = %.loopexit1947.split, %.preheader1911
  %indvars.iv2439 = phi i64 [ %indvars.iv.next2440, %.preheader1911 ], [ 0, %.loopexit1947.split ] ; 5 uses
  %i.dti = trunc nuw nsw i64 %indvars.iv2439 to i32
  %i.dtj = sub i32 %i.ev, %i.dti
  %i.dtk = mul nsw i32 %i.dtj, %i.ae              ; 8 uses
  %reass.sub1791 = add i32 %i.dtk, 16
  %i.dtl = add nsw i64 %indvars.iv2439, %i.bvv
  %i.dtm = shl nsw i64 %i.dtl, 7                  ; 8 uses
  %indvars.iv2439.tr = trunc i64 %indvars.iv2439 to i32
  %i.dtn = shl i32 %indvars.iv2439.tr, 2
  %i.dto = lshr i32 %i.q, %i.dtn
  %i.dtp = and i32 %i.dto, 3
  %i.dtq = sext i32 %reass.sub1791 to i64
  %i.dtr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dtq
  %i.dts = load float, ptr %i.dtr, align 4, !tbaa !58
  %i.dtt = zext nneg i32 %i.dtp to i64
  %i.dtu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dtt
  %i.dtv = load ptr, ptr %i.dtu, align 8, !tbaa !59 ; 4 uses
  %i.dtw = getelementptr inbounds [4 x i8], ptr %i.dtv, i64 %i.dtm
  store float %i.dts, ptr %i.dtw, align 4, !tbaa !58
  %indvars.iv2439.tr2941 = trunc i64 %indvars.iv2439 to i32
  %i.dtx = shl i32 %indvars.iv2439.tr2941, 2
  %i.dty = or disjoint i32 %i.dtx, 2
  %i.dtz = lshr i32 %i.q, %i.dty
  %i.dua = and i32 %i.dtz, 3
  %i.dub = add i32 %i.dtk, 15
  %i.duc = sext i32 %i.dub to i64
  %i.dud = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.duc
  %i.due = load float, ptr %i.dud, align 4, !tbaa !58
  %i.duf = zext nneg i32 %i.dua to i64
  %i.dug = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.duf
  %i.duh = load ptr, ptr %i.dug, align 8, !tbaa !59 ; 4 uses
  %i.dui = getelementptr [4 x i8], ptr %i.duh, i64 %i.dtm
  %i.duj = getelementptr i8, ptr %i.dui, i64 4
  store float %i.due, ptr %i.duj, align 4, !tbaa !58
  %i.duk = add i32 %i.dtk, 14
  %i.dul = sext i32 %i.duk to i64
  %i.dum = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dul
  %i.dun = load float, ptr %i.dum, align 4, !tbaa !58
  %i.duo = getelementptr [4 x i8], ptr %i.dtv, i64 %i.dtm
  %i.dup = getelementptr i8, ptr %i.duo, i64 8
  store float %i.dun, ptr %i.dup, align 4, !tbaa !58
  %i.duq = add i32 %i.dtk, 13
  %i.dur = sext i32 %i.duq to i64
  %i.dus = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dur
  %i.dut = load float, ptr %i.dus, align 4, !tbaa !58
  %i.duu = getelementptr [4 x i8], ptr %i.duh, i64 %i.dtm
  %i.duv = getelementptr i8, ptr %i.duu, i64 12
  store float %i.dut, ptr %i.duv, align 4, !tbaa !58
  %i.duw = add i32 %i.dtk, 12
  %i.dux = sext i32 %i.duw to i64
  %i.duy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dux
  %i.duz = load float, ptr %i.duy, align 4, !tbaa !58
  %i.dva = getelementptr [4 x i8], ptr %i.dtv, i64 %i.dtm
  %i.dvb = getelementptr i8, ptr %i.dva, i64 16
  store float %i.duz, ptr %i.dvb, align 4, !tbaa !58
  %i.dvc = add i32 %i.dtk, 11
  %i.dvd = sext i32 %i.dvc to i64
  %i.dve = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dvd
  %i.dvf = load float, ptr %i.dve, align 4, !tbaa !58
  %i.dvg = getelementptr [4 x i8], ptr %i.duh, i64 %i.dtm
  %i.dvh = getelementptr i8, ptr %i.dvg, i64 20
  store float %i.dvf, ptr %i.dvh, align 4, !tbaa !58
  %i.dvi = add i32 %i.dtk, 10
  %i.dvj = sext i32 %i.dvi to i64
  %i.dvk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dvj
  %i.dvl = load float, ptr %i.dvk, align 4, !tbaa !58
  %i.dvm = getelementptr [4 x i8], ptr %i.dtv, i64 %i.dtm
  %i.dvn = getelementptr i8, ptr %i.dvm, i64 24
  store float %i.dvl, ptr %i.dvn, align 4, !tbaa !58
  %i.dvo = add i32 %i.dtk, 9
  %i.dvp = sext i32 %i.dvo to i64
  %i.dvq = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dvp
  %i.dvr = load float, ptr %i.dvq, align 4, !tbaa !58
  %i.dvs = getelementptr [4 x i8], ptr %i.duh, i64 %i.dtm
  %i.dvt = getelementptr i8, ptr %i.dvs, i64 28
  store float %i.dvr, ptr %i.dvt, align 4, !tbaa !58
  %indvars.iv.next2440 = add nuw nsw i64 %indvars.iv2439, 1 ; 2 uses
  %i.dvu = icmp slt i64 %indvars.iv.next2440, %i.bvw
  br i1 %i.dvu, label %.preheader1911, label %.loopexit1945

.loopexit1945:                                    ; preds = %.preheader1911, %.loopexit1947.split
  br i1 %i.bvo, label %.lr.ph2038, label %.preheader1942.thread

.lr.ph2038:                                       ; preds = %.loopexit1945
  %i.dvv = add nsw i32 %i.bwt, -3                 ; 2 uses
  %i.dvw = trunc i64 %indvars.iv2493 to i32
  %i.dvx = or disjoint i32 %i.dvw, 3
  %i.dvy = tail call i32 @llvm.smax.i32(i32 %i.dvx, i32 0)
  %i.dvz = trunc i64 %indvars.iv2493 to i32
  %i.dwa = add nsw i32 %i.bwr, -3
  %. = tail call i32 @llvm.smin.i32(i32 %i.dwa, i32 %i.ae) ; 2 uses
  %i.dwb = icmp sge i32 %i.dvy, %.
  %10 = zext nneg i32 %. to i64
  %i.dwc = sub i32 384, %i.dvz
  %i.dwd = select i1 %i.bwu, i32 %i.dwc, i32 387
  %i.dwe = add i32 %smin3866, %i.bwd
  %i.dwf = add i32 %smin3875, %i.bwb
  %min.iters.check3831 = icmp ult i64 %i.bwg, 8
  %min.iters.check3833 = icmp ult i64 %i.bwg, 32
  %i.dwg = and i64 %i.bwg, 24
  %n.vec3835 = and i64 %i.bwg, -32                ; 5 uses
  %i.dwh = add nsw i64 %n.vec3835, %i.bwm
  %cmp.n3844 = icmp eq i64 %i.bwg, %n.vec3835
  %min.epilog.iters.check3851 = icmp eq i64 %i.dwg, 0
  %n.vec3853 = and i64 %i.bwg, -8                 ; 4 uses
  %i.dwi = add nsw i64 %n.vec3853, %i.bwm
  %cmp.n3859 = icmp eq i64 %i.bwg, %n.vec3853
  br label %bb.ac

.preheader1943:                                   ; preds = %.loopexit1910
  br i1 %i.bvq, label %.lr.ph2045, label %.preheader1942.thread

.lr.ph2045:                                       ; preds = %.preheader1943
  %i.dwj = add nsw i32 %i.bwt, -4                 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph2038, %.loopexit1910
  %indvar3825 = phi i64 [ 0, %.lr.ph2038 ], [ %indvar.next3826, %.loopexit1910 ] ; 2 uses
  %indvars.iv2466 = phi i64 [ 3, %.lr.ph2038 ], [ %indvars.iv.next2467, %.loopexit1910 ] ; 3 uses
  %indvars.iv2459 = phi i32 [ %i.dwd, %.lr.ph2038 ], [ %indvars.iv.next2460, %.loopexit1910 ] ; 3 uses
  %indvars.iv2442 = phi i32 [ 387, %.lr.ph2038 ], [ %indvars.iv.next2443, %.loopexit1910 ] ; 2 uses
  %i.dwk = mul i64 %i.qb, %indvar3825
  %i.dwl = add i64 %i.bwj, %i.dwk
  %i.dwm = sext i32 %indvars.iv2459 to i64
  %i.dwn = shl nsw i64 %i.dwm, 2
  %i.dwo = sext i32 %indvars.iv2459 to i64        ; 5 uses
  %i.dwp = add nsw i64 %indvars.iv2466, %indvars.iv2497 ; 3 uses
  %indvars.iv2466.tr = trunc i64 %indvars.iv2466 to i32
  %i.dwq = shl i32 %indvars.iv2466.tr, 1
  %i.dwr = and i32 %i.dwq, 14                     ; 2 uses
  %.tr.i1826 = shl nuw nsw i32 %i.dwr, 1
  %i.dws = or disjoint i32 %.tr.i1826, 2
  %i.dwt = lshr i32 %i.q, %i.dws
  %i.dwu = and i32 %i.dwt, 1                      ; 4 uses
  %i.dwv = add nuw nsw i32 %i.dwu, 3              ; 5 uses
  %i.dww = icmp slt i32 %i.dwv, %i.dvv
  br i1 %i.dww, label %.lr.ph2030, label %._crit_edge2031

.lr.ph2030:                                       ; preds = %bb.ac
  %i.dwx = and i32 %i.dwv, 1
  %i.dwy = or disjoint i32 %i.dwx, %i.dwr
  %i.dwz = shl nuw nsw i32 %i.dwy, 1
  %i.dxa = lshr i32 %i.q, %i.dwz
  %i.dxb = and i32 %i.dxa, 3
  %i.dxc = zext nneg i32 %i.dxb to i64
  %i.dxd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dxc
  %i.dxe = load ptr, ptr %i.dxd, align 8, !tbaa !59 ; 6 uses
  %i.dxf = add i32 %indvars.iv2442, %i.dwu
  %i.dxg = zext i32 %i.dxf to i64                 ; 6 uses
  %i.dxh = sub i32 %i.dwf, %i.dwu                 ; 2 uses
  %i.dxi = lshr i32 %i.dxh, 1
  %narrow = add nuw i32 %i.dxi, 1
  %i.dxj = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check3877 = icmp ult i32 %i.dxh, 16
  br i1 %min.iters.check3877, label %scalar.ph3876.preheader, label %vector.memcheck3862

scalar.ph3876.preheader:                          ; preds = %vector.body3883, %vector.memcheck3862, %.lr.ph2030
  %indvars.iv2444.ph = phi i64 [ %i.dxg, %vector.memcheck3862 ], [ %i.dxg, %.lr.ph2030 ], [ %i.dxu, %vector.body3883 ]
  %.016632028.ph = phi i32 [ %i.dwv, %vector.memcheck3862 ], [ %i.dwv, %.lr.ph2030 ], [ %i.dxx, %vector.body3883 ]
  br label %scalar.ph3876

vector.memcheck3862:                              ; preds = %.lr.ph2030
  %i.dxk = shl nuw nsw i64 %i.dxg, 2              ; 3 uses
  %scevgep3864 = getelementptr i8, ptr %scevgep3863, i64 %i.dxk
  %i.dxl = sub i32 %i.dwe, %i.dwu
  %i.dxm = lshr i32 %i.dxl, 1
  %i.dxn = zext nneg i32 %i.dxm to i64
  %i.dxo = shl nuw nsw i64 %i.dxn, 3
  %i.dxp = add nuw nsw i64 %i.dxo, %i.dxk         ; 2 uses
  %scevgep3867 = getelementptr i8, ptr %scevgep3865, i64 %i.dxp
  %scevgep3868 = getelementptr i8, ptr %i.dxe, i64 -1024
  %scevgep3869 = getelementptr i8, ptr %scevgep3868, i64 %i.dxk
  %scevgep3870 = getelementptr i8, ptr %i.dxe, i64 1028
  %scevgep3871 = getelementptr i8, ptr %scevgep3870, i64 %i.dxp
  %bound03872 = icmp ult ptr %scevgep3864, %scevgep3871
  %bound13873 = icmp ult ptr %scevgep3869, %scevgep3867
  %found.conflict3874 = and i1 %bound03872, %bound13873
  br i1 %found.conflict3874, label %scalar.ph3876.preheader, label %vector.ph3878

vector.ph3878:                                    ; preds = %vector.memcheck3862
  %i.dxq = and i64 %i.dxj, 7                      ; 2 uses
  %i.dxr = icmp eq i64 %i.dxq, 0
  %i.dxs = select i1 %i.dxr, i64 8, i64 %i.dxq
  %n.vec3879 = sub nsw i64 %i.dxj, %i.dxs         ; 3 uses
  %i.dxt = shl nsw i64 %n.vec3879, 1
  %i.dxu = add nsw i64 %i.dxt, %i.dxg
  %i.dxv = trunc i64 %n.vec3879 to i32
  %i.dxw = shl i32 %i.dxv, 1
  %i.dxx = add i32 %i.dwv, %i.dxw
  %broadcast.splatinsert3880 = insertelement <8 x i64> poison, i64 %i.dxg, i64 0
  %broadcast.splat3881 = shufflevector <8 x i64> %broadcast.splatinsert3880, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3882 = add nuw nsw <8 x i64> %broadcast.splat3881, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3883

vector.body3883:                                  ; preds = %vector.body3883, %vector.ph3878
  %index3884 = phi i64 [ 0, %vector.ph3878 ], [ %index.next3913, %vector.body3883 ] ; 2 uses
  %vec.ind3885 = phi <8 x i64> [ %induction3882, %vector.ph3878 ], [ %vec.ind.next3914, %vector.body3883 ] ; 2 uses
  %i.dxy = shl nuw i64 %index3884, 1
  %i.dxz = add nuw i64 %i.dxy, %i.dxg             ; 2 uses
  %wide.gep3886 = getelementptr inbounds nuw [4 x i8], ptr %i.btr, <8 x i64> %vec.ind3885 ; 2 uses
  %i.dya = extractelement <8 x ptr> %wide.gep3886, i64 0 ; 8 uses
  %i.dyb = getelementptr inbounds nuw i8, ptr %i.dya, i64 512
  %wide.vec3887 = load <16 x float>, ptr %i.dyb, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3888 = shufflevector <16 x float> %wide.vec3887, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyc = getelementptr i8, ptr %i.dya, i64 -512
  %wide.vec3889 = load <16 x float>, ptr %i.dyc, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3890 = shufflevector <16 x float> %wide.vec3889, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyd = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3888, %strided.vec3890
  %i.dye = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyd)
  %i.dyf = fadd reassoc nsz arcp contract afn <8 x float> %i.dye, splat (float f0x3727C5AC)
  %i.dyg = getelementptr inbounds nuw [4 x i8], ptr %i.dxe, i64 %i.dxz ; 4 uses
  %wide.vec3891 = load <16 x float>, ptr %i.dyg, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3892 = shufflevector <16 x float> %wide.vec3891, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dyh = getelementptr i8, ptr %i.dyg, i64 -1024
  %wide.vec3893 = load <16 x float>, ptr %i.dyh, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3894 = shufflevector <16 x float> %wide.vec3893, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3892, %strided.vec3894
  %i.dyj = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyi)
  %i.dyk = fadd reassoc nsz arcp contract afn <8 x float> %i.dyf, %i.dyj
  %i.dyl = getelementptr i8, ptr %i.dya, i64 -1536
  %wide.vec3895 = load <16 x float>, ptr %i.dyl, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3896 = shufflevector <16 x float> %wide.vec3895, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dym = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3890, %strided.vec3896
  %i.dyn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dym)
  %i.dyo = fadd reassoc nsz arcp contract afn <8 x float> %i.dyk, %i.dyn ; 2 uses
  %i.dyp = fmul reassoc nsz arcp contract afn <8 x float> %i.dyo, %i.dyo
  %i.dyq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dyp ; 2 uses
  %i.dyr = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3890, %strided.vec3888
  %i.dys = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyr)
  %i.dyt = fadd reassoc nsz arcp contract afn <8 x float> %i.dys, splat (float f0x3727C5AC)
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dyg, i64 1024
  %wide.vec3897 = load <16 x float>, ptr %i.dyu, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3898 = shufflevector <16 x float> %wide.vec3897, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3892, %strided.vec3898
  %i.dyw = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyv)
  %i.dyx = fadd reassoc nsz arcp contract afn <8 x float> %i.dyt, %i.dyw
  %i.dyy = getelementptr inbounds nuw i8, ptr %i.dya, i64 1536
  %wide.vec3899 = load <16 x float>, ptr %i.dyy, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3900 = shufflevector <16 x float> %wide.vec3899, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dyz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3888, %strided.vec3900
  %i.dza = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dyz)
  %i.dzb = fadd reassoc nsz arcp contract afn <8 x float> %i.dyx, %i.dza ; 2 uses
  %i.dzc = fmul reassoc nsz arcp contract afn <8 x float> %i.dzb, %i.dzb
  %i.dzd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzc ; 2 uses
  %i.dze = getelementptr inbounds nuw i8, ptr %i.dya, i64 4
  %wide.vec3901 = load <16 x float>, ptr %i.dze, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3902 = shufflevector <16 x float> %wide.vec3901, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dzf = getelementptr i8, ptr %i.dya, i64 -4
  %wide.vec3903 = load <16 x float>, ptr %i.dzf, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3904 = shufflevector <16 x float> %wide.vec3903, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %i.dzg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3902, %strided.vec3904
  %i.dzh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzg)
  %i.dzi = fadd reassoc nsz arcp contract afn <8 x float> %i.dzh, splat (float f0x3727C5AC)
  %i.dzj = getelementptr i8, ptr %i.dyg, i64 -8
  %wide.vec3905 = load <16 x float>, ptr %i.dzj, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3906 = shufflevector <16 x float> %wide.vec3905, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3892, %strided.vec3906
  %i.dzl = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzk)
  %i.dzm = fadd reassoc nsz arcp contract afn <8 x float> %i.dzi, %i.dzl
  %i.dzn = getelementptr i8, ptr %i.dya, i64 -12
  %wide.vec3907 = load <16 x float>, ptr %i.dzn, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3908 = shufflevector <16 x float> %wide.vec3907, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3904, %strided.vec3908
  %i.dzp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzo)
  %i.dzq = fadd reassoc nsz arcp contract afn <8 x float> %i.dzm, %i.dzp ; 2 uses
  %i.dzr = fmul reassoc nsz arcp contract afn <8 x float> %i.dzq, %i.dzq
  %i.dzs = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.dzr ; 2 uses
  %i.dzt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3904, %strided.vec3902
  %i.dzu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzt)
  %i.dzv = fadd reassoc nsz arcp contract afn <8 x float> %i.dzu, splat (float f0x3727C5AC)
  %i.dzw = getelementptr inbounds nuw [4 x i8], ptr %i.dxe, i64 %i.dxz
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dzw, i64 8
  %wide.vec3909 = load <16 x float>, ptr %i.dzx, align 4, !tbaa !58, !alias.scope !76
  %strided.vec3910 = shufflevector <16 x float> %wide.vec3909, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.dzy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3892, %strided.vec3910
  %i.dzz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dzy)
  %i.eaa = fadd reassoc nsz arcp contract afn <8 x float> %i.dzv, %i.dzz
  %i.eab = getelementptr inbounds nuw i8, ptr %i.dya, i64 12
  %wide.vec3911 = load <16 x float>, ptr %i.eab, align 4, !tbaa !58, !alias.scope !73, !noalias !76
  %strided.vec3912 = shufflevector <16 x float> %wide.vec3911, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.eac = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3902, %strided.vec3912
  %i.ead = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eac)
  %i.eae = fadd reassoc nsz arcp contract afn <8 x float> %i.eaa, %i.ead ; 2 uses
  %i.eaf = fmul reassoc nsz arcp contract afn <8 x float> %i.eae, %i.eae
  %i.eag = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.eaf ; 2 uses
  %i.eah = fmul reassoc nsz arcp contract afn <8 x float> %i.dyq, %strided.vec3890
  %i.eai = fmul reassoc nsz arcp contract afn <8 x float> %i.dzd, %strided.vec3888
  %i.eaj = fadd reassoc nsz arcp contract afn <8 x float> %i.eai, %i.eah
  %i.eak = fmul reassoc nsz arcp contract afn <8 x float> %i.dzs, %strided.vec3904
  %i.eal = fadd reassoc nsz arcp contract afn <8 x float> %i.eaj, %i.eak
  %i.eam = fmul reassoc nsz arcp contract afn <8 x float> %i.eag, %strided.vec3902
  %i.ean = fadd reassoc nsz arcp contract afn <8 x float> %i.eal, %i.eam
  %i.eao = fadd reassoc nsz arcp contract afn <8 x float> %i.dzd, %i.dyq
  %i.eap = fadd reassoc nsz arcp contract afn <8 x float> %i.eao, %i.dzs
  %i.eaq = fadd reassoc nsz arcp contract afn <8 x float> %i.eap, %i.eag
  %i.ear = fdiv reassoc nsz arcp contract afn <8 x float> %i.ean, %i.eaq
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ear, <8 x ptr> align 4 %wide.gep3886, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !73, !noalias !76
  %index.next3913 = add nuw i64 %index3884, 8     ; 2 uses
  %vec.ind.next3914 = add nuw nsw <8 x i64> %vec.ind3885, splat (i64 16)
  %i.eas = icmp eq i64 %index.next3913, %n.vec3879
  br i1 %i.eas, label %scalar.ph3876.preheader, label %vector.body3883, !llvm.loop !78

._crit_edge2031:                                  ; preds = %scalar.ph3876, %bb.ac
  %i.eat = icmp slt i64 %i.dwp, 0
  %i.eau = icmp sge i64 %i.dwp, %i.bk
  %or.cond1798.not3016 = or i1 %i.eat, %i.eau
  %brmerge3008 = select i1 %or.cond1798.not3016, i1 true, i1 %i.dwb
  br i1 %brmerge3008, label %.loopexit1910, label %iter.check3848

scalar.ph3876:                                    ; preds = %scalar.ph3876.preheader, %scalar.ph3876
  %indvars.iv2444 = phi i64 [ %indvars.iv.next2445, %scalar.ph3876 ], [ %indvars.iv2444.ph, %scalar.ph3876.preheader ] ; 3 uses
  %.016632028 = phi i32 [ %i.ecb, %scalar.ph3876 ], [ %.016632028.ph, %scalar.ph3876.preheader ]
  %i.eav = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %indvars.iv2444 ; 3 uses
  %i.eaw = getelementptr inbounds nuw [4 x i8], ptr %i.dxe, i64 %indvars.iv2444 ; 3 uses
  %i.eax = load float, ptr %i.eaw, align 4, !tbaa !58
  %i.eay = getelementptr i8, ptr %i.eaw, <2 x i64> <i64 -1024, i64 1024>
  %i.eaz = getelementptr i8, ptr %i.eaw, i64 -8
  %indvars.iv.next2445 = add nuw nsw i64 %indvars.iv2444, 2 ; 2 uses
  %i.eba = getelementptr inbounds nuw [4 x i8], ptr %i.dxe, i64 %indvars.iv.next2445
  %i.ebb = getelementptr i8, ptr %i.eav, <4 x i64> <i64 512, i64 -512, i64 -4, i64 4>
  %i.ebc = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebb, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58 ; 2 uses
  %i.ebd = getelementptr i8, ptr %i.eav, <4 x i64> <i64 -1536, i64 1536, i64 12, i64 -12>
  %i.ebe = shufflevector <4 x float> %i.ebc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.ebf = fsub reassoc nsz arcp contract afn <4 x float> %i.ebc, %i.ebe
  %i.ebg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebf)
  %i.ebh = fadd reassoc nsz arcp contract afn <4 x float> %i.ebg, splat (float f0x3727C5AC)
  %i.ebi = shufflevector <2 x ptr> %i.eay, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ebj = insertelement <4 x ptr> %i.ebi, ptr %i.eba, i64 2
  %i.ebk = insertelement <4 x ptr> %i.ebj, ptr %i.eaz, i64 3
  %i.ebl = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebk, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58
  %i.ebm = insertelement <4 x float> poison, float %i.eax, i64 0
  %i.ebn = shufflevector <4 x float> %i.ebm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ebo = fsub reassoc nsz arcp contract afn <4 x float> %i.ebn, %i.ebl
  %i.ebp = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebo)
  %i.ebq = fadd reassoc nsz arcp contract afn <4 x float> %i.ebh, %i.ebp
  %i.ebr = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ebd, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !58
  %i.ebs = fsub reassoc nsz arcp contract afn <4 x float> %i.ebe, %i.ebr
  %i.ebt = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ebs)
  %i.ebu = fadd reassoc nsz arcp contract afn <4 x float> %i.ebq, %i.ebt ; 2 uses
  %i.ebv = fmul reassoc nsz arcp contract afn <4 x float> %i.ebu, %i.ebu
  %i.ebw = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ebv ; 2 uses
  %i.ebx = fmul reassoc nsz arcp contract afn <4 x float> %i.ebw, %i.ebe
  %i.eby = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ebx)
  %i.ebz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ebw)
  %i.eca = fdiv reassoc nsz arcp contract afn float %i.eby, %i.ebz
  store float %i.eca, ptr %i.eav, align 4, !tbaa !58
  %i.ecb = add nuw nsw i32 %.016632028, 2         ; 2 uses
  %i.ecc = icmp slt i32 %i.ecb, %i.dvv
  br i1 %i.ecc, label %scalar.ph3876, label %._crit_edge2031, !llvm.loop !81

iter.check3848:                                   ; preds = %._crit_edge2031
  %i.ecd = mul nsw i64 %i.dwp, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %i.do, i64 %i.ecd ; 3 uses
  %i.ece = sub i64 %i.dwn, %i.dwl
  %diff.check = icmp ugt i64 %i.ece, -128
  %or.cond4056 = select i1 %min.iters.check3831, i1 true, i1 %diff.check
  br i1 %or.cond4056, label %vec.epilog.scalar.ph3849.preheader, label %vector.main.loop.iter.check3832

vector.main.loop.iter.check3832:                  ; preds = %iter.check3848
  br i1 %min.iters.check3833, label %vec.epilog.ph3852, label %vector.ph3834

vector.ph3834:                                    ; preds = %vector.main.loop.iter.check3832
  %i.ecf = add nsw i64 %n.vec3835, %i.dwo
  %invariant.gep4493 = getelementptr [4 x i8], ptr %i.btr, i64 %i.dwo
  %invariant.gep4495 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bwm
  br label %vector.body3836

vector.body3836:                                  ; preds = %vector.body3836, %vector.ph3834
  %index3837 = phi i64 [ 0, %vector.ph3834 ], [ %index.next3842, %vector.body3836 ] ; 3 uses
  %gep4494 = getelementptr [4 x i8], ptr %invariant.gep4493, i64 %index3837 ; 4 uses
  %i.ecg = getelementptr inbounds nuw i8, ptr %gep4494, i64 32
  %i.ech = getelementptr inbounds nuw i8, ptr %gep4494, i64 64
  %i.eci = getelementptr inbounds nuw i8, ptr %gep4494, i64 96
  %wide.load3838 = load <8 x float>, ptr %gep4494, align 4, !tbaa !58
  %wide.load3839 = load <8 x float>, ptr %i.ecg, align 4, !tbaa !58
  %wide.load3840 = load <8 x float>, ptr %i.ech, align 4, !tbaa !58
  %wide.load3841 = load <8 x float>, ptr %i.eci, align 4, !tbaa !58
  %gep4496 = getelementptr [4 x i8], ptr %invariant.gep4495, i64 %index3837 ; 4 uses
  %i.ecj = getelementptr i8, ptr %gep4496, i64 32
  %i.eck = getelementptr i8, ptr %gep4496, i64 64
  %i.ecl = getelementptr i8, ptr %gep4496, i64 96
  store <8 x float> %wide.load3838, ptr %gep4496, align 4, !tbaa !58
  store <8 x float> %wide.load3839, ptr %i.ecj, align 4, !tbaa !58
  store <8 x float> %wide.load3840, ptr %i.eck, align 4, !tbaa !58
  store <8 x float> %wide.load3841, ptr %i.ecl, align 4, !tbaa !58
  %index.next3842 = add nuw i64 %index3837, 32    ; 2 uses
  %i.ecm = icmp eq i64 %index.next3842, %n.vec3835
  br i1 %i.ecm, label %middle.block3843, label %vector.body3836, !llvm.loop !82

middle.block3843:                                 ; preds = %vector.body3836
  br i1 %cmp.n3844, label %.loopexit1910, label %vec.epilog.iter.check3850

vec.epilog.iter.check3850:                        ; preds = %middle.block3843
  br i1 %min.epilog.iters.check3851, label %vec.epilog.scalar.ph3849.preheader, label %vec.epilog.ph3852, !prof !83

vec.epilog.ph3852:                                ; preds = %vector.main.loop.iter.check3832, %vec.epilog.iter.check3850
  %vec.epilog.resume.val3845 = phi i64 [ %n.vec3835, %vec.epilog.iter.check3850 ], [ 0, %vector.main.loop.iter.check3832 ]
  %i.ecn = add nsw i64 %n.vec3853, %i.dwo
  %invariant.gep4497 = getelementptr [4 x i8], ptr %i.btr, i64 %i.dwo
  %invariant.gep4499 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bwm
  br label %vec.epilog.vector.body3854

vec.epilog.vector.body3854:                       ; preds = %vec.epilog.vector.body3854, %vec.epilog.ph3852
  %index3855 = phi i64 [ %vec.epilog.resume.val3845, %vec.epilog.ph3852 ], [ %index.next3857, %vec.epilog.vector.body3854 ] ; 3 uses
  %gep4498 = getelementptr [4 x i8], ptr %invariant.gep4497, i64 %index3855
  %wide.load3856 = load <8 x float>, ptr %gep4498, align 4, !tbaa !58
  %gep4500 = getelementptr [4 x i8], ptr %invariant.gep4499, i64 %index3855
  store <8 x float> %wide.load3856, ptr %gep4500, align 4, !tbaa !58
  %index.next3857 = add nuw i64 %index3855, 8     ; 2 uses
  %i.eco = icmp eq i64 %index.next3857, %n.vec3853
  br i1 %i.eco, label %vec.epilog.middle.block3858, label %vec.epilog.vector.body3854, !llvm.loop !84

vec.epilog.middle.block3858:                      ; preds = %vec.epilog.vector.body3854
  br i1 %cmp.n3859, label %.loopexit1910, label %vec.epilog.scalar.ph3849.preheader

vec.epilog.scalar.ph3849.preheader:               ; preds = %iter.check3848, %vec.epilog.iter.check3850, %vec.epilog.middle.block3858
  %indvars.iv2461.ph = phi i64 [ %i.dwo, %iter.check3848 ], [ %i.ecf, %vec.epilog.iter.check3850 ], [ %i.ecn, %vec.epilog.middle.block3858 ]
  %indvars.iv2457.ph = phi i64 [ %i.bwm, %iter.check3848 ], [ %i.dwh, %vec.epilog.iter.check3850 ], [ %i.dwi, %vec.epilog.middle.block3858 ]
  br label %vec.epilog.scalar.ph3849

vec.epilog.scalar.ph3849:                         ; preds = %vec.epilog.scalar.ph3849.preheader, %vec.epilog.scalar.ph3849
  %indvars.iv2461 = phi i64 [ %indvars.iv.next2462, %vec.epilog.scalar.ph3849 ], [ %indvars.iv2461.ph, %vec.epilog.scalar.ph3849.preheader ] ; 2 uses
  %indvars.iv2457 = phi i64 [ %indvars.iv.next2458, %vec.epilog.scalar.ph3849 ], [ %indvars.iv2457.ph, %vec.epilog.scalar.ph3849.preheader ] ; 2 uses
  %i.ecp = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %indvars.iv2461
  %i.ecq = load float, ptr %i.ecp, align 4, !tbaa !58
  %gep2980 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2457
  store float %i.ecq, ptr %gep2980, align 4, !tbaa !58
  %indvars.iv.next2458 = add nuw nsw i64 %indvars.iv2457, 1 ; 2 uses
  %indvars.iv.next2462 = add nsw i64 %indvars.iv2461, 1
  %11 = icmp samesign ult i64 %indvars.iv.next2458, %10
  br i1 %11, label %vec.epilog.scalar.ph3849, label %.loopexit1910, !llvm.loop !85

.loopexit1910:                                    ; preds = %vec.epilog.scalar.ph3849, %middle.block3843, %vec.epilog.middle.block3858, %._crit_edge2031
  %indvars.iv.next2467 = add nuw nsw i64 %indvars.iv2466, 1 ; 2 uses
  %i.ecr = icmp slt i64 %indvars.iv.next2467, %i.bvx
  %indvars.iv.next2443 = add i32 %indvars.iv2442, 128
  %indvars.iv.next2460 = add i32 %indvars.iv2459, 128
  %indvar.next3826 = add i64 %indvar3825, 1
  br i1 %i.ecr, label %bb.ac, label %.preheader1943

.preheader1942.thread:                            ; preds = %.preheader1943, %.loopexit1945
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !tbaa !58
  br label %.preheader1908.1

.preheader1942:                                   ; preds = %._crit_edge2043
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !tbaa !58
  br i1 %i.bvs, label %.lr.ph2066, label %.preheader1908.1

bb.ad:                                            ; preds = %.lr.ph2045, %._crit_edge2043
  %indvars.iv2469 = phi i32 [ 516, %.lr.ph2045 ], [ %indvars.iv.next2470, %._crit_edge2043 ] ; 2 uses
  %.016762044 = phi i32 [ 4, %.lr.ph2045 ], [ %i.edi, %._crit_edge2043 ] ; 2 uses
  %i.ecs = shl nuw i32 %.016762044, 1
  %i.ect = and i32 %i.ecs, 14                     ; 2 uses
  %i.ecu = shl nuw nsw i32 %i.ect, 1
  %i.ecv = lshr i32 %i.q, %i.ecu
  %i.ecw = and i32 %i.ecv, 1                      ; 3 uses
  %i.ecx = or disjoint i32 %i.ecw, 4              ; 2 uses
  %i.ecy = icmp slt i32 %i.ecx, %i.dwj
  br i1 %i.ecy, label %.lr.ph2042, label %._crit_edge2043

.lr.ph2042:                                       ; preds = %bb.ad
  %i.ecz = or disjoint i32 %i.ecw, %i.ect
  %i.eda = shl nuw nsw i32 %i.ecz, 1
  %i.edb = lshr i32 %i.q, %i.eda
  %i.edc = and i32 %i.edb, 3
  %i.edd = zext nneg i32 %i.edc to i64
  %i.ede = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.edd
  %i.edf = load ptr, ptr %i.ede, align 8, !tbaa !59 ; 9 uses
  %i.edg = or disjoint i32 %indvars.iv2469, %i.ecw
  %i.edh = sext i32 %i.edg to i64
  br label %bb.ae

._crit_edge2043:                                  ; preds = %bb.ae, %bb.ad
  %i.edi = add nuw nsw i32 %.016762044, 1         ; 2 uses
  %i.edj = icmp slt i32 %i.edi, %i.bvp
  %indvars.iv.next2470 = add i32 %indvars.iv2469, 128
  br i1 %i.edj, label %bb.ad, label %.preheader1942

bb.ae:                                            ; preds = %.lr.ph2042, %bb.ae
  %indvars.iv2471 = phi i64 [ %i.edh, %.lr.ph2042 ], [ %indvars.iv.next2472, %bb.ae ] ; 11 uses
  %.016792040 = phi i32 [ %i.ecx, %.lr.ph2042 ], [ %i.ehx, %bb.ae ]
  %i.edk = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %indvars.iv2471 ; 3 uses
  %i.edl = load float, ptr %i.edk, align 4, !tbaa !58
  %i.edm = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %indvars.iv2471 ; 6 uses
  %i.edn = load float, ptr %i.edm, align 4, !tbaa !58
  %i.edo = fsub reassoc nsz arcp contract afn float %i.edl, %i.edn ; 2 uses
  %i.edp = add nuw nsw i64 %indvars.iv2471, 512   ; 2 uses
  %i.edq = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.edp
  %i.edr = load float, ptr %i.edq, align 4, !tbaa !58
  %i.eds = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %i.edp
  %i.edt = load float, ptr %i.eds, align 4, !tbaa !58
  %i.edu = fsub reassoc nsz arcp contract afn float %i.edr, %i.edt ; 2 uses
  %i.edv = fsub reassoc nsz arcp contract afn float %i.edo, %i.edu
  %i.edw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.edv)
  %i.edx = add nsw i64 %indvars.iv2471, -512      ; 2 uses
  %i.edy = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.edx
  %i.edz = load float, ptr %i.edy, align 4, !tbaa !58
  %i.eea = getelementptr inbounds [4 x i8], ptr %i.edf, i64 %i.edx
  %i.eeb = load float, ptr %i.eea, align 4, !tbaa !58
  %i.eec = fsub reassoc nsz arcp contract afn float %i.edz, %i.eeb ; 2 uses
  %i.eed = fsub reassoc nsz arcp contract afn float %i.eec, %i.edo
  %i.eee = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eed)
  %i.eef = fadd reassoc nsz arcp contract afn float %i.eee, %i.edw
  %i.eeg = fsub reassoc nsz arcp contract afn float %i.eec, %i.edu
  %i.eeh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eeg)
  %i.eei = fsub reassoc nsz arcp contract afn float %i.eef, %i.eeh
  %i.eej = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eei)
  %i.eek = lshr i64 %indvars.iv2471, 1
  %i.eel = and i64 %i.eek, 2147483647             ; 6 uses
  %i.eem = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.eel
  store float %i.eej, ptr %i.eem, align 4, !tbaa !58
  %i.een = load float, ptr %i.edk, align 4, !tbaa !58
  %i.eeo = load float, ptr %i.edm, align 4, !tbaa !58
  %i.eep = fsub reassoc nsz arcp contract afn float %i.een, %i.eeo ; 2 uses
  %i.eeq = add nuw nsw i64 %indvars.iv2471, 4     ; 2 uses
  %i.eer = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.eeq
  %i.ees = load float, ptr %i.eer, align 4, !tbaa !58
  %i.eet = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %i.eeq
  %i.eeu = load float, ptr %i.eet, align 4, !tbaa !58
  %i.eev = fsub reassoc nsz arcp contract afn float %i.ees, %i.eeu ; 2 uses
  %i.eew = fsub reassoc nsz arcp contract afn float %i.eep, %i.eev
  %i.eex = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eew)
  %i.eey = add nsw i64 %indvars.iv2471, -4        ; 2 uses
  %i.eez = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.eey
  %i.efa = load float, ptr %i.eez, align 4, !tbaa !58
  %i.efb = getelementptr inbounds [4 x i8], ptr %i.edf, i64 %i.eey
  %i.efc = load float, ptr %i.efb, align 4, !tbaa !58
  %i.efd = fsub reassoc nsz arcp contract afn float %i.efa, %i.efc ; 2 uses
  %i.efe = fsub reassoc nsz arcp contract afn float %i.efd, %i.eep
  %i.eff = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efe)
  %i.efg = fadd reassoc nsz arcp contract afn float %i.eff, %i.eex
  %i.efh = fsub reassoc nsz arcp contract afn float %i.efd, %i.eev
  %i.efi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efh)
  %i.efj = fsub reassoc nsz arcp contract afn float %i.efg, %i.efi
  %i.efk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.efj)
  %i.efl = getelementptr inbounds nuw [4 x i8], ptr %i.btt, i64 %i.eel
  store float %i.efk, ptr %i.efl, align 4, !tbaa !58
  %i.efm = load float, ptr %i.edk, align 4, !tbaa !58
  %i.efn = fmul reassoc nsz arcp contract afn float %i.efm, 2.000000e+00 ; 2 uses
  %i.efo = add nuw nsw i64 %indvars.iv2471, 256   ; 2 uses
  %i.efp = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.efo
  %i.efq = load float, ptr %i.efp, align 4, !tbaa !58
  %i.efr = fadd reassoc nsz arcp contract afn float %i.efn, %i.efq
  %i.efs = add nsw i64 %indvars.iv2471, -256      ; 2 uses
  %i.eft = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.efs
  %i.efu = load float, ptr %i.eft, align 4, !tbaa !58
  %i.efv = fadd reassoc nsz arcp contract afn float %i.efr, %i.efu
  %i.efw = fmul reassoc nsz arcp contract afn float %i.efv, 2.500000e-01 ; 2 uses
  %indvars.iv.next2472 = add nuw nsw i64 %indvars.iv2471, 2 ; 3 uses
  %i.efx = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %indvars.iv.next2472
  %i.efy = load float, ptr %i.efx, align 4, !tbaa !58
  %i.efz = fadd reassoc nsz arcp contract afn float %i.efy, %i.efn
  %i.ega = add nsw i64 %indvars.iv2471, -2        ; 2 uses
  %i.egb = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.ega
  %i.egc = load float, ptr %i.egb, align 4, !tbaa !58
  %i.egd = fadd reassoc nsz arcp contract afn float %i.efz, %i.egc
  %i.ege = fmul reassoc nsz arcp contract afn float %i.egd, 2.500000e-01 ; 2 uses
  %i.egf = load float, ptr %i.edm, align 4, !tbaa !58
  %i.egg = fmul reassoc nsz arcp contract afn float %i.egf, 2.000000e+00
  %i.egh = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %i.efo ; 2 uses
  %i.egi = load float, ptr %i.egh, align 4, !tbaa !58
  %i.egj = fadd reassoc nsz arcp contract afn float %i.egg, %i.egi
  %i.egk = getelementptr inbounds [4 x i8], ptr %i.edf, i64 %i.efs ; 2 uses
  %i.egl = load float, ptr %i.egk, align 4, !tbaa !58
  %i.egm = fadd reassoc nsz arcp contract afn float %i.egj, %i.egl
  %i.egn = fmul reassoc nsz arcp contract afn float %i.egm, 2.500000e-01
  %i.ego = fsub reassoc nsz arcp contract afn float %i.efw, %i.egn
  %i.egp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ego)
  %i.egq = fadd reassoc nsz arcp contract afn float %i.egp, f0x3727C5AC
  %i.egr = getelementptr inbounds nuw [4 x i8], ptr %i.btw, i64 %i.eel
  store float %i.egq, ptr %i.egr, align 4, !tbaa !58
  %i.egs = load float, ptr %i.edm, align 4, !tbaa !58
  %i.egt = fmul reassoc nsz arcp contract afn float %i.egs, 2.000000e+00
  %i.egu = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %indvars.iv.next2472 ; 2 uses
  %i.egv = load float, ptr %i.egu, align 4, !tbaa !58
  %i.egw = fadd reassoc nsz arcp contract afn float %i.egt, %i.egv
  %i.egx = getelementptr inbounds [4 x i8], ptr %i.edf, i64 %i.ega ; 2 uses
  %i.egy = load float, ptr %i.egx, align 4, !tbaa !58
  %i.egz = fadd reassoc nsz arcp contract afn float %i.egw, %i.egy
  %i.eha = fmul reassoc nsz arcp contract afn float %i.egz, 2.500000e-01
  %i.ehb = fsub reassoc nsz arcp contract afn float %i.ege, %i.eha
  %i.ehc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ehb)
  %i.ehd = fadd reassoc nsz arcp contract afn float %i.ehc, f0x3727C5AC
  %i.ehe = getelementptr inbounds nuw [4 x i8], ptr %i.btv, i64 %i.eel
  store float %i.ehd, ptr %i.ehe, align 4, !tbaa !58
  %i.ehf = load float, ptr %i.edm, align 4, !tbaa !58
  %i.ehg = fmul reassoc nsz arcp contract afn float %i.ehf, 2.000000e+00
  %i.ehh = load float, ptr %i.egh, align 4, !tbaa !58
  %i.ehi = fadd reassoc nsz arcp contract afn float %i.ehg, %i.ehh
  %i.ehj = load float, ptr %i.egk, align 4, !tbaa !58
  %i.ehk = fadd reassoc nsz arcp contract afn float %i.ehi, %i.ehj
  %i.ehl = fmul reassoc nsz arcp contract afn float %i.ehk, 2.500000e-01
  %i.ehm = fadd reassoc nsz arcp contract afn float %i.ehl, %i.efw
  %i.ehn = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.eel
  store float %i.ehm, ptr %i.ehn, align 4, !tbaa !58
  %i.eho = load float, ptr %i.edm, align 4, !tbaa !58
  %i.ehp = fmul reassoc nsz arcp contract afn float %i.eho, 2.000000e+00
  %i.ehq = load float, ptr %i.egu, align 4, !tbaa !58
  %i.ehr = fadd reassoc nsz arcp contract afn float %i.ehp, %i.ehq
  %i.ehs = load float, ptr %i.egx, align 4, !tbaa !58
  %i.eht = fadd reassoc nsz arcp contract afn float %i.ehr, %i.ehs
  %i.ehu = fmul reassoc nsz arcp contract afn float %i.eht, 2.500000e-01
  %i.ehv = fadd reassoc nsz arcp contract afn float %i.ehu, %i.ege
  %i.ehw = getelementptr inbounds nuw [4 x i8], ptr %i.btx, i64 %i.eel
  store float %i.ehv, ptr %i.ehw, align 4, !tbaa !58
  %i.ehx = add nuw nsw i32 %.016792040, 2         ; 2 uses
  %i.ehy = icmp slt i32 %i.ehx, %i.dwj
  br i1 %i.ehy, label %bb.ae, label %._crit_edge2043

.lr.ph2066:                                       ; preds = %.preheader1942
  %i.ehz = add nsw i32 %i.bwt, -8                 ; 2 uses
  %i.eia = add i32 %smin3768, %i.bwl
  %i.eib = or disjoint i32 %.neg4053, 8
  %i.eic = sub i32 %i.eib, %smin3765
  br label %bb.af

.preheader1940:                                   ; preds = %bb.ag
  %.pre = load float, ptr %i.ey, align 16, !tbaa !58 ; 2 uses
  %i.eid = fcmp reassoc nsz arcp contract afn ogt float %.pre, 1.000000e-10
  br i1 %i.eid, label %bb.ah, label %.preheader1908.1

bb.af:                                            ; preds = %.lr.ph2066, %bb.ag
  %indvars.iv2482 = phi i32 [ 1032, %.lr.ph2066 ], [ %indvars.iv.next2483, %bb.ag ] ; 3 uses
  %.016942065 = phi i32 [ 8, %.lr.ph2066 ], [ %i.enp, %bb.ag ] ; 2 uses
  %i.eie = shl nuw i32 %.016942065, 1
  %i.eif = and i32 %i.eie, 14                     ; 2 uses
  %i.eig = shl nuw nsw i32 %i.eif, 1
  %i.eih = lshr i32 %i.q, %i.eig
  %i.eii = and i32 %i.eih, 1                      ; 6 uses
  %i.eij = or disjoint i32 %i.eii, 8              ; 4 uses
  %i.eik = icmp slt i32 %i.eij, %i.ehz
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.esc = fadd reassoc nsz arcp contract afn float %i.esb, %i.ens ; 2 uses
  %i.esd = fmul reassoc nsz arcp contract afn float %i.esa, %i.eqx
  %i.ese = fadd reassoc nsz arcp contract afn float %i.esd, %i.enr ; 2 uses
  %i.esf = add nuw nsw i32 %.016952050, 2         ; 2 uses
  %indvars.iv.next2485 = add nuw nsw i64 %indvars.iv2484, 2
  %i.esg = icmp slt i32 %i.esf, %i.ehz
  br i1 %i.esg, label %scalar.ph3769, label %._crit_edge2053, !llvm.loop !87

bb.ah:                                            ; preds = %.preheader1940
  %i.esh = load float, ptr %i.ex, align 8, !tbaa !58
  %i.esi = fdiv reassoc nsz arcp contract afn float %i.esh, %.pre
  br label %.preheader1908.1

.preheader1908.1:                                 ; preds = %.preheader1942.thread, %.preheader1942, %.preheader1940, %bb.ah
  %.sroa.02813.0 = phi nsz float [ %i.esi, %bb.ah ], [ 1.700000e+01, %.preheader1940 ], [ 1.700000e+01, %.preheader1942 ], [ 1.700000e+01, %.preheader1942.thread ] ; 5 uses
  %.pn.reass = add i64 %i.bwo, %invariant.op4501  ; 2 uses
  %i.esj = getelementptr inbounds [16 x i8], ptr %i.en, i64 %.pn.reass ; 4 uses
  %i.esk = getelementptr inbounds [4 x i8], ptr %i.el, i64 %.pn.reass
  %i.esl = fadd reassoc nsz arcp contract afn float %.sroa.02805.2, %.sroa.02813.0
  %i.esm = fmul reassoc nnan nsz arcp contract afn float %.sroa.02813.0, %.sroa.02813.0
  %i.esn = fadd reassoc nsz arcp contract afn float %.sroa.02791.2, 1.000000e+00
  store float %.sroa.02813.0, ptr %i.esj, align 4, !tbaa !58
  %i.eso = fadd reassoc nsz arcp contract afn float %.sroa.9.2, 1.000000e+00
  %i.esp = getelementptr inbounds nuw i8, ptr %i.esj, i64 4
  %i.esq = getelementptr inbounds nuw i8, ptr %i.esj, i64 8
  %i.esr = load <8 x float>, ptr %i.gq, align 4   ; 2 uses
  %i.ess = shufflevector <8 x float> %i.esr, <8 x float> poison, <2 x i32> <i32 2, i32 7> ; 2 uses
  %i.est = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ess, splat (float 1.000000e-10)
  %i.esu = shufflevector <8 x float> %i.esr, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.esv = fdiv reassoc nsz arcp contract afn <2 x float> %i.esu, %i.ess
  %i.esw = select <2 x i1> %i.est, <2 x float> %i.esv, <2 x float> splat (float 1.700000e+01) ; 5 uses
  %i.esx = extractelement <2 x float> %i.esw, i64 1 ; 3 uses
  %i.esy = fmul reassoc nnan nsz arcp contract afn float %i.esx, %i.esx
  %i.esz = fadd reassoc nsz arcp contract afn float %.sroa.92801.2, %i.esy
  store float %i.esx, ptr %i.esp, align 4, !tbaa !58
  %i.eta = extractelement <2 x float> %i.esw, i64 0
  %foldExtExtBinop = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.esw, %i.esw
  %i.etb = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.etc = insertelement <4 x float> poison, float %.sroa.02813.0, i64 0
  %i.etd = shufflevector <2 x float> %i.esw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison> ; 2 uses
  %i.ete = shufflevector <4 x float> %i.etd, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.etf = shufflevector <4 x float> %i.etc, <4 x float> %i.etd, <4 x i32> <i32 0, i32 4, i32 4, i32 6>
  %i.etg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.etf)
  %i.eth = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.etg, splat (float 2.000000e+00) ; 4 uses
  %i.eti = extractelement <4 x i1> %i.eth, i64 0  ; 2 uses
  %.sroa.02805.3 = select nsz i1 %i.eti, float %i.esl, float %.sroa.02805.2 ; 3 uses
  %i.etj = insertelement <4 x float> %i.ete, float %i.esm, i64 0
  %i.etk = shufflevector <4 x float> %i.etj, <4 x float> %i.etb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.etl = fadd reassoc nsz arcp contract afn <4 x float> %i.bvz, %i.etk
  %.sroa.02791.3 = select nsz i1 %i.eti, float %i.esn, float %.sroa.02791.2 ; 3 uses
  %i.etm = extractelement <4 x i1> %i.eth, i64 3  ; 2 uses
  %.sroa.92801.3 = select nsz i1 %i.etm, float %i.esz, float %.sroa.92801.2 ; 3 uses
  %.sroa.9.3 = select nsz i1 %i.etm, float %i.eso, float %.sroa.9.2 ; 3 uses
  %i.etn = fadd reassoc nsz arcp contract afn float %.sroa.62793.2, 1.000000e+00
  %i.eto = select <4 x i1> %i.eth, <4 x float> %i.etl, <4 x float> %i.bvz ; 3 uses
  %i.etp = extractelement <4 x i1> %i.eth, i64 1
  %.sroa.62793.3 = select nsz i1 %i.etp, float %i.etn, float %.sroa.62793.2 ; 3 uses
  store float %i.eta, ptr %i.esq, align 4, !tbaa !58
  %i.etq = load float, ptr %i.gr, align 4, !tbaa !58 ; 3 uses
  %i.etr = fcmp reassoc nsz arcp contract afn ogt float %i.etq, 1.000000e-10
  br i1 %i.etr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader1908.1
  %i.ets = load float, ptr %i.gs, align 4, !tbaa !58
  %i.ett = fdiv reassoc nsz arcp contract afn float %i.ets, %i.etq
  %i.etu = load float, ptr %i.gt, align 4, !tbaa !58
  %i.etv = fadd reassoc nsz arcp contract afn float %i.etu, f0x3727C5AC
  %i.etw = fdiv reassoc nsz arcp contract afn float %i.etq, %i.etv
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader1908.1, %bb.ai
  %storemerge2944 = phi float [ %i.etw, %bb.ai ], [ 0.000000e+00, %.preheader1908.1 ]
  %.sroa.11.0 = phi nsz float [ %i.ett, %bb.ai ], [ 1.700000e+01, %.preheader1908.1 ] ; 5 uses
  store float %storemerge2944, ptr %i.esk, align 4, !tbaa !58
  %i.etx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.sroa.11.0)
  %i.ety = fcmp reassoc nsz arcp contract afn olt float %i.etx, 2.000000e+00 ; 3 uses
  %i.etz = fadd reassoc nsz arcp contract afn float %.sroa.122811.2, %.sroa.11.0
  %i.eua = fmul reassoc nnan nsz arcp contract afn float %.sroa.11.0, %.sroa.11.0
  %i.eub = fadd reassoc nsz arcp contract afn float %.sroa.122803.2, %i.eua
  %i.euc = fadd reassoc nsz arcp contract afn float %.sroa.12.2, 1.000000e+00
  %.sroa.122811.3 = select nsz i1 %i.ety, float %i.etz, float %.sroa.122811.2 ; 3 uses
  %.sroa.122803.3 = select nsz i1 %i.ety, float %i.eub, float %.sroa.122803.2 ; 3 uses
  %.sroa.12.3 = select nsz i1 %i.ety, float %i.euc, float %.sroa.12.2 ; 3 uses
  %i.eud = getelementptr inbounds nuw i8, ptr %i.esj, i64 12
  store float %.sroa.11.0, ptr %i.eud, align 4, !tbaa !58
  %indvars.iv.next2494 = add nsw i64 %indvars.iv2493, 112 ; 2 uses
  %i.eue = icmp slt i64 %indvars.iv.next2494, %i.af
  %indvars.iv.next2402 = add nuw i32 %indvars.iv2401, 112
  %indvars.iv.next2404 = add nsw i32 %indvars.iv2403, -112
  %indvars.iv.next2455 = add i32 %indvars.iv2454, 112
  %indvar.next3767 = add i32 %indvar3766, 1
  br i1 %i.eue, label %bb.p, label %._crit_edge2081

.preheader1973:                                   ; preds = %.loopexit1966.1
  br i1 %i.tt, label %.preheader1972, label %.preheader1964.preheader

.preheader1964.preheader:                         ; preds = %.preheader1973
  br i1 %i.akm, label %.preheader1964.epil.preheader, label %.preheader1964

bb.ak:                                            ; preds = %.preheader1975
  %i.euf = extractelement <8 x float> %i.bum, i64 0
  %i.eug = fdiv reassoc nsz arcp contract afn float %i.euf, %i.bun
  %i.euh = fdiv reassoc nsz arcp contract afn float %.sroa.02805.0, %i.bun ; 2 uses
  %i.eui = fmul reassoc nsz arcp contract afn float %i.euh, %i.euh
  %i.euj = fsub reassoc nsz arcp contract afn float %i.eug, %i.eui
  store float %i.euj, ptr %i.b, align 16, !tbaa !58
  %i.euk = fcmp reassoc nsz arcp contract afn une float %.sroa.62793.0, 0.000000e+00
  br i1 %i.euk, label %.loopexit1966.loopexit, label %bb.al

.loopexit1966.loopexit:                           ; preds = %bb.ak
  %i.eul = extractelement <8 x float> %i.bum, i64 2
  %i.eum = fdiv reassoc nsz arcp contract afn float %i.eul, %.sroa.62793.0
  %i.eun = extractelement <8 x float> %i.bum, i64 1
  %i.euo = fdiv reassoc nsz arcp contract afn float %i.eun, %.sroa.62793.0 ; 2 uses
  %i.eup = fmul reassoc nsz arcp contract afn float %i.euo, %i.euo
  %i.euq = fsub reassoc nsz arcp contract afn float %i.eum, %i.eup
  store float %i.euq, ptr %i.gu, align 4, !tbaa !58
  br label %.loopexit1966

bb.al:                                            ; preds = %bb.ak, %.preheader1975
  %i.eur = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.eus = and i32 %i.eur, 33554432
  %.not1790 = icmp eq i32 %i.eus, 0
  br i1 %.not1790, label %.loopexit1966, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.loopexit1966

.loopexit1966:                                    ; preds = %.loopexit1966.loopexit, %bb.al, %bb.am
  %i.eut = phi i1 [ true, %bb.al ], [ true, %bb.am ], [ false, %.loopexit1966.loopexit ]
  %i.euu = fcmp reassoc nsz arcp contract afn une float %.sroa.9.0, 0.000000e+00
  br i1 %i.euu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit1966
  %i.euv = extractelement <8 x float> %i.bum, i64 4
  %i.euw = fdiv reassoc nsz arcp contract afn float %i.euv, %.sroa.9.0
  %i.eux = extractelement <8 x float> %i.bum, i64 3
  %i.euy = fdiv reassoc nsz arcp contract afn float %i.eux, %.sroa.9.0 ; 2 uses
  %i.euz = fmul reassoc nsz arcp contract afn float %i.euy, %i.euy
  %i.eva = fsub reassoc nsz arcp contract afn float %i.euw, %i.euz
  store float %i.eva, ptr %i.fn, align 8, !tbaa !58
  %i.evb = fcmp reassoc nsz arcp contract afn une float %.sroa.12.0, 0.000000e+00
  br i1 %i.evb, label %.loopexit1966.1, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit1966
  %i.evc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.evd = and i32 %i.evc, 33554432
  %.not1790.1 = icmp eq i32 %i.evd, 0
  br i1 %.not1790.1, label %.thread1866, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6) #20
  br label %.thread1866

.loopexit1966.1:                                  ; preds = %bb.an
  %i.eve = extractelement <8 x float> %i.bum, i64 6
  %i.evf = fdiv reassoc nsz arcp contract afn float %i.eve, %.sroa.12.0
  %i.evg = extractelement <8 x float> %i.bum, i64 5
  %i.evh = fdiv reassoc nsz arcp contract afn float %i.evg, %.sroa.12.0 ; 2 uses
  %i.evi = fmul reassoc nsz arcp contract afn float %i.evh, %i.evh
  %i.evj = fsub reassoc nsz arcp contract afn float %i.evf, %i.evi
  store float %i.evj, ptr %i.gv, align 4, !tbaa !58
  br i1 %i.eut, label %.thread1866, label %.preheader1973

.preheader1972.loopexit.unr-lcssa:                ; preds = %.preheader1964
  br i1 %lcmp.mod4295.not, label %.preheader1972, label %.preheader1964.epil.preheader

.preheader1964.epil.preheader:                    ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.preheader
  %indvars.iv2523.epil.init = phi i64 [ 1, %.preheader1964.preheader ], [ %indvars.iv.next2524.3, %.preheader1972.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4296)
  br label %.preheader1964.epil

.preheader1964.epil:                              ; preds = %.preheader1964.epil, %.preheader1964.epil.preheader
  %indvars.iv2523.epil = phi i64 [ %indvars.iv.next2524.epil, %.preheader1964.epil ], [ %indvars.iv2523.epil.init, %.preheader1964.epil.preheader ] ; 2 uses
  %epil.iter4294 = phi i64 [ %epil.iter4294.next, %.preheader1964.epil ], [ 0, %.preheader1964.epil.preheader ]
  %i.evk = mul nsw i64 %indvars.iv2523.epil, %i.fx ; 2 uses
  %i.evl = getelementptr [16 x i8], ptr %i.en, i64 %i.evk ; 2 uses
  %i.evm = getelementptr i8, ptr %i.evl, i64 32
  %gep2982.epil = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %i.evk ; 2 uses
  %i.evn = getelementptr i8, ptr %gep2982.epil, i64 -48
  %i.evo = getelementptr i8, ptr %gep2982.epil, i64 -16
  %i.evp = load <4 x float>, ptr %i.evm, align 4, !tbaa !58
  store <4 x float> %i.evp, ptr %i.evl, align 4, !tbaa !58
  %i.evq = load <4 x float>, ptr %i.evn, align 4, !tbaa !58
  store <4 x float> %i.evq, ptr %i.evo, align 4, !tbaa !58
  %indvars.iv.next2524.epil = add nuw nsw i64 %indvars.iv2523.epil, 1
  %epil.iter4294.next = add i64 %epil.iter4294, 1 ; 2 uses
  %epil.iter4294.cmp.not = icmp eq i64 %epil.iter4294.next, %xtraiter4293
  br i1 %epil.iter4294.cmp.not, label %.preheader1972, label %.preheader1964.epil, !llvm.loop !128

.preheader1972:                                   ; preds = %.preheader1972.loopexit.unr-lcssa, %.preheader1964.epil, %.preheader1973
  br i1 %i.fd, label %.preheader1963.preheader, label %._crit_edge2094

.preheader1963.preheader:                         ; preds = %.preheader1972
  %brmerge4524 = select i1 %min.iters.check3745, i1 true, i1 %op.rdx4171
  br i1 %brmerge4524, label %.preheader1963.preheader4187, label %vector.body3748

vector.body3748:                                  ; preds = %.preheader1963.preheader, %vector.body3748
  %index3749 = phi i64 [ %index.next3761, %vector.body3748 ], [ 0, %.preheader1963.preheader ] ; 5 uses
  %i.evr = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2983, i64 %index3749
  %i.evs = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %index3749
  %i.evt = getelementptr [16 x i8], ptr %invariant.gep2985, i64 %index3749
  %i.evu = getelementptr [16 x i8], ptr %invariant.gep2987, i64 %index3749
  %wide.vec3750 = load <8 x float>, ptr %i.evr, align 4, !tbaa !58
  %wide.vec3755 = load <8 x float>, ptr %i.evt, align 4, !tbaa !58
  store <8 x float> %wide.vec3750, ptr %i.evs, align 4, !tbaa !58
  store <8 x float> %wide.vec3755, ptr %i.evu, align 4, !tbaa !58
  %index.next3761 = add nuw i64 %index3749, 2     ; 2 uses
  %i.evv = icmp eq i64 %index.next3761, %n.vec3747
  br i1 %i.evv, label %middle.block3762, label %vector.body3748, !llvm.loop !129

middle.block3762:                                 ; preds = %vector.body3748
  br i1 %cmp.n3763, label %._crit_edge2094, label %.preheader1963.preheader4187

.preheader1963.preheader4187:                     ; preds = %.preheader1963.preheader, %middle.block3762
  %indvars.iv2538.ph = phi i64 [ %n.vec3747, %middle.block3762 ], [ 0, %.preheader1963.preheader ] ; 4 uses
  %i.evw = sub nsw i64 %wide.trip.count2541, %indvars.iv2538.ph
  %xtraiter4299 = and i64 %i.evw, 3               ; 2 uses
  %lcmp.mod4300.not = icmp eq i64 %xtraiter4299, 0
  br i1 %lcmp.mod4300.not, label %.preheader1963.prol.loopexit, label %.preheader1963.prol

.preheader1963.prol:                              ; preds = %.preheader1963.preheader4187, %.preheader1963.prol
  %indvars.iv2538.prol = phi i64 [ %indvars.iv.next2539.prol, %.preheader1963.prol ], [ %indvars.iv2538.ph, %.preheader1963.preheader4187 ] ; 5 uses
  %prol.iter4301 = phi i64 [ %prol.iter4301.next, %.preheader1963.prol ], [ 0, %.preheader1963.preheader4187 ]
  %gep2984.prol = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2983, i64 %indvars.iv2538.prol
  %i.evx = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv2538.prol
  %gep2986.prol = getelementptr [16 x i8], ptr %invariant.gep2985, i64 %indvars.iv2538.prol
  %gep2988.prol = getelementptr [16 x i8], ptr %invariant.gep2987, i64 %indvars.iv2538.prol
  %i.evy = load <4 x float>, ptr %gep2984.prol, align 4, !tbaa !58
  store <4 x float> %i.evy, ptr %i.evx, align 4, !tbaa !58
  %i.evz = load <4 x float>, ptr %gep2986.prol, align 4, !tbaa !58
  store <4 x float> %i.evz, ptr %gep2988.prol, align 4, !tbaa !58
  %indvars.iv.next2539.prol = add nuw nsw i64 %indvars.iv2538.prol, 1 ; 2 uses
  %prol.iter4301.next = add i64 %prol.iter4301, 1 ; 2 uses
  %prol.iter4301.cmp.not = icmp eq i64 %prol.iter4301.next, %xtraiter4299
  br i1 %prol.iter4301.cmp.not, label %.preheader1963.prol.loopexit, label %.preheader1963.prol, !llvm.loop !130

.preheader1963.prol.loopexit:                     ; preds = %.preheader1963.prol, %.preheader1963.preheader4187
  %indvars.iv2538.unr = phi i64 [ %indvars.iv2538.ph, %.preheader1963.preheader4187 ], [ %indvars.iv.next2539.prol, %.preheader1963.prol ]
  %i.ewa = sub nsw i64 %indvars.iv2538.ph, %wide.trip.count2541
  %i.ewb = icmp ugt i64 %i.ewa, -4
  br i1 %i.ewb, label %._crit_edge2094, label %.preheader1963

.preheader1964:                                   ; preds = %.preheader1964.preheader, %.preheader1964
  %indvars.iv2523 = phi i64 [ %indvars.iv.next2524.3, %.preheader1964 ], [ 1, %.preheader1964.preheader ] ; 5 uses
  %niter4298 = phi i64 [ %niter4298.next.3, %.preheader1964 ], [ 0, %.preheader1964.preheader ]
  %i.ewc = mul nsw i64 %indvars.iv2523, %i.fx     ; 2 uses
  %i.ewd = getelementptr [16 x i8], ptr %i.en, i64 %i.ewc ; 2 uses
  %i.ewe = getelementptr i8, ptr %i.ewd, i64 32
  %gep2982 = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %i.ewc ; 2 uses
  %i.ewf = getelementptr i8, ptr %gep2982, i64 -48
  %i.ewg = getelementptr i8, ptr %gep2982, i64 -16
  %i.ewh = load <4 x float>, ptr %i.ewe, align 4, !tbaa !58
  store <4 x float> %i.ewh, ptr %i.ewd, align 4, !tbaa !58
  %i.ewi = load <4 x float>, ptr %i.ewf, align 4, !tbaa !58
  store <4 x float> %i.ewi, ptr %i.ewg, align 4, !tbaa !58
  %indvars.iv.next2524 = add nuw nsw i64 %indvars.iv2523, 1
  %i.ewj = mul nsw i64 %indvars.iv.next2524, %i.fx ; 2 uses
  %i.ewk = getelementptr [16 x i8], ptr %i.en, i64 %i.ewj ; 2 uses
  %i.ewl = getelementptr i8, ptr %i.ewk, i64 32
  %gep2982.1 = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %i.ewj ; 2 uses
  %i.ewm = getelementptr i8, ptr %gep2982.1, i64 -48
  %i.ewn = getelementptr i8, ptr %gep2982.1, i64 -16
  %i.ewo = load <4 x float>, ptr %i.ewl, align 4, !tbaa !58
  store <4 x float> %i.ewo, ptr %i.ewk, align 4, !tbaa !58
  %i.ewp = load <4 x float>, ptr %i.ewm, align 4, !tbaa !58
  store <4 x float> %i.ewp, ptr %i.ewn, align 4, !tbaa !58
  %indvars.iv.next2524.1 = add nuw nsw i64 %indvars.iv2523, 2
  %i.ewq = mul nsw i64 %indvars.iv.next2524.1, %i.fx ; 2 uses
  %i.ewr = getelementptr [16 x i8], ptr %i.en, i64 %i.ewq ; 2 uses
  %i.ews = getelementptr i8, ptr %i.ewr, i64 32
  %gep2982.2 = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %i.ewq ; 2 uses
  %i.ewt = getelementptr i8, ptr %gep2982.2, i64 -48
  %i.ewu = getelementptr i8, ptr %gep2982.2, i64 -16
  %i.ewv = load <4 x float>, ptr %i.ews, align 4, !tbaa !58
  store <4 x float> %i.ewv, ptr %i.ewr, align 4, !tbaa !58
  %i.eww = load <4 x float>, ptr %i.ewt, align 4, !tbaa !58
  store <4 x float> %i.eww, ptr %i.ewu, align 4, !tbaa !58
  %indvars.iv.next2524.2 = add nuw nsw i64 %indvars.iv2523, 3
  %i.ewx = mul nsw i64 %indvars.iv.next2524.2, %i.fx ; 2 uses
  %i.ewy = getelementptr [16 x i8], ptr %i.en, i64 %i.ewx ; 2 uses
  %i.ewz = getelementptr i8, ptr %i.ewy, i64 32
  %gep2982.3 = getelementptr [16 x i8], ptr %invariant.gep2981, i64 %i.ewx ; 2 uses
  %i.exa = getelementptr i8, ptr %gep2982.3, i64 -48
  %i.exb = getelementptr i8, ptr %gep2982.3, i64 -16
  %i.exc = load <4 x float>, ptr %i.ewz, align 4, !tbaa !58
  store <4 x float> %i.exc, ptr %i.ewy, align 4, !tbaa !58
  %i.exd = load <4 x float>, ptr %i.exa, align 4, !tbaa !58
  store <4 x float> %i.exd, ptr %i.exb, align 4, !tbaa !58
  %indvars.iv.next2524.3 = add nuw nsw i64 %indvars.iv2523, 4 ; 2 uses
  %niter4298.next.3 = add i64 %niter4298, 4       ; 2 uses
  %niter4298.ncmp.3 = icmp eq i64 %niter4298.next.3, %unroll_iter4297
  br i1 %niter4298.ncmp.3, label %.preheader1972.loopexit.unr-lcssa, label %.preheader1964

.preheader1963:                                   ; preds = %.preheader1963.prol.loopexit, %.preheader1963
  %indvars.iv2538 = phi i64 [ %indvars.iv.next2539.3, %.preheader1963 ], [ %indvars.iv2538.unr, %.preheader1963.prol.loopexit ] ; 8 uses
  %gep2984 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2983, i64 %indvars.iv2538
  %i.exe = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv2538
  %gep2986 = getelementptr [16 x i8], ptr %invariant.gep2985, i64 %indvars.iv2538
  %gep2988 = getelementptr [16 x i8], ptr %invariant.gep2987, i64 %indvars.iv2538
  %i.exf = load <4 x float>, ptr %gep2984, align 4, !tbaa !58
  store <4 x float> %i.exf, ptr %i.exe, align 4, !tbaa !58
  %i.exg = load <4 x float>, ptr %gep2986, align 4, !tbaa !58
  store <4 x float> %i.exg, ptr %gep2988, align 4, !tbaa !58
  %indvars.iv.next2539 = add nuw nsw i64 %indvars.iv2538, 1 ; 4 uses
  %gep2984.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2983, i64 %indvars.iv.next2539
  %i.exh = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.next2539
  %gep2986.1 = getelementptr [16 x i8], ptr %invariant.gep2985, i64 %indvars.iv.next2539
  %gep2988.1 = getelementptr [16 x i8], ptr %invariant.gep2987, i64 %indvars.iv.next2539
  %i.exi = load <4 x float>, ptr %gep2984.1, align 4, !tbaa !58
  store <4 x float> %i.exi, ptr %i.exh, align 4, !tbaa !58
  %i.exj = load <4 x float>, ptr %gep2986.1, align 4, !tbaa !58
  store <4 x float> %i.exj, ptr %gep2988.1, align 4, !tbaa !58
  %indvars.iv.next2539.1 = add nuw nsw i64 %indvars.iv2538, 2 ; 4 uses
  %gep2984.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2983, i64 %indvars.iv.next2539.1
  %i.exk = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.next2539.1
  %gep2986.2 = getelementptr [16 x i8], ptr %invariant.gep2985, i64 %indvars.iv.next2539.1
  %gep2988.2 = getelementptr [16 x i8], ptr %invariant.gep2987, i64 %indvars.iv.next2539.1
  %i.exl = load <4 x float>, ptr %gep2984.2, align 4, !tbaa !58
  store <4 x float> %i.exl, ptr %i.exk, align 4, !tbaa !58
  %i.exm = load <4 x float>, ptr %gep2986.2, align 4, !tbaa !58
  store <4 x float> %i.exm, ptr %gep2988.2, align 4, !tbaa !58
  %indvars.iv.next2539.2 = add nuw nsw i64 %indvars.iv2538, 3 ; 4 uses
  %gep2984.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep2983, i64 %indvars.iv.next2539.2
  %i.exn = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %indvars.iv.next2539.2
  %gep2986.3 = getelementptr [16 x i8], ptr %invariant.gep2985, i64 %indvars.iv.next2539.2
  %gep2988.3 = getelementptr [16 x i8], ptr %invariant.gep2987, i64 %indvars.iv.next2539.2
  %i.exo = load <4 x float>, ptr %gep2984.3, align 4, !tbaa !58
  store <4 x float> %i.exo, ptr %i.exn, align 4, !tbaa !58
  %i.exp = load <4 x float>, ptr %gep2986.3, align 4, !tbaa !58
  store <4 x float> %i.exp, ptr %gep2988.3, align 4, !tbaa !58
  %indvars.iv.next2539.3 = add nuw nsw i64 %indvars.iv2538, 4 ; 2 uses
  %exitcond2542.not.3 = icmp eq i64 %indvars.iv.next2539.3, %wide.trip.count2541
  br i1 %exitcond2542.not.3, label %._crit_edge2094, label %.preheader1963, !llvm.loop !131

._crit_edge2094:                                  ; preds = %.preheader1963.prol.loopexit, %.preheader1963, %middle.block3762, %.preheader1972
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.l, i8 0, i64 2048, i1 false), !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.fj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.arx, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ary, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.arz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.fi, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asa, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asb, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.fk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asd, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ase, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asg, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ash, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asi, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ask, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asl, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asm, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asn, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aso, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asp, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asr, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ass, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ast, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asw, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asx, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asy, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.asz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ata, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atb, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atd, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ate, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atg, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ath, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ati, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atl, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atm, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atn, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ato, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atp, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atr, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ats, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.att, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atw, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atx, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aty, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.atz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aua, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aub, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aud, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aue, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aug, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auh, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aui, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aul, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aum, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aun, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auo, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aup, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aur, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aus, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aut, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auw, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aux, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auy, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.auz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ava, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avb, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avd, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ave, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avg, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avh, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avi, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avl, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avm, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avn, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avo, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avp, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avr, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avs, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avt, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avw, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avx, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avy, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.avz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awa, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awb, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awd, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awe, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awg, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awh, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awi, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awl, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awm, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awn, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awo, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awp, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awr, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aws, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awt, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aww, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awx, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awy, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.awz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axa, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axb, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axd, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axe, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axg, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axh, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axi, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axl, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axm, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axn, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axo, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axp, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axr, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axs, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axt, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axw, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axx, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axy, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.axz, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aya, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayb, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayc, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayd, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aye, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayf, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayg, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayh, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayi, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayj, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayk, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayl, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.aym, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayn, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayo, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayp, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayq, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayr, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ays, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayt, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayu, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayv, align 16, !tbaa !132
  store <4 x double> zeroinitializer, ptr %i.ayw, align 16, !tbaa !132
end_hunk_3
begin_hunk_4_@process:bb.a
  %index3115 = phi i64 [ 0, %vector.ph3112 ], [ %index.next3127, %vector.body3114 ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.fvd, %vector.ph3112 ], [ %i.fvr, %vector.body3114 ]
  %vec.phi3116 = phi <4 x double> [ zeroinitializer, %vector.ph3112 ], [ %i.fvs, %vector.body3114 ]
  %vec.phi3117 = phi <4 x double> [ zeroinitializer, %vector.ph3112 ], [ %i.fvt, %vector.body3114 ]
  %vec.phi3118 = phi <4 x double> [ zeroinitializer, %vector.ph3112 ], [ %i.fvu, %vector.body3114 ]
  %i.fve = add nuw i64 %.3156.i.1, %index3115     ; 2 uses
  %i.fvf = getelementptr inbounds nuw [8 x i8], ptr %i.fva, i64 %i.fve ; 4 uses
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fvf, i64 32
  %i.fvh = getelementptr inbounds nuw i8, ptr %i.fvf, i64 64
  %i.fvi = getelementptr inbounds nuw i8, ptr %i.fvf, i64 96
  %wide.load3119 = load <4 x double>, ptr %i.fvf, align 8, !tbaa !132
  %wide.load3120 = load <4 x double>, ptr %i.fvg, align 8, !tbaa !132
  %wide.load3121 = load <4 x double>, ptr %i.fvh, align 8, !tbaa !132
  %wide.load3122 = load <4 x double>, ptr %i.fvi, align 8, !tbaa !132
  %i.fvj = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %i.fve ; 4 uses
  %i.fvk = getelementptr inbounds nuw i8, ptr %i.fvj, i64 32
  %i.fvl = getelementptr inbounds nuw i8, ptr %i.fvj, i64 64
  %i.fvm = getelementptr inbounds nuw i8, ptr %i.fvj, i64 96
  %wide.load3123 = load <4 x double>, ptr %i.fvj, align 8, !tbaa !132
  %wide.load3124 = load <4 x double>, ptr %i.fvk, align 8, !tbaa !132
  %wide.load3125 = load <4 x double>, ptr %i.fvl, align 8, !tbaa !132
  %wide.load3126 = load <4 x double>, ptr %i.fvm, align 8, !tbaa !132
  %i.fvn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3123, %wide.load3119
  %i.fvo = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3124, %wide.load3120
  %i.fvp = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3125, %wide.load3121
  %i.fvq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3126, %wide.load3122
  %i.fvr = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi, %i.fvn ; 2 uses
  %i.fvs = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3116, %i.fvo ; 2 uses
  %i.fvt = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3117, %i.fvp ; 2 uses
  %i.fvu = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3118, %i.fvq ; 2 uses
  %index.next3127 = add nuw i64 %index3115, 16    ; 2 uses
  %i.fvv = icmp eq i64 %index.next3127, %n.vec3113
  br i1 %i.fvv, label %middle.block3128, label %vector.body3114, !llvm.loop !173

middle.block3128:                                 ; preds = %vector.body3114
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.fvs, %i.fvr
  %bin.rdx3129 = fadd reassoc nsz arcp contract afn <4 x double> %i.fvt, %bin.rdx
  %bin.rdx3130 = fadd reassoc nsz arcp contract afn <4 x double> %i.fvu, %bin.rdx3129
  %i.fvw = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx3130) ; 4 uses
  store double %i.fvw, ptr %i.fux, align 8, !tbaa !132
  %cmp.n3131 = icmp eq i64 %indvar3107, %n.vec3113
  br i1 %cmp.n3131, label %._crit_edge161.i.1, label %vec.epilog.iter.check3136

vec.epilog.iter.check3136:                        ; preds = %middle.block3128
  %min.epilog.iters.check3137 = icmp eq i64 %i.fvb, 0
  br i1 %min.epilog.iters.check3137, label %vec.epilog.scalar.ph3135.preheader, label %vec.epilog.ph3138, !prof !148

vec.epilog.ph3138:                                ; preds = %vector.main.loop.iter.check3110, %vec.epilog.iter.check3136
  %vec.epilog.resume.val3132 = phi i64 [ %n.vec3113, %vec.epilog.iter.check3136 ], [ 0, %vector.main.loop.iter.check3110 ]
  %bc.merge.rdx = phi double [ %i.fvw, %vec.epilog.iter.check3136 ], [ %i.fuw, %vector.main.loop.iter.check3110 ]
  %n.vec3139 = and i64 %indvar3107, -4            ; 3 uses
  %i.fvx = add i64 %.3156.i.1, %n.vec3139
  %i.fvy = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body3140

vec.epilog.vector.body3140:                       ; preds = %vec.epilog.vector.body3140, %vec.epilog.ph3138
  %index3141 = phi i64 [ %vec.epilog.resume.val3132, %vec.epilog.ph3138 ], [ %index.next3145, %vec.epilog.vector.body3140 ] ; 2 uses
  %vec.phi3142 = phi <4 x double> [ %i.fvy, %vec.epilog.ph3138 ], [ %i.fwd, %vec.epilog.vector.body3140 ]
  %i.fvz = add nuw i64 %.3156.i.1, %index3141     ; 2 uses
  %i.fwa = getelementptr inbounds nuw [8 x i8], ptr %i.fva, i64 %i.fvz
  %wide.load3143 = load <4 x double>, ptr %i.fwa, align 8, !tbaa !132
  %i.fwb = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %i.fvz
  %wide.load3144 = load <4 x double>, ptr %i.fwb, align 8, !tbaa !132
  %i.fwc = fmul reassoc nsz arcp contract afn <4 x double> %wide.load3144, %wide.load3143
  %i.fwd = fsub reassoc nsz arcp contract afn <4 x double> %vec.phi3142, %i.fwc ; 2 uses
  %index.next3145 = add nuw i64 %index3141, 4     ; 2 uses
  %i.fwe = icmp eq i64 %index.next3145, %n.vec3139
  br i1 %i.fwe, label %vec.epilog.middle.block3146, label %vec.epilog.vector.body3140, !llvm.loop !174

vec.epilog.middle.block3146:                      ; preds = %vec.epilog.vector.body3140
  %i.fwf = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fwd) ; 3 uses
  store double %i.fwf, ptr %i.fux, align 8, !tbaa !132
  %cmp.n3147 = icmp eq i64 %indvar3107, %n.vec3139
  br i1 %cmp.n3147, label %._crit_edge161.i.1, label %vec.epilog.scalar.ph3135.preheader

vec.epilog.scalar.ph3135.preheader:               ; preds = %iter.check3134, %vec.epilog.iter.check3136, %vec.epilog.middle.block3146
  %.3158.i.1.ph = phi i64 [ %.3156.i.1, %iter.check3134 ], [ %i.fvc, %vec.epilog.iter.check3136 ], [ %i.fvx, %vec.epilog.middle.block3146 ]
  %storemerge157.i.1.ph = phi double [ %i.fuw, %iter.check3134 ], [ %i.fvw, %vec.epilog.iter.check3136 ], [ %i.fwf, %vec.epilog.middle.block3146 ]
  br label %vec.epilog.scalar.ph3135

vec.epilog.scalar.ph3135:                         ; preds = %vec.epilog.scalar.ph3135.preheader, %vec.epilog.scalar.ph3135
  %.3158.i.1 = phi i64 [ %.3.i.1, %vec.epilog.scalar.ph3135 ], [ %.3158.i.1.ph, %vec.epilog.scalar.ph3135.preheader ] ; 3 uses
  %storemerge157.i.1 = phi double [ %i.fwl, %vec.epilog.scalar.ph3135 ], [ %storemerge157.i.1.ph, %vec.epilog.scalar.ph3135.preheader ]
  %i.fwg = getelementptr inbounds nuw [8 x i8], ptr %i.fva, i64 %.3158.i.1
  %i.fwh = load double, ptr %i.fwg, align 8, !tbaa !132
  %i.fwi = getelementptr inbounds nuw [8 x i8], ptr %i.fob, i64 %.3158.i.1
  %i.fwj = load double, ptr %i.fwi, align 8, !tbaa !132
  %i.fwk = fmul reassoc nsz arcp contract afn double %i.fwj, %i.fwh
  %i.fwl = fsub reassoc nsz arcp contract afn double %storemerge157.i.1, %i.fwk ; 3 uses
  store double %i.fwl, ptr %i.fux, align 8, !tbaa !132
  %.3.i.1 = add nuw nsw i64 %.3158.i.1, 1         ; 2 uses
  %exitcond170.not.i.1 = icmp eq i64 %.3.i.1, %i.fei
  br i1 %exitcond170.not.i.1, label %._crit_edge161.i.1, label %vec.epilog.scalar.ph3135, !llvm.loop !175

._crit_edge161.i.1:                               ; preds = %vec.epilog.scalar.ph3135, %middle.block3128, %vec.epilog.middle.block3146, %.preheader.i.1
  %storemerge.lcssa.i.1 = phi double [ %i.fuw, %.preheader.i.1 ], [ %i.fwf, %vec.epilog.middle.block3146 ], [ %i.fvw, %middle.block3128 ], [ %i.fwl, %vec.epilog.scalar.ph3135 ]
  %i.fwm = mul nuw i64 %.1122163.i.1, %.1122132.i
  %i.fwn = getelementptr inbounds nuw [8 x i8], ptr %i.fnz, i64 %i.fwm
  %i.fwo = load double, ptr %i.fwn, align 8, !tbaa !132
  %i.fwp = fdiv reassoc nsz arcp contract afn double %storemerge.lcssa.i.1, %i.fwo
  store double %i.fwp, ptr %i.fux, align 8, !tbaa !132
  %i.fwq = add nsw i64 %.1122163.i.1, -1
  %i.fwr = icmp sgt i64 %.1122163.i.1, 0
  %indvar.next3108 = add i64 %indvar3107, 1
  br i1 %i.fwr, label %.preheader.i.1, label %_LinEqSolve.exit.1

bb.bb:                                            ; preds = %bb.ba
  %i.fws = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !88
  %i.fwt = and i32 %i.fws, 33554432
  %.not1789.1 = icmp eq i32 %i.fwt, 0
  br i1 %.not1789.1, label %_LinEqSolve.exit.1, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fwu = trunc nuw nsw i64 %indvars.iv2600 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8, i32 noundef %i.fwu, i32 noundef 1) #20
  br label %_LinEqSolve.exit.1

_LinEqSolve.exit.1:                               ; preds = %._crit_edge161.i.1, %bb.bc, %bb.bb
  %.6.1 = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %.6, %._crit_edge161.i.1 ] ; 2 uses
  br i1 %i.ffg, label %.preheader1961, label %bb.bd

bb.bd:                                            ; preds = %_LinEqSolve.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  %.not1786 = icmp eq i32 %.6.1, 0                ; 2 uses
  %brmerge3013 = select i1 %.not1786, i1 true, i1 %i.fo
  %not..not1786 = xor i1 %.not1786, true
  br i1 %brmerge3013, label %.thread1866, label %.preheader1960.lr.ph

.preheader1960.lr.ph:                             ; preds = %bb.bd
  br i1 %i.fp, label %.preheader1960.preheader, label %.preheader1969

.preheader1960.preheader:                         ; preds = %.preheader1960.lr.ph
  %i.fwv = zext i32 %.11620 to i64                ; 4 uses
  %xtraiter4409 = and i64 %i.fwv, 1
  %i.fww = icmp eq i32 %.11620, 1
  %unroll_iter4419 = and i64 %i.fwv, 4294967294
  %lcmp.mod4413.not = icmp eq i64 %xtraiter4409, 0
  %lcmp.mod4418 = trunc i32 %.11620 to i1
  br label %.preheader1960

.preheader1969:                                   ; preds = %._crit_edge2229, %.preheader1960.lr.ph
  br i1 %i.fw, label %.lr.ph2237, label %.thread1866

.preheader1960:                                   ; preds = %.preheader1960.preheader, %._crit_edge2229
  %indvars.iv2751 = phi i64 [ -8, %.preheader1960.preheader ], [ %indvars.iv.next2752, %._crit_edge2229 ] ; 9 uses
  %i.fwx = add nsw i64 %indvars.iv2751, 8
  %i.fwy = udiv i64 %i.fwx, 112
  %i.fwz = add nsw i64 %indvars.iv2751, 128       ; 2 uses
  %i.fxa = trunc nuw nsw i64 %i.fwz to i32
  %i.fxb = tail call i32 @llvm.smin.i32(i32 %i.fxa, i32 %i.et)
  %i.fxc = trunc nsw i64 %indvars.iv2751 to i32   ; 2 uses
  %i.fxd = sub nsw i32 %i.fxb, %i.fxc             ; 7 uses
  %i.fxe = icmp sgt i64 %indvars.iv2751, -1       ; 3 uses
  %i.fxf = select i1 %i.fxe, i32 0, i32 8         ; 3 uses
  %i.fxg = icmp sgt i64 %i.fwz, %i.bk
  %i.fxh = trunc i64 %indvars.iv2751 to i32
  %i.fxi = sub i32 %i.ah, %i.fxh
  %i.fxj = select i1 %i.fxg, i32 %i.fxi, i32 %i.fxd ; 8 uses
  %i.fxk = icmp slt i32 %i.fxf, %i.fxj            ; 2 uses
  %i.fxl = icmp slt i32 %i.fxj, %i.fxd            ; 3 uses
  %i.fxm = sub nsw i32 %i.fxd, %i.fxj             ; 3 uses
  %i.fxn = tail call i32 @llvm.smin.i32(i32 %i.fxm, i32 8)
  %i.fxo = icmp sgt i32 %i.fxm, 0                 ; 2 uses
  %i.fxp = icmp sge i32 %i.fxf, %i.fxj
  %.not1799 = xor i1 %i.fxl, true
  %i.fxq = icmp slt i32 %i.fxm, 1
  %i.fxr = trunc i64 %i.fwy to i32
  %i.fxs = add i32 %i.fxr, 1
  %i.fxt = sitofp reassoc nsz arcp contract afn i32 %i.fxs to float
  %i.fxu = add nsw i32 %i.fxd, -4
  %i.fxv = icmp sgt i32 %i.fxd, 8
  %i.fxw = add nsw i32 %i.fxd, -8                 ; 2 uses
  %i.fxx = icmp sgt i32 %i.fxd, 16
  %i.fxy = zext nneg i32 %i.fxf to i64            ; 3 uses
  %i.fxz = sext i32 %i.fxj to i64                 ; 3 uses
  %i.fya = sext i32 %i.fxn to i64                 ; 3 uses
  %i.fyb = sext i32 %i.fxu to i64
  %i.fyc = sext i32 %i.fxw to i64
  %wide.trip.count2611 = zext nneg i32 %i.fxj to i64
  %brmerge2293.not2318 = select i1 %i.fxl, i1 %i.fxo, i1 false
  %wide.trip.count2639 = zext nneg i32 %i.fxj to i64
  %wide.trip.count2647 = zext nneg i32 %i.fxj to i64
  br label %bb.be

._crit_edge2229:                                  ; preds = %._crit_edge2226
  %indvars.iv.next2752 = add nsw i64 %indvars.iv2751, 112 ; 2 uses
  %i.fyd = icmp slt i64 %indvars.iv.next2752, %i.bk
  br i1 %i.fyd, label %.preheader1960, label %.preheader1969

bb.be:                                            ; preds = %.preheader1960, %._crit_edge2226
  %indvar = phi i32 [ 0, %.preheader1960 ], [ %indvar.next, %._crit_edge2226 ] ; 3 uses
  %indvars.iv2747 = phi i64 [ -8, %.preheader1960 ], [ %indvars.iv.next2748, %._crit_edge2226 ] ; 8 uses
  %indvars.iv2673 = phi i32 [ 8, %.preheader1960 ], [ %indvars.iv.next2674, %._crit_edge2226 ] ; 2 uses
  %indvars.iv2670 = phi i32 [ 120, %.preheader1960 ], [ %indvars.iv.next2671, %._crit_edge2226 ] ; 4 uses
  %smin3074 = call i32 @llvm.smin.i32(i32 %indvars.iv2670, i32 %i.eu)
  %i.fye = mul nsw i32 %indvar, -112
  %i.fyf = add i32 %smin3074, %i.fye
  %12 = zext i32 %i.fyf to i64
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv2670, i32 %i.eu)
  %i.fyg = mul nsw i32 %indvar, -112
  %i.fyh = add i32 %smin, %i.fyg
  %13 = zext i32 %i.fyh to i64
  %smin2702 = call i32 @llvm.smin.i32(i32 %indvars.iv2670, i32 %i.eu)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(393216) %i.btq, i8 0, i64 393216, i1 false)
  %i.fyi = add nsw i64 %indvars.iv2747, 8
  %i.fyj = udiv i64 %i.fyi, 112
  %i.fyk = add nsw i64 %indvars.iv2747, 128       ; 2 uses
  %i.fyl = trunc i64 %i.fyk to i32
  %i.fym = tail call i32 @llvm.smin.i32(i32 %i.fyl, i32 %i.eu)
  %i.fyn = trunc i64 %indvars.iv2747 to i32       ; 3 uses
  %i.fyo = sub i32 %i.fym, %i.fyn                 ; 7 uses
  %i.fyp = icmp slt i64 %indvars.iv2747, 0        ; 3 uses
  %i.fyq = select i1 %i.fyp, i32 8, i32 0         ; 5 uses
  %i.fyr = icmp sgt i64 %i.fyk, %i.af
  %i.fys = trunc i64 %indvars.iv2747 to i32
  %i.fyt = sub i32 %i.ae, %i.fys
  %i.fyu = select i1 %i.fyr, i32 %i.fyt, i32 %i.fyo ; 12 uses
  %i.fyv = icmp slt i32 %i.fyq, %i.fyu            ; 2 uses
  %or.cond2288 = select i1 %i.fxk, i1 %i.fyv, i1 false
  br i1 %or.cond2288, label %.lr.ph2127.preheader, label %._crit_edge2132.split

.lr.ph2127.preheader:                             ; preds = %bb.be
  %i.fyw = zext nneg i32 %i.fyq to i64            ; 5 uses
  %wide.trip.count2606 = zext i32 %i.fyu to i64   ; 3 uses
  %xtraiter4341 = and i64 %wide.trip.count2606, 1
  %lcmp.mod4342.not = icmp eq i64 %xtraiter4341, 0
  %indvars.iv.next2604.prol = or disjoint i64 %i.fyw, 1
  %i.fyx = add nsw i64 %wide.trip.count2606, -1
  %i.fyy = icmp eq i64 %i.fyx, %i.fyw
  br label %.lr.ph2127

._crit_edge2132.split:                            ; preds = %._crit_edge2128, %bb.be
  %i.fyz = icmp sge i32 %i.fyq, %i.fyu
  %or.cond2290.not = select i1 %i.fxe, i1 true, i1 %i.fyz
  br i1 %or.cond2290.not, label %.loopexit1936.split, label %.preheader1906.preheader

.preheader1906.preheader:                         ; preds = %._crit_edge2132.split
  %i.fza = zext nneg i32 %i.fyq to i64            ; 34 uses
  %wide.trip.count2617 = zext nneg i32 %i.fyu to i64 ; 17 uses
  %i.fzb = xor i64 %i.fza, -1
  %i.fzc = add nsw i64 %i.fzb, %wide.trip.count2617 ; 8 uses
  %xtraiter4346 = and i64 %wide.trip.count2617, 1
  %lcmp.mod4347.not = icmp eq i64 %xtraiter4346, 0
  br i1 %lcmp.mod4347.not, label %.prol.loopexit4345, label %.prol.loopexit4345.unr-lcssa

.prol.loopexit4345.unr-lcssa:                     ; preds = %.preheader1906.preheader
  %i.fzd = load ptr, ptr %i.azg, align 8, !tbaa !59 ; 2 uses
  %sext2945.prol = or disjoint i64 %i.fza, 2048   ; 2 uses
  %i.fze = getelementptr inbounds nuw [4 x i8], ptr %i.fzd, i64 %sext2945.prol
  %i.fzf = load float, ptr %i.fze, align 4, !tbaa !58
  %i.fzg = getelementptr inbounds nuw [4 x i8], ptr %i.fzd, i64 %i.fza
  store float %i.fzf, ptr %i.fzg, align 4, !tbaa !58
  %i.fzh = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %sext2945.prol
  %i.fzi = load float, ptr %i.fzh, align 32, !tbaa !58
  %i.fzj = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.fza
  store float %i.fzi, ptr %i.fzj, align 32, !tbaa !58
  %indvars.iv.next2614.prol = or disjoint i64 %i.fza, 1
  br label %.prol.loopexit4345

.prol.loopexit4345:                               ; preds = %.prol.loopexit4345.unr-lcssa, %.preheader1906.preheader
  %indvars.iv2613.unr = phi i64 [ %i.fza, %.preheader1906.preheader ], [ %indvars.iv.next2614.prol, %.prol.loopexit4345.unr-lcssa ]
  %i.fzk = icmp eq i64 %i.fzc, 0
  br i1 %i.fzk, label %._crit_edge2135.preheader, label %.preheader1906.preheader.new

.lr.ph2127:                                       ; preds = %.lr.ph2127.preheader, %._crit_edge2128
  %indvars.iv2608 = phi i64 [ %i.fxy, %.lr.ph2127.preheader ], [ %indvars.iv.next2609, %._crit_edge2128 ] ; 4 uses
  %i.fzl = add nsw i64 %indvars.iv2608, %indvars.iv2751
  %indvars.iv2608.tr = trunc i64 %indvars.iv2608 to i32
  %i.fzm = shl i32 %indvars.iv2608.tr, 2
  %.tr.i1833 = and i32 %i.fzm, 28                 ; 2 uses
  %i.fzn = lshr i32 %i.q, %.tr.i1833              ; 3 uses
  %i.fzo = and i32 %i.fzn, 3                      ; 2 uses
  %i.fzp = or disjoint i32 %.tr.i1833, 2
  %i.fzq = lshr i32 %i.q, %i.fzp                  ; 2 uses
  %i.fzr = xor i32 %i.fzq, %i.fzn
  %i.fzs = and i32 %i.fzr, 3
  %i.fzt = mul nsw i64 %i.fzl, %i.af
  %i.fzu = shl nuw nsw i64 %indvars.iv2608, 7     ; 3 uses
  %invariant.op = add i64 %indvars.iv2747, %i.fzt ; 3 uses
  br i1 %lcmp.mod4342.not, label %.prol.loopexit4340, label %.prol.preheader4339

.prol.preheader4339:                              ; preds = %.lr.ph2127
  %.reass.prol = add i64 %invariant.op, %i.fyw    ; 2 uses
  %i.fzv = or disjoint i64 %i.fzu, %i.fyw         ; 2 uses
  %i.fzw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass.prol
  %i.fzx = load float, ptr %i.fzw, align 4, !tbaa !58
  %i.fzy = zext nneg i32 %i.fzo to i64
  %i.fzz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fzy
  %i.gaa = load ptr, ptr %i.fzz, align 8, !tbaa !59
  %i.gab = getelementptr inbounds nuw [4 x i8], ptr %i.gaa, i64 %i.fzv
  store float %i.fzx, ptr %i.gab, align 4, !tbaa !58
  %i.gac = and i32 %i.fzn, 1
  %i.gad = icmp eq i32 %i.gac, 0
  br i1 %i.gad, label %bb.bf, label %.prol.loopexit4340.unr-lcssa

bb.bf:                                            ; preds = %.prol.preheader4339
  %i.gae = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.reass.prol
  %i.gaf = load float, ptr %i.gae, align 4, !tbaa !58
  %i.gag = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.fzv
  store float %i.gaf, ptr %i.gag, align 32, !tbaa !58
  br label %.prol.loopexit4340.unr-lcssa

.prol.loopexit4340.unr-lcssa:                     ; preds = %bb.bf, %.prol.preheader4339
  %i.gah = and i32 %i.fzq, 3
  br label %.prol.loopexit4340

.prol.loopexit4340:                               ; preds = %.prol.loopexit4340.unr-lcssa, %.lr.ph2127
  %indvars.iv2603.unr = phi i64 [ %i.fyw, %.lr.ph2127 ], [ %indvars.iv.next2604.prol, %.prol.loopexit4340.unr-lcssa ]
  %.016992124.unr = phi i32 [ %i.fzo, %.lr.ph2127 ], [ %i.gah, %.prol.loopexit4340.unr-lcssa ] ; 3 uses
  br i1 %i.fyy, label %._crit_edge2128, label %.lr.ph2127.new

.lr.ph2127.new:                                   ; preds = %.prol.loopexit4340
  %i.gai = zext nneg i32 %.016992124.unr to i64
  %i.gaj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gai
  %i.gak = load ptr, ptr %i.gaj, align 8, !tbaa !59
  %i.gal = and i32 %.016992124.unr, 1
  %i.gam = icmp eq i32 %i.gal, 0
  %i.gan = xor i32 %.016992124.unr, %i.fzs        ; 2 uses
  %i.gao = zext nneg i32 %i.gan to i64
  %i.gap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gao
  %i.gaq = load ptr, ptr %i.gap, align 8, !tbaa !59
  %i.gar = and i32 %i.gan, 1
  %i.gas = icmp eq i32 %i.gar, 0
  br label %bb.bg

._crit_edge2128:                                  ; preds = %bb.bk, %.prol.loopexit4340
  %indvars.iv.next2609 = add nuw nsw i64 %indvars.iv2608, 1 ; 2 uses
  %exitcond2612.not = icmp eq i64 %indvars.iv.next2609, %wide.trip.count2611
  br i1 %exitcond2612.not, label %._crit_edge2132.split, label %.lr.ph2127

bb.bg:                                            ; preds = %bb.bk, %.lr.ph2127.new
  %indvars.iv2603 = phi i64 [ %indvars.iv2603.unr, %.lr.ph2127.new ], [ %indvars.iv.next2604.1, %bb.bk ] ; 4 uses
  %.reass = add i64 %indvars.iv2603, %invariant.op ; 2 uses
  %i.gat = add nuw nsw i64 %i.fzu, %indvars.iv2603 ; 2 uses
  %i.gau = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass
  %i.gav = load float, ptr %i.gau, align 4, !tbaa !58
  %i.gaw = getelementptr inbounds nuw [4 x i8], ptr %i.gak, i64 %i.gat
  store float %i.gav, ptr %i.gaw, align 4, !tbaa !58
  br i1 %i.gam, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gax = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.reass
  %i.gay = load float, ptr %i.gax, align 4, !tbaa !58
  %i.gaz = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.gat
  store float %i.gay, ptr %i.gaz, align 4, !tbaa !58
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %indvars.iv.next2604 = add nuw nsw i64 %indvars.iv2603, 1 ; 2 uses
  %.reass.1 = add i64 %indvars.iv.next2604, %invariant.op ; 2 uses
  %i.gba = add nuw nsw i64 %i.fzu, %indvars.iv.next2604 ; 2 uses
  %i.gbb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.reass.1
  %i.gbc = load float, ptr %i.gbb, align 4, !tbaa !58
  %i.gbd = getelementptr inbounds nuw [4 x i8], ptr %i.gaq, i64 %i.gba
  store float %i.gbc, ptr %i.gbd, align 4, !tbaa !58
  br i1 %i.gas, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gbe = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.reass.1
  %i.gbf = load float, ptr %i.gbe, align 4, !tbaa !58
  %i.gbg = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.gba
  store float %i.gbf, ptr %i.gbg, align 4, !tbaa !58
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next2604.1 = add nuw nsw i64 %indvars.iv2603, 2 ; 2 uses
  %exitcond2607.not.1 = icmp eq i64 %indvars.iv.next2604.1, %wide.trip.count2606
  br i1 %exitcond2607.not.1, label %._crit_edge2128, label %bb.bg

._crit_edge2135:                                  ; preds = %._crit_edge2135.prol.loopexit, %._crit_edge2135
  %indvars.iv2613.1 = phi i64 [ %indvars.iv.next2614.1.1, %._crit_edge2135 ], [ %indvars.iv2613.1.unr, %._crit_edge2135.prol.loopexit ] ; 6 uses
  %indvars.iv2613.1.tr = trunc i64 %indvars.iv2613.1 to i32
  %i.gbh = shl i32 %indvars.iv2613.1.tr, 1
  %i.gbi = and i32 %i.gbh, 2
  %i.gbj = or disjoint i32 %i.gbi, 4
  %i.gbk = lshr i32 %i.q, %i.gbj
  %i.gbl = and i32 %i.gbk, 3
  %i.gbm = zext nneg i32 %i.gbl to i64
  %i.gbn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gbm
  %i.gbo = load ptr, ptr %i.gbn, align 8, !tbaa !59 ; 2 uses
  %i.gbp = shl i64 %indvars.iv2613.1, 32
  %sext2946 = add i64 %i.gbp, 8246337208320
  %i.gbq = ashr exact i64 %sext2946, 32           ; 2 uses
  %i.gbr = getelementptr inbounds [4 x i8], ptr %i.gbo, i64 %i.gbq
  %i.gbs = load float, ptr %i.gbr, align 4, !tbaa !58
  %i.gbt = add nuw nsw i64 %indvars.iv2613.1, 128 ; 2 uses
  %i.gbu = getelementptr inbounds nuw [4 x i8], ptr %i.gbo, i64 %i.gbt
  store float %i.gbs, ptr %i.gbu, align 4, !tbaa !58
  %i.gbv = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.gbq
  %i.gbw = load float, ptr %i.gbv, align 4, !tbaa !58
  %i.gbx = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %i.gbt
  store float %i.gbw, ptr %i.gbx, align 4, !tbaa !58
  %indvars.iv.next2614.1 = add nuw nsw i64 %indvars.iv2613.1, 1 ; 2 uses
  %indvars.iv2613.1.tr.1 = trunc i64 %indvars.iv.next2614.1 to i32
  %i.gby = shl i32 %indvars.iv2613.1.tr.1, 1
  %i.gbz = and i32 %i.gby, 2
  %i.gca = or disjoint i32 %i.gbz, 4
  %i.gcb = lshr i32 %i.q, %i.gca
  %i.gcc = and i32 %i.gcb, 3
  %i.gcd = zext nneg i32 %i.gcc to i64
  %i.gce = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gcd
  %i.gcf = load ptr, ptr %i.gce, align 8, !tbaa !59 ; 2 uses
end_hunk_4
begin_hunk_5_@process:bb.a
  %i.hsg = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hsf
  %i.hsh = load float, ptr %i.hsg, align 4, !tbaa !58
  %i.hsi = or disjoint i64 %i.hqr, 3              ; 2 uses
  %i.hsj = getelementptr inbounds [4 x i8], ptr %i.hrp, i64 %i.hsi
  store float %i.hsh, ptr %i.hsj, align 4, !tbaa !58
  %i.hsk = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hsf
  %i.hsl = load float, ptr %i.hsk, align 4, !tbaa !58
  %i.hsm = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.hsi
  store float %i.hsl, ptr %i.hsm, align 4, !tbaa !58
  %i.hsn = add i32 %i.hqp, 12
  %i.hso = sext i32 %i.hsn to i64                 ; 2 uses
  %i.hsp = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hso
  %i.hsq = load float, ptr %i.hsp, align 4, !tbaa !58
  %i.hsr = or disjoint i64 %i.hqr, 4              ; 2 uses
  %i.hss = getelementptr inbounds [4 x i8], ptr %i.hra, i64 %i.hsr
  store float %i.hsq, ptr %i.hss, align 4, !tbaa !58
  %i.hst = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hso
  %i.hsu = load float, ptr %i.hst, align 4, !tbaa !58
  %i.hsv = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.hsr
  store float %i.hsu, ptr %i.hsv, align 16, !tbaa !58
  %i.hsw = add i32 %i.hqp, 11
  %i.hsx = sext i32 %i.hsw to i64                 ; 2 uses
  %i.hsy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.hsx
  %i.hsz = load float, ptr %i.hsy, align 4, !tbaa !58
  %i.hta = or disjoint i64 %i.hqr, 5              ; 2 uses
  %i.htb = getelementptr inbounds [4 x i8], ptr %i.hrp, i64 %i.hta
  store float %i.hsz, ptr %i.htb, align 4, !tbaa !58
  %i.htc = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.hsx
  %i.htd = load float, ptr %i.htc, align 4, !tbaa !58
  %i.hte = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.hta
  store float %i.htd, ptr %i.hte, align 4, !tbaa !58
  %i.htf = add i32 %i.hqp, 10
  %i.htg = sext i32 %i.htf to i64                 ; 2 uses
  %i.hth = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.htg
  %i.hti = load float, ptr %i.hth, align 4, !tbaa !58
  %i.htj = or disjoint i64 %i.hqr, 6              ; 2 uses
  %i.htk = getelementptr inbounds [4 x i8], ptr %i.hra, i64 %i.htj
  store float %i.hti, ptr %i.htk, align 4, !tbaa !58
  %i.htl = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.htg
  %i.htm = load float, ptr %i.htl, align 4, !tbaa !58
  %i.htn = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.htj
  store float %i.htm, ptr %i.htn, align 8, !tbaa !58
  %i.hto = add i32 %i.hqp, 9
  %i.htp = sext i32 %i.hto to i64                 ; 2 uses
  %i.htq = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.htp
  %i.htr = load float, ptr %i.htq, align 4, !tbaa !58
  %i.hts = or disjoint i64 %i.hqr, 7              ; 2 uses
  %i.htt = getelementptr inbounds [4 x i8], ptr %i.hrp, i64 %i.hts
  store float %i.htr, ptr %i.htt, align 4, !tbaa !58
  %i.htu = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.htp
  %i.htv = load float, ptr %i.htu, align 4, !tbaa !58
  %i.htw = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.hts
  store float %i.htv, ptr %i.htw, align 4, !tbaa !58
  %indvars.iv.next2711 = add nuw nsw i64 %indvars.iv2710, 1 ; 2 uses
  %i.htx = icmp slt i64 %indvars.iv.next2711, %i.fya
  br i1 %i.htx, label %.preheader1899, label %.preheader1898.lr.ph

.preheader1898.lr.ph:                             ; preds = %.preheader1899, %.loopexit1924.split
  %i.hty = trunc i64 %i.fyj to i32
  %i.htz = add i32 %i.hty, 1
  %i.hua = sitofp reassoc nsz arcp contract afn i32 %i.htz to float ; 3 uses
  %invariant.op4504 = fmul reassoc nsz arcp contract afn float %i.hua, %i.hua
  br label %.preheader1898

.preheader1898:                                   ; preds = %.preheader1898.lr.ph, %._crit_edge2170
  %indvars.iv2718 = phi i64 [ 0, %.preheader1898.lr.ph ], [ %indvars.iv.next2719, %._crit_edge2170 ] ; 2 uses
  %.016692191 = phi float [ 1.000000e+00, %.preheader1898.lr.ph ], [ %i.hvq, %._crit_edge2170 ] ; 3 uses
  %i.hub = phi <2 x float> [ zeroinitializer, %.preheader1898.lr.ph ], [ %.lcssa4212, %._crit_edge2170 ] ; 2 uses
  %i.huc = phi <2 x float> [ zeroinitializer, %.preheader1898.lr.ph ], [ %.lcssa4214.a, %._crit_edge2170 ] ; 2 uses
  %i.hud = mul nuw nsw i64 %indvars.iv2718, %i.fwv ; 3 uses
  br i1 %i.fww, label %.epil.preheader4408, label %.preheader1898.new

._crit_edge2193:                                  ; preds = %._crit_edge2170
  %i.hue = fcmp reassoc nsz arcp contract afn oge <2 x double> %.lcssa4215.a, splat (double f0xC00FEB852FFFFFFF)
  %i.huf = fcmp reassoc nsz arcp contract afn ole <2 x float> %.lcssa4214.a, splat (float 3.990000e+00)
  %i.hug = select <2 x i1> %i.huf, <2 x float> %.lcssa4214.a, <2 x float> splat (float 3.990000e+00)
  %i.huh = select <2 x i1> %i.hue, <2 x float> %i.hug, <2 x float> splat (float -3.990000e+00) ; 3 uses
  %i.hui = fcmp reassoc nsz arcp contract afn oge <2 x double> %.lcssa4213, splat (double f0xC00FEB852FFFFFFF)
  %i.huj = fcmp reassoc nsz arcp contract afn ole <2 x float> %.lcssa4212, splat (float 3.990000e+00)
  %i.huk = select <2 x i1> %i.huj, <2 x float> %.lcssa4212, <2 x float> splat (float 3.990000e+00)
  %i.hul = select <2 x i1> %i.hui, <2 x float> %i.huk, <2 x float> splat (float -3.990000e+00) ; 3 uses
  %i.hum = extractelement <2 x float> %i.huh, i64 0 ; 4 uses
  %i.hun = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hum)
  %i.huo = fptosi float %i.hun to i32             ; 3 uses
  store i32 %i.huo, ptr %i.e, align 4, !tbaa !16
  %i.hup = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hum)
  %i.huq = fptosi float %i.hup to i32             ; 3 uses
  store i32 %i.huq, ptr %i.g, align 4, !tbaa !16
  %i.hur = fcmp reassoc nsz arcp contract afn olt float %i.hum, 0.000000e+00
  br i1 %i.hur, label %bb.dr, label %bb.ds

._crit_edge2170.unr-lcssa:                        ; preds = %.preheader1898.new
  br i1 %lcmp.mod4413.not, label %._crit_edge2170, label %.epil.preheader4408

.epil.preheader4408:                              ; preds = %._crit_edge2170.unr-lcssa, %.preheader1898
  %indvars.iv2713.epil.init = phi i64 [ 0, %.preheader1898 ], [ %indvars.iv.next2714.1, %._crit_edge2170.unr-lcssa ]
  %.016672167.epil.init = phi float [ %.016692191, %.preheader1898 ], [ %.reass4505, %._crit_edge2170.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.hub, %.preheader1898 ], [ %i.hxp, %._crit_edge2170.unr-lcssa ]
  %.epil.init4412 = phi <2 x float> [ %i.huc, %.preheader1898 ], [ %i.hxe, %._crit_edge2170.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4418)
  %i.hus = fpext reassoc nsz arcp contract afn float %.016672167.epil.init to double ; 4 uses
  %i.hut = add nuw nsw i64 %indvars.iv2713.epil.init, %i.hud ; 4 uses
  %i.huu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hut
  %i.huv = load double, ptr %i.huu, align 8, !tbaa !132
  %i.huw = fpext <2 x float> %.epil.init4412 to <2 x double>
  %i.hux = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.hut
  %i.huy = load double, ptr %i.hux, align 8, !tbaa !132
  %i.huz = fmul reassoc nsz arcp contract afn double %i.huy, %i.hus
  %i.hva = fmul reassoc nsz arcp contract afn double %i.huv, %i.hus
  %i.hvb = insertelement <2 x double> poison, double %i.hva, i64 0
  %i.hvc = insertelement <2 x double> %i.hvb, double %i.huz, i64 1
  %i.hvd = fadd reassoc nsz arcp contract afn <2 x double> %i.hvc, %i.huw ; 2 uses
  %i.hve = fptrunc <2 x double> %i.hvd to <2 x float>
  %i.hvf = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hut
  %i.hvg = load double, ptr %i.hvf, align 8, !tbaa !132
  %i.hvh = fpext <2 x float> %.epil.init to <2 x double>
  %i.hvi = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hut
  %i.hvj = load double, ptr %i.hvi, align 8, !tbaa !132
  %i.hvk = fmul reassoc nsz arcp contract afn double %i.hvj, %i.hus
  %i.hvl = fmul reassoc nsz arcp contract afn double %i.hvg, %i.hus
  %i.hvm = insertelement <2 x double> poison, double %i.hvl, i64 0
  %i.hvn = insertelement <2 x double> %i.hvm, double %i.hvk, i64 1
  %i.hvo = fadd reassoc nsz arcp contract afn <2 x double> %i.hvn, %i.hvh ; 2 uses
  %i.hvp = fptrunc <2 x double> %i.hvo to <2 x float>
  br label %._crit_edge2170

._crit_edge2170:                                  ; preds = %._crit_edge2170.unr-lcssa, %.epil.preheader4408
  %.lcssa4215.a = phi <2 x double> [ %i.hxd, %._crit_edge2170.unr-lcssa ], [ %i.hvd, %.epil.preheader4408 ]
  %.lcssa4214.a = phi <2 x float> [ %i.hxe, %._crit_edge2170.unr-lcssa ], [ %i.hve, %.epil.preheader4408 ] ; 3 uses
  %.lcssa4213 = phi <2 x double> [ %i.hxo, %._crit_edge2170.unr-lcssa ], [ %i.hvo, %.epil.preheader4408 ]
  %.lcssa4212 = phi <2 x float> [ %i.hxp, %._crit_edge2170.unr-lcssa ], [ %i.hvp, %.epil.preheader4408 ] ; 3 uses
  %i.hvq = fmul reassoc nsz arcp contract afn float %.016692191, %i.fxt
  %indvars.iv.next2719 = add nuw nsw i64 %indvars.iv2718, 1 ; 2 uses
  %exitcond2722.not = icmp eq i64 %indvars.iv.next2719, %i.fwv
  br i1 %exitcond2722.not, label %._crit_edge2193, label %.preheader1898

.preheader1898.new:                               ; preds = %.preheader1898, %.preheader1898.new
  %indvars.iv2713 = phi i64 [ %indvars.iv.next2714.1, %.preheader1898.new ], [ 0, %.preheader1898 ] ; 3 uses
  %.016672167 = phi float [ %.reass4505, %.preheader1898.new ], [ %.016692191, %.preheader1898 ] ; 3 uses
  %i.hvr = phi <2 x float> [ %i.hxp, %.preheader1898.new ], [ %i.hub, %.preheader1898 ]
  %i.hvs = phi <2 x float> [ %i.hxe, %.preheader1898.new ], [ %i.huc, %.preheader1898 ]
  %niter4420 = phi i64 [ %niter4420.next.1, %.preheader1898.new ], [ 0, %.preheader1898 ]
  %i.hvt = fpext reassoc nsz arcp contract afn float %.016672167 to double ; 4 uses
  %i.hvu = add nuw nsw i64 %indvars.iv2713, %i.hud ; 4 uses
  %i.hvv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hvu
  %i.hvw = load double, ptr %i.hvv, align 8, !tbaa !132
  %i.hvx = fpext <2 x float> %i.hvs to <2 x double>
  %i.hvy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.hvu
  %i.hvz = load double, ptr %i.hvy, align 8, !tbaa !132
  %i.hwa = fmul reassoc nsz arcp contract afn double %i.hvz, %i.hvt
  %i.hwb = fmul reassoc nsz arcp contract afn double %i.hvw, %i.hvt
  %i.hwc = insertelement <2 x double> poison, double %i.hwb, i64 0
  %i.hwd = insertelement <2 x double> %i.hwc, double %i.hwa, i64 1
  %i.hwe = fadd reassoc nsz arcp contract afn <2 x double> %i.hwd, %i.hvx
  %i.hwf = fptrunc <2 x double> %i.hwe to <2 x float>
  %i.hwg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hvu
  %i.hwh = load double, ptr %i.hwg, align 8, !tbaa !132
  %i.hwi = fpext <2 x float> %i.hvr to <2 x double>
  %i.hwj = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hvu
  %i.hwk = load double, ptr %i.hwj, align 8, !tbaa !132
  %i.hwl = fmul reassoc nsz arcp contract afn double %i.hwk, %i.hvt
  %i.hwm = fmul reassoc nsz arcp contract afn double %i.hwh, %i.hvt
  %i.hwn = insertelement <2 x double> poison, double %i.hwm, i64 0
  %i.hwo = insertelement <2 x double> %i.hwn, double %i.hwl, i64 1
  %i.hwp = fadd reassoc nsz arcp contract afn <2 x double> %i.hwo, %i.hwi
  %i.hwq = fptrunc <2 x double> %i.hwp to <2 x float>
  %i.hwr = fmul reassoc nsz arcp contract afn float %.016672167, %i.hua
  %indvars.iv.next2714 = or disjoint i64 %indvars.iv2713, 1
  %i.hws = fpext reassoc nsz arcp contract afn float %i.hwr to double ; 4 uses
  %i.hwt = add nuw nsw i64 %indvars.iv.next2714, %i.hud ; 4 uses
  %i.hwu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hwt
  %i.hwv = load double, ptr %i.hwu, align 8, !tbaa !132
  %i.hww = fpext <2 x float> %i.hwf to <2 x double>
  %i.hwx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.hwt
  %i.hwy = load double, ptr %i.hwx, align 8, !tbaa !132
  %i.hwz = fmul reassoc nsz arcp contract afn double %i.hwy, %i.hws
  %i.hxa = fmul reassoc nsz arcp contract afn double %i.hwv, %i.hws
  %i.hxb = insertelement <2 x double> poison, double %i.hxa, i64 0
  %i.hxc = insertelement <2 x double> %i.hxb, double %i.hwz, i64 1
  %i.hxd = fadd reassoc nsz arcp contract afn <2 x double> %i.hxc, %i.hww ; 2 uses
  %i.hxe = fptrunc <2 x double> %i.hxd to <2 x float> ; 3 uses
  %i.hxf = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hwt
  %i.hxg = load double, ptr %i.hxf, align 8, !tbaa !132
  %i.hxh = fpext <2 x float> %i.hwq to <2 x double>
  %i.hxi = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hwt
  %i.hxj = load double, ptr %i.hxi, align 8, !tbaa !132
  %i.hxk = fmul reassoc nsz arcp contract afn double %i.hxj, %i.hws
  %i.hxl = fmul reassoc nsz arcp contract afn double %i.hxg, %i.hws
  %i.hxm = insertelement <2 x double> poison, double %i.hxl, i64 0
  %i.hxn = insertelement <2 x double> %i.hxm, double %i.hxk, i64 1
  %i.hxo = fadd reassoc nsz arcp contract afn <2 x double> %i.hxn, %i.hxh ; 2 uses
  %i.hxp = fptrunc <2 x double> %i.hxo to <2 x float> ; 3 uses
  %.reass4505 = fmul reassoc nsz arcp contract afn float %.016672167, %invariant.op4504 ; 2 uses
  %indvars.iv.next2714.1 = add nuw nsw i64 %indvars.iv2713, 2 ; 2 uses
  %niter4420.next.1 = add i64 %niter4420, 2       ; 2 uses
  %niter4420.ncmp.1 = icmp eq i64 %niter4420.next.1, %unroll_iter4419
  br i1 %niter4420.ncmp.1, label %._crit_edge2170.unr-lcssa, label %.preheader1898.new

.lr.ph2208:                                       ; preds = %.preheader1920
  %i.hxq = add nsw i32 %i.fyo, -4                 ; 2 uses
  %14 = zext nneg i32 %i.hxq to i64
  br label %bb.dy

bb.dr:                                            ; preds = %._crit_edge2193
  store i32 %i.huq, ptr %i.e, align 4, !tbaa !16
  store i32 %i.huo, ptr %i.g, align 4, !tbaa !16
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge2193
  %i.hxr = phi i32 [ %i.huq, %bb.dr ], [ %i.huo, %._crit_edge2193 ]
  %i.hxs = sitofp reassoc nsz arcp contract afn i32 %i.hxr to float
  %i.hxt = fsub reassoc nsz arcp contract afn float %i.hum, %i.hxs
  %i.hxu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hxt) ; 2 uses
  store float %i.hxu, ptr %i.j, align 4, !tbaa !58
  %i.hxv = extractelement <2 x float> %i.huh, i64 1 ; 4 uses
  %i.hxw = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hxv)
  %i.hxx = fptosi float %i.hxw to i32             ; 3 uses
  store i32 %i.hxx, ptr %i.d, align 4, !tbaa !16
  %i.hxy = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hxv)
  %i.hxz = fptosi float %i.hxy to i32             ; 3 uses
  store i32 %i.hxz, ptr %i.f, align 4, !tbaa !16
  %i.hya = fcmp reassoc nsz arcp contract afn olt float %i.hxv, 0.000000e+00
  br i1 %i.hya, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.hxz, ptr %i.d, align 4, !tbaa !16
  store i32 %i.hxx, ptr %i.f, align 4, !tbaa !16
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.hyb = phi i32 [ %i.hxz, %bb.dt ], [ %i.hxx, %bb.ds ]
  %i.hyc = sitofp reassoc nsz arcp contract afn i32 %i.hyb to float
  %i.hyd = fsub reassoc nsz arcp contract afn float %i.hxv, %i.hyc
  %i.hye = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyd) ; 2 uses
  store float %i.hye, ptr %i.i, align 4, !tbaa !58
  %i.hyf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.huh, zeroinitializer
  %i.hyg = select <2 x i1> %i.hyf, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hyh = shufflevector <2 x i32> %i.hyg, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hyh, ptr align 16 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  %i.hyi = extractelement <2 x float> %i.hul, i64 0 ; 4 uses
  %i.hyj = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hyi)
  %i.hyk = fptosi float %i.hyj to i32             ; 3 uses
  store i32 %i.hyk, ptr %i.hm, align 4, !tbaa !16
  %i.hyl = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hyi)
  %i.hym = fptosi float %i.hyl to i32             ; 3 uses
  store i32 %i.hym, ptr %i.hn, align 4, !tbaa !16
  %i.hyn = fcmp reassoc nsz arcp contract afn olt float %i.hyi, 0.000000e+00
  br i1 %i.hyn, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 %i.hym, ptr %i.hm, align 4, !tbaa !16
  store i32 %i.hyk, ptr %i.hn, align 4, !tbaa !16
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.hyo = phi i32 [ %i.hym, %bb.dv ], [ %i.hyk, %bb.du ]
  %i.hyp = sitofp reassoc nsz arcp contract afn i32 %i.hyo to float
  %i.hyq = fsub reassoc nsz arcp contract afn float %i.hyi, %i.hyp
  %i.hyr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyq) ; 2 uses
  store float %i.hyr, ptr %i.fv, align 4, !tbaa !58
  %i.hys = extractelement <2 x float> %i.hul, i64 1 ; 4 uses
  %i.hyt = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hys)
  %i.hyu = fptosi float %i.hyt to i32             ; 3 uses
  store i32 %i.hyu, ptr %i.ho, align 4, !tbaa !16
  %i.hyv = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.hys)
  %i.hyw = fptosi float %i.hyv to i32             ; 3 uses
  store i32 %i.hyw, ptr %i.hp, align 4, !tbaa !16
  %i.hyx = fcmp reassoc nsz arcp contract afn olt float %i.hys, 0.000000e+00
  br i1 %i.hyx, label %bb.dx, label %.preheader1920

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.hyw, ptr %i.ho, align 4, !tbaa !16
  store i32 %i.hyu, ptr %i.hp, align 4, !tbaa !16
  br label %.preheader1920

.preheader1920:                                   ; preds = %bb.dx, %bb.dw
  %i.hyy = phi i32 [ %i.hyw, %bb.dx ], [ %i.hyu, %bb.dw ]
  %i.hyz = sitofp reassoc nsz arcp contract afn i32 %i.hyy to float
  %i.hza = fsub reassoc nsz arcp contract afn float %i.hys, %i.hyz
  %i.hzb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hza) ; 2 uses
  store float %i.hzb, ptr %i.fu, align 4, !tbaa !58
  %i.hzc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hul, zeroinitializer
  %i.hzd = select <2 x i1> %i.hzc, <2 x i32> splat (i32 2), <2 x i32> splat (i32 -2)
  %i.hze = shufflevector <2 x i32> %i.hzd, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.hze, ptr align 8 %i.hq, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !16
  br i1 %i.fxv, label %.lr.ph2208, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %._crit_edge2206, %.preheader1920
  %i.hzf = fmul reassoc nsz arcp contract afn float %i.hye, 5.000000e-01
  store float %i.hzf, ptr %i.i, align 4, !tbaa !58
  %i.hzg = fmul reassoc nsz arcp contract afn float %i.hzb, 5.000000e-01
  store float %i.hzg, ptr %i.fu, align 4, !tbaa !58
  %i.hzh = fmul reassoc nsz arcp contract afn float %i.hxu, 5.000000e-01
  store float %i.hzh, ptr %i.j, align 4, !tbaa !58
  %i.hzi = fmul reassoc nsz arcp contract afn float %i.hyr, 5.000000e-01
  store float %i.hzi, ptr %i.fv, align 4, !tbaa !58
  br i1 %i.fxx, label %.lr.ph2217, label %._crit_edge2226

.lr.ph2217:                                       ; preds = %._crit_edge2209
  %i.hzj = add nsw i32 %i.fyo, -8                 ; 2 uses
  br label %bb.ea

bb.dy:                                            ; preds = %.lr.ph2208, %._crit_edge2206
  %indvars.iv2729 = phi i64 [ 4, %.lr.ph2208 ], [ %indvars.iv.next2730, %._crit_edge2206 ] ; 4 uses
  %indvars.iv2729.tr = trunc i64 %indvars.iv2729 to i32
  %i.hzk = shl i32 %indvars.iv2729.tr, 1
  %i.hzl = and i32 %i.hzk, 14                     ; 2 uses
  %i.hzm = shl nuw nsw i32 %i.hzl, 1
  %i.hzn = lshr i32 %i.q, %i.hzm                  ; 2 uses
  %i.hzo = and i32 %i.hzn, 1                      ; 2 uses
  %i.hzp = or disjoint i32 %i.hzo, 4
  %i.hzq = icmp slt i32 %i.hzp, %i.hxq
  br i1 %i.hzq, label %.lr.ph2205, label %._crit_edge2206

.lr.ph2205:                                       ; preds = %bb.dy
  %i.hzr = or disjoint i32 %i.hzo, %i.hzl
  %i.hzs = shl nuw nsw i32 %i.hzr, 1
  %i.hzt = lshr i32 %i.q, %i.hzs
  %i.hzu = and i32 %i.hzt, 3
  %i.hzv = zext nneg i32 %i.hzu to i64            ; 7 uses
  %i.hzw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hzv
  %i.hzx = load float, ptr %i.hzw, align 4, !tbaa !58 ; 2 uses
  %i.hzy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hzv
  %i.hzz = load i32, ptr %i.hzy, align 4, !tbaa !16
  %i.iaa = trunc nuw nsw i64 %indvars.iv2729 to i32 ; 2 uses
  %i.iab = add nsw i32 %i.hzz, %i.iaa
  %i.iac = shl nsw i32 %i.iab, 7
  %i.iad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hzv
  %i.iae = load i32, ptr %i.iad, align 4, !tbaa !16
  %i.iaf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.hzv
  %i.iag = load i32, ptr %i.iaf, align 4, !tbaa !16
  %i.iah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hzv
  %i.iai = load i32, ptr %i.iah, align 4, !tbaa !16
  %i.iaj = add nsw i32 %i.iai, %i.iaa
  %i.iak = shl nsw i32 %i.iaj, 7
  %i.ial = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hzv
  %i.iam = load float, ptr %i.ial, align 4, !tbaa !58
  %i.ian = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hzv
  %i.iao = load ptr, ptr %i.ian, align 8, !tbaa !59
  %i.iap = shl nuw nsw i64 %indvars.iv2729, 7
  %i.iaq = and i32 %i.hzn, 1
  %i.iar = or disjoint i32 %i.iaq, 4
  %i.ias = zext nneg i32 %i.iar to i64
  %i.iat = sext i32 %i.iac to i64
  %i.iau = sext i32 %i.iae to i64                 ; 2 uses
  %i.iav = sext i32 %i.iag to i64                 ; 2 uses
  %i.iaw = sext i32 %i.iak to i64
  %invariant.gep2993 = getelementptr [4 x i8], ptr %i.btr, i64 %i.iau
  %invariant.gep2995 = getelementptr [4 x i8], ptr %i.btr, i64 %i.iav
  %invariant.gep2997 = getelementptr [4 x i8], ptr %i.btr, i64 %i.iau
  %invariant.gep2999 = getelementptr [4 x i8], ptr %i.btr, i64 %i.iav
  br label %bb.dz

._crit_edge2206:                                  ; preds = %bb.dz, %bb.dy
  %indvars.iv.next2730 = add nuw nsw i64 %indvars.iv2729, 1 ; 2 uses
  %i.iax = icmp slt i64 %indvars.iv.next2730, %i.fyb
  br i1 %i.iax, label %bb.dy, label %._crit_edge2209

bb.dz:                                            ; preds = %.lr.ph2205, %bb.dz
  %indvars.iv2726 = phi i64 [ %i.ias, %.lr.ph2205 ], [ %indvars.iv.next2727, %bb.dz ] ; 4 uses
  %i.iay = add nsw i64 %indvars.iv2726, %i.iat    ; 2 uses
  %gep2994 = getelementptr [4 x i8], ptr %invariant.gep2993, i64 %i.iay
  %i.iaz = load float, ptr %gep2994, align 4, !tbaa !58
  %gep2996 = getelementptr [4 x i8], ptr %invariant.gep2995, i64 %i.iay
  %i.iba = load float, ptr %gep2996, align 4, !tbaa !58 ; 2 uses
  %i.ibb = fsub reassoc nsz arcp contract afn float %i.iaz, %i.iba
  %i.ibc = fmul reassoc nsz arcp contract afn float %i.ibb, %i.hzx
  %i.ibd = fadd reassoc nsz arcp contract afn float %i.ibc, %i.iba ; 2 uses
  %i.ibe = add nsw i64 %indvars.iv2726, %i.iaw    ; 2 uses
  %gep2998 = getelementptr [4 x i8], ptr %invariant.gep2997, i64 %i.ibe
  %i.ibf = load float, ptr %gep2998, align 4, !tbaa !58
  %gep3000 = getelementptr [4 x i8], ptr %invariant.gep2999, i64 %i.ibe
  %i.ibg = load float, ptr %gep3000, align 4, !tbaa !58 ; 2 uses
  %i.ibh = fsub reassoc nsz arcp contract afn float %i.ibf, %i.ibg
  %i.ibi = fmul reassoc nsz arcp contract afn float %i.ibh, %i.hzx
  %i.ibj = fsub reassoc nsz arcp contract afn float %i.ibg, %i.ibd
  %i.ibk = fadd reassoc nsz arcp contract afn float %i.ibj, %i.ibi
  %i.ibl = fmul reassoc nsz arcp contract afn float %i.ibk, %i.iam
  %i.ibm = fadd reassoc nsz arcp contract afn float %i.ibl, %i.ibd ; 2 uses
  %i.ibn = add nuw nsw i64 %indvars.iv2726, %i.iap ; 2 uses
  %i.ibo = getelementptr inbounds nuw [4 x i8], ptr %i.iao, i64 %i.ibn
  %i.ibp = load float, ptr %i.ibo, align 4, !tbaa !58
  %i.ibq = fsub reassoc nsz arcp contract afn float %i.ibm, %i.ibp
  %i.ibr = lshr i64 %i.ibn, 1
  %i.ibs = and i64 %i.ibr, 2147483647             ; 2 uses
  %i.ibt = getelementptr inbounds nuw [4 x i8], ptr %i.btt, i64 %i.ibs
  store float %i.ibq, ptr %i.ibt, align 4, !tbaa !58
  %i.ibu = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.ibs
  store float %i.ibm, ptr %i.ibu, align 4, !tbaa !58
  %indvars.iv.next2727 = add nuw nsw i64 %indvars.iv2726, 2 ; 2 uses
  %15 = icmp samesign ult i64 %indvars.iv.next2727, %14
  br i1 %15, label %bb.dz, label %._crit_edge2206

.lr.ph2225:                                       ; preds = %._crit_edge2214
  %i.ibv = add nsw i32 %i.fyo, -8                 ; 2 uses
  %16 = zext nneg i32 %i.ibv to i64
  br label %bb.ei

bb.ea:                                            ; preds = %.lr.ph2217, %._crit_edge2214
  %indvars.iv2732 = phi i32 [ 1032, %.lr.ph2217 ], [ %indvars.iv.next2733, %._crit_edge2214 ] ; 2 uses
  %.016552215 = phi i32 [ 8, %.lr.ph2217 ], [ %i.icw, %._crit_edge2214 ] ; 3 uses
  %i.ibw = shl nuw i32 %.016552215, 1
  %i.ibx = and i32 %i.ibw, 14                     ; 2 uses
  %i.iby = shl nuw nsw i32 %i.ibx, 1
  %i.ibz = lshr i32 %i.q, %i.iby
  %i.ica = and i32 %i.ibz, 1                      ; 3 uses
  %i.icb = or disjoint i32 %i.ica, 8              ; 2 uses
  %i.icc = icmp slt i32 %i.icb, %i.hzj
  br i1 %i.icc, label %.lr.ph2213, label %._crit_edge2214

.lr.ph2213:                                       ; preds = %bb.ea
  %i.icd = or disjoint i32 %i.ica, %i.ibx
  %i.ice = shl nuw nsw i32 %i.icd, 1
  %i.icf = lshr i32 %i.q, %i.ice
  %i.icg = and i32 %i.icf, 3
  %i.ich = zext nneg i32 %i.icg to i64            ; 5 uses
  %i.ici = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ich
  %i.icj = load ptr, ptr %i.ici, align 8, !tbaa !59
  %i.ick = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ich
  %i.icl = load float, ptr %i.ick, align 4, !tbaa !58 ; 2 uses
  %i.icm = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ich
  %i.icn = load i32, ptr %i.icm, align 4, !tbaa !16 ; 2 uses
  %i.ico = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ich
  %i.icp = load i32, ptr %i.ico, align 4, !tbaa !16
  %i.icq = sub nsw i32 %.016552215, %i.icp
  %i.icr = shl nsw i32 %i.icq, 7
  %i.ics = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ich
  %i.ict = load float, ptr %i.ics, align 4, !tbaa !58
  %i.icu = or disjoint i32 %indvars.iv2732, %i.ica
  %i.icv = zext i32 %i.icu to i64
  br label %bb.eb

._crit_edge2214:                                  ; preds = %bb.eh, %bb.ea
  %i.icw = add nuw nsw i32 %.016552215, 1         ; 2 uses
  %i.icx = icmp slt i32 %i.icw, %i.fxw
  %indvars.iv.next2733 = add i32 %indvars.iv2732, 128
  br i1 %i.icx, label %bb.ea, label %.lr.ph2225

bb.eb:                                            ; preds = %.lr.ph2213, %bb.eh
  %indvars.iv2734 = phi i64 [ %i.icv, %.lr.ph2213 ], [ %indvars.iv.next2735, %bb.eh ] ; 5 uses
  %.016542210 = phi i32 [ %i.icb, %.lr.ph2213 ], [ %i.ify, %bb.eh ] ; 2 uses
  %i.icy = getelementptr inbounds nuw [4 x i8], ptr %i.btr, i64 %indvars.iv2734 ; 2 uses
  %i.icz = load float, ptr %i.icy, align 4, !tbaa !58 ; 4 uses
  %i.ida = getelementptr inbounds nuw [4 x i8], ptr %i.icj, i64 %indvars.iv2734 ; 3 uses
  %i.idb = load float, ptr %i.ida, align 4, !tbaa !58 ; 3 uses
  %i.idc = fsub reassoc nsz arcp contract afn float %i.icz, %i.idb ; 4 uses
  %i.idd = trunc nuw i64 %indvars.iv2734 to i32
  %i.ide = sub nsw i32 %i.idd, %i.icn
  %i.idf = ashr i32 %i.ide, 1
  %i.idg = sext i32 %i.idf to i64                 ; 2 uses
  %i.idh = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.idg
  %i.idi = load float, ptr %i.idh, align 4, !tbaa !58 ; 2 uses
  %i.idj = lshr i64 %indvars.iv2734, 1            ; 2 uses
  %i.idk = getelementptr inbounds nuw [4 x i8], ptr %i.btt, i64 %i.idj
  %i.idl = load float, ptr %i.idk, align 4, !tbaa !58 ; 3 uses
  %i.idm = fsub reassoc nsz arcp contract afn float %i.idi, %i.idl
  %i.idn = fmul reassoc nsz arcp contract afn float %i.idm, %i.icl
  %i.ido = fadd reassoc nsz arcp contract afn float %i.idn, %i.idl ; 2 uses
  %i.idp = add nsw i32 %i.icr, %.016542210        ; 2 uses
  %i.idq = sub nsw i32 %i.idp, %i.icn
  %i.idr = ashr i32 %i.idq, 1
  %i.ids = sext i32 %i.idr to i64                 ; 2 uses
  %i.idt = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.ids
  %i.idu = load float, ptr %i.idt, align 4, !tbaa !58 ; 2 uses
  %i.idv = ashr i32 %i.idp, 1
  %i.idw = sext i32 %i.idv to i64                 ; 2 uses
  %i.idx = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.idw
  %i.idy = load float, ptr %i.idx, align 4, !tbaa !58 ; 3 uses
  %i.idz = fsub reassoc nsz arcp contract afn float %i.idu, %i.idy
  %i.iea = fmul reassoc nsz arcp contract afn float %i.idz, %i.icl
  %i.ieb = fsub reassoc nsz arcp contract afn float %i.idy, %i.ido
  %i.iec = fadd reassoc nsz arcp contract afn float %i.ieb, %i.iea
  %i.ied = fmul reassoc nsz arcp contract afn float %i.iec, %i.ict
  %i.iee = fadd reassoc nsz arcp contract afn float %i.ied, %i.ido ; 4 uses
  %i.ief = fsub reassoc nsz arcp contract afn float %i.icz, %i.iee ; 3 uses
  %i.ieg = fsub reassoc nsz arcp contract afn float %i.ief, %i.idb
  %i.ieh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ieg)
  %i.iei = fadd reassoc nsz arcp contract afn float %i.ief, %i.idb
  %i.iej = fmul reassoc nsz arcp contract afn float %i.iei, 2.500000e-01
  %i.iek = fcmp reassoc nsz arcp contract afn olt float %i.ieh, %i.iej
  br i1 %i.iek, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.iel = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idc)
  %i.iem = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iee)
  %i.ien = fcmp reassoc nsz arcp contract afn ogt float %i.iel, %i.iem
  br i1 %i.ien, label %.sink.split, label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %i.ieo = getelementptr inbounds nuw [4 x i8], ptr %i.btu, i64 %i.idj
  %i.iep = load float, ptr %i.ieo, align 4, !tbaa !58
  %i.ieq = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.idg
  %i.ier = load float, ptr %i.ieq, align 4, !tbaa !58
  %i.ies = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.idw
  %i.iet = load float, ptr %i.ies, align 4, !tbaa !58
  %i.ieu = getelementptr inbounds [4 x i8], ptr %i.btu, i64 %i.ids
  %i.iev = load float, ptr %i.ieu, align 4, !tbaa !58
  %i.iew = insertelement <4 x float> poison, float %i.icz, i64 0
  %i.iex = shufflevector <4 x float> %i.iew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iey = insertelement <4 x float> poison, float %i.ier, i64 0
  %i.iez = insertelement <4 x float> %i.iey, float %i.iep, i64 1
  %i.ifa = insertelement <4 x float> %i.iez, float %i.iet, i64 2
  %i.ifb = insertelement <4 x float> %i.ifa, float %i.iev, i64 3
  %i.ifc = fsub reassoc nsz arcp contract afn <4 x float> %i.iex, %i.ifb
  %i.ifd = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ifc)
  %i.ife = fadd reassoc nsz arcp contract afn <4 x float> %i.ifd, splat (float f0x3727C5AC)
  %i.iff = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ife ; 2 uses
  %i.ifg = insertelement <4 x float> poison, float %i.idi, i64 0
  %i.ifh = insertelement <4 x float> %i.ifg, float %i.idl, i64 1
  %i.ifi = insertelement <4 x float> %i.ifh, float %i.idy, i64 2
  %i.ifj = insertelement <4 x float> %i.ifi, float %i.idu, i64 3
  %i.ifk = fmul reassoc nsz arcp contract afn <4 x float> %i.iff, %i.ifj
  %i.ifl = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ifk)
  %i.ifm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iff)
  %i.ifn = fdiv reassoc nsz arcp contract afn float %i.ifl, %i.ifm ; 4 uses
  %i.ifo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.idc)
  %i.ifp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ifn)
  %i.ifq = fcmp reassoc nsz arcp contract afn ogt float %i.ifo, %i.ifp
  br i1 %i.ifq, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ifr = fsub reassoc nsz arcp contract afn float %i.icz, %i.ifn
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ec, %bb.ee
  %.sink = phi float [ %i.ifr, %bb.ee ], [ %i.ief, %bb.ec ]
  %.01648.ph = phi float [ %i.ifn, %bb.ee ], [ %i.iee, %bb.ec ]
  store float %.sink, ptr %i.ida, align 4, !tbaa !58
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.ed, %bb.ec
  %.01648 = phi nsz float [ %i.ifn, %bb.ed ], [ %i.iee, %bb.ec ], [ %.01648.ph, %.sink.split ] ; 2 uses
  %i.ifs = fmul reassoc nsz arcp contract afn float %.01648, %i.idc
  %i.ift = fcmp reassoc nsz arcp contract afn olt float %i.ifs, 0.000000e+00
  br i1 %i.ift, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ifu = load float, ptr %i.icy, align 4, !tbaa !58
  %i.ifv = fadd reassoc nsz arcp contract afn float %.01648, %i.idc
  %i.ifw = fmul reassoc nsz arcp contract afn float %i.ifv, 5.000000e-01
  %i.ifx = fsub reassoc nsz arcp contract afn float %i.ifu, %i.ifw
  store float %i.ifx, ptr %i.ida, align 4, !tbaa !58
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.ify = add nuw nsw i32 %.016542210, 2         ; 2 uses
  %indvars.iv.next2735 = add nuw nsw i64 %indvars.iv2734, 2
  %i.ifz = icmp slt i32 %i.ify, %i.hzj
  br i1 %i.ifz, label %bb.eb, label %._crit_edge2214

._crit_edge2226:                                  ; preds = %._crit_edge2223, %._crit_edge2209
  %indvars.iv.next2748 = add nsw i64 %indvars.iv2747, 112 ; 2 uses
  %i.iga = icmp slt i64 %indvars.iv.next2748, %i.af
  %indvars.iv.next2671 = add nuw i32 %indvars.iv2670, 112
  %indvars.iv.next2674 = add nsw i32 %indvars.iv2673, -112
  %indvar.next = add i32 %indvar, 1
  br i1 %i.iga, label %bb.be, label %._crit_edge2229

bb.ei:                                            ; preds = %.lr.ph2225, %._crit_edge2223
  %indvar3066 = phi i25 [ 0, %.lr.ph2225 ], [ %indvar.next3067, %._crit_edge2223 ] ; 2 uses
  %indvars.iv2744 = phi i64 [ 8, %.lr.ph2225 ], [ %indvars.iv.next2745, %._crit_edge2223 ] ; 5 uses
  %i.igb = add i25 %indvar3066, 8
  %i.igc = zext i25 %i.igb to i64
  %i.igd = shl nuw nsw i64 %i.igc, 9              ; 2 uses
  %i.ige = trunc nuw nsw i64 %indvars.iv2744 to i32
  %i.igf = shl i32 %i.ige, 2
  %i.igg = and i32 %i.igf, 28
  %i.igh = lshr i32 %i.q, %i.igg                  ; 4 uses
  %i.igi = and i32 %i.igh, 1
  %i.igj = or disjoint i32 %i.igi, 8              ; 2 uses
  %i.igk = icmp slt i32 %i.igj, %i.ibv
  br i1 %i.igk, label %iter.check3093, label %._crit_edge2223

iter.check3093:                                   ; preds = %bb.ei
  %i.igl = add nsw i64 %indvars.iv2744, %indvars.iv2751
  %i.igm = trunc i64 %i.igl to i32
  %i.ign = mul i32 %i.ae, %i.igm
  %i.igo = add i32 %i.ign, %i.fyn
  %i.igp = add i32 %i.igo, %i.igj
  %i.igq = ashr i32 %i.igp, 1
  %.tr = trunc i64 %indvars.iv2744 to i32
  %i.igr = shl i32 %.tr, 1
  %.tr.i1847 = and i32 %i.igr, 14                 ; 2 uses
  %i.igs = shl nuw nsw i32 %.tr.i1847, 1
  %i.igt = lshr i32 %i.q, %i.igs
  %i.igu = and i32 %i.igt, 1
  %.tr.i1848 = or disjoint i32 %i.igu, %.tr.i1847
  %i.igv = shl nuw nsw i32 %.tr.i1848, 1
  %i.igw = lshr i32 %i.q, %i.igv
  %i.igx = and i32 %i.igw, 3
  %i.igy = zext nneg i32 %i.igx to i64
  %i.igz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.igy
  %i.iha = load ptr, ptr %i.igz, align 8, !tbaa !59 ; 3 uses
  %i.ihb = sext i32 %i.igq to i64                 ; 8 uses
  %i.ihc = and i32 %i.igh, 1
  %i.ihd = or disjoint i32 %i.ihc, 8
  %i.ihe = zext nneg i32 %i.ihd to i64            ; 6 uses
  %i.ihf = shl i64 %indvars.iv2744, 7
  %i.ihg = and i64 %i.ihf, 4294967168
  %invariant.gep3001 = getelementptr inbounds nuw [4 x i8], ptr %i.iha, i64 %i.ihg ; 6 uses
  %i.ihh = and i32 %i.igh, 1
  %i.ihi = zext nneg i32 %i.ihh to i64            ; 2 uses
  %17 = or disjoint i64 %i.ihi, 10
  %umax3075 = call i64 @llvm.umax.i64(i64 %17, i64 %12)
  %18 = add nsw i64 %umax3075, -9
  %i.ihj = sub nsw i64 %18, %i.ihi                ; 3 uses
  %i.ihk = lshr i64 %i.ihj, 1
  %i.ihl = add nuw nsw i64 %i.ihk, 1              ; 4 uses
  %min.iters.check3075 = icmp ult i64 %i.ihj, 16
  br i1 %min.iters.check3075, label %vec.epilog.scalar.ph3094.preheader, label %vector.memcheck3061

vector.memcheck3061:                              ; preds = %iter.check3093
  %i.ihm = shl nsw i64 %i.ihb, 2
  %scevgep3062 = getelementptr i8, ptr %i.ds, i64 %i.ihm
  %i.ihn = and i32 %i.igh, 1
  %i.iho = zext nneg i32 %i.ihn to i64            ; 3 uses
  %19 = or disjoint i64 %i.iho, 10
  %umax = call i64 @llvm.umax.i64(i64 %19, i64 %13)
  %20 = add nsw i64 %umax, -9
  %i.ihp = sub nsw i64 %20, %i.iho
  %i.ihq = lshr i64 %i.ihp, 1                     ; 2 uses
  %i.ihr = add i64 %i.ihq, %i.ihb
  %i.ihs = shl i64 %i.ihr, 2
  %scevgep3064 = getelementptr i8, ptr %scevgep3063, i64 %i.ihs
  %scevgep3065 = getelementptr nuw i8, ptr %i.iha, i64 32
  %i.iht = shl nuw nsw i64 %i.iho, 2              ; 2 uses
  %i.ihu = getelementptr nuw i8, ptr %scevgep3065, i64 %i.igd
  %scevgep3068 = getelementptr nuw i8, ptr %i.ihu, i64 %i.iht
  %scevgep3069 = getelementptr i8, ptr %i.iha, i64 36
  %i.ihv = shl nuw nsw i64 %i.ihq, 3
  %i.ihw = getelementptr i8, ptr %scevgep3069, i64 %i.igd
  %i.ihx = getelementptr i8, ptr %i.ihw, i64 %i.ihv
  %scevgep3070 = getelementptr i8, ptr %i.ihx, i64 %i.iht
  %bound03071 = icmp ult ptr %scevgep3062, %scevgep3070
  %bound13072 = icmp ult ptr %scevgep3068, %scevgep3064
  %found.conflict3073 = and i1 %bound03071, %bound13072
  br i1 %found.conflict3073, label %vec.epilog.scalar.ph3094.preheader, label %vector.main.loop.iter.check3076

vector.main.loop.iter.check3076:                  ; preds = %vector.memcheck3061
  %min.iters.check3077 = icmp ult i64 %i.ihj, 64
  br i1 %min.iters.check3077, label %vec.epilog.ph3097, label %vector.ph3078

vector.ph3078:                                    ; preds = %vector.main.loop.iter.check3076
  %i.ihy = and i64 %i.ihl, 31                     ; 2 uses
  %i.ihz = icmp eq i64 %i.ihy, 0
  %i.iia = select i1 %i.ihz, i64 32, i64 %i.ihy   ; 2 uses
  %n.vec3079 = sub nsw i64 %i.ihl, %i.iia         ; 4 uses
  %i.iib = shl i64 %n.vec3079, 1
  %i.iic = add i64 %i.iib, %i.ihe
  %i.iid = add i64 %n.vec3079, %i.ihb
  %invariant.gep4506 = getelementptr [4 x i8], ptr %i.ds, i64 %i.ihb
  br label %vector.body3080

vector.body3080:                                  ; preds = %vector.body3080, %vector.ph3078
  %index3081 = phi i64 [ 0, %vector.ph3078 ], [ %index.next3088, %vector.body3080 ] ; 3 uses
  %i.iie = shl nuw i64 %index3081, 1
  %i.iif = or disjoint i64 %i.iie, %i.ihe         ; 4 uses
  %i.iig = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iif
  %i.iih = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iif
  %i.iii = getelementptr inbounds nuw i8, ptr %i.iih, i64 64
  %i.iij = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iif
  %i.iik = getelementptr inbounds nuw i8, ptr %i.iij, i64 128
  %i.iil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %i.iif
  %i.iim = getelementptr inbounds nuw i8, ptr %i.iil, i64 192
  %wide.vec = load <16 x float>, ptr %i.iig, align 4, !tbaa !58, !alias.scope !176
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3082 = load <16 x float>, ptr %i.iii, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3083 = shufflevector <16 x float> %wide.vec3082, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3084 = load <16 x float>, ptr %i.iik, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3085 = shufflevector <16 x float> %wide.vec3084, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3086 = load <16 x float>, ptr %i.iim, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3087 = shufflevector <16 x float> %wide.vec3086, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %gep4507 = getelementptr [4 x i8], ptr %invariant.gep4506, i64 %index3081 ; 4 uses
  %i.iin = getelementptr inbounds nuw i8, ptr %gep4507, i64 32
  %i.iio = getelementptr inbounds nuw i8, ptr %gep4507, i64 64
  %i.iip = getelementptr inbounds nuw i8, ptr %gep4507, i64 96
  store <8 x float> %strided.vec, ptr %gep4507, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  store <8 x float> %strided.vec3083, ptr %i.iin, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  store <8 x float> %strided.vec3085, ptr %i.iio, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  store <8 x float> %strided.vec3087, ptr %i.iip, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  %index.next3088 = add nuw i64 %index3081, 32    ; 2 uses
  %i.iiq = icmp eq i64 %index.next3088, %n.vec3079
  br i1 %i.iiq, label %vec.epilog.iter.check3095, label %vector.body3080, !llvm.loop !181

vec.epilog.iter.check3095:                        ; preds = %vector.body3080
  %min.epilog.iters.check3096 = icmp samesign ult i64 %i.iia, 9
  br i1 %min.epilog.iters.check3096, label %vec.epilog.scalar.ph3094.preheader, label %vec.epilog.ph3097, !prof !83

vec.epilog.scalar.ph3094.preheader:               ; preds = %vec.epilog.vector.body3099, %vector.memcheck3061, %iter.check3093, %vec.epilog.iter.check3095
  %indvars.iv2739.ph = phi i64 [ %i.ihe, %iter.check3093 ], [ %i.ihe, %vector.memcheck3061 ], [ %i.iic, %vec.epilog.iter.check3095 ], [ %i.iiv, %vec.epilog.vector.body3099 ]
  %indvars.iv2737.ph = phi i64 [ %i.ihb, %iter.check3093 ], [ %i.ihb, %vector.memcheck3061 ], [ %i.iid, %vec.epilog.iter.check3095 ], [ %i.iiw, %vec.epilog.vector.body3099 ]
  br label %vec.epilog.scalar.ph3094

vec.epilog.ph3097:                                ; preds = %vector.main.loop.iter.check3076, %vec.epilog.iter.check3095
  %vec.epilog.resume.val3090 = phi i64 [ %n.vec3079, %vec.epilog.iter.check3095 ], [ 0, %vector.main.loop.iter.check3076 ]
  %i.iir = and i64 %i.ihl, 7                      ; 2 uses
  %i.iis = icmp eq i64 %i.iir, 0
  %i.iit = select i1 %i.iis, i64 8, i64 %i.iir
  %n.vec3098 = sub nsw i64 %i.ihl, %i.iit         ; 3 uses
  %i.iiu = shl i64 %n.vec3098, 1
  %i.iiv = add i64 %i.iiu, %i.ihe
  %i.iiw = add i64 %n.vec3098, %i.ihb
  %invariant.gep4508 = getelementptr [4 x i8], ptr %invariant.gep3001, i64 %i.ihe
  %invariant.gep4510 = getelementptr [4 x i8], ptr %i.ds, i64 %i.ihb
  br label %vec.epilog.vector.body3099

vec.epilog.vector.body3099:                       ; preds = %vec.epilog.vector.body3099, %vec.epilog.ph3097
  %index3100 = phi i64 [ %vec.epilog.resume.val3090, %vec.epilog.ph3097 ], [ %index.next3103, %vec.epilog.vector.body3099 ] ; 3 uses
  %.idx4054 = shl nuw i64 %index3100, 3
  %gep4509 = getelementptr i8, ptr %invariant.gep4508, i64 %.idx4054
  %wide.vec3101 = load <16 x float>, ptr %gep4509, align 4, !tbaa !58, !alias.scope !176
  %strided.vec3102 = shufflevector <16 x float> %wide.vec3101, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %gep4511 = getelementptr [4 x i8], ptr %invariant.gep4510, i64 %index3100
  store <8 x float> %strided.vec3102, ptr %gep4511, align 4, !tbaa !58, !alias.scope !179, !noalias !176
  %index.next3103 = add nuw i64 %index3100, 8     ; 2 uses
  %i.iix = icmp eq i64 %index.next3103, %n.vec3098
  br i1 %i.iix, label %vec.epilog.scalar.ph3094.preheader, label %vec.epilog.vector.body3099, !llvm.loop !182

._crit_edge2223:                                  ; preds = %vec.epilog.scalar.ph3094, %bb.ei
  %indvars.iv.next2745 = add nuw nsw i64 %indvars.iv2744, 1 ; 2 uses
  %i.iiy = icmp slt i64 %indvars.iv.next2745, %i.fyc
  %indvar.next3067 = add i25 %indvar3066, 1
  br i1 %i.iiy, label %bb.ei, label %._crit_edge2226

vec.epilog.scalar.ph3094:                         ; preds = %vec.epilog.scalar.ph3094.preheader, %vec.epilog.scalar.ph3094
  %indvars.iv2739 = phi i64 [ %indvars.iv.next2740, %vec.epilog.scalar.ph3094 ], [ %indvars.iv2739.ph, %vec.epilog.scalar.ph3094.preheader ] ; 2 uses
  %indvars.iv2737 = phi i64 [ %indvars.iv.next2738, %vec.epilog.scalar.ph3094 ], [ %indvars.iv2737.ph, %vec.epilog.scalar.ph3094.preheader ] ; 2 uses
  %gep3002 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep3001, i64 %indvars.iv2739
  %i.iiz = load float, ptr %gep3002, align 4, !tbaa !58
  %i.ija = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %indvars.iv2737
  store float %i.iiz, ptr %i.ija, align 4, !tbaa !58
  %indvars.iv.next2740 = add nuw nsw i64 %indvars.iv2739, 2 ; 2 uses
  %indvars.iv.next2738 = add nsw i64 %indvars.iv2737, 1
  %21 = icmp samesign ult i64 %indvars.iv.next2740, %16
  br i1 %21, label %vec.epilog.scalar.ph3094, label %._crit_edge2223, !llvm.loop !183

.lr.ph2237:                                       ; preds = %.preheader1969, %._crit_edge2235
  %indvars.iv2762 = phi i64 [ %indvars.iv.next2763, %._crit_edge2235 ], [ 0, %.preheader1969 ] ; 4 uses
  %i.ijb = mul i64 %i.hr, %indvars.iv2762         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ijb
  %i.ijc = getelementptr i8, ptr %i.av, i64 %i.ijb
  %scevgep3035 = getelementptr i8, ptr %i.ijc, i64 4
  %i.ijd = trunc nuw nsw i64 %indvars.iv2762 to i32
  %i.ije = shl i32 %i.ijd, 2
  %i.ijf = and i32 %i.ije, 28
  %i.ijg = lshr i32 %i.q, %i.ijf                  ; 2 uses
  %i.ijh = and i32 %i.ijg, 1                      ; 2 uses
  %i.iji = icmp slt i32 %i.ijh, %i.ae
  br i1 %i.iji, label %iter.check, label %._crit_edge2235

iter.check:                                       ; preds = %.lr.ph2237
  %i.ijj = mul nsw i64 %indvars.iv2762, %i.af     ; 2 uses
  %i.ijk = trunc nsw i64 %i.ijj to i32
  %i.ijl = add nsw i32 %i.ijh, %i.ijk
  %i.ijm = ashr i32 %i.ijl, 1
  %i.ijn = sext i32 %i.ijm to i64                 ; 8 uses
  %i.ijo = and i32 %i.ijg, 1
  %i.ijp = zext nneg i32 %i.ijo to i64            ; 9 uses
  %invariant.gep3003 = getelementptr [4 x i8], ptr %i.av, i64 %i.ijj ; 6 uses
  %i.ijq = xor i64 %i.ijp, -1
  %i.ijr = add nsw i64 %i.ijq, %i.af              ; 3 uses
  %i.ijs = lshr i64 %i.ijr, 1
  %i.ijt = add nuw i64 %i.ijs, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.ijr, 14
  br i1 %min.iters.check, label %.lr.ph2234.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iju = shl nuw nsw i64 %i.ijp, 2              ; 2 uses
  %scevgep3034 = getelementptr i8, ptr %scevgep, i64 %i.iju
  %i.ijv = xor i64 %i.ijp, -1
  %i.ijw = add nsw i64 %i.ijv, %i.af
  %i.ijx = lshr i64 %i.ijw, 1                     ; 2 uses
  %i.ijy = shl i64 %i.ijx, 3
  %i.ijz = getelementptr i8, ptr %scevgep3035, i64 %i.ijy
  %scevgep3036 = getelementptr i8, ptr %i.ijz, i64 %i.iju
  %i.ika = shl nsw i64 %i.ijn, 2
  %scevgep3037 = getelementptr i8, ptr %i.ds, i64 %i.ika
  %i.ikb = add i64 %i.ijx, %i.ijn
  %i.ikc = shl i64 %i.ikb, 2
  %scevgep3039 = getelementptr i8, ptr %scevgep3038, i64 %i.ikc
  %bound0 = icmp ult ptr %scevgep3034, %scevgep3039
  %bound1 = icmp ult ptr %scevgep3037, %scevgep3036
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph2234.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3040 = icmp ult i64 %i.ijr, 62
  br i1 %min.iters.check3040, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ikd = and i64 %i.ijt, 24
  %n.vec = and i64 %i.ijt, -32                    ; 5 uses
  %i.ike = shl i64 %n.vec, 1
  %i.ikf = or disjoint i64 %i.ike, %i.ijp         ; 2 uses
  %i.ikg = add i64 %n.vec, %i.ijn
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ijp, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4512 = getelementptr [4 x i8], ptr %i.ds, i64 %i.ijn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 48)
  %gep4513 = getelementptr [4 x i8], ptr %invariant.gep4512, i64 %index ; 4 uses
  %i.ikh = getelementptr inbounds nuw i8, ptr %gep4513, i64 32
  %i.iki = getelementptr inbounds nuw i8, ptr %gep4513, i64 64
  %i.ikj = getelementptr inbounds nuw i8, ptr %gep4513, i64 96
  %wide.load = load <8 x float>, ptr %gep4513, align 4, !tbaa !58, !alias.scope !184
  %wide.load3041 = load <8 x float>, ptr %i.ikh, align 4, !tbaa !58, !alias.scope !184
  %wide.load3042 = load <8 x float>, ptr %i.iki, align 4, !tbaa !58, !alias.scope !184
  %wide.load3043 = load <8 x float>, ptr %i.ikj, align 4, !tbaa !58, !alias.scope !184
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep3003, <8 x i64> %vec.ind
  %wide.gep3044 = getelementptr [4 x i8], ptr %invariant.gep3003, <8 x i64> %step.add
  %wide.gep3045 = getelementptr [4 x i8], ptr %invariant.gep3003, <8 x i64> %step.add.2
  %wide.gep3046 = getelementptr [4 x i8], ptr %invariant.gep3003, <8 x i64> %step.add.3
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !187, !noalias !184
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3041, <8 x ptr> align 4 %wide.gep3044, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !187, !noalias !184
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3042, <8 x ptr> align 4 %wide.gep3045, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !187, !noalias !184
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3043, <8 x ptr> align 4 %wide.gep3046, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !187, !noalias !184
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 64)
  %i.ikk = icmp eq i64 %index.next, %n.vec
  br i1 %i.ikk, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ijt, %n.vec
  br i1 %cmp.n, label %._crit_edge2235, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ikd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2234.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ikf, %vec.epilog.iter.check ], [ %i.ijp, %vector.main.loop.iter.check ]
  %n.vec3048 = and i64 %i.ijt, -8                 ; 4 uses
  %i.ikl = shl i64 %n.vec3048, 1
  %i.ikm = or disjoint i64 %i.ikl, %i.ijp
  %i.ikn = add i64 %n.vec3048, %i.ijn
  %broadcast.splatinsert3049 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat3050 = shufflevector <8 x i64> %broadcast.splatinsert3049, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3051 = add nuw nsw <8 x i64> %broadcast.splat3050, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4514 = getelementptr [4 x i8], ptr %i.ds, i64 %i.ijn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3052 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3056, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind3053 = phi <8 x i64> [ %induction3051, %vec.epilog.ph ], [ %vec.ind.next3057, %vec.epilog.vector.body ] ; 2 uses
  %gep4515 = getelementptr [4 x i8], ptr %invariant.gep4514, i64 %index3052
  %wide.load3054 = load <8 x float>, ptr %gep4515, align 4, !tbaa !58, !alias.scope !184
  %wide.gep3055 = getelementptr [4 x i8], ptr %invariant.gep3003, <8 x i64> %vec.ind3053
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load3054, <8 x ptr> align 4 %wide.gep3055, <8 x i1> splat (i1 true)), !tbaa !58, !alias.scope !187, !noalias !184
  %index.next3056 = add nuw i64 %index3052, 8     ; 2 uses
  %vec.ind.next3057 = add nuw nsw <8 x i64> %vec.ind3053, splat (i64 16)
  %i.iko = icmp eq i64 %index.next3056, %n.vec3048
  br i1 %i.iko, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !190

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3058 = icmp eq i64 %i.ijt, %n.vec3048
  br i1 %cmp.n3058, label %._crit_edge2235, label %.lr.ph2234.preheader

.lr.ph2234.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2757.ph = phi i64 [ %i.ijp, %iter.check ], [ %i.ijp, %vector.memcheck ], [ %i.ikf, %vec.epilog.iter.check ], [ %i.ikm, %vec.epilog.middle.block ]
  %indvars.iv2755.ph = phi i64 [ %i.ijn, %iter.check ], [ %i.ijn, %vector.memcheck ], [ %i.ikg, %vec.epilog.iter.check ], [ %i.ikn, %vec.epilog.middle.block ]
  br label %.lr.ph2234

._crit_edge2235:                                  ; preds = %.lr.ph2234, %middle.block, %vec.epilog.middle.block, %.lr.ph2237
  %indvars.iv.next2763 = add nuw nsw i64 %indvars.iv2762, 1 ; 2 uses
  %exitcond2766.not = icmp eq i64 %indvars.iv.next2763, %wide.trip.count2765
  br i1 %exitcond2766.not, label %.thread1866, label %.lr.ph2237

.lr.ph2234:                                       ; preds = %.lr.ph2234.preheader, %.lr.ph2234
  %indvars.iv2757 = phi i64 [ %indvars.iv.next2758, %.lr.ph2234 ], [ %indvars.iv2757.ph, %.lr.ph2234.preheader ] ; 2 uses
  %indvars.iv2755 = phi i64 [ %indvars.iv.next2756, %.lr.ph2234 ], [ %indvars.iv2755.ph, %.lr.ph2234.preheader ] ; 2 uses
  %i.ikp = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %indvars.iv2755
  %i.ikq = load float, ptr %i.ikp, align 4, !tbaa !58
  %gep3004 = getelementptr [4 x i8], ptr %invariant.gep3003, i64 %indvars.iv2757
  store float %i.ikq, ptr %gep3004, align 4, !tbaa !58
  %indvars.iv.next2758 = add nuw nsw i64 %indvars.iv2757, 2 ; 2 uses
  %indvars.iv.next2756 = add nsw i64 %indvars.iv2755, 1
  %i.ikr = icmp slt i64 %indvars.iv.next2758, %i.af
  br i1 %i.ikr, label %.lr.ph2234, label %._crit_edge2235, !llvm.loop !191

.thread1866:                                      ; preds = %._crit_edge2235, %bb.bd, %bb.ap, %bb.ao, %.preheader1969, %.loopexit1966.1, %.thread1874
  %i.iks = phi i1 [ false, %.thread1874 ], [ false, %.loopexit1966.1 ], [ %not..not1786, %bb.bd ], [ true, %.preheader1969 ], [ false, %bb.ap ], [ false, %bb.ao ], [ true, %._crit_edge2235 ] ; 2 uses
  %.216211872 = phi i32 [ 2, %.thread1874 ], [ %.016192241, %.loopexit1966.1 ], [ %.11620, %bb.bd ], [ %.11620, %.preheader1969 ], [ %.016192241, %bb.ap ], [ %.016192241, %bb.ao ], [ %.11620, %._crit_edge2235 ]
  %.216241871 = phi i32 [ 4, %.thread1874 ], [ %.016222239, %.loopexit1966.1 ], [ %.11623, %bb.bd ], [ %.11623, %.preheader1969 ], [ %.016222239, %bb.ap ], [ %.016222239, %bb.ao ], [ %.11623, %._crit_edge2235 ]
  tail call void @free(ptr noundef %i.btq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ikt = add nuw nsw i32 %.016252238, 1         ; 2 uses
  %i.iku = icmp slt i32 %i.ikt, %i.aa
  %i.ikv = and i1 %i.iku, %i.iks
  br i1 %i.ikv, label %bb.o, label %._crit_edge2244.loopexit

._crit_edge2251:                                  ; preds = %._crit_edge2248, %.preheader1893
  %.not1781 = trunc i32 %i.ah to i1
  %i.ikw = icmp sgt i32 %i.ae, 0
  %or.cond2304 = and i1 %i.ikw, %.not1781
  br i1 %or.cond2304, label %iter.check3976, label %.loopexit1892

iter.check3976:                                   ; preds = %._crit_edge2251
  %i.ikx = add nsw i32 %i.ao, -2
  %i.iky = mul nsw i32 %i.ikx, %i.am
  %i.ikz = add nsw i32 %i.ao, -1
  %i.ila = mul nsw i32 %i.ikz, %i.am
  %i.ilb = sext i32 %i.iky to i64                 ; 8 uses
  %i.ilc = sext i32 %i.ila to i64                 ; 8 uses
  %smax2778 = call i32 @llvm.smax.i32(i32 %i.am, i32 1)
  %wide.trip.count2779 = zext nneg i32 %smax2778 to i64 ; 8 uses
  %min.iters.check3961 = icmp slt i32 %i.ae, 7
  br i1 %min.iters.check3961, label %vec.epilog.scalar.ph3977.preheader, label %vector.memcheck3950

vector.memcheck3950:                              ; preds = %iter.check3976
  %i.ild = shl nsw i64 %i.ilc, 2                  ; 3 uses
  %i.ile = shl nsw i64 %i.ilb, 2                  ; 3 uses
  %i.ilf = sub nsw i64 %i.ile, %i.ild
  %diff.check3954 = icmp ugt i64 %i.ilf, -64
  %i.ilg = add i64 %i.ile, %.016053951
  %i.ilh = add i64 %i.ild, %.016033952
  %i.ili = sub i64 %i.ilh, %i.ilg
  %diff.check3956 = icmp ugt i64 %i.ili, -64
  %conflict.rdx3957 = or i1 %diff.check3954, %diff.check3956
  %i.ilj = add i64 %i.ild, %.016053951
end_hunk_5
begin_hunk_6_@gui_update:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !235 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = tail call i32 @dt_image_is_bayerRGB(ptr noundef nonnull %i.g) #20 ; 3 uses
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = zext i1 %.not to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %i.i, ptr %i.j, align 8, !tbaa !232
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.k, align 4, !tbaa !233
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ @.str.10, %bb.b ], [ @.str.9, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !237
  tail call void @gtk_stack_set_visible_child_name(ptr noundef %i.n, ptr noundef nonnull %i.l) #20
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !238
  %i.p = load i32, ptr %i.d, align 4, !tbaa !240
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.o, i32 noundef %i.p) #20
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !238
  tail call void @gtk_widget_set_visible(ptr noundef %i.q, i32 noundef %i.h) #20
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !242
  tail call void @gtk_widget_set_visible(ptr noundef %i.s, i32 noundef %i.h) #20
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !242
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !243
  %i.w = tail call i32 @dt_bauhaus_combobox_set_from_value(ptr noundef %i.t, i32 noundef %i.v) #20 ; 0 uses
  ret void
}

declare void @gtk_stack_set_visible_child_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_bauhaus_combobox_set_from_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 16) #20 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !235
  %i.c = tail call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.11) #20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !242
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.c, ptr noundef %i.e) #20
  %i.f = tail call ptr @dt_bauhaus_toggle_from_params(ptr noundef %0, ptr noundef nonnull @.str.13) #20 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !238
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #20
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.f, ptr noundef %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237
  %i.j = tail call ptr @gtk_stack_new() #20       ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !237
  tail call void @gtk_stack_set_homogeneous(ptr noundef %i.j, i32 noundef 0) #20
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !237
  tail call void @gtk_stack_add_named(ptr noundef %i.k, ptr noundef %i.i, ptr noundef nonnull @.str.9) #20
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #20
  %i.m = tail call ptr @gtk_label_new(ptr noundef %i.l) #20 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.m, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull @.str.27, double noundef 0.000000e+00, ptr noundef nonnull @.str.28, i32 noundef 3, ptr noundef null) #20
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !237
  tail call void @gtk_stack_add_named(ptr noundef %i.n, ptr noundef %i.m, ptr noundef nonnull @.str.10) #20
  ret void
}

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_stack_new() local_unnamed_addr #3

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !244
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !247
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !247
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !247
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !247
  store ptr @introspection_init.f1, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 160), align 16, !tbaa !247
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 248), align 8, !tbaa !247
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.13) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.11) #22
  %.not6 = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %spec.select = select i1 %.not6, ptr %i.c, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.13) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #20
  %.not3 = icmp eq i32 %i.b, 0
  %. = select i1 %.not3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ @introspection_linear, %bb.a ], [ %., %bb.b ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"dt_iop_cacorrect_params_v2_t", !8, i64 0, !8, i64 4}
!13 = !{!12, !8, i64 4}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !8, i64 516}
!18 = !{!"dt_dev_pixelpipe_iop_t", !19, i64 0, !20, i64 8, !15, i64 16, !15, i64 24, !8, i64 32, !8, i64 36, !21, i64 40, !23, i64 56, !24, i64 64, !9, i64 88, !26, i64 104, !8, i64 108, !8, i64 112, !25, i64 120, !8, i64 128, !8, i64 132, !27, i64 136, !27, i64 156, !27, i64 176, !27, i64 196, !8, i64 216, !8, i64 220, !28, i64 224, !28, i64 352, !9, i64 480, !8, i64 516, !32, i64 520, !33, i64 528, !33, i64 576}
!19 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!20 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!21 = !{!"dt_dev_histogram_collection_params_t", !22, i64 0, !8, i64 8}
!22 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !25, i64 8, !8, i64 16, !8, i64 20}
!25 = !{!"long", !9, i64 0}
!26 = !{!"float", !9, i64 0}
!27 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !26, i64 16}
!28 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !29, i64 48, !31, i64 64, !9, i64 96, !8, i64 112}
!29 = !{!"", !30, i64 0, !30, i64 2}
!30 = !{!"short", !9, i64 0}
!31 = !{!"", !8, i64 0, !9, i64 16}
!32 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!33 = !{!"dt_dev_distorted_mask_cache_t", !34, i64 0, !27, i64 8, !25, i64 32, !25, i64 40}
!34 = !{!"p1 float", !15, i64 0}
!35 = !{!18, !20, i64 8}
!36 = !{!37, !8, i64 644}
!37 = !{!"dt_dev_pixelpipe_t", !38, i64 0, !8, i64 120, !25, i64 128, !34, i64 136, !8, i64 144, !8, i64 148, !26, i64 152, !8, i64 156, !8, i64 160, !28, i64 176, !42, i64 304, !42, i64 312, !42, i64 320, !42, i64 328, !43, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !44, i64 360, !25, i64 368, !8, i64 376, !8, i64 380, !26, i64 384, !9, i64 388, !25, i64 416, !45, i64 424, !45, i64 464, !45, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !46, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !9, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !47, i64 656, !8, i64 2544, !44, i64 2552, !8, i64 2560, !43, i64 2568, !43, i64 2576, !43, i64 2584, !8, i64 2592, !34, i64 2600, !25, i64 2608, !9, i64 2616, !9, i64 2632}
!38 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !25, i64 8, !25, i64 16, !39, i64 24, !40, i64 32, !41, i64 40, !40, i64 48, !23, i64 56, !23, i64 64, !25, i64 72, !8, i64 80, !25, i64 88, !25, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!39 = !{!"any p2 pointer", !15, i64 0}
!40 = !{!"p1 long", !15, i64 0}
!41 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !15, i64 0}
!42 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !15, i64 0}
!43 = !{!"p1 _ZTS6_GList", !15, i64 0}
!44 = !{!"p1 omnipotent char", !15, i64 0}
!45 = !{!"dt_pthread_mutex_t", !9, i64 0}
!46 = !{!"dt_dev_detail_mask_t", !27, i64 0, !25, i64 24, !34, i64 32}
!47 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !25, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !26, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !25, i64 1448, !25, i64 1456, !25, i64 1464, !25, i64 1472, !8, i64 1480, !28, i64 1488, !9, i64 1616, !44, i64 1656, !8, i64 1664, !8, i64 1668, !48, i64 1672, !49, i64 1680, !51, i64 1704, !30, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !26, i64 1756, !26, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !43, i64 1856, !52, i64 1864, !8, i64 1872, !8, i64 1876}
!48 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!49 = !{!"dt_image_geoloc_t", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"double", !9, i64 0}
!51 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!52 = !{!"p1 _ZTS16dt_cache_entry_t", !15, i64 0}
!53 = !{!18, !15, i64 16}
!54 = !{!55, !8, i64 0}
!55 = !{!"dt_iop_cacorrect_data_t", !8, i64 0, !8, i64 4}
!56 = !{!55, !8, i64 4}
!57 = !{!18, !8, i64 132}
!58 = !{!26, !26, i64 0}
!59 = !{!34, !34, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = distinct !{!65, !61}
!66 = distinct !{!66, !61}
!67 = distinct !{!67, !61}
!68 = distinct !{!68, !61}
!69 = distinct !{!69, !61}
!70 = distinct !{!70, !61}
!71 = distinct !{!71, !61}
!72 = distinct !{!72, !61}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !79, !80}
!83 = !{!"branch_weights", i32 8, i32 24}
!84 = distinct !{!84, !79, !80}
!85 = distinct !{!85, !79}
!86 = distinct !{!86, !79, !80}
!87 = distinct !{!87, !79}
!88 = !{!89, !8, i64 8}
!89 = !{!"darktable_t", !90, i64 0, !8, i64 4, !8, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !91, i64 48, !92, i64 56, !93, i64 64, !94, i64 72, !95, i64 80, !96, i64 88, !97, i64 96, !98, i64 104, !99, i64 112, !100, i64 120, !101, i64 128, !102, i64 136, !103, i64 144, !104, i64 152, !105, i64 160, !106, i64 168, !107, i64 176, !108, i64 184, !109, i64 192, !110, i64 200, !111, i64 208, !112, i64 216, !113, i64 224, !9, i64 232, !45, i64 2792, !45, i64 2832, !45, i64 2872, !45, i64 2912, !45, i64 2952, !45, i64 2992, !44, i64 3032, !44, i64 3040, !44, i64 3048, !44, i64 3056, !44, i64 3064, !44, i64 3072, !44, i64 3080, !44, i64 3088, !44, i64 3096, !44, i64 3104, !44, i64 3112, !44, i64 3120, !44, i64 3128, !114, i64 3136, !43, i64 3288, !50, i64 3296, !43, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !121, i64 3520, !122, i64 3528, !123, i64 3536, !124, i64 3576, !125, i64 3600, !126, i64 3632, !8, i64 3672}
!90 = !{!"dt_codepath_t", !8, i64 0}
!91 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!92 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!93 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!94 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!95 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!96 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!97 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!98 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!99 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!100 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!101 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!102 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!103 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!104 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!105 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!106 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!107 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!108 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!109 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!110 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!111 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!112 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!113 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!114 = !{!"", !115, i64 0, !45, i64 8, !9, i64 48, !116, i64 96, !116, i64 97, !117, i64 104, !118, i64 112, !119, i64 120, !120, i64 128, !120, i64 136, !120, i64 144}
!115 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!116 = !{!"_Bool", !9, i64 0}
!117 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!118 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!119 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!120 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!121 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!122 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!123 = !{!"dt_sys_resources_t", !25, i64 0, !25, i64 8, !23, i64 16, !23, i64 24, !8, i64 32}
!124 = !{!"dt_backthumb_t", !50, i64 0, !50, i64 8, !8, i64 16, !8, i64 20}
!125 = !{!"dt_gimp_t", !8, i64 0, !44, i64 8, !44, i64 16, !8, i64 24, !8, i64 28}
!126 = !{!"dt_splash_t", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !8, i64 32}
!127 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!128 = distinct !{!128, !61}
!129 = distinct !{!129, !79, !80}
!130 = distinct !{!130, !61}
end_hunk_6
