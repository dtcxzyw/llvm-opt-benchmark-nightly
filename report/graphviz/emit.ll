inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@xdotBB:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !tbaa.struct !140
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load double, ptr %0, align 8, !tbaa !135 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !134 ; 3 uses
  %i.m = fcmp oeq double %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !137
  %i.r = fcmp oeq double %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.n, align 8, !tbaa !138
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.p, align 8, !tbaa !137
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.promoted105 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.d ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.promoted = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !142
  %.not126 = icmp eq i64 %i.s, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !145
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %.promoted116 = load double, ptr %i.y, align 8
  %.promoted121 = load double, ptr %i.z, align 8
  %i.ab = insertelement <2 x double> poison, double %.promoted, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %.promoted116, i64 1
  %i.ad = insertelement <2 x double> poison, double %.promoted105, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %.promoted121, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.bq
  %.0114 = phi ptr [ %i.u, %.lr.ph ], [ %i.kx, %bb.bq ] ; 37 uses
  %.061113 = phi i64 [ 0, %.lr.ph ], [ %i.ky, %bb.bq ]
  %.062112 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.bq ] ; 9 uses
  %.063111 = phi ptr [ null, %.lr.ph ], [ %.164, %bb.bq ] ; 9 uses
  %.065110 = phi double [ 0.000000e+00, %.lr.ph ], [ %.166, %bb.bq ] ; 9 uses
  %i.af = phi <2 x double> [ %i.ac, %.lr.ph ], [ %i.kv, %bb.bq ] ; 14 uses
  %i.ag = phi <2 x double> [ %i.ae, %.lr.ph ], [ %i.kw, %bb.bq ] ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.ah = load i32, ptr %.0114, align 8, !tbaa !146
  switch i32 %i.ah, label %bb.bq [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.y
    i32 5, label %bb.y
    i32 6, label %bb.ap
    i32 7, label %bb.bg
    i32 10, label %bb.bo
    i32 15, label %bb.bp
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0114, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.0114, i64 88
  %i.al = load <2 x double>, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.am = load <2 x double>, ptr %i.aj, align 8, !tbaa !8 ; 2 uses
  %i.an = fsub <2 x double> %i.al, %i.am          ; 3 uses
  %i.ao = fadd <2 x double> %i.al, %i.am          ; 4 uses
  store <2 x double> %i.an, ptr %i.ak, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %.0114, i64 104
  %i.aq = extractelement <2 x double> %i.ao, i64 0
  store double %i.aq, ptr %i.ap, align 8, !tbaa !105
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 112
  %i.ar = extractelement <2 x double> %i.ao, i64 1
  store double %i.ar, ptr %.sroa.10.16..sroa_idx, align 8, !tbaa !105
  %i.as = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.af, <2 x double> %i.an)
  %i.at = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ag, <2 x double> %i.an)
  %i.au = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.as, <2 x double> %i.ao)
  %i.av = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.at, <2 x double> %i.ao)
  br label %bb.bq

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.0114, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 4 uses
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !8  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !149, !noalias !151 ; 12 uses
  %i.bd = load double, ptr %i.az, align 8, !tbaa !154, !noalias !151 ; 12 uses
  %i.be = icmp ugt i64 %i.ba, 1
  br i1 %i.be, label %.lr.ph.i.preheader, label %ptsBB.exit

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.bf = add i64 %i.ba, -1                       ; 3 uses
  %xtraiter324 = and i64 %i.bf, 1
  %i.bg = icmp eq i64 %i.ba, 2
  br i1 %i.bg, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter343 = and i64 %i.bf, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i.preheader.new
  %.sroa.987.0 = phi double [ %i.bc, %.lr.ph.i.preheader.new ], [ %.sroa.987.1.1, %bb.s ] ; 2 uses
  %.sroa.786.0 = phi double [ %i.bd, %.lr.ph.i.preheader.new ], [ %.sroa.786.1.1, %bb.s ] ; 2 uses
  %.sroa.585.0 = phi double [ %i.bc, %.lr.ph.i.preheader.new ], [ %.sroa.585.1.1, %bb.s ] ; 2 uses
  %.sroa.084.0 = phi double [ %i.bd, %.lr.ph.i.preheader.new ], [ %.sroa.084.1.1, %bb.s ] ; 2 uses
  %i.bh = phi double [ %i.bc, %.lr.ph.i.preheader.new ], [ %i.ch, %bb.s ] ; 3 uses
  %i.bi = phi double [ %i.bd, %.lr.ph.i.preheader.new ], [ %i.cb, %bb.s ] ; 3 uses
  %i.bj = phi double [ %i.bc, %.lr.ph.i.preheader.new ], [ %i.ci, %bb.s ] ; 3 uses
  %i.bk = phi double [ %i.bd, %.lr.ph.i.preheader.new ], [ %i.cc, %bb.s ] ; 3 uses
  %.01519.i = phi ptr [ %i.az, %.lr.ph.i.preheader.new ], [ %i.bx, %bb.s ] ; 4 uses
  %niter344 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter344.next.1, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.01519.i, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !154, !noalias !151 ; 6 uses
  %i.bn = fcmp olt double %i.bm, %i.bk
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bo = fcmp ogt double %i.bm, %i.bi
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.sroa.786.1 = phi double [ %.sroa.786.0, %bb.i ], [ %i.bm, %bb.j ], [ %.sroa.786.0, %.lr.ph.i ] ; 2 uses
  %.sroa.084.1 = phi double [ %.sroa.084.0, %bb.i ], [ %.sroa.084.0, %bb.j ], [ %i.bm, %.lr.ph.i ] ; 2 uses
  %i.bp = phi double [ %i.bi, %bb.i ], [ %i.bm, %bb.j ], [ %i.bi, %.lr.ph.i ] ; 3 uses
  %i.bq = phi double [ %i.bk, %bb.i ], [ %i.bk, %bb.j ], [ %i.bm, %.lr.ph.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01519.i, i64 32
  %i.bs = load double, ptr %i.br, align 8, !tbaa !149, !noalias !151 ; 6 uses
  %i.bt = fcmp olt double %i.bs, %i.bj
  br i1 %i.bt, label %.lr.ph.i.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = fcmp ogt double %i.bs, %i.bh
  br i1 %i.bu, label %bb.m, label %.lr.ph.i.1

bb.m:                                             ; preds = %bb.l
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.k, %bb.m, %bb.l
  %.sroa.987.1 = phi double [ %.sroa.987.0, %bb.l ], [ %i.bs, %bb.m ], [ %.sroa.987.0, %bb.k ] ; 2 uses
  %.sroa.585.1 = phi double [ %.sroa.585.0, %bb.l ], [ %.sroa.585.0, %bb.m ], [ %i.bs, %bb.k ] ; 2 uses
  %i.bv = phi double [ %i.bh, %bb.l ], [ %i.bs, %bb.m ], [ %i.bh, %bb.k ] ; 3 uses
  %i.bw = phi double [ %i.bj, %bb.l ], [ %i.bj, %bb.m ], [ %i.bs, %bb.k ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01519.i, i64 48 ; 3 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !154, !noalias !151 ; 6 uses
  %i.bz = fcmp olt double %i.by, %i.bq
  br i1 %i.bz, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.ca = fcmp ogt double %i.by, %i.bp
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph.i.1
  %.sroa.786.1.1 = phi double [ %.sroa.786.1, %bb.n ], [ %i.by, %bb.o ], [ %.sroa.786.1, %.lr.ph.i.1 ] ; 3 uses
  %.sroa.084.1.1 = phi double [ %.sroa.084.1, %bb.n ], [ %.sroa.084.1, %bb.o ], [ %i.by, %.lr.ph.i.1 ] ; 3 uses
  %i.cb = phi double [ %i.bp, %bb.n ], [ %i.by, %bb.o ], [ %i.bp, %.lr.ph.i.1 ] ; 3 uses
  %i.cc = phi double [ %i.bq, %bb.n ], [ %i.bq, %bb.o ], [ %i.by, %.lr.ph.i.1 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01519.i, i64 56
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !149, !noalias !151 ; 6 uses
  %i.cf = fcmp olt double %i.ce, %i.bw
  br i1 %i.cf, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = fcmp ogt double %i.ce, %i.bv
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.987.1.1 = phi double [ %.sroa.987.1, %bb.q ], [ %i.ce, %bb.r ], [ %.sroa.987.1, %bb.p ] ; 3 uses
  %.sroa.585.1.1 = phi double [ %.sroa.585.1, %bb.q ], [ %.sroa.585.1, %bb.r ], [ %i.ce, %bb.p ] ; 3 uses
  %i.ch = phi double [ %i.bv, %bb.q ], [ %i.ce, %bb.r ], [ %i.bv, %bb.p ] ; 3 uses
  %i.ci = phi double [ %i.bw, %bb.q ], [ %i.bw, %bb.r ], [ %i.ce, %bb.p ] ; 3 uses
  %niter344.next.1 = add i64 %niter344, 2         ; 2 uses
  %niter344.ncmp.1 = icmp eq i64 %niter344.next.1, %unroll_iter343
  br i1 %niter344.ncmp.1, label %ptsBB.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !155

ptsBB.exit.loopexit.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod333.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod333.not, label %ptsBB.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ptsBB.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.987.0.epil.init = phi double [ %i.bc, %.lr.ph.i.preheader ], [ %.sroa.987.1.1, %ptsBB.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.786.0.epil.init = phi double [ %i.bd, %.lr.ph.i.preheader ], [ %.sroa.786.1.1, %ptsBB.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.585.0.epil.init = phi double [ %i.bc, %.lr.ph.i.preheader ], [ %.sroa.585.1.1, %ptsBB.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.084.0.epil.init = phi double [ %i.bd, %.lr.ph.i.preheader ], [ %.sroa.084.1.1, %ptsBB.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init326 = phi double [ %i.bc, %.lr.ph.i.preheader ], [ %i.ch, %ptsBB.exit.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init328 = phi double [ %i.bd, %.lr.ph.i.preheader ], [ %i.cb, %ptsBB.exit.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init330 = phi double [ %i.bc, %.lr.ph.i.preheader ], [ %i.ci, %ptsBB.exit.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init332 = phi double [ %i.bd, %.lr.ph.i.preheader ], [ %i.cc, %ptsBB.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01519.i.epil.init = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.bx, %ptsBB.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod342 = trunc i64 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod342)
  %i.cj = getelementptr inbounds nuw i8, ptr %.01519.i.epil.init, i64 24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !154, !noalias !151 ; 6 uses
  %i.cl = fcmp olt double %i.ck, %.epil.init332
  br i1 %i.cl, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.cm = fcmp ogt double %i.ck, %.epil.init328
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i.epil.preheader
  %.sroa.786.1.epil = phi double [ %.sroa.786.0.epil.init, %bb.t ], [ %i.ck, %bb.u ], [ %.sroa.786.0.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %.sroa.084.1.epil = phi double [ %.sroa.084.0.epil.init, %bb.t ], [ %.sroa.084.0.epil.init, %bb.u ], [ %i.ck, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.cn = phi double [ %.epil.init328, %bb.t ], [ %i.ck, %bb.u ], [ %.epil.init328, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.co = phi double [ %.epil.init332, %bb.t ], [ %.epil.init332, %bb.u ], [ %i.ck, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01519.i.epil.init, i64 32
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !149, !noalias !151 ; 6 uses
  %i.cr = fcmp olt double %i.cq, %.epil.init330
  br i1 %i.cr, label %ptsBB.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = fcmp ogt double %i.cq, %.epil.init326
  br i1 %i.cs, label %bb.x, label %ptsBB.exit

bb.x:                                             ; preds = %bb.w
  br label %ptsBB.exit

ptsBB.exit:                                       ; preds = %ptsBB.exit.loopexit.unr-lcssa, %bb.x, %bb.w, %bb.v, %bb.h
  %.sroa.987.2 = phi double [ %i.bc, %bb.h ], [ %.sroa.987.1.1, %ptsBB.exit.loopexit.unr-lcssa ], [ %.sroa.987.0.epil.init, %bb.w ], [ %i.cq, %bb.x ], [ %.sroa.987.0.epil.init, %bb.v ]
  %.sroa.786.2 = phi double [ %i.bd, %bb.h ], [ %.sroa.786.1.1, %ptsBB.exit.loopexit.unr-lcssa ], [ %.sroa.786.1.epil, %bb.x ], [ %.sroa.786.1.epil, %bb.w ], [ %.sroa.786.1.epil, %bb.v ]
  %.sroa.585.2 = phi double [ %i.bc, %bb.h ], [ %.sroa.585.1.1, %ptsBB.exit.loopexit.unr-lcssa ], [ %.sroa.585.0.epil.init, %bb.w ], [ %.sroa.585.0.epil.init, %bb.x ], [ %i.cq, %bb.v ]
  %.sroa.084.2 = phi double [ %i.bd, %bb.h ], [ %.sroa.084.1.1, %ptsBB.exit.loopexit.unr-lcssa ], [ %.sroa.084.1.epil, %bb.x ], [ %.sroa.084.1.epil, %bb.w ], [ %.sroa.084.1.epil, %bb.v ]
  %i.ct = phi double [ %i.bc, %bb.h ], [ %i.ch, %ptsBB.exit.loopexit.unr-lcssa ], [ %.epil.init326, %bb.w ], [ %i.cq, %bb.x ], [ %.epil.init326, %bb.v ]
  %i.cu = phi double [ %i.bd, %bb.h ], [ %i.cb, %ptsBB.exit.loopexit.unr-lcssa ], [ %i.cn, %bb.x ], [ %i.cn, %bb.w ], [ %i.cn, %bb.v ]
  %i.cv = phi double [ %i.bc, %bb.h ], [ %i.ci, %ptsBB.exit.loopexit.unr-lcssa ], [ %.epil.init330, %bb.w ], [ %.epil.init330, %bb.x ], [ %i.cq, %bb.v ]
  %i.cw = phi double [ %i.bd, %bb.h ], [ %i.cc, %ptsBB.exit.loopexit.unr-lcssa ], [ %i.co, %bb.x ], [ %i.co, %bb.w ], [ %i.co, %bb.v ]
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cv, i64 1 ; 2 uses
  %i.cz = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.af, <2 x double> %i.cy)
  %i.da = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ag, <2 x double> %i.cy)
  %i.db = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.ct, i64 1 ; 2 uses
  %i.dd = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.cz, <2 x double> %i.dc)
  %i.de = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.da, <2 x double> %i.dc)
  store double %.sroa.084.2, ptr %i.aw, align 8, !tbaa !105
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 96
  store double %.sroa.585.2, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !105
  %.sroa.786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 104
  store double %.sroa.786.2, ptr %.sroa.786.0..sroa_idx, align 8, !tbaa !105
  %.sroa.987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 112
  store double %.sroa.987.2, ptr %.sroa.987.0..sroa_idx, align 8, !tbaa !105
  br label %bb.bq

bb.y:                                             ; preds = %bb.f, %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %.0114, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8  ; 4 uses
  %i.dj = load i64, ptr %i.dg, align 8, !tbaa !8  ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !149, !noalias !156 ; 12 uses
  %i.dm = load double, ptr %i.di, align 8, !tbaa !154, !noalias !156 ; 12 uses
  %i.dn = icmp ugt i64 %i.dj, 1
  br i1 %i.dn, label %.lr.ph.i69.preheader, label %ptsBB.exit73

.lr.ph.i69.preheader:                             ; preds = %bb.y
  %i.do = add i64 %i.dj, -1                       ; 3 uses
  %xtraiter303 = and i64 %i.do, 1
  %i.dp = icmp eq i64 %i.dj, 2
  br i1 %i.dp, label %.lr.ph.i69.epil.preheader, label %.lr.ph.i69.preheader.new

.lr.ph.i69.preheader.new:                         ; preds = %.lr.ph.i69.preheader
  %unroll_iter322 = and i64 %i.do, -2
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.aj, %.lr.ph.i69.preheader.new
  %.sroa.983.0 = phi double [ %i.dl, %.lr.ph.i69.preheader.new ], [ %.sroa.983.1.1, %bb.aj ] ; 2 uses
  %.sroa.782.0 = phi double [ %i.dm, %.lr.ph.i69.preheader.new ], [ %.sroa.782.1.1, %bb.aj ] ; 2 uses
  %.sroa.581.0 = phi double [ %i.dl, %.lr.ph.i69.preheader.new ], [ %.sroa.581.1.1, %bb.aj ] ; 2 uses
  %.sroa.080.0 = phi double [ %i.dm, %.lr.ph.i69.preheader.new ], [ %.sroa.080.1.1, %bb.aj ] ; 2 uses
  %i.dq = phi double [ %i.dl, %.lr.ph.i69.preheader.new ], [ %i.eq, %bb.aj ] ; 3 uses
  %i.dr = phi double [ %i.dm, %.lr.ph.i69.preheader.new ], [ %i.ek, %bb.aj ] ; 3 uses
  %i.ds = phi double [ %i.dl, %.lr.ph.i69.preheader.new ], [ %i.er, %bb.aj ] ; 3 uses
  %i.dt = phi double [ %i.dm, %.lr.ph.i69.preheader.new ], [ %i.el, %bb.aj ] ; 3 uses
  %.01519.i71 = phi ptr [ %i.di, %.lr.ph.i69.preheader.new ], [ %i.eg, %bb.aj ] ; 4 uses
  %niter323 = phi i64 [ 0, %.lr.ph.i69.preheader.new ], [ %niter323.next.1, %bb.aj ]
  %i.du = getelementptr inbounds nuw i8, ptr %.01519.i71, i64 24
  %i.dv = load double, ptr %i.du, align 8, !tbaa !154, !noalias !156 ; 6 uses
  %i.dw = fcmp olt double %i.dv, %i.dt
  br i1 %i.dw, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i69
  %i.dx = fcmp ogt double %i.dv, %i.dr
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i69, %bb.aa, %bb.z
  %.sroa.782.1 = phi double [ %.sroa.782.0, %bb.z ], [ %i.dv, %bb.aa ], [ %.sroa.782.0, %.lr.ph.i69 ] ; 2 uses
  %.sroa.080.1 = phi double [ %.sroa.080.0, %bb.z ], [ %.sroa.080.0, %bb.aa ], [ %i.dv, %.lr.ph.i69 ] ; 2 uses
  %i.dy = phi double [ %i.dr, %bb.z ], [ %i.dv, %bb.aa ], [ %i.dr, %.lr.ph.i69 ] ; 3 uses
  %i.dz = phi double [ %i.dt, %bb.z ], [ %i.dt, %bb.aa ], [ %i.dv, %.lr.ph.i69 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01519.i71, i64 32
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !149, !noalias !156 ; 6 uses
  %i.ec = fcmp olt double %i.eb, %i.ds
  br i1 %i.ec, label %.lr.ph.i69.1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = fcmp ogt double %i.eb, %i.dq
  br i1 %i.ed, label %bb.ad, label %.lr.ph.i69.1

bb.ad:                                            ; preds = %bb.ac
  br label %.lr.ph.i69.1

.lr.ph.i69.1:                                     ; preds = %bb.ab, %bb.ad, %bb.ac
  %.sroa.983.1 = phi double [ %.sroa.983.0, %bb.ac ], [ %i.eb, %bb.ad ], [ %.sroa.983.0, %bb.ab ] ; 2 uses
  %.sroa.581.1 = phi double [ %.sroa.581.0, %bb.ac ], [ %.sroa.581.0, %bb.ad ], [ %i.eb, %bb.ab ] ; 2 uses
  %i.ee = phi double [ %i.dq, %bb.ac ], [ %i.eb, %bb.ad ], [ %i.dq, %bb.ab ] ; 3 uses
  %i.ef = phi double [ %i.ds, %bb.ac ], [ %i.ds, %bb.ad ], [ %i.eb, %bb.ab ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01519.i71, i64 48 ; 3 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !154, !noalias !156 ; 6 uses
  %i.ei = fcmp olt double %i.eh, %i.dz
  br i1 %i.ei, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i69.1
  %i.ej = fcmp ogt double %i.eh, %i.dy
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph.i69.1
  %.sroa.782.1.1 = phi double [ %.sroa.782.1, %bb.ae ], [ %i.eh, %bb.af ], [ %.sroa.782.1, %.lr.ph.i69.1 ] ; 3 uses
  %.sroa.080.1.1 = phi double [ %.sroa.080.1, %bb.ae ], [ %.sroa.080.1, %bb.af ], [ %i.eh, %.lr.ph.i69.1 ] ; 3 uses
  %i.ek = phi double [ %i.dy, %bb.ae ], [ %i.eh, %bb.af ], [ %i.dy, %.lr.ph.i69.1 ] ; 3 uses
  %i.el = phi double [ %i.dz, %bb.ae ], [ %i.dz, %bb.af ], [ %i.eh, %.lr.ph.i69.1 ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01519.i71, i64 56
  %i.en = load double, ptr %i.em, align 8, !tbaa !149, !noalias !156 ; 6 uses
  %i.eo = fcmp olt double %i.en, %i.ef
  br i1 %i.eo, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = fcmp ogt double %i.en, %i.ee
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.983.1.1 = phi double [ %.sroa.983.1, %bb.ah ], [ %i.en, %bb.ai ], [ %.sroa.983.1, %bb.ag ] ; 3 uses
  %.sroa.581.1.1 = phi double [ %.sroa.581.1, %bb.ah ], [ %.sroa.581.1, %bb.ai ], [ %i.en, %bb.ag ] ; 3 uses
  %i.eq = phi double [ %i.ee, %bb.ah ], [ %i.en, %bb.ai ], [ %i.ee, %bb.ag ] ; 3 uses
  %i.er = phi double [ %i.ef, %bb.ah ], [ %i.ef, %bb.ai ], [ %i.en, %bb.ag ] ; 3 uses
  %niter323.next.1 = add i64 %niter323, 2         ; 2 uses
  %niter323.ncmp.1 = icmp eq i64 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1, label %ptsBB.exit73.loopexit.unr-lcssa, label %.lr.ph.i69, !llvm.loop !155

ptsBB.exit73.loopexit.unr-lcssa:                  ; preds = %bb.aj
  %lcmp.mod312.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod312.not, label %ptsBB.exit73, label %.lr.ph.i69.epil.preheader

.lr.ph.i69.epil.preheader:                        ; preds = %ptsBB.exit73.loopexit.unr-lcssa, %.lr.ph.i69.preheader
  %.sroa.983.0.epil.init = phi double [ %i.dl, %.lr.ph.i69.preheader ], [ %.sroa.983.1.1, %ptsBB.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.782.0.epil.init = phi double [ %i.dm, %.lr.ph.i69.preheader ], [ %.sroa.782.1.1, %ptsBB.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.581.0.epil.init = phi double [ %i.dl, %.lr.ph.i69.preheader ], [ %.sroa.581.1.1, %ptsBB.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.080.0.epil.init = phi double [ %i.dm, %.lr.ph.i69.preheader ], [ %.sroa.080.1.1, %ptsBB.exit73.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init305 = phi double [ %i.dl, %.lr.ph.i69.preheader ], [ %i.eq, %ptsBB.exit73.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init307 = phi double [ %i.dm, %.lr.ph.i69.preheader ], [ %i.ek, %ptsBB.exit73.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init309 = phi double [ %i.dl, %.lr.ph.i69.preheader ], [ %i.er, %ptsBB.exit73.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init311 = phi double [ %i.dm, %.lr.ph.i69.preheader ], [ %i.el, %ptsBB.exit73.loopexit.unr-lcssa ] ; 3 uses
  %.01519.i71.epil.init = phi ptr [ %i.di, %.lr.ph.i69.preheader ], [ %i.eg, %ptsBB.exit73.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod321 = trunc i64 %i.do to i1
  call void @llvm.assume(i1 %lcmp.mod321)
  %i.es = getelementptr inbounds nuw i8, ptr %.01519.i71.epil.init, i64 24
  %i.et = load double, ptr %i.es, align 8, !tbaa !154, !noalias !156 ; 6 uses
  %i.eu = fcmp olt double %i.et, %.epil.init311
  br i1 %i.eu, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i69.epil.preheader
  %i.ev = fcmp ogt double %i.et, %.epil.init307
  br i1 %i.ev, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph.i69.epil.preheader
  %.sroa.782.1.epil = phi double [ %.sroa.782.0.epil.init, %bb.ak ], [ %i.et, %bb.al ], [ %.sroa.782.0.epil.init, %.lr.ph.i69.epil.preheader ] ; 3 uses
  %.sroa.080.1.epil = phi double [ %.sroa.080.0.epil.init, %bb.ak ], [ %.sroa.080.0.epil.init, %bb.al ], [ %i.et, %.lr.ph.i69.epil.preheader ] ; 3 uses
  %i.ew = phi double [ %.epil.init307, %bb.ak ], [ %i.et, %bb.al ], [ %.epil.init307, %.lr.ph.i69.epil.preheader ] ; 3 uses
  %i.ex = phi double [ %.epil.init311, %bb.ak ], [ %.epil.init311, %bb.al ], [ %i.et, %.lr.ph.i69.epil.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01519.i71.epil.init, i64 32
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !149, !noalias !156 ; 6 uses
  %i.fa = fcmp olt double %i.ez, %.epil.init309
  br i1 %i.fa, label %ptsBB.exit73, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = fcmp ogt double %i.ez, %.epil.init305
  br i1 %i.fb, label %bb.ao, label %ptsBB.exit73

bb.ao:                                            ; preds = %bb.an
  br label %ptsBB.exit73

ptsBB.exit73:                                     ; preds = %ptsBB.exit73.loopexit.unr-lcssa, %bb.ao, %bb.an, %bb.am, %bb.y
  %.sroa.983.2 = phi double [ %i.dl, %bb.y ], [ %.sroa.983.1.1, %ptsBB.exit73.loopexit.unr-lcssa ], [ %.sroa.983.0.epil.init, %bb.an ], [ %i.ez, %bb.ao ], [ %.sroa.983.0.epil.init, %bb.am ]
  %.sroa.782.2 = phi double [ %i.dm, %bb.y ], [ %.sroa.782.1.1, %ptsBB.exit73.loopexit.unr-lcssa ], [ %.sroa.782.1.epil, %bb.ao ], [ %.sroa.782.1.epil, %bb.an ], [ %.sroa.782.1.epil, %bb.am ]
  %.sroa.581.2 = phi double [ %i.dl, %bb.y ], [ %.sroa.581.1.1, %ptsBB.exit73.loopexit.unr-lcssa ], [ %.sroa.581.0.epil.init, %bb.an ], [ %.sroa.581.0.epil.init, %bb.ao ], [ %i.ez, %bb.am ]
  %.sroa.080.2 = phi double [ %i.dm, %bb.y ], [ %.sroa.080.1.1, %ptsBB.exit73.loopexit.unr-lcssa ], [ %.sroa.080.1.epil, %bb.ao ], [ %.sroa.080.1.epil, %bb.an ], [ %.sroa.080.1.epil, %bb.am ]
  %i.fc = phi double [ %i.dl, %bb.y ], [ %i.eq, %ptsBB.exit73.loopexit.unr-lcssa ], [ %.epil.init305, %bb.an ], [ %i.ez, %bb.ao ], [ %.epil.init305, %bb.am ]
  %i.fd = phi double [ %i.dm, %bb.y ], [ %i.ek, %ptsBB.exit73.loopexit.unr-lcssa ], [ %i.ew, %bb.ao ], [ %i.ew, %bb.an ], [ %i.ew, %bb.am ]
  %i.fe = phi double [ %i.dl, %bb.y ], [ %i.er, %ptsBB.exit73.loopexit.unr-lcssa ], [ %.epil.init309, %bb.an ], [ %.epil.init309, %bb.ao ], [ %i.ez, %bb.am ]
  %i.ff = phi double [ %i.dm, %bb.y ], [ %i.el, %ptsBB.exit73.loopexit.unr-lcssa ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.an ], [ %i.ex, %bb.am ]
  %i.fg = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.fe, i64 1 ; 2 uses
  %i.fi = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.af, <2 x double> %i.fh)
  %i.fj = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ag, <2 x double> %i.fh)
  %i.fk = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fc, i64 1 ; 2 uses
  %i.fm = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.fi, <2 x double> %i.fl)
  %i.fn = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.fj, <2 x double> %i.fl)
  store double %.sroa.080.2, ptr %i.df, align 8, !tbaa !105
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 96
  store double %.sroa.581.2, ptr %.sroa.581.0..sroa_idx, align 8, !tbaa !105
  %.sroa.782.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 104
  store double %.sroa.782.2, ptr %.sroa.782.0..sroa_idx, align 8, !tbaa !105
  %.sroa.983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 112
  store double %.sroa.983.2, ptr %.sroa.983.0..sroa_idx, align 8, !tbaa !105
  br label %bb.bq

bb.ap:                                            ; preds = %bb.f
  %i.fo = getelementptr inbounds nuw i8, ptr %.0114, i64 88
  %i.fp = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !8  ; 4 uses
  %i.fs = load i64, ptr %i.fp, align 8, !tbaa !8  ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !149, !noalias !159 ; 12 uses
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !154, !noalias !159 ; 12 uses
  %i.fw = icmp ugt i64 %i.fs, 1
  br i1 %i.fw, label %.lr.ph.i74.preheader, label %ptsBB.exit78

.lr.ph.i74.preheader:                             ; preds = %bb.ap
  %i.fx = add i64 %i.fs, -1                       ; 3 uses
  %xtraiter = and i64 %i.fx, 1
  %i.fy = icmp eq i64 %i.fs, 2
  br i1 %i.fy, label %.lr.ph.i74.epil.preheader, label %.lr.ph.i74.preheader.new

.lr.ph.i74.preheader.new:                         ; preds = %.lr.ph.i74.preheader
  %unroll_iter = and i64 %i.fx, -2
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.ba, %.lr.ph.i74.preheader.new
  %.sroa.9.0 = phi double [ %i.fu, %.lr.ph.i74.preheader.new ], [ %.sroa.9.1.1, %bb.ba ] ; 2 uses
  %.sroa.7.0 = phi double [ %i.fv, %.lr.ph.i74.preheader.new ], [ %.sroa.7.1.1, %bb.ba ] ; 2 uses
  %.sroa.5.0 = phi double [ %i.fu, %.lr.ph.i74.preheader.new ], [ %.sroa.5.1.1, %bb.ba ] ; 2 uses
  %.sroa.079.0 = phi double [ %i.fv, %.lr.ph.i74.preheader.new ], [ %.sroa.079.1.1, %bb.ba ] ; 2 uses
  %i.fz = phi double [ %i.fu, %.lr.ph.i74.preheader.new ], [ %i.gz, %bb.ba ] ; 3 uses
  %i.ga = phi double [ %i.fv, %.lr.ph.i74.preheader.new ], [ %i.gt, %bb.ba ] ; 3 uses
  %i.gb = phi double [ %i.fu, %.lr.ph.i74.preheader.new ], [ %i.ha, %bb.ba ] ; 3 uses
  %i.gc = phi double [ %i.fv, %.lr.ph.i74.preheader.new ], [ %i.gu, %bb.ba ] ; 3 uses
  %.01519.i76 = phi ptr [ %i.fr, %.lr.ph.i74.preheader.new ], [ %i.gp, %bb.ba ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i74.preheader.new ], [ %niter.next.1, %bb.ba ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.01519.i76, i64 24
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !154, !noalias !159 ; 6 uses
  %i.gf = fcmp olt double %i.ge, %i.gc
  br i1 %i.gf, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i74
  %i.gg = fcmp ogt double %i.ge, %i.ga
  br i1 %i.gg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph.i74, %bb.ar, %bb.aq
  %.sroa.7.1 = phi double [ %.sroa.7.0, %bb.aq ], [ %i.ge, %bb.ar ], [ %.sroa.7.0, %.lr.ph.i74 ] ; 2 uses
  %.sroa.079.1 = phi double [ %.sroa.079.0, %bb.aq ], [ %.sroa.079.0, %bb.ar ], [ %i.ge, %.lr.ph.i74 ] ; 2 uses
  %i.gh = phi double [ %i.ga, %bb.aq ], [ %i.ge, %bb.ar ], [ %i.ga, %.lr.ph.i74 ] ; 3 uses
  %i.gi = phi double [ %i.gc, %bb.aq ], [ %i.gc, %bb.ar ], [ %i.ge, %.lr.ph.i74 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.01519.i76, i64 32
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !149, !noalias !159 ; 6 uses
  %i.gl = fcmp olt double %i.gk, %i.gb
  br i1 %i.gl, label %.lr.ph.i74.1, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gm = fcmp ogt double %i.gk, %i.fz
  br i1 %i.gm, label %bb.au, label %.lr.ph.i74.1

bb.au:                                            ; preds = %bb.at
  br label %.lr.ph.i74.1

.lr.ph.i74.1:                                     ; preds = %bb.as, %bb.au, %bb.at
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.at ], [ %i.gk, %bb.au ], [ %.sroa.9.0, %bb.as ] ; 2 uses
  %.sroa.5.1 = phi double [ %.sroa.5.0, %bb.at ], [ %.sroa.5.0, %bb.au ], [ %i.gk, %bb.as ] ; 2 uses
  %i.gn = phi double [ %i.fz, %bb.at ], [ %i.gk, %bb.au ], [ %i.fz, %bb.as ] ; 3 uses
  %i.go = phi double [ %i.gb, %bb.at ], [ %i.gb, %bb.au ], [ %i.gk, %bb.as ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.01519.i76, i64 48 ; 3 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !154, !noalias !159 ; 6 uses
  %i.gr = fcmp olt double %i.gq, %i.gi
  br i1 %i.gr, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i74.1
  %i.gs = fcmp ogt double %i.gq, %i.gh
  br i1 %i.gs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.lr.ph.i74.1
  %.sroa.7.1.1 = phi double [ %.sroa.7.1, %bb.av ], [ %i.gq, %bb.aw ], [ %.sroa.7.1, %.lr.ph.i74.1 ] ; 3 uses
  %.sroa.079.1.1 = phi double [ %.sroa.079.1, %bb.av ], [ %.sroa.079.1, %bb.aw ], [ %i.gq, %.lr.ph.i74.1 ] ; 3 uses
  %i.gt = phi double [ %i.gh, %bb.av ], [ %i.gq, %bb.aw ], [ %i.gh, %.lr.ph.i74.1 ] ; 3 uses
  %i.gu = phi double [ %i.gi, %bb.av ], [ %i.gi, %bb.aw ], [ %i.gq, %.lr.ph.i74.1 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01519.i76, i64 56
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !149, !noalias !159 ; 6 uses
  %i.gx = fcmp olt double %i.gw, %i.go
  br i1 %i.gx, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gy = fcmp ogt double %i.gw, %i.gn
  br i1 %i.gy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.9.1.1 = phi double [ %.sroa.9.1, %bb.ay ], [ %i.gw, %bb.az ], [ %.sroa.9.1, %bb.ax ] ; 3 uses
  %.sroa.5.1.1 = phi double [ %.sroa.5.1, %bb.ay ], [ %.sroa.5.1, %bb.az ], [ %i.gw, %bb.ax ] ; 3 uses
  %i.gz = phi double [ %i.gn, %bb.ay ], [ %i.gw, %bb.az ], [ %i.gn, %bb.ax ] ; 3 uses
  %i.ha = phi double [ %i.go, %bb.ay ], [ %i.go, %bb.az ], [ %i.gw, %bb.ax ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ptsBB.exit78.loopexit.unr-lcssa, label %.lr.ph.i74, !llvm.loop !155

ptsBB.exit78.loopexit.unr-lcssa:                  ; preds = %bb.ba
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ptsBB.exit78, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %ptsBB.exit78.loopexit.unr-lcssa, %.lr.ph.i74.preheader
  %.sroa.9.0.epil.init = phi double [ %i.fu, %.lr.ph.i74.preheader ], [ %.sroa.9.1.1, %ptsBB.exit78.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.0.epil.init = phi double [ %i.fv, %.lr.ph.i74.preheader ], [ %.sroa.7.1.1, %ptsBB.exit78.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.5.0.epil.init = phi double [ %i.fu, %.lr.ph.i74.preheader ], [ %.sroa.5.1.1, %ptsBB.exit78.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.079.0.epil.init = phi double [ %i.fv, %.lr.ph.i74.preheader ], [ %.sroa.079.1.1, %ptsBB.exit78.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.fu, %.lr.ph.i74.preheader ], [ %i.gz, %ptsBB.exit78.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init289 = phi double [ %i.fv, %.lr.ph.i74.preheader ], [ %i.gt, %ptsBB.exit78.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init291 = phi double [ %i.fu, %.lr.ph.i74.preheader ], [ %i.ha, %ptsBB.exit78.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init293 = phi double [ %i.fv, %.lr.ph.i74.preheader ], [ %i.gu, %ptsBB.exit78.loopexit.unr-lcssa ] ; 3 uses
  %.01519.i76.epil.init = phi ptr [ %i.fr, %.lr.ph.i74.preheader ], [ %i.gp, %ptsBB.exit78.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod302 = trunc i64 %i.fx to i1
  call void @llvm.assume(i1 %lcmp.mod302)
  %i.hb = getelementptr inbounds nuw i8, ptr %.01519.i76.epil.init, i64 24
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !154, !noalias !159 ; 6 uses
  %i.hd = fcmp olt double %i.hc, %.epil.init293
  br i1 %i.hd, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i74.epil.preheader
  %i.he = fcmp ogt double %i.hc, %.epil.init289
  br i1 %i.he, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %.lr.ph.i74.epil.preheader
  %.sroa.7.1.epil = phi double [ %.sroa.7.0.epil.init, %bb.bb ], [ %i.hc, %bb.bc ], [ %.sroa.7.0.epil.init, %.lr.ph.i74.epil.preheader ] ; 3 uses
  %.sroa.079.1.epil = phi double [ %.sroa.079.0.epil.init, %bb.bb ], [ %.sroa.079.0.epil.init, %bb.bc ], [ %i.hc, %.lr.ph.i74.epil.preheader ] ; 3 uses
  %i.hf = phi double [ %.epil.init289, %bb.bb ], [ %i.hc, %bb.bc ], [ %.epil.init289, %.lr.ph.i74.epil.preheader ] ; 3 uses
  %i.hg = phi double [ %.epil.init293, %bb.bb ], [ %.epil.init293, %bb.bc ], [ %i.hc, %.lr.ph.i74.epil.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.01519.i76.epil.init, i64 32
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !149, !noalias !159 ; 6 uses
  %i.hj = fcmp olt double %i.hi, %.epil.init291
  br i1 %i.hj, label %ptsBB.exit78, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hk = fcmp ogt double %i.hi, %.epil.init
  br i1 %i.hk, label %bb.bf, label %ptsBB.exit78

bb.bf:                                            ; preds = %bb.be
  br label %ptsBB.exit78

ptsBB.exit78:                                     ; preds = %ptsBB.exit78.loopexit.unr-lcssa, %bb.bf, %bb.be, %bb.bd, %bb.ap
  %.sroa.9.2 = phi double [ %i.fu, %bb.ap ], [ %.sroa.9.1.1, %ptsBB.exit78.loopexit.unr-lcssa ], [ %.sroa.9.0.epil.init, %bb.be ], [ %i.hi, %bb.bf ], [ %.sroa.9.0.epil.init, %bb.bd ]
  %.sroa.7.2 = phi double [ %i.fv, %bb.ap ], [ %.sroa.7.1.1, %ptsBB.exit78.loopexit.unr-lcssa ], [ %.sroa.7.1.epil, %bb.bf ], [ %.sroa.7.1.epil, %bb.be ], [ %.sroa.7.1.epil, %bb.bd ]
  %.sroa.5.2 = phi double [ %i.fu, %bb.ap ], [ %.sroa.5.1.1, %ptsBB.exit78.loopexit.unr-lcssa ], [ %.sroa.5.0.epil.init, %bb.be ], [ %.sroa.5.0.epil.init, %bb.bf ], [ %i.hi, %bb.bd ]
  %.sroa.079.2 = phi double [ %i.fv, %bb.ap ], [ %.sroa.079.1.1, %ptsBB.exit78.loopexit.unr-lcssa ], [ %.sroa.079.1.epil, %bb.bf ], [ %.sroa.079.1.epil, %bb.be ], [ %.sroa.079.1.epil, %bb.bd ]
  %i.hl = phi double [ %i.fu, %bb.ap ], [ %i.gz, %ptsBB.exit78.loopexit.unr-lcssa ], [ %.epil.init, %bb.be ], [ %i.hi, %bb.bf ], [ %.epil.init, %bb.bd ]
  %i.hm = phi double [ %i.fv, %bb.ap ], [ %i.gt, %ptsBB.exit78.loopexit.unr-lcssa ], [ %i.hf, %bb.bf ], [ %i.hf, %bb.be ], [ %i.hf, %bb.bd ]
  %i.hn = phi double [ %i.fu, %bb.ap ], [ %i.ha, %ptsBB.exit78.loopexit.unr-lcssa ], [ %.epil.init291, %bb.be ], [ %.epil.init291, %bb.bf ], [ %i.hi, %bb.bd ]
  %i.ho = phi double [ %i.fv, %bb.ap ], [ %i.gu, %ptsBB.exit78.loopexit.unr-lcssa ], [ %i.hg, %bb.bf ], [ %i.hg, %bb.be ], [ %i.hg, %bb.bd ]
  %i.hp = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hn, i64 1 ; 2 uses
  %i.hr = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.af, <2 x double> %i.hq)
  %i.hs = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ag, <2 x double> %i.hq)
  %i.ht = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hl, i64 1 ; 2 uses
  %i.hv = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.hr, <2 x double> %i.hu)
  %i.hw = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.hs, <2 x double> %i.hu)
  store double %.sroa.079.2, ptr %i.fo, align 8, !tbaa !105
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 96
  store double %.sroa.5.2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 104
  store double %.sroa.7.2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0114, i64 112
  store double %.sroa.9.2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  br label %bb.bq

bb.bg:                                            ; preds = %bb.f
  %i.hx = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #28 ; 4 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bh, label %gv_alloc.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hz = extractelement <2 x double> %i.af, i64 1
  store double %i.hz, ptr %i.y, align 8
  %i.ia = extractelement <2 x double> %i.ag, i64 1
  store double %i.ia, ptr %i.z, align 8
  %i.ib = extractelement <2 x double> %i.af, i64 0
  store double %i.ib, ptr %i.k, align 8
  %i.ic = extractelement <2 x double> %i.ag, i64 0
  store double %i.ic, ptr %0, align 8
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.45, i64 noundef 72) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_alloc.exit:                                    ; preds = %bb.bg
  %i.if = getelementptr inbounds nuw i8, ptr %.0114, i64 120 ; 3 uses
  store ptr %i.hx, ptr %i.if, align 8, !tbaa !162
  %i.ig = getelementptr inbounds nuw i8, ptr %.0114, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !8  ; 2 uses
  %i.ii = call noalias ptr @strdup(ptr noundef readonly %i.ih) #27 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.bi, label %gv_strdup.exit

bb.bi:                                            ; preds = %gv_alloc.exit
  %i.ik = extractelement <2 x double> %i.af, i64 1
  store double %i.ik, ptr %i.y, align 8
  %i.il = extractelement <2 x double> %i.ag, i64 1
  store double %i.il, ptr %i.z, align 8
  %i.im = extractelement <2 x double> %i.af, i64 0
  store double %i.im, ptr %i.k, align 8
  %i.in = extractelement <2 x double> %i.ag, i64 0
  store double %i.in, ptr %0, align 8
  %i.io = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ip = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ih) #31
  %i.iq = add i64 %i.ip, 1
  %i.ir = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.io, ptr noundef nonnull @.str.45, i64 noundef %i.iq) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit:                                   ; preds = %gv_alloc.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  store ptr %i.ii, ptr %i.hx, align 8, !tbaa !163
  %i.it = getelementptr inbounds nuw i8, ptr %.0114, i64 24
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !8
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr @adjust, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  store i8 %i.ix, ptr %i.iy, align 8, !tbaa !165
  store ptr %.063111, ptr %2, align 8, !tbaa !166
  store double %.065110, ptr %i.v, align 8, !tbaa !169
  %i.iz = load i32, ptr %i.w, align 8
  %i.ja = and i32 %.062112, 127
  %i.jb = and i32 %i.iz, -128
  %i.jc = or disjoint i32 %i.jb, %i.ja
  store i32 %i.jc, ptr %i.w, align 8
  %i.jd = load ptr, ptr %i.x, align 8, !tbaa !170 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !171
  %i.jf = call ptr %i.je(ptr noundef nonnull %i.jd, ptr noundef nonnull %2, i32 noundef 1) #27
  %i.jg = load ptr, ptr %i.if, align 8, !tbaa !162 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jf, ptr %i.jh, align 8, !tbaa !176
  %i.ji = call { double, double } @textspan_size(ptr noundef %i.d, ptr noundef %i.jg) #27 ; 0 uses
  %i.jj = load double, ptr %i.is, align 8, !tbaa !8 ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !8
  %i.jm = load ptr, ptr %i.if, align 8, !tbaa !162 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %.sroa.0.0.copyload.i = load double, ptr %i.jn, align 8, !tbaa !105, !noalias !177 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !105, !noalias !177
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !165, !noalias !177
  switch i8 %i.jp, label %bb.bm [
    i8 108, label %bb.bj
    i8 110, label %bb.bk
    i8 114, label %bb.bl
  ]

bb.bj:                                            ; preds = %gv_strdup.exit
  %i.jq = fadd double %i.jj, %.sroa.0.0.copyload.i
  br label %textBB.exit

bb.bk:                                            ; preds = %gv_strdup.exit
  %i.jr = fmul double %.sroa.0.0.copyload.i, 5.000000e-01 ; 2 uses
  %i.js = fsub double %i.jj, %i.jr
  %i.jt = fadd double %i.jj, %i.jr
  br label %textBB.exit

bb.bl:                                            ; preds = %gv_strdup.exit
  %i.ju = fsub double %i.jj, %.sroa.0.0.copyload.i
  br label %textBB.exit

bb.bm:                                            ; preds = %gv_strdup.exit
  %i.jv = extractelement <2 x double> %i.af, i64 1
  store double %i.jv, ptr %i.y, align 8
  %i.jw = extractelement <2 x double> %i.ag, i64 1
  store double %i.jw, ptr %i.z, align 8
  %i.jx = extractelement <2 x double> %i.af, i64 0
  store double %i.jx, ptr %i.k, align 8
  %i.jy = extractelement <2 x double> %i.ag, i64 0
  store double %i.jy, ptr %0, align 8
  %i.jz = load ptr, ptr @stderr, align 8, !tbaa !9, !noalias !177
  %i.ka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jz, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.38, i32 noundef 3131) #29, !noalias !177 ; 0 uses
  call void @abort() #33, !noalias !177
  unreachable

textBB.exit:                                      ; preds = %bb.bj, %bb.bk, %bb.bl
  %.sroa.8.0 = phi double [ %i.jq, %bb.bj ], [ %i.jt, %bb.bk ], [ %i.jj, %bb.bl ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.jj, %bb.bj ], [ %i.js, %bb.bk ], [ %i.ju, %bb.bl ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !180, !noalias !177
  %i.kd = fadd double %i.jl, %i.kc                ; 3 uses
  %i.ke = fsub double %i.kd, %.sroa.7.0.copyload.i ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0114, i64 88
  store double %.sroa.0.0, ptr %i.kf, align 8, !tbaa !105
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %.0114, i64 96
  store double %i.ke, ptr %.sroa.5.0..sroa_idx9, align 8, !tbaa !105
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.0114, i64 104
  store double %.sroa.8.0, ptr %.sroa.6.0..sroa_idx11, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.0114, i64 112
end_hunk_0
begin_hunk_1_@emit_node:bb.a
  %.not184.i = icmp eq ptr %i.eh, null
  br i1 %.not184.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.eh, ptr noundef null, i32 noundef 10) #27, !inline_history !302
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0166.i = phi i32 [ %i.ej, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %i.ek = add i32 %.0166.i, -61
  %or.cond7.i = icmp ult i32 %i.ek, -57
  %narrow.i = select i1 %or.cond7.i, i32 20, i32 %.0166.i ; 7 uses
  %i.el = sext i32 %narrow.i to i64               ; 14 uses
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !300
  %i.en = icmp ne i64 %i.em, 0
  %or.cond9.i = select i1 %i.en, i1 true, i1 %.2.i.i
  br i1 %or.cond9.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.eo, align 4, !tbaa !132
  %i.ep = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ac, label %gv_calloc.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.ab
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ew = load <2 x double>, ptr %i.ev, align 8, !tbaa !105
  %i.ex = load double, ptr %i.eu, align 8, !tbaa !303
  %i.ey = fmul <2 x double> %i.ew, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = fsub <2 x double> %i.ct, %i.ez
  store <2 x double> %i.fa, ptr %i.ep, align 8, !tbaa !105
  %i.fb = fadd double %i.cu, %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store double %i.fb, ptr %i.fc, align 8, !tbaa !129
  %i.fd = extractelement <2 x double> %i.ey, i64 0
  br label %.loopexit.sink.split.i

bb.ad:                                            ; preds = %bb.aa
  %i.fe = load i64, ptr %i.dj, align 8, !tbaa !294 ; 5 uses
  %i.ff = icmp ult i64 %i.fe, 3
  br i1 %i.ff, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !299
  %i.fi = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fh, /* (pzero) */ i32 64)
  br i1 %i.fi, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !298
  %i.fl = tail call noundef i1 @llvm.is.fpclass.f64(double %i.fk, /* (pzero) */ i32 64)
  br i1 %i.fl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fm = load i32, ptr %i.di, align 8, !tbaa !304
  %.not186.i = icmp eq i32 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.al, i64 356 ; 2 uses
  br i1 %.not186.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.fn, align 4, !tbaa !132
  %i.fo = tail call fastcc ptr @gv_calloc(i64 noundef 2, i64 noundef 16) ; 4 uses
  store double %i.cu, ptr %i.fo, align 8, !tbaa !129
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = extractelement <2 x double> %i.ct, i64 1
  store double %i.fq, ptr %i.fp, align 8, !tbaa !136
  %.idx187.i = shl i64 %i.ee, 5
  %i.fr = getelementptr i8, ptr %i.eg, i64 %.idx187.i ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !129
  %i.fu = fadd double %i.cu, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !129
  %i.fw = getelementptr i8, ptr %i.fr, i64 -8
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !136
  br label %.loopexit.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %i.fn, align 4, !tbaa !132
  %.idx.i = shl i64 %i.ee, 5
  %i.fy = getelementptr i8, ptr %i.eg, i64 %.idx.i ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -16
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !129
  %i.gb = getelementptr i8, ptr %i.fy, i64 -8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !136
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
  br i1 %i.gj, label %middle.block82, label %vector.body77, !llvm.loop !305

middle.block82:                                   ; preds = %vector.body77
  %cmp.n83 = icmp eq i64 %n.vec76, %i.el
  br i1 %cmp.n83, label %.loopexit.i, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block82
  %.0165211.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec76, %middle.block82 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %.0165211.i = phi i64 [ %i.gn, %.lr.ph.i ], [ %.0165211.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.0165211.i ; 2 uses
  %i.gl = load <2 x double>, ptr %i.gk, align 8, !tbaa !105
  %i.gm = fadd <2 x double> %i.ct, %i.gl
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !105
  %i.gn = add nuw i64 %.0165211.i, 1              ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.gn, %i.el
  br i1 %exitcond216.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !308

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.go = add i64 %i.ee, -1                       ; 2 uses
  %i.gp = mul i64 %i.fe, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 2, ptr %i.gq, align 4, !tbaa !132
  %.not185.i = icmp ult i64 %i.fe, %i.el
  br i1 %.not185.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = udiv i64 %i.fe, %i.el                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %narrow.i, 0
  br i1 %mul.ov.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !9
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
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !9
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
  %i.hb = load <2 x double>, ptr %gep.i, align 8, !tbaa !105
  %i.hc = fadd <2 x double> %i.ct, %i.hb
  store <2 x double> %i.hc, ptr %i.ha, align 8, !tbaa !105
  %i.hd = add i64 %.0164206.i, %i.gr              ; 2 uses
  %gep.i.1 = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %.0163207.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load <2 x double>, ptr %gep.i.1, align 8, !tbaa !105
  %i.hh = fadd <2 x double> %i.ct, %i.hg
  store <2 x double> %i.hh, ptr %i.hf, align 8, !tbaa !105
  %i.hi = add i64 %i.hd, %i.gr                    ; 2 uses
  %i.hj = add nuw i64 %.0163207.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit87.unr-lcssa, label %gv_calloc.exit192.i, !llvm.loop !309

bb.ao:                                            ; preds = %bb.aj
  %mul.ov.i195.i = icmp ugt i64 %spec.select190.i, 1152921504606846975
  br i1 %mul.ov.i195.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !9
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
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !310

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
  %i.ij = load <2 x double>, ptr %gep209.i.prol, align 8, !tbaa !105
  %i.ik = fadd <2 x double> %i.ct, %i.ij
  store <2 x double> %i.ik, ptr %i.ii, align 8, !tbaa !105
  %i.il = or disjoint i64 %.0210.i.ph, 1
  br label %gv_calloc.exit196.i.prol.loopexit

gv_calloc.exit196.i.prol.loopexit:                ; preds = %gv_calloc.exit196.i.prol, %gv_calloc.exit196.i.preheader
  %.0210.i.unr = phi i64 [ %.0210.i.ph, %gv_calloc.exit196.i.preheader ], [ %i.il, %gv_calloc.exit196.i.prol ]
  %i.im = icmp eq i64 %spec.select190.i, %.neg
  br i1 %i.im, label %.loopexit.i, label %gv_calloc.exit196.i

bb.ar:                                            ; preds = %bb.aq
  %i.in = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.io = shl nuw i64 %spec.select190.i, 4
  %i.ip = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.in, ptr noundef nonnull @.str.45, i64 noundef %i.io) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit196.i:                              ; preds = %gv_calloc.exit196.i.prol.loopexit, %gv_calloc.exit196.i
  %.0210.i = phi i64 [ %i.ix, %gv_calloc.exit196.i ], [ %.0210.i.unr, %gv_calloc.exit196.i.prol.loopexit ] ; 4 uses
  %gep209.i = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %.0210.i
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.0210.i
  %i.ir = load <2 x double>, ptr %gep209.i, align 8, !tbaa !105
  %i.is = fadd <2 x double> %i.ct, %i.ir
  store <2 x double> %i.is, ptr %i.iq, align 8, !tbaa !105
  %i.it = add nuw i64 %.0210.i, 1                 ; 2 uses
  %gep209.i.1 = getelementptr [16 x i8], ptr %invariant.gep208.i, i64 %i.it
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.it
  %i.iv = load <2 x double>, ptr %gep209.i.1, align 8, !tbaa !105
  %i.iw = fadd <2 x double> %i.ct, %i.iv
  store <2 x double> %i.iw, ptr %i.iu, align 8, !tbaa !105
  %i.ix = add nuw i64 %.0210.i, 2                 ; 2 uses
  %exitcond215.not.i.1 = icmp eq i64 %i.ix, %spec.select190.i
  br i1 %exitcond215.not.i.1, label %.loopexit.i, label %gv_calloc.exit196.i, !llvm.loop !311

.thread.i:                                        ; preds = %isRect.exit.thread.i, %isFilled.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.al, i64 356
  store i32 0, ptr %i.iy, align 4, !tbaa !132
  %i.iz = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 2, i64 noundef 16) #28 ; 4 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.as, label %gv_calloc.exit198.i

bb.as:                                            ; preds = %.thread.i
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.jc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.45, i64 noundef 32) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit198.i:                              ; preds = %.thread.i
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 96
  %i.jf = load <2 x double>, ptr %i.je, align 8, !tbaa !105
  %i.jg = fmul <2 x double> %i.jf, <double 5.000000e-01, double 1.000000e+00> ; 2 uses
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ji = fsub <2 x double> %i.ct, %i.jh
  store <2 x double> %i.ji, ptr %i.iz, align 8, !tbaa !105
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !312
  %i.jl = fadd double %i.cu, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store double %i.jl, ptr %i.jm, align 8, !tbaa !129
  %i.jn = extractelement <2 x double> %i.jg, i64 0
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %gv_calloc.exit198.i, %bb.ah, %gv_calloc.exit.i
  %.sink232.i = phi double [ %i.fd, %gv_calloc.exit.i ], [ %i.fx, %bb.ah ], [ %i.jn, %gv_calloc.exit198.i ]
  %.sink231.i = phi ptr [ %i.ep, %gv_calloc.exit.i ], [ %i.fo, %bb.ah ], [ %i.iz, %gv_calloc.exit198.i ] ; 2 uses
  %i.jo = extractelement <2 x double> %i.ct, i64 1
  %i.jp = fadd double %i.jo, %.sink232.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink231.i, i64 24
  store double %i.jp, ptr %i.jq, align 8, !tbaa !136
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
  %i.jt = load <2 x double>, ptr %gep.i.epil, align 8, !tbaa !105
  %i.ju = fadd <2 x double> %i.ct, %i.jt
  store <2 x double> %i.ju, ptr %i.js, align 8, !tbaa !105
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
  store ptr %.2.i, ptr %i.jx, align 8, !tbaa !59
  %i.jy = getelementptr inbounds nuw i8, ptr %i.al, i64 360
  store i64 %.2172.i, ptr %i.jy, align 8, !tbaa !133
  br label %emit_begin_node.exit

emit_begin_node.exit:                             ; preds = %bb.p, %bb.r, %bb.au
end_hunk_1
begin_hunk_2_@emit_edge:bb.a
  %.not17.i.i399.i = icmp eq i8 %i.tb, 0
  br i1 %.not17.i.i399.i, label %preprocessTooltip.exit410.i, label %.lr.ph.i.i400.i

.lr.ph.i.i400.i:                                  ; preds = %bb.gc, %bb.gj
  %i.tc = phi i8 [ %i.tg, %bb.gj ], [ %i.tb, %bb.gc ] ; 4 uses
  %.pn.i.i401.i = phi ptr [ %i.td, %bb.gj ], [ %.0.i398.i, %bb.gc ]
  %.019.i.i402.i = phi i1 [ %.1.i.i405.i, %bb.gj ], [ false, %bb.gc ]
  %.01318.i.i403.i = phi ptr [ %.2.i.i404.i, %bb.gj ], [ %.0.i398.i, %bb.gc ] ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.pn.i.i401.i, i64 1 ; 2 uses
  br i1 %.019.i.i402.i, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %.lr.ph.i.i400.i
  switch i8 %i.tc, label %bb.gf [
    i8 110, label %bb.gg
    i8 108, label %bb.gg
    i8 114, label %bb.ge
  ]

bb.ge:                                            ; preds = %bb.gd
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gd
  %.sink.i.i408.i = phi i8 [ %i.tc, %bb.gf ], [ 13, %bb.ge ], [ 10, %bb.gd ], [ 10, %bb.gd ]
  store i8 %.sink.i.i408.i, ptr %.01318.i.i403.i, align 1, !tbaa !8
  %.114.i.i409.i = getelementptr inbounds nuw i8, ptr %.01318.i.i403.i, i64 1
  br label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.i.i400.i
  %i.te = icmp eq i8 %i.tc, 92
  br i1 %i.te, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.tf = getelementptr inbounds nuw i8, ptr %.01318.i.i403.i, i64 1
  store i8 %i.tc, ptr %.01318.i.i403.i, align 1, !tbaa !8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg
  %.2.i.i404.i = phi ptr [ %.114.i.i409.i, %bb.gg ], [ %i.tf, %bb.gi ], [ %.01318.i.i403.i, %bb.gh ] ; 2 uses
  %.1.i.i405.i = phi i1 [ false, %bb.gg ], [ false, %bb.gi ], [ true, %bb.gh ]
  %i.tg = load i8, ptr %i.td, align 1, !tbaa !8   ; 2 uses
  %.not.i.i406.i = icmp eq i8 %i.tg, 0
  br i1 %.not.i.i406.i, label %preprocessTooltip.exit410.i, label %.lr.ph.i.i400.i, !llvm.loop !337

preprocessTooltip.exit410.i:                      ; preds = %bb.gj, %bb.gc
  %.013.lcssa.i.i407.i = phi ptr [ %.0.i398.i, %bb.gc ], [ %.2.i.i404.i, %bb.gj ]
  store i8 0, ptr %.013.lcssa.i.i407.i, align 1, !tbaa !8
  %i.th = call ptr @strdup_and_subst_obj(ptr noundef nonnull %.0.i398.i, ptr noundef nonnull %1) #27
  %i.ti = getelementptr inbounds nuw i8, ptr %i.fy, i64 312
  store ptr %i.th, ptr %i.ti, align 8, !tbaa !54
  call void @free(ptr noundef %.0.i398.i) #27
  %i.tj = getelementptr inbounds nuw i8, ptr %i.fy, i64 352 ; 2 uses
  %i.tk = load i16, ptr %i.tj, align 8
  %i.tl = or i16 %i.tk, 4
  store i16 %i.tl, ptr %i.tj, align 8
  br label %bb.gn

bb.gk:                                            ; preds = %bb.fy, %bb.fx
  %i.tm = getelementptr inbounds nuw i8, ptr %i.fy, i64 240
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !332 ; 3 uses
  %.not348.i = icmp eq ptr %i.tn, null
  br i1 %.not348.i, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.to = call noalias ptr @strdup(ptr noundef nonnull readonly %i.tn) #27 ; 2 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.gm, label %gv_strdup.exit411.i

bb.gm:                                            ; preds = %bb.gl
  %i.tq = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.tr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.tn) #31
  %i.ts = add i64 %i.tr, 1
  %i.tt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.45, i64 noundef %i.ts) #29 ; 0 uses
  call fastcc void @graphviz_exit() #30
  unreachable

gv_strdup.exit411.i:                              ; preds = %bb.gl
  %i.tu = getelementptr inbounds nuw i8, ptr %i.fy, i64 312
  store ptr %i.to, ptr %i.tu, align 8, !tbaa !54
  br label %bb.gn

bb.gn:                                            ; preds = %gv_strdup.exit411.i, %bb.gk, %preprocessTooltip.exit410.i, %bb.dy
  call void @free(ptr noundef %.1249.i) #27
  call void @free(ptr noundef %.1247.i) #27
  %i.tv = and i32 %i.fx, 4259840
  %.not349.i = icmp eq i32 %i.tv, 0
  br i1 %.not349.i, label %bb.hj, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.tw = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !321 ; 3 uses
  %.not350.i = icmp eq ptr %i.ty, null
  br i1 %.not350.i, label %bb.hj, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.tz = getelementptr inbounds nuw i8, ptr %i.fy, i64 248
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !47
  %.not351.i = icmp eq ptr %i.ua, null
  br i1 %.not351.i, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ub = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !51
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
  %i.ue = load ptr, ptr %i.gc, align 8, !tbaa !12
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 176
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !43
  %i.uh = fmul nsz double %i.ug, 5.000000e-01
  %i.ui = call nsz double @llvm.maxnum.f64(double %i.uh, double 2.000000e+00)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !338 ; 2 uses
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
  %.val416.i = load i64, ptr %i.uu, align 8, !tbaa !103
  %.not422.i = icmp eq i64 %.val416.i, 0
  br i1 %.not422.i, label %._crit_edge420.i, label %.lr.ph419.i

bb.gt:                                            ; preds = %map_output_bspline.exit.i, %.lr.ph.i
  %.0244415.i = phi i64 [ 0, %.lr.ph.i ], [ %i.yi, %map_output_bspline.exit.i ] ; 2 uses
  %i.uv = load ptr, ptr %i.ty, align 8, !tbaa !341
  %i.uw = getelementptr inbounds nuw [56 x i8], ptr %i.uv, i64 %.0244415.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !342
  %i.uz = add i64 %i.uy, -1                       ; 2 uses
  %i.va = udiv i64 %i.uz, 3
  %.not.i412.i = icmp ult i64 %i.uz, 3
  br i1 %.not.i412.i, label %map_output_bspline.exit.i, label %.preheader46.i.i

.preheader46.i.i:                                 ; preds = %bb.gt, %.preheader46.i.i
  %.03748.i.i = phi i64 [ %i.vg, %.preheader46.i.i ], [ 0, %bb.gt ] ; 2 uses
  %i.vb = load ptr, ptr %i.uw, align 8, !tbaa !344
  %.idx.i.i = mul nuw i64 %.03748.i.i, 48
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i64 16, i1 false), !tbaa.struct !128
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %i.vd, i64 16, i1 false), !tbaa.struct !128
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.um, ptr noundef nonnull align 8 dereferenceable(16) %i.ve, i64 16, i1 false), !tbaa.struct !128
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.un, ptr noundef nonnull align 8 dereferenceable(16) %i.vf, i64 16, i1 false), !tbaa.struct !128
  call fastcc void @approx_bezier(ptr noundef %11, ptr noundef %10)
  %i.vg = add nuw nsw i64 %.03748.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.vg, %i.va
  br i1 %exitcond.not.i.i, label %.preheader45.i.i, label %.preheader46.i.i, !llvm.loop !345

.preheader45.i.i:                                 ; preds = %.preheader46.i.i
  %.val4349.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103 ; 2 uses
  %.not55.i.i = icmp eq i64 %.val4349.pre.i.i, 0
  br i1 %.not55.i.i, label %map_output_bspline.exit.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.he
  %i.vh = icmp eq i64 %.val43.i.i, 0
  br i1 %i.vh, label %map_output_bspline.exit.i, label %.lr.ph54.i.i

.lr.ph.i.i:                                       ; preds = %.preheader45.i.i, %bb.he
  %.val4262.i.i = phi i64 [ %.val43.i.i, %bb.he ], [ %.val4349.pre.i.i, %.preheader45.i.i ]
  %.03451.i.i = phi i64 [ %.1.i.i, %bb.he ], [ 0, %.preheader45.i.i ] ; 5 uses
  %.03550.i.i = phi i64 [ %i.vm, %bb.he ], [ 0, %.preheader45.i.i ] ; 4 uses
  %i.vi = icmp eq i64 %.03550.i.i, 0
  %.pre58.pre63.i.i = load ptr, ptr %10, align 8, !tbaa !8 ; 2 uses
  br i1 %i.vi, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i
  %19 = add i64 %.03550.i.i, -1
  %i.vj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %19) #27
  %i.vk = getelementptr inbounds nuw [16 x i8], ptr %.pre58.pre63.i.i, i64 %i.vj
  %.val42.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  %.pre58.pre.i.i = load ptr, ptr %10, align 8, !tbaa !8
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.lr.ph.i.i
  %.pre58.i.i = phi ptr [ %.pre58.pre.i.i, %bb.gu ], [ %.pre58.pre63.i.i, %.lr.ph.i.i ] ; 2 uses
  %.val42.i.i = phi i64 [ %.val42.pre.i.i, %bb.gu ], [ %.val4262.i.i, %.lr.ph.i.i ]
  %i.vl = phi ptr [ %i.vk, %bb.gu ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.vm = add nuw i64 %.03550.i.i, 1              ; 5 uses
  %i.vn = icmp ult i64 %i.vm, %.val42.i.i
  br i1 %i.vn, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.vo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %i.vm) #27
  %i.vp = getelementptr inbounds nuw [16 x i8], ptr %.pre58.i.i, i64 %i.vo
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !8
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.vq = phi ptr [ %.pre.i.i, %bb.gw ], [ %.pre58.i.i, %bb.gv ]
  %i.vr = phi ptr [ %i.vp, %bb.gw ], [ null, %bb.gv ] ; 4 uses
  %i.vs = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.03550.i.i) #27
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.vq, i64 %i.vs
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %.03451.i.i ; 2 uses
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %.03451.i.i ; 2 uses
  %i.vw = load <2 x double>, ptr %i.vt, align 8   ; 7 uses
  %.not.i.i413.i = icmp eq ptr %i.vl, null
  br i1 %.not.i.i413.i, label %bb.hb, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vx = load <2 x double>, ptr %i.vl, align 8, !tbaa !105 ; 3 uses
  %.not44.i.i.i = icmp eq ptr %i.vr, null
  br i1 %.not44.i.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vy = load <2 x double>, ptr %i.vr, align 8, !tbaa !105
  br label %mkSegPts.exit.i.i

bb.ha:                                            ; preds = %bb.gy
  %i.vz = fsub <2 x double> %i.vw, %i.vx
  %i.wa = fmul <2 x double> %i.vz, splat (double 2.000000e+00)
  br label %mkSegPts.exit.i.i

bb.hb:                                            ; preds = %bb.gx
  %.sroa.7.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.sroa.7.0.copyload27.i.i.i = load double, ptr %.sroa.7.0..sroa_idx26.i.i.i, align 8, !tbaa !105
  %i.wb = load <2 x double>, ptr %i.vr, align 8, !tbaa !105 ; 2 uses
  %i.wc = fsub <2 x double> %i.vw, %i.wb
  %i.wd = fmul <2 x double> %i.wc, splat (double 2.000000e+00)
  %i.we = insertelement <2 x double> %i.wb, double %.sroa.7.0.copyload27.i.i.i, i64 1
  br label %mkSegPts.exit.i.i

mkSegPts.exit.i.i:                                ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.wf = phi <2 x double> [ %i.vx, %bb.gz ], [ %i.vx, %bb.ha ], [ %i.wd, %bb.hb ] ; 2 uses
  %i.wg = phi <2 x double> [ %i.vy, %bb.gz ], [ %i.wa, %bb.ha ], [ %i.we, %bb.hb ] ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.wg, %i.vw
  %i.wh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.wi = shufflevector <2 x double> %i.wg, <2 x double> %i.wf, <2 x i32> <i32 1, i32 3>
  %i.wj = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wk = fsub <2 x double> %i.wi, %i.wj          ; 2 uses
  %i.wl = extractelement <2 x double> %i.wk, i64 0
  %i.wm = call double @atan2(double noundef %i.wl, double noundef %i.wh) #27
  %foldExtExtBinop342 = fsub <2 x double> %i.wf, %i.vw
  %i.wn = extractelement <2 x double> %foldExtExtBinop342, i64 0
  %i.wo = extractelement <2 x double> %i.wk, i64 1
  %i.wp = call double @atan2(double noundef %i.wo, double noundef %i.wn) #27 ; 2 uses
  %i.wq = fsub double %i.wm, %i.wp                ; 3 uses
  %i.wr = fcmp ogt double %i.wq, 0.000000e+00
  %i.ws = fadd nnan double %i.wq, f0xC01921FB54442D18
  %.0.i.i.i.i = select i1 %i.wr, double %i.ws, double %i.wq
  %i.wt = fmul double %.0.i.i.i.i, 5.000000e-01
  %i.wu = fadd double %i.wp, %i.wt                ; 2 uses
  %i.wv = call double @cos(double noundef %i.wu) #27
  %i.ww = call double @sin(double noundef %i.wu) #27
  %i.wx = insertelement <2 x double> poison, double %i.wv, i64 0
  %i.wy = insertelement <2 x double> %i.wx, double %i.ww, i64 1
  %i.wz = fmul <2 x double> %i.us, %i.wy          ; 2 uses
  %i.xa = fadd <2 x double> %i.vw, %i.wz
  store <2 x double> %i.xa, ptr %i.vu, align 16, !tbaa !105
  %i.xb = fsub <2 x double> %i.vw, %i.wz
  store <2 x double> %i.xb, ptr %i.vv, align 16, !tbaa !105
  %i.xc = add i64 %.03451.i.i, 1                  ; 5 uses
  %.val41.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103 ; 2 uses
  %i.xd = icmp eq i64 %i.vm, %.val41.i.i
  %i.xe = icmp eq i64 %i.xc, 50
  %or.cond.i.i = select i1 %i.xd, i1 true, i1 %i.xe
  br i1 %or.cond.i.i, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %mkSegPts.exit.i.i
  %i.xf = shl i64 %i.xc, 1
  store i64 %i.xf, ptr %i.uo, align 8, !tbaa !346
  %i.xg = call i64 @gv_list_append_slot_(ptr noundef nonnull %16, i64 noundef 8) #27
  %i.xh = load i64, ptr %i.uo, align 8, !tbaa !346
  %i.xi = load ptr, ptr %16, align 8, !tbaa !8
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %i.xg
  store i64 %i.xh, ptr %i.xj, align 8, !tbaa !348
  %.not.i44.i.i = icmp eq i64 %i.xc, 0
  br i1 %.not.i44.i.i, label %map_bspline_poly.exit.i.i, label %.lr.ph.i.i414.i

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph.i.i414.i
  %i.xk = getelementptr [16 x i8], ptr %13, i64 %i.xc
  br label %bb.hd

.lr.ph.i.i414.i:                                  ; preds = %bb.hc, %.lr.ph.i.i414.i
  %.02729.i.i.i = phi i64 [ %i.xp, %.lr.ph.i.i414.i ], [ 0, %bb.hc ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %.02729.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.xl, i64 16, i1 false), !tbaa.struct !128
  %i.xm = call i64 @gv_list_append_slot_(ptr noundef nonnull %15, i64 noundef 16) #27
  %i.xn = load ptr, ptr %15, align 8, !tbaa !8
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.xm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xo, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !128
  %i.xp = add nuw i64 %.02729.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.02729.i.i.i, %.03451.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph31.i.i.i, label %.lr.ph.i.i414.i, !llvm.loop !349

bb.hd:                                            ; preds = %bb.hd, %.lr.ph31.i.i.i
  %.030.i.i.i = phi i64 [ 0, %.lr.ph31.i.i.i ], [ %i.xv, %bb.hd ] ; 3 uses
  %i.xq = xor i64 %.030.i.i.i, -1
  %i.xr = getelementptr [16 x i8], ptr %i.xk, i64 %i.xq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.xr, i64 16, i1 false), !tbaa.struct !128
  %i.xs = call i64 @gv_list_append_slot_(ptr noundef nonnull %15, i64 noundef 16) #27
  %i.xt = load ptr, ptr %15, align 8, !tbaa !8
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %i.xt, i64 %i.xs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !128
  %i.xv = add nuw i64 %.030.i.i.i, 1
  %exitcond33.not.i.i.i = icmp eq i64 %.030.i.i.i, %.03451.i.i
  br i1 %exitcond33.not.i.i.i, label %map_bspline_poly.exit.i.i, label %bb.hd, !llvm.loop !350

map_bspline_poly.exit.i.i:                        ; preds = %bb.hd, %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %i.vu, i64 16, i1 false), !tbaa.struct !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %i.vv, i64 16, i1 false), !tbaa.struct !128
  %.val43.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  br label %bb.he

bb.he:                                            ; preds = %map_bspline_poly.exit.i.i, %mkSegPts.exit.i.i
  %.val43.i.i = phi i64 [ %.val43.pre.i.i, %map_bspline_poly.exit.i.i ], [ %.val41.i.i, %mkSegPts.exit.i.i ] ; 3 uses
  %.1.i.i = phi i64 [ 1, %map_bspline_poly.exit.i.i ], [ %i.xc, %mkSegPts.exit.i.i ]
  %i.xw = icmp ult i64 %i.vm, %.val43.i.i
  br i1 %i.xw, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !351

.lr.ph54.i.i:                                     ; preds = %.preheader.i.i, %bb.hh
  %.053.i.i = phi i64 [ %i.yg, %bb.hh ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.xx = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.053.i.i) #27
  %i.xy = load ptr, ptr %i.uq, align 8, !tbaa !352 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %i.xy to i64
  switch i64 %magicptr.i.i, label %bb.hg [
    i64 1, label %bb.hf
    i64 0, label %bb.hh
  ]

bb.hf:                                            ; preds = %.lr.ph54.i.i
  %i.xz = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ya = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.xz) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.hg:                                            ; preds = %.lr.ph54.i.i
  %i.yb = load ptr, ptr %10, align 8, !tbaa !8
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %i.xx ; 2 uses
  %i.yd = load double, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yf = load double, ptr %i.ye, align 8
  call void %i.xy(double %i.yd, double %i.yf) #27, !inline_history !354
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph54.i.i
  %i.yg = add nuw i64 %.053.i.i, 1                ; 2 uses
  %.val.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  %i.yh = icmp ult i64 %i.yg, %.val.i.i
  br i1 %i.yh, label %.lr.ph54.i.i, label %map_output_bspline.exit.i, !llvm.loop !355

map_output_bspline.exit.i:                        ; preds = %bb.hh, %.preheader.i.i, %.preheader45.i.i, %bb.gt
  call void @gv_list_clear_(ptr noundef nonnull %10, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.yi = add nuw i64 %.0244415.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.yi, %i.uk
  br i1 %exitcond.not.i, label %._crit_edge.i77, label %bb.gt, !llvm.loop !356

._crit_edge420.i:                                 ; preds = %.lr.ph419.i, %.preheader.i
  %.0243.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.yu, %.lr.ph419.i ]
  %i.yj = load ptr, ptr %15, align 8, !tbaa !8
  %i.yk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %i.yj, i64 %i.yk
  %i.ym = load ptr, ptr %15, align 8, !tbaa !8
  %i.yn = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.ym, i64 %i.yn
  %i.yp = call ptr @gvrender_ptf_A(ptr noundef %0, ptr noundef %i.yl, ptr noundef %i.yo, i64 noundef %.0243.lcssa.i) #27 ; 0 uses
  br label %bb.hi

.lr.ph419.i:                                      ; preds = %.preheader.i, %.lr.ph419.i
  %.0418.i = phi i64 [ %i.yv, %.lr.ph419.i ], [ 0, %.preheader.i ] ; 2 uses
  %.0243417.i = phi i64 [ %i.yu, %.lr.ph419.i ], [ 0, %.preheader.i ]
  %i.yq = load ptr, ptr %16, align 8, !tbaa !8
  %i.yr = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %16, i64 noundef %.0418.i) #27
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.yr
end_hunk_2
