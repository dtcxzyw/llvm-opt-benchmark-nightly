Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  store i32 %i.hu, ptr %i.hl, align 4, !tbaa !28
  %i.hv = zext i32 %i.hh to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.hv ; 4 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.hy
  store i32 %i.hj, ptr %i.hz, align 4, !tbaa !39
  %i.ia = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store i32 %i.hf, ptr %i.id, align 4, !tbaa !40
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.hw, align 4, !tbaa !28
  %i.ig = zext i32 %i.hj to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ig ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ij
  store i32 %i.hf, ptr %i.ik, align 4, !tbaa !39
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 %i.hh, ptr %i.io, align 4, !tbaa !40
  %i.ip = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.ih, align 4, !tbaa !28
  %i.ir = add nuw nsw i64 %.07485.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.ir, %i.eu
  br i1 %exitcond93.not.i, label %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit, label %.lr.ph86.i, !llvm.loop !3

_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit: ; preds = %.lr.ph86.i, %.preheader.i
  store i32 0, ptr %i.ej, align 4, !tbaa !28
  %i.is = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.it = icmp ugt i64 %.0702, 4611686018427387903
  %i.iu = select i1 %i.it, i64 -1, i64 %i.ew      ; 6 uses
  %i.iv = invoke noundef ptr %i.is(i64 noundef %i.iu)
          to label %bb.k unwind label %bb.br, !inline_history !4 ; 58 uses

bb.k:                                             ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.iw = add nuw nsw i64 %i.ed, 3                ; 2 uses
  store i64 %i.iw, ptr %i.ek, align 8, !tbaa !26
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.er
  store ptr %i.iv, ptr %i.ix, align 8, !tbaa !27
  %i.iy = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.iz = invoke noundef ptr %i.iy(i64 noundef %i.iu)
          to label %bb.l unwind label %bb.bs, !inline_history !4 ; 23 uses

bb.l:                                             ; preds = %bb.k
  %i.ja = or disjoint i64 %i.ed, 4
  store i64 %i.ja, ptr %i.ek, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.iw
  store ptr %i.iz, ptr %i.jb, align 8, !tbaa !27
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjS0_PKfmmPKjR17meshopt_Allocator(ptr noundef %i.iv, ptr noundef %i.iz, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull align 8 dereferenceable(200) %16)
          to label %bb.m unwind label %bb.bs

bb.m:                                             ; preds = %bb.l
  %i.jc = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jd = invoke noundef ptr %i.jc(i64 noundef %.0702)
          to label %bb.n unwind label %bb.bt, !inline_history !65 ; 87 uses

bb.n:                                             ; preds = %bb.m
  %i.je = load i64, ptr %i.ek, align 8, !tbaa !26 ; 6 uses
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  store i64 %i.jf, ptr %i.ek, align 8, !tbaa !26
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.je
  store ptr %i.jd, ptr %i.jg, align 8, !tbaa !27
  %i.jh = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ji = invoke noundef ptr %i.jh(i64 noundef %i.iu)
          to label %bb.o unwind label %bb.bu, !inline_history !4 ; 22 uses

bb.o:                                             ; preds = %bb.n
  %i.jj = add nuw nsw i64 %i.je, 2                ; 2 uses
  store i64 %i.jj, ptr %i.ek, align 8, !tbaa !26
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jf
  store ptr %i.ji, ptr %i.jk, align 8, !tbaa !27
  %i.jl = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jm = invoke noundef ptr %i.jl(i64 noundef %i.iu)
          to label %bb.p unwind label %bb.bv, !inline_history !4 ; 21 uses

bb.p:                                             ; preds = %bb.o
  %i.jn = add nuw nsw i64 %i.je, 3                ; 2 uses
  store i64 %i.jn, ptr %i.ek, align 8, !tbaa !26
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jj
  store ptr %i.jm, ptr %i.jo, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ji, i8 -1, i64 %i.ew, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jm, i8 -1, i64 %i.ew, i1 false)
  br i1 %.not88.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph296.i

.loopexit292.i:                                   ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph296.i
  %exitcond343.not.i = icmp eq i64 %i.jq, %.0702
  br i1 %exitcond343.not.i, label %.lr.ph298.i, label %.lr.ph296.i, !llvm.loop !66

.lr.ph296.i:                                      ; preds = %bb.p, %.loopexit292.i
  %.0231295.i = phi i64 [ %i.jq, %.loopexit292.i ], [ 0, %bb.p ] ; 3 uses
  %i.jp = trunc i64 %.0231295.i to i32            ; 6 uses
  %i.jq = add nuw i64 %.0231295.i, 1              ; 3 uses
  %i.jr = and i64 %i.jq, 4294967295
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28 ; 2 uses
  %i.ju = and i64 %.0231295.i, 4294967295         ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !28 ; 3 uses
  %i.jx = sub i32 %i.jt, %i.jw
  %i.jy = zext i32 %i.jw to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.jy
  %i.ka = zext i32 %i.jx to i64
  %.not327.i = icmp eq i32 %i.jt, %i.jw
  br i1 %.not327.i, label %.loopexit292.i, label %.lr.ph.i450

.lr.ph.i450:                                      ; preds = %.lr.ph296.i
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.ju ; 3 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.ju
  br label %bb.q

bb.q:                                             ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph.i450
  %.0230294.i = phi i64 [ 0, %.lr.ph.i450 ], [ %i.lc, %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.0230294.i
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !39 ; 5 uses
  %i.kf = icmp eq i32 %i.ke, %i.jp
  br i1 %i.kf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.jp, ptr %i.kb, align 4, !tbaa !28
  store i32 %i.jp, ptr %i.kc, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.kg = add i32 %i.ke, 1
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !28 ; 2 uses
  %i.kk = zext i32 %i.ke to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !28 ; 3 uses
  %i.kn = sub i32 %i.kj, %i.km
  %i.ko = zext i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ko
  %i.kq = zext i32 %i.kn to i64
  %.not1.not.i.i = icmp eq i32 %i.kj, %i.km
  br i1 %.not1.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.kr = add nuw nsw i64 %.0142.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kr, %i.kq
  br i1 %exitcond.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i, !llvm.loop !67

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.t
  %.0142.i.i = phi i64 [ %i.kr, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.0142.i.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !39
  %i.ku = icmp eq i32 %i.kt, %i.jp
  br i1 %i.ku, label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, label %bb.t

.loopexit291.i:                                   ; preds = %bb.t, %bb.s
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kk ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !28
  %i.kx = icmp eq i32 %i.kw, -1
  %i.ky = select i1 %i.kx, i32 %i.jp, i32 %i.ke
  store i32 %i.ky, ptr %i.kv, align 4, !tbaa !28
  %i.kz = load i32, ptr %i.kb, align 4, !tbaa !28
  %i.la = icmp eq i32 %i.kz, -1
  %i.lb = select i1 %i.la, i32 %i.ke, i32 %i.jp
  store i32 %i.lb, ptr %i.kb, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i: ; preds = %.lr.ph.i.i, %.loopexit291.i, %bb.r
  %i.lc = add nuw nsw i64 %.0230294.i, 1          ; 2 uses
  %exitcond.not.i451 = icmp eq i64 %i.lc, %i.ka
  br i1 %exitcond.not.i451, label %.loopexit292.i, label %bb.q, !llvm.loop !68

._crit_edge.i452:                                 ; preds = %bb.ap
  %i.ld = and i32 %13, 32
  %.not.not.i = icmp eq i32 %i.ld, 0
  br i1 %.not.not.i, label %.loopexit289.i, label %.lr.ph317.i

.lr.ph317.i:                                      ; preds = %._crit_edge.i452
  %.not260.i = icmp eq ptr %.0379, null           ; 2 uses
  %.not261.i = icmp eq ptr %10, null
  br label %bb.aq

.lr.ph298.i:                                      ; preds = %.loopexit292.i, %bb.ap
  %.0229297.i = phi i64 [ %i.nq, %bb.ap ], [ 0, %.loopexit292.i ] ; 23 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.0229297.i
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !28
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = icmp eq i64 %.0229297.i, %i.lg
  br i1 %i.lh, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %.lr.ph298.i
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.0229297.i
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !28 ; 3 uses
  %i.lk = zext i32 %i.lj to i64                   ; 4 uses
  %i.ll = icmp eq i64 %.0229297.i, %i.lk
  br i1 %i.ll, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.0229297.i
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !28 ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.0229297.i
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !28 ; 4 uses
  %i.lq = icmp eq i32 %i.ln, -1
  %i.lr = icmp eq i32 %i.lp, -1
  %or.cond.i = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 0, ptr %i.ls, align 1, !tbaa !29
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %18 = icmp ne i32 %i.ln, -1
  %19 = icmp ne i32 %i.lp, -1
  %or.cond3.i = select i1 %18, i1 %19, i1 false
  %i.lt = zext i32 %i.ln to i64                   ; 3 uses
  br i1 %or.cond3.i, label %bb.y, label %._crit_edge351.i

._crit_edge351.i:                                 ; preds = %bb.x
  %.pre352.i = zext i32 %i.lp to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !28
  %i.lw = zext i32 %i.lp to i64                   ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !28
  %i.lz = icmp ne i32 %i.lv, %i.ly
  %.not267.i = icmp eq i64 %.0229297.i, %i.lt
  %or.cond270.i = or i1 %.not267.i, %i.lz
  br i1 %or.cond270.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 2, ptr %i.ma, align 1, !tbaa !29
  br label %bb.ap

bb.aa:                                            ; preds = %bb.y, %._crit_edge351.i
  %.pre-phi353.i = phi i64 [ %.pre352.i, %._crit_edge351.i ], [ %i.lw, %bb.y ]
  %.not268.i = icmp eq i64 %.0229297.i, %i.lt
  %.not269.i = icmp eq i64 %.0229297.i, %.pre-phi353.i
  %or.cond271.i = select i1 %.not268.i, i1 true, i1 %.not269.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i ; 2 uses
  br i1 %or.cond271.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.mb, align 1, !tbaa !29
  br label %bb.ap

bb.ac:                                            ; preds = %bb.aa
  store i8 4, ptr %i.mb, align 1, !tbaa !29
  br label %bb.ap

bb.ad:                                            ; preds = %bb.u
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.lk
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !28
  %i.me = zext i32 %i.md to i64
  %i.mf = icmp eq i64 %.0229297.i, %i.me
  br i1 %i.mf, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.0229297.i
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !28 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.0229297.i
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !28 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.lk
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !28 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.lk
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !28 ; 3 uses
  %.not264.i = icmp eq i32 %i.mh, -1
  br i1 %.not264.i, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mo = zext i32 %i.mh to i64                   ; 2 uses
  %i.mp = icmp ne i64 %.0229297.i, %i.mo
  %i.mq = icmp ne i32 %i.mj, -1
  %or.cond5.i = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %or.cond5.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.mr = zext i32 %i.mj to i64                   ; 2 uses
  %i.ms = icmp ne i64 %.0229297.i, %i.mr
  %i.mt = icmp ne i32 %i.ml, -1
  %or.cond7.i = select i1 %i.ms, i1 %i.mt, i1 false
  br i1 %or.cond7.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.mu = icmp eq i32 %i.ml, %i.lj
  %i.mv = icmp eq i32 %i.mn, -1
  %.not265.i = icmp eq i32 %i.mn, %i.lj
  %i.mw = or i1 %i.mv, %.not265.i
  %or.cond272.i = select i1 %i.mu, i1 true, i1 %i.mw
  br i1 %or.cond272.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.mo
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !28 ; 2 uses
  %i.mz = zext i32 %i.mn to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !28
  %i.nc = icmp eq i32 %i.my, %i.nb
  br i1 %i.nc, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.mr
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !28 ; 2 uses
  %i.nf = zext i32 %i.ml to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !28
  %i.ni = icmp ne i32 %i.ne, %i.nh
  %.not266.i = icmp eq i32 %i.my, %i.ne
  %or.cond273.i = or i1 %.not266.i, %i.ni
  br i1 %or.cond273.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nj = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 2, ptr %i.nj, align 1, !tbaa !29
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.nk = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 4, ptr %i.nk, align 1, !tbaa !29
  br label %bb.ap

bb.am:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.nl = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 4, ptr %i.nl, align 1, !tbaa !29
  br label %bb.ap

bb.an:                                            ; preds = %bb.ad
  %i.nm = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 4, ptr %i.nm, align 1, !tbaa !29
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph298.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.lg
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !29
  %i.np = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0229297.i
  store i8 %i.no, ptr %i.np, align 1, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ac, %bb.ab, %bb.z, %bb.w
  %i.nq = add nuw i64 %.0229297.i, 1              ; 2 uses
  %exitcond344.not.i = icmp eq i64 %i.nq, %.0702
  br i1 %exitcond344.not.i, label %._crit_edge.i452, label %.lr.ph298.i, !llvm.loop !69

bb.aq:                                            ; preds = %bb.az, %.lr.ph317.i
  %.0228314.i = phi i64 [ 0, %.lr.ph317.i ], [ %i.qs, %bb.az ] ; 10 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0228314.i ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.ns, label %bb.az [
    i8 2, label %bb.ar
    i8 4, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.0228314.i
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !28
  %i.nv = zext i32 %i.nu to i64                   ; 2 uses
  %.not259.i = icmp eq i64 %.0228314.i, %i.nv
  br i1 %.not259.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nw = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !29
  br label %.sink.split.i

bb.at:                                            ; preds = %bb.ar
  %i.ny = trunc nuw i64 %.0228314.i to i32        ; 4 uses
  br i1 %.not261.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.at
  br i1 %.not260.i, label %.split.us.split.us.i, label %.split.us.split.i

.split.us.split.us.i:                             ; preds = %.split.us.i, %.split.us.split.us.i
  %.0225.us.us.i = phi i32 [ %i.ob, %.split.us.split.us.i ], [ %i.ny, %.split.us.i ]
  %i.nz = zext i32 %.0225.us.us.i to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !28 ; 3 uses
  %i.oc = zext i32 %i.ob to i64
  %.not262.us.us.i = icmp eq i64 %.0228314.i, %i.oc
  br i1 %.not262.us.us.i, label %.preheader287.i.preheader, label %.split.us.split.us.i, !llvm.loop !70

.split.us.split.i:                                ; preds = %.split.us.i, %.split.us.split.i
  %.0225.us.i = phi i32 [ %i.of, %.split.us.split.i ], [ %i.ny, %.split.us.i ]
  %i.od = zext i32 %.0225.us.i to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !28 ; 3 uses
  %i.og = zext i32 %i.of to i64
  %.not262.us.i = icmp eq i64 %.0228314.i, %i.og
  br i1 %.not262.us.i, label %.preheader287.i.preheader, label %.split.us.split.i, !llvm.loop !70

.split.i:                                         ; preds = %bb.at
  br i1 %.not260.i, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i, %.split.split.us.i
  %.0226.us300.i = phi i1 [ %i.on, %.split.split.us.i ], [ false, %.split.i ]
  %.0225.us301.i = phi i32 [ %i.op, %.split.split.us.i ], [ %i.ny, %.split.i ]
  %i.oh = zext i32 %.0225.us301.i to i64          ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %10, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !29
  %i.ok = lshr i8 %i.oj, 1
  %.lobit.us.i = and i8 %i.ok, 1
  %i.ol = zext i1 %.0226.us300.i to i8
  %i.om = or i8 %.lobit.us.i, %i.ol
  %i.on = icmp ne i8 %i.om, 0                     ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.oh
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !28 ; 3 uses
  %i.oq = zext i32 %i.op to i64
  %.not262.us302.i = icmp eq i64 %.0228314.i, %i.oq
  br i1 %.not262.us302.i, label %.preheader287.i.preheader, label %.split.split.us.i, !llvm.loop !70

.split.split.i:                                   ; preds = %.split.i, %.split.split.i
  %.0226.i = phi i1 [ %i.pa, %.split.split.i ], [ false, %.split.i ]
  %.0225.i = phi i32 [ %i.pc, %.split.split.i ], [ %i.ny, %.split.i ]
  %i.or = zext i32 %.0225.i to i64                ; 2 uses
end_hunk_0
begin_hunk_1_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a

pred.store.continue1148:                          ; preds = %pred.store.if1147, %pred.store.continue1146
  %i.wz = extractelement <16 x i1> %i.ud, i64 9
  br i1 %i.wz, label %pred.store.if1149, label %pred.store.continue1150

pred.store.if1149:                                ; preds = %pred.store.continue1148
  %i.xa = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 25
  store i8 4, ptr %i.xb, align 1, !tbaa !29
  br label %pred.store.continue1150

pred.store.continue1150:                          ; preds = %pred.store.if1149, %pred.store.continue1148
  %i.xc = extractelement <16 x i1> %i.ud, i64 10
  br i1 %i.xc, label %pred.store.if1151, label %pred.store.continue1152

pred.store.if1151:                                ; preds = %pred.store.continue1150
  %i.xd = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 26
  store i8 4, ptr %i.xe, align 1, !tbaa !29
  br label %pred.store.continue1152

pred.store.continue1152:                          ; preds = %pred.store.if1151, %pred.store.continue1150
  %i.xf = extractelement <16 x i1> %i.ud, i64 11
  br i1 %i.xf, label %pred.store.if1153, label %pred.store.continue1154

pred.store.if1153:                                ; preds = %pred.store.continue1152
  %i.xg = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 27
  store i8 4, ptr %i.xh, align 1, !tbaa !29
  br label %pred.store.continue1154

pred.store.continue1154:                          ; preds = %pred.store.if1153, %pred.store.continue1152
  %i.xi = extractelement <16 x i1> %i.ud, i64 12
  br i1 %i.xi, label %pred.store.if1155, label %pred.store.continue1156

pred.store.if1155:                                ; preds = %pred.store.continue1154
  %i.xj = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 28
  store i8 4, ptr %i.xk, align 1, !tbaa !29
  br label %pred.store.continue1156

pred.store.continue1156:                          ; preds = %pred.store.if1155, %pred.store.continue1154
  %i.xl = extractelement <16 x i1> %i.ud, i64 13
  br i1 %i.xl, label %pred.store.if1157, label %pred.store.continue1158

pred.store.if1157:                                ; preds = %pred.store.continue1156
  %i.xm = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 29
  store i8 4, ptr %i.xn, align 1, !tbaa !29
  br label %pred.store.continue1158

pred.store.continue1158:                          ; preds = %pred.store.if1157, %pred.store.continue1156
  %i.xo = extractelement <16 x i1> %i.ud, i64 14
  br i1 %i.xo, label %pred.store.if1159, label %pred.store.continue1160

pred.store.if1159:                                ; preds = %pred.store.continue1158
  %i.xp = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 30
  store i8 4, ptr %i.xq, align 1, !tbaa !29
  br label %pred.store.continue1160

pred.store.continue1160:                          ; preds = %pred.store.if1159, %pred.store.continue1158
  %i.xr = extractelement <16 x i1> %i.ud, i64 15
  br i1 %i.xr, label %pred.store.if1161, label %pred.store.continue1162

pred.store.if1161:                                ; preds = %pred.store.continue1160
  %i.xs = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 31
  store i8 4, ptr %i.xt, align 1, !tbaa !29
  br label %pred.store.continue1162

pred.store.continue1162:                          ; preds = %pred.store.if1161, %pred.store.continue1160
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %pred.store.continue1162
  %cmp.n = icmp eq i64 %.0702, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph323.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1163 = and i64 %.0702, -8                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue1181, %vec.epilog.ph
  %index1164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1182, %pred.store.continue1181 ] ; 9 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164 ; 2 uses
  %wide.load1165 = load <8 x i8>, ptr %i.xv, align 1, !tbaa !29
  %i.xw = icmp eq <8 x i8> %wide.load1165, splat (i8 1) ; 8 uses
  %i.xx = extractelement <8 x i1> %i.xw, i64 0
  br i1 %i.xx, label %pred.store.if1166, label %pred.store.continue1167

pred.store.if1166:                                ; preds = %vec.epilog.vector.body
  store i8 4, ptr %i.xv, align 1, !tbaa !29
  br label %pred.store.continue1167

pred.store.continue1167:                          ; preds = %pred.store.if1166, %vec.epilog.vector.body
  %i.xy = extractelement <8 x i1> %i.xw, i64 1
  br i1 %i.xy, label %pred.store.if1168, label %pred.store.continue1169

pred.store.if1168:                                ; preds = %pred.store.continue1167
  %i.xz = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 1
  store i8 4, ptr %i.ya, align 1, !tbaa !29
  br label %pred.store.continue1169

pred.store.continue1169:                          ; preds = %pred.store.if1168, %pred.store.continue1167
  %i.yb = extractelement <8 x i1> %i.xw, i64 2
  br i1 %i.yb, label %pred.store.if1170, label %pred.store.continue1171

pred.store.if1170:                                ; preds = %pred.store.continue1169
  %i.yc = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  store i8 4, ptr %i.yd, align 1, !tbaa !29
  br label %pred.store.continue1171

pred.store.continue1171:                          ; preds = %pred.store.if1170, %pred.store.continue1169
  %i.ye = extractelement <8 x i1> %i.xw, i64 3
  br i1 %i.ye, label %pred.store.if1172, label %pred.store.continue1173

pred.store.if1172:                                ; preds = %pred.store.continue1171
  %i.yf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 3
  store i8 4, ptr %i.yg, align 1, !tbaa !29
  br label %pred.store.continue1173

pred.store.continue1173:                          ; preds = %pred.store.if1172, %pred.store.continue1171
  %i.yh = extractelement <8 x i1> %i.xw, i64 4
  br i1 %i.yh, label %pred.store.if1174, label %pred.store.continue1175

pred.store.if1174:                                ; preds = %pred.store.continue1173
  %i.yi = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  store i8 4, ptr %i.yj, align 1, !tbaa !29
  br label %pred.store.continue1175

pred.store.continue1175:                          ; preds = %pred.store.if1174, %pred.store.continue1173
  %i.yk = extractelement <8 x i1> %i.xw, i64 5
  br i1 %i.yk, label %pred.store.if1176, label %pred.store.continue1177

pred.store.if1176:                                ; preds = %pred.store.continue1175
  %i.yl = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 5
  store i8 4, ptr %i.ym, align 1, !tbaa !29
  br label %pred.store.continue1177

pred.store.continue1177:                          ; preds = %pred.store.if1176, %pred.store.continue1175
  %i.yn = extractelement <8 x i1> %i.xw, i64 6
  br i1 %i.yn, label %pred.store.if1178, label %pred.store.continue1179

pred.store.if1178:                                ; preds = %pred.store.continue1177
  %i.yo = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 6
  store i8 4, ptr %i.yp, align 1, !tbaa !29
  br label %pred.store.continue1179

pred.store.continue1179:                          ; preds = %pred.store.if1178, %pred.store.continue1177
  %i.yq = extractelement <8 x i1> %i.xw, i64 7
  br i1 %i.yq, label %pred.store.if1180, label %pred.store.continue1181

pred.store.if1180:                                ; preds = %pred.store.continue1179
  %i.yr = getelementptr inbounds nuw i8, ptr %i.jd, i64 %index1164
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 7
  store i8 4, ptr %i.ys, align 1, !tbaa !29
  br label %pred.store.continue1181

pred.store.continue1181:                          ; preds = %pred.store.if1180, %pred.store.continue1179
  %index.next1182 = add nuw i64 %index1164, 8     ; 2 uses
  %i.yt = icmp eq i64 %index.next1182, %n.vec1163
  br i1 %i.yt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %pred.store.continue1181
  %cmp.n1183 = icmp eq i64 %.0702, %n.vec1163
  br i1 %cmp.n1183, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i.preheader

.lr.ph323.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0322.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1163, %vec.epilog.middle.block ]
  br label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader, %bb.bn
  %.0322.i = phi i64 [ %i.yx, %bb.bn ], [ %.0322.i.ph, %.lr.ph323.i.preheader ] ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0322.i ; 2 uses
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !29
  %i.yw = icmp eq i8 %i.yv, 1
  br i1 %i.yw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph323.i
  store i8 4, ptr %i.yu, align 1, !tbaa !29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph323.i
  %i.yx = add nuw i64 %.0322.i, 1                 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %i.yx, %.0702
  br i1 %exitcond350.not.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i, !llvm.loop !80

_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit: ; preds = %bb.bn, %middle.block, %vec.epilog.middle.block, %bb.p, %.loopexit284.i
  %i.yy = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.yz = icmp ugt i64 %.0702, 1537228672809129301
  %i.za = mul nuw i64 %.0702, 12
  %i.zb = select i1 %i.yz, i64 -1, i64 %i.za
  %i.zc = invoke noundef ptr %i.yy(i64 noundef %i.zb)
          to label %bb.bo unwind label %bb.bw, !inline_history !5 ; 37 uses

bb.bo:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.zd = add nuw nsw i64 %i.je, 4                ; 3 uses
  store i64 %i.zd, ptr %i.ek, align 8, !tbaa !26
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jn
  store ptr %i.zc, ptr %i.ze, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.zf = call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.zc, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull %i.b) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.not402 = icmp eq i64 %9, 0
  br i1 %.not402, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.preheader729.preheader

.preheader729.preheader:                          ; preds = %bb.bo
  %xtraiter1307 = and i64 %9, 1
  %i.zg = icmp eq i64 %9, 1
  br i1 %i.zg, label %.preheader729.epil.preheader, label %.preheader729.preheader.new

.preheader729.preheader.new:                      ; preds = %.preheader729.preheader
  %unroll_iter1312 = and i64 %9, -2
  br label %.preheader729

.unr-lcssa:                                       ; preds = %bb.bz
  %lcmp.mod1309.not = icmp eq i64 %xtraiter1307, 0
  br i1 %lcmp.mod1309.not, label %.epilog-lcssa, label %.preheader729.epil.preheader

.preheader729.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader729.preheader
  %.0349774.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %i.aan, %.unr-lcssa ] ; 2 uses
  %.0350773.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %.1351.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod1311 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod1311)
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774.epil.init
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !44
  %i.zj = fcmp ogt float %i.zi, 0.000000e+00
  br i1 %i.zj, label %bb.bp, label %.epilog-lcssa

bb.bp:                                            ; preds = %.preheader729.epil.preheader
  %i.zk = trunc i64 %.0349774.epil.init to i32
  %i.zl = add nuw nsw i64 %.0350773.epil.init, 1
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773.epil.init
  store i32 %i.zk, ptr %i.zm, align 4, !tbaa !28
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader729.epil.preheader, %bb.bp, %.unr-lcssa
  %.1351.lcssa = phi i64 [ %.1351.1, %.unr-lcssa ], [ %i.zl, %bb.bp ], [ %.0350773.epil.init, %.preheader729.epil.preheader ] ; 15 uses
  %i.zn = mul i64 %.1351.lcssa, %.0702            ; 2 uses
  %i.zo = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.zp = icmp ugt i64 %i.zn, 4611686018427387903
  %i.zq = shl nuw i64 %i.zn, 2
  %i.zr = select i1 %i.zp, i64 -1, i64 %i.zq
  %i.zs = invoke noundef ptr %i.zo(i64 noundef %i.zr)
          to label %bb.ca unwind label %bb.cb, !inline_history !6 ; 7 uses

bb.bq:                                            ; preds = %.noexc437, %bb.i
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.br:                                            ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bs:                                            ; preds = %bb.k, %bb.l
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bt:                                            ; preds = %bb.m
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bu:                                            ; preds = %bb.n
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bv:                                            ; preds = %bb.o
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bw:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.preheader729:                                    ; preds = %bb.bz, %.preheader729.preheader.new
  %.0349774 = phi i64 [ 0, %.preheader729.preheader.new ], [ %i.aan, %bb.bz ] ; 4 uses
  %.0350773 = phi i64 [ 0, %.preheader729.preheader.new ], [ %.1351.1, %bb.bz ] ; 3 uses
  %niter1313 = phi i64 [ 0, %.preheader729.preheader.new ], [ %niter1313.next.1, %bb.bz ]
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !44
  %i.aac = fcmp ogt float %i.aab, 0.000000e+00
  br i1 %i.aac, label %bb.bx, label %.preheader729.1

bb.bx:                                            ; preds = %.preheader729
  %i.aad = trunc i64 %.0349774 to i32
  %i.aae = add nuw nsw i64 %.0350773, 1
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773
  store i32 %i.aad, ptr %i.aaf, align 4, !tbaa !28
  br label %.preheader729.1

.preheader729.1:                                  ; preds = %.preheader729, %bb.bx
  %.1351 = phi i64 [ %i.aae, %bb.bx ], [ %.0350773, %.preheader729 ] ; 3 uses
  %i.aag = or disjoint i64 %.0349774, 1           ; 2 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aag
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !44
  %i.aaj = fcmp ogt float %i.aai, 0.000000e+00
  br i1 %i.aaj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.preheader729.1
  %i.aak = trunc i64 %i.aag to i32
  %i.aal = add nuw nsw i64 %.1351, 1
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.1351
  store i32 %i.aak, ptr %i.aam, align 4, !tbaa !28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.preheader729.1
  %.1351.1 = phi i64 [ %i.aal, %bb.by ], [ %.1351, %.preheader729.1 ] ; 3 uses
  %i.aan = add nuw i64 %.0349774, 2               ; 2 uses
  %niter1313.next.1 = add nuw i64 %niter1313, 2   ; 2 uses
  %niter1313.ncmp.1 = icmp eq i64 %niter1313.next.1, %unroll_iter1312
  br i1 %niter1313.ncmp.1, label %.unr-lcssa, label %.preheader729, !llvm.loop !81

bb.ca:                                            ; preds = %.epilog-lcssa
  %i.aao = add nuw nsw i64 %i.je, 5               ; 5 uses
  store i64 %i.aao, ptr %i.ek, align 8, !tbaa !26
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.zd
  store ptr %i.zs, ptr %i.aap, align 8, !tbaa !27
  %i.aaq = lshr i64 %7, 2                         ; 2 uses
  br i1 %.not88.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.ca
  %.not33.i = icmp eq i64 %.1351.lcssa, 0
  br i1 %.not33.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.split.us.i

.lr.ph29.split.us.i:                              ; preds = %.lr.ph29.i
  %.not.i458 = icmp eq ptr %.0379, null
  br i1 %.not.i458, label %.lr.ph.us.us.i.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph29.split.us.i
  %xtraiter1314 = and i64 %.1351.lcssa, 1
  %i.aar = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1318 = and i64 %.1351.lcssa, -2
  %lcmp.mod1316.not = icmp eq i64 %xtraiter1314, 0
  %lcmp.mod1317 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph29.split.us.i
  %xtraiter1321 = and i64 %.1351.lcssa, 1
  %i.aas = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1325 = and i64 %.1351.lcssa, -2
  %lcmp.mod1323.not = icmp eq i64 %xtraiter1321, 0
  %lcmp.mod1324 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.027.us.us.i = phi i64 [ %i.acb, %._crit_edge.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ] ; 3 uses
  %i.aat = and i64 %.027.us.us.i, 4294967295
  %i.aau = mul i64 %i.aat, %i.aaq
  %i.aav = getelementptr [4 x i8], ptr %6, i64 %i.aau ; 3 uses
  %i.aaw = mul i64 %.027.us.us.i, %.1351.lcssa
  %i.aax = getelementptr [4 x i8], ptr %i.zs, i64 %i.aaw ; 3 uses
  br i1 %i.aas, label %.epil.preheader1320, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %.02326.us.us.i = phi i64 [ %i.abr, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %niter1326 = phi i64 [ %niter1326.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.us.i
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !28
  %i.aba = zext i32 %i.aaz to i64                 ; 2 uses
  %i.abb = getelementptr [4 x i8], ptr %i.aav, i64 %i.aba
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !44
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aba
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !44
  %i.abf = fmul float %i.abc, %i.abe
  %i.abg = getelementptr [4 x i8], ptr %i.aax, i64 %.02326.us.us.i
  store float %i.abf, ptr %i.abg, align 4, !tbaa !44
  %i.abh = or disjoint i64 %.02326.us.us.i, 1     ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abh
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !28
  %i.abk = zext i32 %i.abj to i64                 ; 2 uses
  %i.abl = getelementptr [4 x i8], ptr %i.aav, i64 %i.abk
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !44
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.abk
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !44
  %i.abp = fmul float %i.abm, %i.abo
  %i.abq = getelementptr [4 x i8], ptr %i.aax, i64 %i.abh
  store float %i.abp, ptr %i.abq, align 4, !tbaa !44
  %i.abr = add nuw nsw i64 %.02326.us.us.i, 2     ; 2 uses
  %niter1326.next.1 = add nuw i64 %niter1326, 2   ; 2 uses
  %niter1326.ncmp.1 = icmp eq i64 %niter1326.next.1, %unroll_iter1325
end_hunk_1
begin_hunk_2_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cux
  %i.cuz = load i32, ptr %i.cuy, align 4, !tbaa !28 ; 2 uses
  %i.cva = zext i32 %i.cur to i64
  %i.cvb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cva
  %i.cvc = load i32, ptr %i.cvb, align 4, !tbaa !28 ; 2 uses
  %i.cvd = zext i32 %i.cuw to i64
  %i.cve = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cvd
  %i.cvf = load i32, ptr %i.cve, align 4, !tbaa !28 ; 2 uses
  %.not.i563 = icmp eq i32 %i.cuz, %i.cvc
  %.not38.i = icmp eq i32 %i.cuz, %i.cvf
  %.not39.i = icmp eq i32 %i.cvc, %i.cvf
  %i.cvg = or i1 %.not38.i, %.not39.i
  %or.cond40.i = select i1 %.not.i563, i1 true, i1 %i.cvg
  br i1 %or.cond40.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.i562
  %i.cvh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03441.i ; 3 uses
  store i32 %i.cum, ptr %i.cvh, align 4, !tbaa !28
  %i.cvi = getelementptr i8, ptr %i.cvh, i64 4
  store i32 %i.cur, ptr %i.cvi, align 4, !tbaa !28
  %i.cvj = getelementptr i8, ptr %i.cvh, i64 8
  store i32 %i.cuw, ptr %i.cvj, align 4, !tbaa !28
  %i.cvk = add i64 %.03441.i, 3
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %.lr.ph.i562
  %.1.i564 = phi i64 [ %i.cvk, %bb.gz ], [ %.03441.i, %.lr.ph.i562 ] ; 4 uses
  %i.cvl = add i64 %.042.i, 3                     ; 2 uses
  %i.cvm = icmp ult i64 %i.cvl, %.0339782
  br i1 %i.cvm, label %.lr.ph.i562, label %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit, !llvm.loop !112

_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit:    ; preds = %bb.ha
  %i.cvn = icmp ugt i64 %.1.i564, %11
  %or.cond428 = and i1 %.not405, %i.cvn
  %i.cvo = fcmp ole float %.2698779, %i.cuh
  %or.cond718.not = select i1 %or.cond428, i1 %i.cvo, i1 false
  br i1 %or.cond718.not, label %.lr.ph.i567, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit

.lr.ph.i567:                                      ; preds = %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit, %bb.hc
  %.038.i = phi i64 [ %i.cwe, %bb.hc ], [ 0, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ] ; 2 uses
  %.03237.i = phi float [ %.1.i568, %bb.hc ], [ f0x7F7FFFFF, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ] ; 3 uses
  %.03336.i = phi i64 [ %.134.i, %bb.hc ], [ 0, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ] ; 3 uses
  %i.cvp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.cvq = load i32, ptr %i.cvp, align 4, !tbaa !28 ; 2 uses
  %i.cvr = zext i32 %i.cvq to i64
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %i.cvr
  %i.cvt = load i32, ptr %i.cvs, align 4, !tbaa !28
  %i.cvu = zext i32 %i.cvt to i64
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %i.cvu
  %i.cvw = load float, ptr %i.cvv, align 4, !tbaa !44 ; 3 uses
  %i.cvx = fcmp ogt float %i.cvw, %i.cuh
  br i1 %i.cvx, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph.i567
  %i.cvy = getelementptr i8, ptr %i.cvp, i64 4
  %i.cvz = fcmp ogt float %.03237.i, %i.cvw
  %..032.i = select i1 %i.cvz, float %i.cvw, float %.03237.i
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03336.i ; 2 uses
  %i.cwb = getelementptr i8, ptr %i.cwa, i64 4
  %i.cwc = load <2 x i32>, ptr %i.cvy, align 4, !tbaa !28
  store i32 %i.cvq, ptr %i.cwa, align 4, !tbaa !28
  store <2 x i32> %i.cwc, ptr %i.cwb, align 4, !tbaa !28
  %i.cwd = add i64 %.03336.i, 3
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.i567
  %.134.i = phi i64 [ %i.cwd, %bb.hb ], [ %.03336.i, %.lr.ph.i567 ] ; 2 uses
  %.1.i568 = phi float [ %..032.i, %bb.hb ], [ %.03237.i, %.lr.ph.i567 ] ; 2 uses
  %i.cwe = add i64 %.038.i, 3                     ; 2 uses
  %i.cwf = icmp ult i64 %i.cwe, %.1.i564
  br i1 %i.cwf, label %.lr.ph.i567, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, !llvm.loop !8

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit: ; preds = %bb.hc, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit
  %.3699 = phi float [ %.2698779, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ], [ %.1.i568, %bb.hc ] ; 2 uses
  %.3 = phi i64 [ %.1.i564, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ], [ %.134.i, %bb.hc ] ; 3 uses
  %i.cwg = icmp ugt i64 %.3, %11
  br i1 %i.cwg, label %.preheader.i505.preheader, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread: ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit, %.lr.ph784.split.us, %bb.dn
  %.2698.lcssa = phi float [ %.1697, %.lr.ph784.split.us ], [ %.1697, %bb.dn ], [ %.2698779, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit ], [ %.2698779, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit ], [ %.3699, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 2 uses
  %.0339.lcssa = phi i64 [ %2, %.lr.ph784.split.us ], [ %2, %bb.dn ], [ %.0339782, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit ], [ %.0339782, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit ], [ %.3, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 3 uses
  %.2690 = phi float [ 0.000000e+00, %.lr.ph784.split.us ], [ 0.000000e+00, %bb.dn ], [ %.8, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit ], [ %.0688780, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit ], [ %.8, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 2 uses
  %not..not405 = xor i1 %.not405, true
  %i.cwh = icmp ule i64 %.0339.lcssa, %11
  %or.cond430810 = or i1 %i.cwh, %not..not405
  %i.cwi = fcmp ugt float %.2698.lcssa, %i.bfd
  %or.cond719811 = select i1 %or.cond430810, i1 true, i1 %i.cwi
  br i1 %or.cond719811, label %.critedge, label %.lr.ph817

.lr.ph817:                                        ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread
  %xtraiter1377 = and i64 %.0343, 1
  %i.cwj = icmp eq i64 %.0343, 1                  ; 0 uses
  %unroll_iter1382 = and i64 %.0343, 4294967294
  %lcmp.mod1379.not = icmp eq i64 %xtraiter1377, 0
  %lcmp.mod1381 = trunc i64 %.0343 to i1
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph817, %bb.hg
  %.0334816 = phi i1 [ true, %.lr.ph817 ], [ false, %bb.hg ]
  %.5815 = phi i64 [ %.0339.lcssa, %.lr.ph817 ], [ %.134.i575, %bb.hg ] ; 3 uses
  %.3691813 = phi float [ %.2690, %.lr.ph817 ], [ %i.cxu, %bb.hg ] ; 3 uses
  %.5701812 = phi float [ %.2698.lcssa, %.lr.ph817 ], [ %.1.i576, %bb.hg ]
  %i.cwk = fmul float %.5701812, 1.500000e+00     ; 2 uses
  %i.cwl = fcmp olt float %i.cwk, %i.bfd
  %i.cwm = select i1 %i.cwl, float %i.cwk, float %i.bfd ; 4 uses
  switch i64 %.0343, label %.lr.ph808 [
    i64 0, label %.lr.ph.i571.preheader
    i64 1, label %.lr.ph808.epil.preheader
  ]

.lr.ph.i571.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph808
  br i1 %lcmp.mod1379.not, label %.lr.ph.i571.preheader, label %.lr.ph808.epil.preheader

.lr.ph808.epil.preheader:                         ; preds = %bb.hd, %.lr.ph.i571.preheader.loopexit.unr-lcssa
  %.0332806.epil.init = phi i64 [ 0, %bb.hd ], [ %i.cxs, %.lr.ph.i571.preheader.loopexit.unr-lcssa ]
  %.0333805.epil.init = phi float [ 0.000000e+00, %bb.hd ], [ %.1.1, %.lr.ph.i571.preheader.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1381)
  %i.cwn = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332806.epil.init
  %i.cwo = load float, ptr %i.cwn, align 4, !tbaa !44 ; 3 uses
  %i.cwp = fcmp ule float %i.cwo, %.0333805.epil.init
  %i.cwq = fcmp ugt float %i.cwo, %i.cwm
  %or.cond431.epil = select i1 %i.cwp, i1 true, i1 %i.cwq
  %.1.epil = select i1 %or.cond431.epil, float %.0333805.epil.init, float %i.cwo
  br label %.lr.ph.i571.preheader

.lr.ph.i571.preheader:                            ; preds = %.lr.ph808.epil.preheader, %.lr.ph.i571.preheader.loopexit.unr-lcssa, %bb.hd
  %.0333.lcssa = phi float [ 0.000000e+00, %bb.hd ], [ %.1.1, %.lr.ph.i571.preheader.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph808.epil.preheader ] ; 2 uses
  br label %.lr.ph.i571

.lr.ph.i571:                                      ; preds = %.lr.ph.i571.preheader, %bb.hf
  %.038.i572 = phi i64 [ %i.cxg, %bb.hf ], [ 0, %.lr.ph.i571.preheader ] ; 2 uses
  %.03237.i573 = phi float [ %.1.i576, %bb.hf ], [ f0x7F7FFFFF, %.lr.ph.i571.preheader ] ; 3 uses
  %.03336.i574 = phi i64 [ %.134.i575, %bb.hf ], [ 0, %.lr.ph.i571.preheader ] ; 3 uses
  %i.cwr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.038.i572 ; 2 uses
  %i.cws = load i32, ptr %i.cwr, align 4, !tbaa !28 ; 2 uses
  %i.cwt = zext i32 %i.cws to i64
  %i.cwu = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %i.cwt
  %i.cwv = load i32, ptr %i.cwu, align 4, !tbaa !28
  %i.cww = zext i32 %i.cwv to i64
  %i.cwx = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %i.cww
  %i.cwy = load float, ptr %i.cwx, align 4, !tbaa !44 ; 3 uses
  %i.cwz = fcmp ogt float %i.cwy, %i.cwm
  br i1 %i.cwz, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.lr.ph.i571
  %i.cxa = getelementptr i8, ptr %i.cwr, i64 4
  %i.cxb = fcmp ogt float %.03237.i573, %i.cwy
  %..032.i580 = select i1 %i.cxb, float %i.cwy, float %.03237.i573
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03336.i574 ; 2 uses
  %i.cxd = getelementptr i8, ptr %i.cxc, i64 4
  %i.cxe = load <2 x i32>, ptr %i.cxa, align 4, !tbaa !28
  store i32 %i.cws, ptr %i.cxc, align 4, !tbaa !28
  store <2 x i32> %i.cxe, ptr %i.cxd, align 4, !tbaa !28
  %i.cxf = add i64 %.03336.i574, 3
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph.i571
  %.134.i575 = phi i64 [ %i.cxf, %bb.he ], [ %.03336.i574, %.lr.ph.i571 ] ; 5 uses
  %.1.i576 = phi float [ %..032.i580, %bb.he ], [ %.03237.i573, %.lr.ph.i571 ] ; 3 uses
  %i.cxg = add i64 %.038.i572, 3                  ; 2 uses
  %i.cxh = icmp ult i64 %i.cxg, %.5815
  br i1 %i.cxh, label %.lr.ph.i571, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581, !llvm.loop !8

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581: ; preds = %bb.hf
  %i.cxi = icmp ne i64 %.134.i575, %.5815
  %or.cond = or i1 %.0334816, %i.cxi
  br i1 %or.cond, label %bb.hg, label %.critedge

.lr.ph808:                                        ; preds = %bb.hd, %.lr.ph808
  %.0332806 = phi i64 [ %i.cxs, %.lr.ph808 ], [ 0, %bb.hd ] ; 3 uses
  %.0333805 = phi float [ %.1.1, %.lr.ph808 ], [ 0.000000e+00, %bb.hd ] ; 2 uses
  %niter1383 = phi i64 [ %niter1383.next.1, %.lr.ph808 ], [ 0, %bb.hd ]
  %i.cxj = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332806
  %i.cxk = load float, ptr %i.cxj, align 4, !tbaa !44 ; 3 uses
  %i.cxl = fcmp ule float %i.cxk, %.0333805
  %i.cxm = fcmp ugt float %i.cxk, %i.cwm
  %or.cond431 = select i1 %i.cxl, i1 true, i1 %i.cxm
  %.1 = select i1 %or.cond431, float %.0333805, float %i.cxk ; 2 uses
  %i.cxn = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332806
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxn, i64 4
  %i.cxp = load float, ptr %i.cxo, align 4, !tbaa !44 ; 3 uses
  %i.cxq = fcmp ule float %i.cxp, %.1
  %i.cxr = fcmp ugt float %i.cxp, %i.cwm
  %or.cond431.1 = select i1 %i.cxq, i1 true, i1 %i.cxr
  %.1.1 = select i1 %or.cond431.1, float %.1, float %i.cxp ; 3 uses
  %i.cxs = add nuw nsw i64 %.0332806, 2           ; 2 uses
  %niter1383.next.1 = add nuw nsw i64 %niter1383, 2 ; 2 uses
  %niter1383.ncmp.1 = icmp eq i64 %niter1383.next.1, %unroll_iter1382
  br i1 %niter1383.ncmp.1, label %.lr.ph.i571.preheader.loopexit.unr-lcssa, label %.lr.ph808, !llvm.loop !113

bb.hg:                                            ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581
  %i.cxt = fcmp olt float %.3691813, %.0333.lcssa
  %i.cxu = select i1 %i.cxt, float %.0333.lcssa, float %.3691813 ; 2 uses
  %i.cxv = icmp ule i64 %.134.i575, %11
  %i.cxw = fcmp ugt float %.1.i576, %i.bfd
  %or.cond719 = select i1 %i.cxv, i1 true, i1 %i.cxw
  br i1 %or.cond719, label %.critedge, label %bb.hd

.critedge:                                        ; preds = %bb.hg, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread
  %.3691.lcssa = phi float [ %.2690, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread ], [ %.3691813, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581 ], [ %i.cxu, %bb.hg ]
  %.5.lcssa = phi i64 [ %.0339.lcssa, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread ], [ %.5815, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581 ], [ %.134.i575, %bb.hg ] ; 13 uses
  %i.cxx = and i32 %13, 536870912
  %.not408 = icmp eq i32 %i.cxx, 0
  br i1 %.not408, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %bb.hh

bb.hh:                                            ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr align 1 %i.bew, i8 0, i64 %.0702, i1 false)
  %.not837 = icmp eq i64 %.5.lcssa, 0
  br i1 %.not837, label %._crit_edge825, label %.lr.ph824.preheader

.lr.ph824.preheader:                              ; preds = %bb.hh
  %xtraiter1384 = and i64 %.5.lcssa, 1
  %i.cxy = icmp eq i64 %.5.lcssa, 1
  br i1 %i.cxy, label %.lr.ph824.epil.preheader, label %.lr.ph824.preheader.new

.lr.ph824.preheader.new:                          ; preds = %.lr.ph824.preheader
  %unroll_iter1388 = and i64 %.5.lcssa, -2
  br label %.lr.ph824

._crit_edge825.loopexit.unr-lcssa:                ; preds = %.lr.ph824
  %lcmp.mod1386.not = icmp eq i64 %xtraiter1384, 0
  br i1 %lcmp.mod1386.not, label %._crit_edge825, label %.lr.ph824.epil.preheader

.lr.ph824.epil.preheader:                         ; preds = %._crit_edge825.loopexit.unr-lcssa, %.lr.ph824.preheader
  %.0331822.epil.init = phi i64 [ 0, %.lr.ph824.preheader ], [ %i.dlx, %._crit_edge825.loopexit.unr-lcssa ]
  %lcmp.mod1387 = trunc i64 %.5.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1387)
  %i.cxz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331822.epil.init
  %i.cya = load i32, ptr %i.cxz, align 4, !tbaa !28
  %i.cyb = zext i32 %i.cya to i64                 ; 2 uses
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.cyb
  store i8 1, ptr %i.cyc, align 1, !tbaa !29
  %i.cyd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cyb
  %i.cye = load i32, ptr %i.cyd, align 4, !tbaa !28
  %i.cyf = zext i32 %i.cye to i64
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.cyf
  store i8 1, ptr %i.cyg, align 1, !tbaa !29
  br label %._crit_edge825

._crit_edge825:                                   ; preds = %.lr.ph824.epil.preheader, %._crit_edge825.loopexit.unr-lcssa, %bb.hh
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %.5.lcssa, i64 noundef %.0702, ptr noundef %i.iv)
  br i1 %.not88.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.i582

.lr.ph.i582:                                      ; preds = %._crit_edge825
  %.not70.i = icmp eq ptr %.0346, null
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, %.lr.ph.i582
  %.06245.i = phi i64 [ 0, %.lr.ph.i582 ], [ %i.dlf, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i ] ; 13 uses
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.bew, i64 %.06245.i
  %i.cyi = load i8, ptr %i.cyh, align 1, !tbaa !29
  %.not.i584 = icmp eq i8 %i.cyi, 0
  br i1 %.not.i584, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.06245.i
  %i.cyk = load i8, ptr %i.cyj, align 1, !tbaa !29
  switch i8 %i.cyk, label %bb.hk [
    i8 4, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
    i8 2, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
    i8 1, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
  ]

bb.hk:                                            ; preds = %bb.hj
  %i.cyl = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.06245.i
  %i.cym = load i32, ptr %i.cyl, align 4, !tbaa !28
  %i.cyn = zext i32 %i.cym to i64                 ; 2 uses
  %.not67.i = icmp eq i64 %.06245.i, %i.cyn
  br i1 %.not67.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cyo = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.cyn
  %i.cyp = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.06245.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cyp, ptr noundef nonnull align 4 dereferenceable(12) %i.cyo, i64 12, i1 false), !tbaa.struct !142
  br label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

bb.hm:                                            ; preds = %bb.hk
  %i.cyq = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.06245.i ; 4 uses
  %i.cyr = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %.06245.i ; 11 uses
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 8
  %.sroa.1819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 12
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 16
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 20
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 24
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 28
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 32
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 36
  %.sroa.33.0.copyload.i = load float, ptr %.sroa.33.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.011.0.copyload.i = load float, ptr %i.cyr, align 4, !tbaa !44 ; 3 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.38.0.copyload.i = load float, ptr %.sroa.38.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.43.0.copyload.i = load float, ptr %.sroa.43.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.48.0.copyload.i = load float, ptr %.sroa.48.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyr, i64 40
  %.sroa.50.0.copyload.i = load float, ptr %.sroa.50.0..sroa_idx.i, align 4, !tbaa !44 ; 4 uses
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cyq, i64 4 ; 2 uses
  %i.cyt = load <2 x float>, ptr %i.cyq, align 4, !tbaa !44 ; 3 uses
  %i.cyu = load float, ptr %i.cys, align 4, !tbaa !50 ; 6 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyq, i64 8 ; 2 uses
  %i.cyw = load float, ptr %i.cyv, align 4, !tbaa !46 ; 8 uses
  %i.cyx = fmul float %.sroa.50.0.copyload.i, f0x38D1B717 ; 6 uses
  %i.cyy = extractelement <2 x float> %i.cyt, i64 0 ; 7 uses
  %i.cyz = fmul float %i.cyy, %i.cyx
  %i.cza = fsub float %.sroa.33.0.copyload.i, %i.cyz ; 2 uses
  %i.czb = fmul float %i.cyx, %i.cyu
  %i.czc = load <2 x float>, ptr %.sroa.1819.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %i.czd = shufflevector <2 x float> %i.czc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.cze = insertelement <4 x float> %i.czd, float %.sroa.38.0.copyload.i, i64 0
  %i.czf = insertelement <4 x float> %i.cze, float %.sroa.011.0.copyload.i, i64 3 ; 2 uses
  %i.czg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.czb, i64 0
  %i.czh = insertelement <4 x float> %i.czg, float %i.cyx, i64 3 ; 2 uses
  %i.czi = fsub <4 x float> %i.czf, %i.czh
  %i.czj = fadd <4 x float> %i.czf, %i.czh
  %i.czk = shufflevector <4 x float> %i.czi, <4 x float> %i.czj, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.czl = fmul float %i.cyx, %i.cyw
  %i.czm = load <2 x float>, ptr %.sroa.814.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !44
  %i.czn = shufflevector <2 x float> %i.czm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.czo = insertelement <4 x float> %i.czn, float %.sroa.28.0.copyload.i, i64 0
  %i.czp = insertelement <4 x float> %i.czo, float %.sroa.43.0.copyload.i, i64 3 ; 2 uses
  %i.czq = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cyx, i64 1
  %i.czr = insertelement <4 x float> %i.czq, float %i.czl, i64 3
  %i.czs = shufflevector <4 x float> %i.czr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.czt = fadd <4 x float> %i.czp, %i.czs
  %i.czu = fsub <4 x float> %i.czp, %i.czs
  %i.czv = shufflevector <4 x float> %i.czt, <4 x float> %i.czu, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.czw = fadd float %.sroa.50.0.copyload.i, %i.cyx ; 4 uses
  %i.czx = shufflevector <4 x float> %i.czv, <4 x float> %i.czk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not403, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.czy = trunc nuw i64 %.06245.i to i32
  %i.czz = shufflevector <4 x float> %i.czv, <4 x float> %i.czk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.daa = insertelement <8 x float> poison, float %i.czw, i64 0
  %i.dab = shufflevector <8 x float> %i.daa, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, %bb.hn
  %.sroa.33.0.i = phi float [ %i.cza, %bb.hn ], [ %i.dbq, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %.0.i = phi i32 [ %i.czy, %bb.hn ], [ %i.dbu, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.dac = phi <8 x float> [ %i.czz, %bb.hn ], [ %i.dbr, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.dad = zext i32 %.0.i to i64                  ; 3 uses
  %i.dae = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dad ; 5 uses
  %i.daf = mul i64 %.0330, %i.dad
  %i.dag = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.daf
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dae, i64 16
  %i.dai = getelementptr inbounds nuw i8, ptr %i.dae, i64 24
  %i.daj = load float, ptr %i.dai, align 4, !tbaa !51
  %i.dak = call float @llvm.fmuladd.f32(float %i.daj, float %i.czw, float %.sroa.33.0.i)
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dae, i64 28
  %i.dam = load <4 x float>, ptr %i.dae, align 4, !tbaa !44 ; 2 uses
  %i.dan = load <2 x float>, ptr %i.dah, align 4, !tbaa !44 ; 2 uses
  %i.dao = load <2 x float>, ptr %i.dal, align 4, !tbaa !44
  %i.dap = shufflevector <2 x float> %i.dan, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.daq = shufflevector <4 x float> %i.dap, <4 x float> %i.dam, <8 x i32> <i32 1, i32 6, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dar = shufflevector <2 x float> %i.dao, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.das = shufflevector <8 x float> %i.daq, <8 x float> %i.dar, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 8, i32 poison, i32 poison, i32 poison>
  %i.dat = shufflevector <2 x float> %i.dan, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dau = shufflevector <8 x float> %i.das, <8 x float> %i.dat, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.dav = shufflevector <4 x float> %i.dam, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.daw = shufflevector <8 x float> %i.dau, <8 x float> %i.dav, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 8>
  %i.dax = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.daw, <8 x float> %i.dab, <8 x float> %i.dac)
  %i.day = getelementptr inbounds nuw i8, ptr %i.dae, i64 40
  %i.daz = load float, ptr %i.day, align 4, !tbaa !48 ; 2 uses
  %i.dba = fcmp oeq float %i.daz, 0.000000e+00
  %i.dbb = fdiv float %i.czw, %i.daz
  %i.dbc = select i1 %i.dba, float 0.000000e+00, float %i.dbb ; 2 uses
  %i.dbd = insertelement <8 x float> poison, float %i.dbc, i64 0
  %i.dbe = shufflevector <8 x float> %i.dbd, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %bb.ho
  %.087.i.i = phi i64 [ 0, %bb.ho ], [ %i.dbs, %bb.hp ] ; 2 uses
  %i.dbf = phi float [ %i.dak, %bb.ho ], [ %i.dbq, %bb.hp ]
  %i.dbg = phi <8 x float> [ %i.dax, %bb.ho ], [ %i.dbr, %bb.hp ]
  %i.dbh = getelementptr inbounds nuw [16 x i8], ptr %i.dag, i64 %.087.i.i
  %i.dbi = load <4 x float>, ptr %i.dbh, align 4, !tbaa !44 ; 3 uses
  %i.dbj = fneg <4 x float> %i.dbi                ; 2 uses
  %i.dbk = shufflevector <4 x float> %i.dbj, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 1, i32 0>
  %i.dbl = shufflevector <4 x float> %i.dbi, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0>
  %i.dbm = fmul <8 x float> %i.dbl, %i.dbk
  %i.dbn = extractelement <4 x float> %i.dbj, i64 3
  %i.dbo = extractelement <4 x float> %i.dbi, i64 0
  %i.dbp = fmul float %i.dbo, %i.dbn
  %i.dbq = call float @llvm.fmuladd.f32(float %i.dbp, float %i.dbc, float %i.dbf) ; 4 uses
  %i.dbr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dbm, <8 x float> %i.dbe, <8 x float> %i.dbg) ; 4 uses
  %i.dbs = add nuw i64 %.087.i.i, 1               ; 2 uses
  %exitcond.not.i.i587 = icmp eq i64 %i.dbs, %.0330
  br i1 %exitcond.not.i.i587, label %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, label %bb.hp, !llvm.loop !114

_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i: ; preds = %bb.hp
  %i.dbt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.dad
  %i.dbu = load i32, ptr %i.dbt, align 4, !tbaa !28 ; 2 uses
  %i.dbv = zext i32 %i.dbu to i64
  %.not69.i = icmp eq i64 %.06245.i, %i.dbv
  br i1 %.not69.i, label %bb.hq, label %bb.ho, !llvm.loop !115

bb.hq:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i
  br i1 %.not70.i, label %bb.hs, label %bb.hr
end_hunk_2
begin_hunk_3_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %.not.us65.i = icmp eq i8 %i.dsc, 0
  br i1 %.not.us65.i, label %.loopexit.us69.i, label %bb.it

bb.it:                                            ; preds = %.lr.ph.split.split.split.us.i
  %i.dsd = and i64 %.05060.us64.i, 4294967295     ; 3 uses
  %i.dse = getelementptr inbounds nuw i8, ptr %10, i64 %i.dsd
  %i.dsf = load i8, ptr %i.dse, align 1, !tbaa !29
  %i.dsg = and i8 %i.dsf, 1
  %.not56.us66.i = icmp eq i8 %i.dsg, 0
  br i1 %.not56.us66.i, label %bb.iu, label %.loopexit.us69.i

bb.iu:                                            ; preds = %bb.it
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.05060.us64.i
  %i.dsi = load i8, ptr %i.dsh, align 1, !tbaa !29
  %.not57.us67.i = icmp eq i8 %i.dsi, 4
  br i1 %.not57.us67.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.dsj = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.05060.us64.i ; 3 uses
  %i.dsk = mul i64 %i.dsd, %i.dpn
  %i.dsl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dsk ; 3 uses
  %i.dsm = load float, ptr %i.dsj, align 4, !tbaa !49
  %i.dsn = call float @llvm.fmuladd.f32(float %i.dsm, float %i.zf, float %i.dpr)
  store float %i.dsn, ptr %i.dsl, align 4, !tbaa !44
  %i.dso = getelementptr inbounds nuw i8, ptr %i.dsj, i64 4
  %i.dsp = load float, ptr %i.dso, align 4, !tbaa !50
  %i.dsq = call float @llvm.fmuladd.f32(float %i.dsp, float %i.zf, float %i.dps)
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsl, i64 4
  store float %i.dsq, ptr %i.dsr, align 4, !tbaa !44
  %i.dss = getelementptr inbounds nuw i8, ptr %i.dsj, i64 8
  %i.dst = load float, ptr %i.dss, align 4, !tbaa !46
  %i.dsu = call float @llvm.fmuladd.f32(float %i.dst, float %i.zf, float %i.dpt)
  %i.dsv = getelementptr inbounds nuw i8, ptr %i.dsl, i64 8
  store float %i.dsu, ptr %i.dsv, align 4, !tbaa !44
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.dsw = mul i64 %.05060.us64.i, %.0330
  %i.dsx = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.dsw ; 3 uses
  %i.dsy = mul i64 %i.dsd, %i.dpo
  %i.dsz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dsy ; 3 uses
  br i1 %i.dsa, label %.epil.preheader1399, label %.new1398

.new1398:                                         ; preds = %bb.iw, %.new1398
  %.059.us68.i = phi i64 [ %i.dtt, %.new1398 ], [ 0, %bb.iw ] ; 4 uses
  %niter1405 = phi i64 [ %niter1405.next.1, %.new1398 ], [ 0, %bb.iw ]
  %i.dta = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.us68.i
  %i.dtb = load i32, ptr %i.dta, align 8, !tbaa !28
  %i.dtc = getelementptr inbounds nuw [4 x i8], ptr %i.dsx, i64 %.059.us68.i
  %i.dtd = load float, ptr %i.dtc, align 4, !tbaa !44
  %i.dte = zext i32 %i.dtb to i64                 ; 2 uses
  %i.dtf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dte
  %i.dtg = load float, ptr %i.dtf, align 4, !tbaa !44
  %i.dth = fdiv float %i.dtd, %i.dtg
  %i.dti = getelementptr inbounds nuw [4 x i8], ptr %i.dsz, i64 %i.dte
  store float %i.dth, ptr %i.dti, align 4, !tbaa !44
  %i.dtj = or disjoint i64 %.059.us68.i, 1        ; 2 uses
  %i.dtk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dtj
  %i.dtl = load i32, ptr %i.dtk, align 4, !tbaa !28
  %i.dtm = getelementptr inbounds nuw [4 x i8], ptr %i.dsx, i64 %i.dtj
  %i.dtn = load float, ptr %i.dtm, align 4, !tbaa !44
  %i.dto = zext i32 %i.dtl to i64                 ; 2 uses
  %i.dtp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dto
  %i.dtq = load float, ptr %i.dtp, align 4, !tbaa !44
  %i.dtr = fdiv float %i.dtn, %i.dtq
  %i.dts = getelementptr inbounds nuw [4 x i8], ptr %i.dsz, i64 %i.dto
  store float %i.dtr, ptr %i.dts, align 4, !tbaa !44
  %i.dtt = add nuw nsw i64 %.059.us68.i, 2        ; 2 uses
  %niter1405.next.1 = add nuw i64 %niter1405, 2   ; 2 uses
  %niter1405.ncmp.1 = icmp eq i64 %niter1405.next.1, %unroll_iter1404
  br i1 %niter1405.ncmp.1, label %.loopexit.us69.i.loopexit.unr-lcssa, label %.new1398, !llvm.loop !125

.loopexit.us69.i.loopexit.unr-lcssa:              ; preds = %.new1398
  br i1 %lcmp.mod1402.not, label %.loopexit.us69.i, label %.epil.preheader1399

.epil.preheader1399:                              ; preds = %.loopexit.us69.i.loopexit.unr-lcssa, %bb.iw
  %.059.us68.i.epil.init = phi i64 [ 0, %bb.iw ], [ %i.dtt, %.loopexit.us69.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1403)
  %i.dtu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.us68.i.epil.init
  %i.dtv = load i32, ptr %i.dtu, align 4, !tbaa !28
  %i.dtw = getelementptr inbounds nuw [4 x i8], ptr %i.dsx, i64 %.059.us68.i.epil.init
  %i.dtx = load float, ptr %i.dtw, align 4, !tbaa !44
  %i.dty = zext i32 %i.dtv to i64                 ; 2 uses
  %i.dtz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dty
  %i.dua = load float, ptr %i.dtz, align 4, !tbaa !44
  %i.dub = fdiv float %i.dtx, %i.dua
  %i.duc = getelementptr inbounds nuw [4 x i8], ptr %i.dsz, i64 %i.dty
  store float %i.dub, ptr %i.duc, align 4, !tbaa !44
  br label %.loopexit.us69.i

.loopexit.us69.i:                                 ; preds = %.epil.preheader1399, %.loopexit.us69.i.loopexit.unr-lcssa, %bb.it, %.lr.ph.split.split.split.us.i
  %i.dud = add nuw i64 %.05060.us64.i, 1          ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.dud, %.0702
  br i1 %exitcond76.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.split.split.us.i, !llvm.loop !120

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.split.i.preheader, %.loopexit.i615
  %.05060.i = phi i64 [ %i.dwi, %.loopexit.i615 ], [ 0, %.lr.ph.split.split.split.i.preheader ] ; 6 uses
  %i.due = getelementptr inbounds nuw i8, ptr %i.bew, i64 %.05060.i
  %i.duf = load i8, ptr %i.due, align 1, !tbaa !29
  %.not.i614 = icmp eq i8 %i.duf, 0
  br i1 %.not.i614, label %.loopexit.i615, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph.split.split.split.i
  %i.dug = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.05060.i
  %i.duh = load i32, ptr %i.dug, align 4, !tbaa !28
  %i.dui = zext i32 %i.duh to i64                 ; 3 uses
  %i.duj = getelementptr inbounds nuw i8, ptr %10, i64 %i.dui
  %i.duk = load i8, ptr %i.duj, align 1, !tbaa !29
  %i.dul = and i8 %i.duk, 1
  %.not56.i = icmp eq i8 %i.dul, 0
  br i1 %.not56.i, label %bb.iy, label %.loopexit.i615

bb.iy:                                            ; preds = %bb.ix
  %i.dum = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.05060.i
  %i.dun = load i8, ptr %i.dum, align 1, !tbaa !29
  %.not57.i = icmp eq i8 %i.dun, 4
  br i1 %.not57.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.duo = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.05060.i ; 3 uses
  %i.dup = mul i64 %i.dpn, %i.dui
  %i.duq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dup ; 3 uses
  %i.dur = load float, ptr %i.duo, align 4, !tbaa !49
  %i.dus = call float @llvm.fmuladd.f32(float %i.dur, float %i.zf, float %i.dpr)
  store float %i.dus, ptr %i.duq, align 4, !tbaa !44
  %i.dut = getelementptr inbounds nuw i8, ptr %i.duo, i64 4
  %i.duu = load float, ptr %i.dut, align 4, !tbaa !50
  %i.duv = call float @llvm.fmuladd.f32(float %i.duu, float %i.zf, float %i.dps)
  %i.duw = getelementptr inbounds nuw i8, ptr %i.duq, i64 4
  store float %i.duv, ptr %i.duw, align 4, !tbaa !44
  %i.dux = getelementptr inbounds nuw i8, ptr %i.duo, i64 8
  %i.duy = load float, ptr %i.dux, align 4, !tbaa !46
  %i.duz = call float @llvm.fmuladd.f32(float %i.duy, float %i.zf, float %i.dpt)
  %i.dva = getelementptr inbounds nuw i8, ptr %i.duq, i64 8
  store float %i.duz, ptr %i.dva, align 4, !tbaa !44
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.dvb = mul i64 %.05060.i, %.0330
  %i.dvc = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.dvb ; 3 uses
  %i.dvd = mul i64 %i.dpo, %i.dui
  %i.dve = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dvd ; 3 uses
  br i1 %i.drz, label %.epil.preheader1391, label %.new1390

.new1390:                                         ; preds = %bb.ja, %.new1390
  %.059.i = phi i64 [ %i.dvy, %.new1390 ], [ 0, %bb.ja ] ; 4 uses
  %niter1397 = phi i64 [ %niter1397.next.1, %.new1390 ], [ 0, %bb.ja ]
  %i.dvf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.i
  %i.dvg = load i32, ptr %i.dvf, align 8, !tbaa !28
  %i.dvh = getelementptr inbounds nuw [4 x i8], ptr %i.dvc, i64 %.059.i
  %i.dvi = load float, ptr %i.dvh, align 4, !tbaa !44
  %i.dvj = zext i32 %i.dvg to i64                 ; 2 uses
  %i.dvk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dvj
  %i.dvl = load float, ptr %i.dvk, align 4, !tbaa !44
  %i.dvm = fdiv float %i.dvi, %i.dvl
  %i.dvn = getelementptr inbounds nuw [4 x i8], ptr %i.dve, i64 %i.dvj
  store float %i.dvm, ptr %i.dvn, align 4, !tbaa !44
  %i.dvo = or disjoint i64 %.059.i, 1             ; 2 uses
  %i.dvp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dvo
  %i.dvq = load i32, ptr %i.dvp, align 4, !tbaa !28
  %i.dvr = getelementptr inbounds nuw [4 x i8], ptr %i.dvc, i64 %i.dvo
  %i.dvs = load float, ptr %i.dvr, align 4, !tbaa !44
  %i.dvt = zext i32 %i.dvq to i64                 ; 2 uses
  %i.dvu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dvt
  %i.dvv = load float, ptr %i.dvu, align 4, !tbaa !44
  %i.dvw = fdiv float %i.dvs, %i.dvv
  %i.dvx = getelementptr inbounds nuw [4 x i8], ptr %i.dve, i64 %i.dvt
  store float %i.dvw, ptr %i.dvx, align 4, !tbaa !44
  %i.dvy = add nuw nsw i64 %.059.i, 2             ; 2 uses
  %niter1397.next.1 = add nuw i64 %niter1397, 2   ; 2 uses
  %niter1397.ncmp.1 = icmp eq i64 %niter1397.next.1, %unroll_iter1396
  br i1 %niter1397.ncmp.1, label %.loopexit.i615.loopexit.unr-lcssa, label %.new1390, !llvm.loop !125

.loopexit.i615.loopexit.unr-lcssa:                ; preds = %.new1390
  br i1 %lcmp.mod1394.not, label %.loopexit.i615, label %.epil.preheader1391

.epil.preheader1391:                              ; preds = %.loopexit.i615.loopexit.unr-lcssa, %bb.ja
  %.059.i.epil.init = phi i64 [ 0, %bb.ja ], [ %i.dvy, %.loopexit.i615.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1395)
  %i.dvz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.i.epil.init
  %i.dwa = load i32, ptr %i.dvz, align 4, !tbaa !28
  %i.dwb = getelementptr inbounds nuw [4 x i8], ptr %i.dvc, i64 %.059.i.epil.init
  %i.dwc = load float, ptr %i.dwb, align 4, !tbaa !44
  %i.dwd = zext i32 %i.dwa to i64                 ; 2 uses
  %i.dwe = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dwd
  %i.dwf = load float, ptr %i.dwe, align 4, !tbaa !44
  %i.dwg = fdiv float %i.dwc, %i.dwf
  %i.dwh = getelementptr inbounds nuw [4 x i8], ptr %i.dve, i64 %i.dwd
  store float %i.dwg, ptr %i.dwh, align 4, !tbaa !44
  br label %.loopexit.i615

.loopexit.i615:                                   ; preds = %.epil.preheader1391, %.loopexit.i615.loopexit.unr-lcssa, %bb.ix, %.lr.ph.split.split.split.i
  %i.dwi = add nuw i64 %.05060.i, 1               ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.dwi, %.0702
  br i1 %exitcond74.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.split.split.i, !llvm.loop !120

_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit: ; preds = %.loopexit.i615, %.loopexit.us69.i, %.loopexit.us.i, %bb.ie, %._crit_edge825, %.critedge
  %i.dwj = and i32 %13, 1073741824
  %i.dwk = icmp eq i32 %i.dwj, 0
  %i.dwl = icmp ne ptr %.0379, null               ; 2 uses
  %i.dwm = icmp eq i64 %.5.lcssa, 0
  %i.dwn = or i1 %i.dwk, %i.dwm
  %or.cond830.not = or i1 %i.dwn, %i.dwl
  br i1 %or.cond830.not, label %.loopexit722, label %.lr.ph827

.lr.ph827:                                        ; preds = %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, %bb.je
  %.0329826 = phi i64 [ %i.dyl, %bb.je ], [ 0, %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit ] ; 2 uses
  %i.dwo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0329826 ; 4 uses
  %i.dwp = load i32, ptr %i.dwo, align 4, !tbaa !28 ; 4 uses
  %i.dwq = getelementptr i8, ptr %i.dwo, i64 4    ; 2 uses
  %i.dwr = load i32, ptr %i.dwq, align 4, !tbaa !28 ; 4 uses
  %i.dws = getelementptr i8, ptr %i.dwo, i64 8    ; 2 uses
  %i.dwt = load i32, ptr %i.dws, align 4, !tbaa !28 ; 4 uses
  %i.dwu = zext i32 %i.dwp to i64                 ; 3 uses
  %i.dwv = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.dwu
  %i.dww = load i8, ptr %i.dwv, align 1, !tbaa !29
  %i.dwx = zext i8 %i.dww to i32
  %i.dwy = shl i32 %i.dwx, 28
  %i.dwz = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.dwu
  %i.dxa = load i32, ptr %i.dwz, align 4, !tbaa !28
  %i.dxb = icmp eq i32 %i.dxa, %i.dwr
  %.pre = zext i32 %i.dwr to i64                  ; 3 uses
  br i1 %i.dxb, label %.lr.ph827._crit_edge, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph827
  %i.dxc = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.pre
  %i.dxd = load i32, ptr %i.dxc, align 4, !tbaa !28
  %i.dxe = icmp eq i32 %i.dxd, %i.dwp
  %i.dxf = select i1 %i.dxe, i32 -2147483648, i32 0
  br label %.lr.ph827._crit_edge

.lr.ph827._crit_edge:                             ; preds = %.lr.ph827, %bb.jb
  %i.dxg = phi i32 [ %i.dxf, %bb.jb ], [ -2147483648, %.lr.ph827 ]
  %i.dxh = or i32 %i.dwy, %i.dxg
  %i.dxi = or i32 %i.dxh, %i.dwp
  store i32 %i.dxi, ptr %i.dwo, align 4, !tbaa !28
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.pre
  %i.dxk = load i8, ptr %i.dxj, align 1, !tbaa !29
  %i.dxl = zext i8 %i.dxk to i32
  %i.dxm = shl i32 %i.dxl, 28
  %i.dxn = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.pre
  %i.dxo = load i32, ptr %i.dxn, align 4, !tbaa !28
  %i.dxp = icmp eq i32 %i.dxo, %i.dwt
  %.pre892 = zext i32 %i.dwt to i64               ; 3 uses
  br i1 %i.dxp, label %._crit_edge891, label %bb.jc

bb.jc:                                            ; preds = %.lr.ph827._crit_edge
  %i.dxq = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.pre892
  %i.dxr = load i32, ptr %i.dxq, align 4, !tbaa !28
  %i.dxs = icmp eq i32 %i.dxr, %i.dwr
  %i.dxt = select i1 %i.dxs, i32 -2147483648, i32 0
  br label %._crit_edge891

._crit_edge891:                                   ; preds = %.lr.ph827._crit_edge, %bb.jc
  %i.dxu = phi i32 [ %i.dxt, %bb.jc ], [ -2147483648, %.lr.ph827._crit_edge ]
  %i.dxv = or i32 %i.dxm, %i.dxu
  %i.dxw = or i32 %i.dxv, %i.dwr
  store i32 %i.dxw, ptr %i.dwq, align 4, !tbaa !28
  %i.dxx = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.pre892
  %i.dxy = load i8, ptr %i.dxx, align 1, !tbaa !29
  %i.dxz = zext i8 %i.dxy to i32
  %i.dya = shl i32 %i.dxz, 28
  %i.dyb = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.pre892
  %i.dyc = load i32, ptr %i.dyb, align 4, !tbaa !28
  %i.dyd = icmp eq i32 %i.dyc, %i.dwp
  br i1 %i.dyd, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge891
  %i.dye = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.dwu
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !28
  %i.dyg = icmp eq i32 %i.dyf, %i.dwt
  %i.dyh = select i1 %i.dyg, i32 -2147483648, i32 0
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %._crit_edge891
  %i.dyi = phi i32 [ -2147483648, %._crit_edge891 ], [ %i.dyh, %bb.jd ]
  %i.dyj = or i32 %i.dya, %i.dyi
  %i.dyk = or i32 %i.dyj, %i.dwt
  store i32 %i.dyk, ptr %i.dws, align 4, !tbaa !28
  %i.dyl = add i64 %.0329826, 3                   ; 2 uses
  %i.dym = icmp ult i64 %i.dyl, %.5.lcssa
  br i1 %i.dym, label %.lr.ph827, label %.loopexit722, !llvm.loop !126

.loopexit722:                                     ; preds = %bb.je, %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit
  %20 = icmp ne i64 %.5.lcssa, 0
  %or.cond831 = and i1 %i.dwl, %20
  br i1 %or.cond831, label %.lr.ph829.preheader, label %.loopexit

.lr.ph829.preheader:                              ; preds = %.loopexit722
  %xtraiter1414 = and i64 %.5.lcssa, 3            ; 3 uses
  %i.dyn = icmp ult i64 %.5.lcssa, 4
  br i1 %i.dyn, label %.lr.ph829.epil.preheader, label %.lr.ph829.preheader.new

.lr.ph829.preheader.new:                          ; preds = %.lr.ph829.preheader
  %unroll_iter1418 = and i64 %.5.lcssa, -4
  br label %.lr.ph829

.lr.ph829:                                        ; preds = %.lr.ph829, %.lr.ph829.preheader.new
  %.0828 = phi i64 [ 0, %.lr.ph829.preheader.new ], [ %i.dzl, %.lr.ph829 ] ; 5 uses
  %niter1419 = phi i64 [ 0, %.lr.ph829.preheader.new ], [ %niter1419.next.3, %.lr.ph829 ]
  %i.dyo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828 ; 2 uses
  %i.dyp = load i32, ptr %i.dyo, align 4, !tbaa !28
  %i.dyq = zext i32 %i.dyp to i64
  %i.dyr = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dyq
  %i.dys = load i32, ptr %i.dyr, align 4, !tbaa !28
  store i32 %i.dys, ptr %i.dyo, align 4, !tbaa !28
  %i.dyt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.dyt, i64 4 ; 2 uses
  %i.dyv = load i32, ptr %i.dyu, align 4, !tbaa !28
  %i.dyw = zext i32 %i.dyv to i64
  %i.dyx = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dyw
  %i.dyy = load i32, ptr %i.dyx, align 4, !tbaa !28
  store i32 %i.dyy, ptr %i.dyu, align 4, !tbaa !28
  %i.dyz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828
  %i.dza = getelementptr inbounds nuw i8, ptr %i.dyz, i64 8 ; 2 uses
  %i.dzb = load i32, ptr %i.dza, align 4, !tbaa !28
  %i.dzc = zext i32 %i.dzb to i64
  %i.dzd = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dzc
  %i.dze = load i32, ptr %i.dzd, align 4, !tbaa !28
  store i32 %i.dze, ptr %i.dza, align 4, !tbaa !28
  %i.dzf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828
  %i.dzg = getelementptr inbounds nuw i8, ptr %i.dzf, i64 12 ; 2 uses
  %i.dzh = load i32, ptr %i.dzg, align 4, !tbaa !28
  %i.dzi = zext i32 %i.dzh to i64
  %i.dzj = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dzi
  %i.dzk = load i32, ptr %i.dzj, align 4, !tbaa !28
  store i32 %i.dzk, ptr %i.dzg, align 4, !tbaa !28
  %i.dzl = add nuw i64 %.0828, 4                  ; 2 uses
  %niter1419.next.3 = add nuw i64 %niter1419, 4   ; 2 uses
  %niter1419.ncmp.3 = icmp eq i64 %niter1419.next.3, %unroll_iter1418
  br i1 %niter1419.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph829, !llvm.loop !127

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph829
  %lcmp.mod1416.not = icmp eq i64 %xtraiter1414, 0
  br i1 %lcmp.mod1416.not, label %.loopexit, label %.lr.ph829.epil.preheader

.lr.ph829.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph829.preheader
  %.0828.epil.init = phi i64 [ 0, %.lr.ph829.preheader ], [ %i.dzl, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1417 = icmp ne i64 %xtraiter1414, 0
  call void @llvm.assume(i1 %lcmp.mod1417)
  br label %.lr.ph829.epil

.lr.ph829.epil:                                   ; preds = %.lr.ph829.epil, %.lr.ph829.epil.preheader
  %.0828.epil = phi i64 [ %i.dzr, %.lr.ph829.epil ], [ %.0828.epil.init, %.lr.ph829.epil.preheader ] ; 2 uses
  %epil.iter1415 = phi i64 [ %epil.iter1415.next, %.lr.ph829.epil ], [ 0, %.lr.ph829.epil.preheader ]
  %i.dzm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828.epil ; 2 uses
  %i.dzn = load i32, ptr %i.dzm, align 4, !tbaa !28
  %i.dzo = zext i32 %i.dzn to i64
  %i.dzp = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dzo
  %i.dzq = load i32, ptr %i.dzp, align 4, !tbaa !28
  store i32 %i.dzq, ptr %i.dzm, align 4, !tbaa !28
  %i.dzr = add nuw i64 %.0828.epil, 1
  %epil.iter1415.next = add i64 %epil.iter1415, 1 ; 2 uses
  %epil.iter1415.cmp.not = icmp eq i64 %epil.iter1415.next, %xtraiter1414
  br i1 %epil.iter1415.cmp.not, label %.loopexit, label %.lr.ph829.epil, !llvm.loop !128

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph829.epil, %.loopexit722
  %.not427 = icmp eq ptr %14, null
  br i1 %.not427, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %.loopexit
  %i.dzs = call float @sqrtf(float noundef %.3691.lcssa) #14
  %i.dzt = fmul float %i.bfa, %i.dzs
  store float %i.dzt, ptr %14, align 4, !tbaa !44
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.dzu = load i64, ptr %i.ek, align 8, !tbaa !26 ; 2 uses
  %.not3.i = icmp eq i64 %i.dzu, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i627

.lr.ph.i627:                                      ; preds = %bb.jg, %bb.jh
  %.04.i = phi i64 [ %i.dzz, %bb.jh ], [ %i.dzu, %bb.jg ] ; 2 uses
  %i.dzv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.dzw = getelementptr [8 x i8], ptr %16, i64 %.04.i
  %i.dzx = getelementptr i8, ptr %i.dzw, i64 -8
  %i.dzy = load ptr, ptr %i.dzx, align 8, !tbaa !27
  invoke void %i.dzv(ptr noundef %i.dzy)
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %.lr.ph.i627
  %i.dzz = add i64 %.04.i, -1                     ; 2 uses
  %.not.i628 = icmp eq i64 %i.dzz, 0
  br i1 %.not.i628, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i627, !llvm.loop !9

bb.ji:                                            ; preds = %.lr.ph.i627
  %i.eaa = landingpad { ptr, i32 }
          catch ptr null
  %i.eab = extractvalue { ptr, i32 } %i.eaa, 0
  call void @__clang_call_terminate(ptr %i.eab) #15
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  ret i64 %.5.lcssa

bb.jj:                                            ; preds = %bb.dj, %bb.en, %bb.ep, %bb.eo, %bb.em, %bb.ci, %bb.cj, %bb.cb
  %.pn409.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.adn, %bb.cb ], [ %i.aeq, %bb.ci ], [ %i.aer, %bb.cj ], [ %i.bbw, %bb.dj ], [ %i.bjp, %bb.em ], [ %i.bjq, %bb.en ], [ %i.bjr, %bb.eo ], [ %i.bjs, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.jk

bb.jk:                                            ; preds = %bb.br, %bb.bt, %bb.bv, %bb.jj, %bb.bw, %bb.bu, %bb.bs, %bb.bq
  %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.zt, %bb.bq ], [ %i.zu, %bb.br ], [ %i.zv, %bb.bs ], [ %i.zw, %bb.bt ], [ %i.zx, %bb.bu ], [ %i.zy, %bb.bv ], [ %.pn409.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jj ], [ %i.zz, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.h
  %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jk ], [ %i.ec, %bb.h ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  resume { ptr, i32 } %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %i.a = udiv i64 %2, 3
  %i.b = load ptr, ptr %0, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 6 uses
  %i.f = shl i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.c, i8 0, i64 %i.f, i1 false)
  %.not87 = icmp eq i64 %2, 0
  br i1 %.not87, label %.preheader80, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not79 = icmp eq ptr %4, null
  br i1 %.not79, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %2, 1
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter102 = and i64 %2, 3                    ; 3 uses
  %i.h = icmp ult i64 %2, 4
  br i1 %i.h, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter105 = and i64 %2, -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.07781.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.aj, %.lr.ph.split.us ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter106.next.3, %.lr.ph.split.us ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07781.us
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07781.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07781.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07781.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !28
  %i.aj = add nuw i64 %.07781.us, 4               ; 2 uses
  %niter106.next.3 = add nuw i64 %niter106, 4     ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.preheader80.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !1

.preheader80.loopexit.unr-lcssa:                  ; preds = %.lr.ph.split.us
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.preheader80, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader80.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.07781.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.aj, %.preheader80.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.07781.us.epil = phi i64 [ %i.aq, %.lr.ph.split.us.epil ], [ %.07781.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07781.us.epil
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !28
  %i.aq = add nuw i64 %.07781.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter102
  br i1 %epil.iter.cmp.not, label %.preheader80, label %.lr.ph.split.us.epil, !llvm.loop !143
end_hunk_3
begin_hunk_4_@_ZN7meshoptL17measureComponentsEPfmPKjPKNS_7Vector3Em:bb.a
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next103, %vector.body101 ] ; 10 uses
  %i.dt = shl nuw nsw i64 %index102, 4
  %i.du = shl i64 %index102, 4
  %i.dv = shl i64 %index102, 4
  %i.dw = shl i64 %index102, 4
  %i.dx = shl i64 %index102, 4
  %i.dy = shl i64 %index102, 4
  %i.dz = shl i64 %index102, 4
  %i.ea = shl i64 %index102, 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %i.dw
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %i.dx
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 60
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 76
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 92
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 108
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 124
  %i.er = load float, ptr %i.ej, align 4, !tbaa !44
  %i.es = load float, ptr %i.ek, align 4, !tbaa !44
  %i.et = load float, ptr %i.el, align 4, !tbaa !44
  %i.eu = load float, ptr %i.em, align 4, !tbaa !44
  %i.ev = insertelement <4 x float> poison, float %i.er, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.es, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3
  %i.ez = load float, ptr %i.en, align 4, !tbaa !44
  %i.fa = load float, ptr %i.eo, align 4, !tbaa !44
  %i.fb = load float, ptr %i.ep, align 4, !tbaa !44
  %i.fc = load float, ptr %i.eq, align 4, !tbaa !44
  %i.fd = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.fa, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 3
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index102 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x float> %i.ey, ptr %i.fh, align 4, !tbaa !44
  store <4 x float> %i.fg, ptr %i.fi, align 4, !tbaa !44
  %index.next103 = add nuw i64 %index102, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next103, %n.vec100
  br i1 %i.fj, label %.lr.ph88.preheader106, label %vector.body101, !llvm.loop !161

.lr.ph86:                                         ; preds = %.preheader80, %.lr.ph86
  %.07285 = phi i64 [ %i.gp, %.lr.ph86 ], [ 0, %.preheader80 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07285
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !28
  %i.fm = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %.07285 ; 3 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !49
  %i.fo = shl i32 %i.fl, 2                        ; 4 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !44
  %i.fs = fsub float %i.fn, %i.fr                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !50
  %i.fv = or disjoint i32 %i.fo, 1
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !44
  %i.fz = fsub float %i.fu, %i.fy                 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !46
  %i.gc = or disjoint i32 %i.fo, 2
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !44
  %i.gg = fsub float %i.gb, %i.gf                 ; 2 uses
  %i.gh = fmul float %i.fz, %i.fz
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.gh)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gg, float %i.gi) ; 2 uses
  %i.gk = or disjoint i32 %i.fo, 3
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !44 ; 2 uses
  %i.go = fcmp olt float %i.gn, %i.gj
  %. = select i1 %i.go, float %i.gj, float %i.gn
  store float %., ptr %i.gm, align 4, !tbaa !44
  %i.gp = add nuw i64 %.07285, 1                  ; 2 uses
  %exitcond93.not = icmp eq i64 %i.gp, %4
  br i1 %exitcond93.not, label %.preheader, label %.lr.ph86, !llvm.loop !162

._crit_edge:                                      ; preds = %.lr.ph88, %.preheader
  ret void

.lr.ph88:                                         ; preds = %.lr.ph88.preheader106, %.lr.ph88
  %.087 = phi i64 [ %i.gu, %.lr.ph88 ], [ %.087.ph, %.lr.ph88.preheader106 ] ; 3 uses
  %.idx = shl nuw nsw i64 %.087, 4
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !44
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.087
  store float %i.gs, ptr %i.gt, align 4, !tbaa !44
  %i.gu = add nuw nsw i64 %.087, 1                ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gu, %1
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph88, !llvm.loop !163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @meshopt_simplify(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, float noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef %6, float noundef %7, i32 noundef %8, ptr noundef %9)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @meshopt_simplifyWithAttributes(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, ptr nofree noundef readonly captures(address_is_null) %10, i64 noundef %11, float noundef %12, i32 noundef %13, ptr nofree noundef writeonly captures(address_is_null) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, i64 noundef %11, float noundef %12, i32 noundef %13, ptr noundef %14)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @meshopt_simplifyWithUpdate(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i64 noundef %10, float noundef %11, i32 noundef %12, ptr nofree noundef writeonly captures(address_is_null) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %12, 536870912
  %i.b = tail call noundef i64 @_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf(ptr noundef %0, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i64 noundef %10, float noundef %11, i32 noundef %i.a, ptr noundef %13)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_simplifySloppy(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, i64 noundef %7, float noundef %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %class.meshopt_Allocator, align 8  ; 15 uses
  %i.a = udiv i64 %7, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %10, i8 0, i64 200, i1 false)
  %i.b = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.c = icmp ugt i64 %4, 1537228672809129301
  %i.d = mul nuw i64 %4, 12
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = invoke noundef ptr %i.b(i64 noundef %i.e)
          to label %bb.b unwind label %bb.h, !inline_history !5 ; 24 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 8 uses
  store i64 1, ptr %i.g, align 8, !tbaa !26
  store ptr %i.f, ptr %10, align 8, !tbaa !27
  %i.h = tail call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.f, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef null, ptr noundef null) ; 0 uses
  %i.i = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.j = icmp ugt i64 %4, 4611686018427387903
  %i.k = shl nuw i64 %4, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k         ; 2 uses
  %i.m = invoke noundef ptr %i.i(i64 noundef %i.l)
          to label %bb.c unwind label %bb.i, !inline_history !4 ; 18 uses

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %i.g, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = fcmp olt float %8, 1.000000e-03
  %i.p = fcmp olt float %8, 1.000000e+00
  %i.q = select i1 %i.p, float %8, float 1.000000e+00
  %i.r = fdiv float 1.000000e+00, %i.q
  %i.s = select i1 %i.o, float f0x4479FFFF, float %i.r
  %i.t = fptosi float %i.s to i32                 ; 3 uses
  %i.u = udiv i64 %2, 3
  %i.v = icmp sgt i32 %i.t, 1
  %i.w = icmp ne ptr %6, null
  %or.cond = or i1 %i.w, %i.v
  br i1 %or.cond, label %bb.d, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit

bb.d:                                             ; preds = %bb.c
  %i.x = add nsw i32 %i.t, -1
  %i.y = sitofp i32 %i.x to float                 ; 5 uses
  %.not26.i = icmp eq i64 %4, 0
  br i1 %.not26.i, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader342, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %i.ai = load float, ptr %i.ab, align 4, !tbaa !49
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !49
  %i.ak = load float, ptr %i.af, align 4, !tbaa !49
  %i.al = load float, ptr %i.ah, align 4, !tbaa !49
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.aw = load float, ptr %i.as, align 4, !tbaa !50
  %i.ax = load float, ptr %i.at, align 4, !tbaa !50
  %i.ay = load float, ptr %i.au, align 4, !tbaa !50
  %i.az = load float, ptr %i.av, align 4, !tbaa !50
  %i.ba = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 3
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.bf = fptosi <4 x float> %i.be to <4 x i32>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !46
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !46
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !46
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !46
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.bt = fptosi <4 x float> %i.bs to <4 x i32>
  %i.bu = shl <4 x i32> %i.ar, splat (i32 20)
  %i.bv = shl <4 x i32> %i.bf, splat (i32 10)
  %i.bw = or <4 x i32> %i.bv, %i.bu
  %i.bx = or <4 x i32> %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit, label %.lr.ph.split.us.i.preheader342

.lr.ph.split.us.i.preheader342:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block
  %.024.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec, %middle.block ]
  %i.ca = insertelement <2 x float> poison, float %i.y, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader342, %.lr.ph.split.us.i
  %.024.us.i = phi i64 [ %i.co, %.lr.ph.split.us.i ], [ %.024.us.i.ph, %.lr.ph.split.us.i.preheader342 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !46
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.y, float 5.000000e-01)
  %i.cg = fptosi float %i.cf to i32
  %i.ch = load <2 x float>, ptr %i.cc, align 4, !tbaa !44
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cb, <2 x float> splat (float 5.000000e-01))
  %i.cj = fptosi <2 x float> %i.ci to <2 x i32>
  %i.ck = shl <2 x i32> %i.cj, <i32 20, i32 10>   ; 2 uses
  %shift = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %shift, %i.ck
  %i.cl = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.cm = or i32 %i.cl, %i.cg
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !28
  %i.co = add nuw i64 %.024.us.i, 1               ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.co, %4
  br i1 %exitcond28.not.i, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit, label %.lr.ph.split.us.i, !llvm.loop !165

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.g
  %.024.i = phi i64 [ %i.di, %bb.g ], [ 0, %.lr.ph.split.i.preheader ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.cr = and i8 %i.cq, 1
  %.not23.i = icmp eq i8 %i.cr, 0
  br i1 %.not23.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cs = trunc i64 %.024.i to i32
  %i.ct = or i32 %i.cs, 1073741824
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !46
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.y, float 5.000000e-01)
  %i.cy = fptosi float %i.cx to i32
  %i.cz = load <2 x float>, ptr %i.cu, align 4, !tbaa !44
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.aa, <2 x float> splat (float 5.000000e-01))
  %i.db = fptosi <2 x float> %i.da to <2 x i32>
  %i.dc = shl <2 x i32> %i.db, <i32 20, i32 10>   ; 2 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 1
  %i.de = or i32 %i.dd, %i.cy
  %i.df = extractelement <2 x i32> %i.dc, i64 0
  %i.dg = or i32 %i.de, %i.df
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i32 [ %i.dg, %bb.f ], [ %i.ct, %bb.e ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i
  store i32 %.sink.i, ptr %i.dh, align 4, !tbaa !28
  %i.di = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.di, %4
  br i1 %exitcond.not.i, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit, label %.lr.ph.split.i, !llvm.loop !166

_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit: ; preds = %bb.g, %.lr.ph.split.us.i, %middle.block, %bb.d
  %.not.i165 = icmp eq i64 %2, 0
  br i1 %.not.i165, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit, %.lr.ph.i166
  %.021.i = phi i64 [ %i.ee, %.lr.ph.i166 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit ]
  %.01920.i = phi i64 [ %i.ef, %.lr.ph.i166 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01920.i ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !28 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dj, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !28
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !28 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dj, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28 ; 2 uses
  %i.dy = icmp ne i32 %i.dn, %i.ds
  %i.dz = icmp ne i32 %i.dn, %i.dx
  %i.ea = and i1 %i.dy, %i.dz
  %i.eb = icmp ne i32 %i.ds, %i.dx
  %i.ec = and i1 %i.eb, %i.ea
  %i.ed = zext i1 %i.ec to i64
  %i.ee = add i64 %.021.i, %i.ed                  ; 2 uses
  %i.ef = add i64 %.01920.i, 3                    ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %2
  br i1 %i.eg, label %.lr.ph.i166, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit, !llvm.loop !167

bb.h:                                             ; preds = %bb.a
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.i:                                             ; preds = %bb.b
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

_ZN7meshoptL14countTrianglesEPKjS1_m.exit:        ; preds = %.lr.ph.i166, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit, %bb.c
  %.0123 = phi i64 [ 0, %bb.c ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit ], [ %i.ee, %.lr.ph.i166 ]
  %i.ej = uitofp nneg i64 %i.a to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ej)
  %i.ek = fadd float %sqrt, 5.000000e-01
  %i.el = fptosi float %i.ek to i32
  %i.em = udiv i64 %7, 3                          ; 3 uses
  %.not26.i167 = icmp eq i64 %4, 0                ; 3 uses
  %.not.i169 = icmp eq ptr %6, null               ; 2 uses
  %.not.i179 = icmp eq i64 %2, 0                  ; 3 uses
  %i.en = uitofp nneg i64 %i.em to float          ; 3 uses
  %min.iters.check298 = icmp ult i64 %4, 4
  %n.vec300 = and i64 %4, -4                      ; 3 uses
  %cmp.n307 = icmp eq i64 %4, %n.vec300
  br label %bb.j

bb.j:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit, %bb.t
  %.0120236 = phi i32 [ 0, %_ZN7meshoptL14countTrianglesEPKjS1_m.exit ], [ %i.kj, %bb.t ] ; 2 uses
  %.0121235 = phi i32 [ %i.el, %_ZN7meshoptL14countTrianglesEPKjS1_m.exit ], [ %i.ki, %bb.t ] ; 2 uses
  %.0122234 = phi i64 [ %i.u, %_ZN7meshoptL14countTrianglesEPKjS1_m.exit ], [ %..0122, %bb.t ] ; 2 uses
  %.1124233 = phi i64 [ %.0123, %_ZN7meshoptL14countTrianglesEPKjS1_m.exit ], [ %.1124., %bb.t ] ; 4 uses
  %.0125232 = phi i32 [ 1025, %_ZN7meshoptL14countTrianglesEPKjS1_m.exit ], [ %..0125, %bb.t ] ; 4 uses
  %.0127231 = phi i32 [ %i.t, %_ZN7meshoptL14countTrianglesEPKjS1_m.exit ], [ %.0127., %bb.t ] ; 6 uses
  %.not = icmp uge i64 %.1124233, %i.em
  %i.eo = sub nsw i32 %.0125232, %.0127231
  %i.ep = icmp slt i32 %i.eo, 2
  %or.cond164 = select i1 %.not, i1 true, i1 %i.ep
  br i1 %or.cond164, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not149 = icmp sgt i32 %.0121235, %.0127231
  br i1 %.not149, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eq = add nsw i32 %.0127231, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.er = add nsw i32 %.0125232, -1
  %i.es = tail call i32 @llvm.smin.i32(i32 %.0121235, i32 %i.er)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.et = phi i32 [ %i.eq, %bb.l ], [ %i.es, %bb.m ] ; 4 uses
  %i.eu = add nsw i32 %i.et, -1
  %i.ev = sitofp i32 %i.eu to float               ; 5 uses
  br i1 %.not26.i167, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.n
  br i1 %.not.i169, label %.lr.ph.split.us.i175.preheader, label %.lr.ph.split.i170.preheader

.lr.ph.split.i170.preheader:                      ; preds = %.lr.ph.i168
  %i.ew = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i170

.lr.ph.split.us.i175.preheader:                   ; preds = %.lr.ph.i168
  br i1 %min.iters.check298, label %.lr.ph.split.us.i175.preheader338, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph.split.us.i175.preheader
  %broadcast.splatinsert301 = insertelement <4 x float> poison, float %i.ev, i64 0
  %broadcast.splat302 = shufflevector <4 x float> %broadcast.splatinsert301, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph299
  %index304 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body303 ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  %i.ff = load float, ptr %i.ey, align 4, !tbaa !49
  %i.fg = load float, ptr %i.fa, align 4, !tbaa !49
  %i.fh = load float, ptr %i.fc, align 4, !tbaa !49
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !49
  %i.fj = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.fg, i64 1
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 2
  %i.fm = insertelement <4 x float> %i.fl, float %i.fi, i64 3
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %broadcast.splat302, <4 x float> splat (float 5.000000e-01))
  %i.fo = fptosi <4 x float> %i.fn to <4 x i32>
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ft = load float, ptr %i.fp, align 4, !tbaa !50
  %i.fu = load float, ptr %i.fq, align 4, !tbaa !50
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !50
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !50
  %i.fx = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 1
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 2
  %i.ga = insertelement <4 x float> %i.fz, float %i.fw, i64 3
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %broadcast.splat302, <4 x float> splat (float 5.000000e-01))
  %i.gc = fptosi <4 x float> %i.gb to <4 x i32>
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 44
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !46
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !46
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !46
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !46
  %i.gl = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 1
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 2
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 3
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %broadcast.splat302, <4 x float> splat (float 5.000000e-01))
  %i.gq = fptosi <4 x float> %i.gp to <4 x i32>
  %i.gr = shl <4 x i32> %i.fo, splat (i32 20)
  %i.gs = shl <4 x i32> %i.gc, splat (i32 10)
  %i.gt = or <4 x i32> %i.gs, %i.gr
  %i.gu = or <4 x i32> %i.gt, %i.gq
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index304
  store <4 x i32> %i.gu, ptr %i.gv, align 4, !tbaa !28
  %index.next305 = add nuw i64 %index304, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.gw, label %middle.block306, label %vector.body303, !llvm.loop !168

middle.block306:                                  ; preds = %vector.body303
  br i1 %cmp.n307, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.us.i175.preheader338

.lr.ph.split.us.i175.preheader338:                ; preds = %.lr.ph.split.us.i175.preheader, %middle.block306
  %.024.us.i176.ph = phi i64 [ 0, %.lr.ph.split.us.i175.preheader ], [ %n.vec300, %middle.block306 ]
  %i.gx = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i175

.lr.ph.split.us.i175:                             ; preds = %.lr.ph.split.us.i175.preheader338, %.lr.ph.split.us.i175
  %.024.us.i176 = phi i64 [ %i.hl, %.lr.ph.split.us.i175 ], [ %.024.us.i176.ph, %.lr.ph.split.us.i175.preheader338 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i176 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !46
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.ev, float 5.000000e-01)
  %i.hd = fptosi float %i.hc to i32
  %i.he = load <2 x float>, ptr %i.gz, align 4, !tbaa !44
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.gy, <2 x float> splat (float 5.000000e-01))
  %i.hg = fptosi <2 x float> %i.hf to <2 x i32>
  %i.hh = shl <2 x i32> %i.hg, <i32 20, i32 10>   ; 2 uses
  %shift322 = shufflevector <2 x i32> %i.hh, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop323 = or <2 x i32> %shift322, %i.hh
  %i.hi = extractelement <2 x i32> %foldExtExtBinop323, i64 0
  %i.hj = or i32 %i.hi, %i.hd
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i176
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !28
  %i.hl = add nuw i64 %.024.us.i176, 1            ; 2 uses
  %exitcond28.not.i177 = icmp eq i64 %i.hl, %4
  br i1 %exitcond28.not.i177, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.us.i175, !llvm.loop !169

.lr.ph.split.i170:                                ; preds = %.lr.ph.split.i170.preheader, %bb.q
  %.024.i171 = phi i64 [ %i.if, %bb.q ], [ 0, %.lr.ph.split.i170.preheader ] ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i171
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !29
  %i.ho = and i8 %i.hn, 1
  %.not23.i172 = icmp eq i8 %i.ho, 0
  br i1 %.not23.i172, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i170
  %i.hp = trunc i64 %.024.i171 to i32
  %i.hq = or i32 %i.hp, 1073741824
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.i170
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i171 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !46
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.ev, float 5.000000e-01)
  %i.hv = fptosi float %i.hu to i32
  %i.hw = load <2 x float>, ptr %i.hr, align 4, !tbaa !44
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.ex, <2 x float> splat (float 5.000000e-01))
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>
  %i.hz = shl <2 x i32> %i.hy, <i32 20, i32 10>   ; 2 uses
  %i.ia = extractelement <2 x i32> %i.hz, i64 1
  %i.ib = or i32 %i.ia, %i.hv
  %i.ic = extractelement <2 x i32> %i.hz, i64 0
  %i.id = or i32 %i.ib, %i.ic
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i173 = phi i32 [ %i.id, %bb.p ], [ %i.hq, %bb.o ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i171
  store i32 %.sink.i173, ptr %i.ie, align 4, !tbaa !28
  %i.if = add nuw i64 %.024.i171, 1               ; 2 uses
  %exitcond.not.i174 = icmp eq i64 %i.if, %4
  br i1 %exitcond.not.i174, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.i170, !llvm.loop !166

_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178: ; preds = %bb.q, %.lr.ph.split.us.i175, %middle.block306, %bb.n
  br i1 %.not.i179, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, %.lr.ph.i180
  %.021.i181 = phi i64 [ %i.jb, %.lr.ph.i180 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ]
  %.01920.i182 = phi i64 [ %i.jc, %.lr.ph.i180 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01920.i182 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !28
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !28 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ig, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !28
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !28 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ig, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !28
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !28 ; 2 uses
  %i.iv = icmp ne i32 %i.ik, %i.ip
  %i.iw = icmp ne i32 %i.ik, %i.iu
  %i.ix = and i1 %i.iv, %i.iw
  %i.iy = icmp ne i32 %i.ip, %i.iu
  %i.iz = and i1 %i.iy, %i.ix
  %i.ja = zext i1 %i.iz to i64
  %i.jb = add i64 %.021.i181, %i.ja               ; 2 uses
  %i.jc = add i64 %.01920.i182, 3                 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %2
  br i1 %i.jd, label %.lr.ph.i180, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184, !llvm.loop !167

_ZN7meshoptL14countTrianglesEPKjS1_m.exit184:     ; preds = %.lr.ph.i180, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178
  %.0.lcssa.i183 = phi i64 [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ], [ %i.jb, %.lr.ph.i180 ] ; 4 uses
  %.not151 = icmp ugt i64 %.0.lcssa.i183, %i.em   ; 4 uses
  %.0127. = select i1 %.not151, i32 %.0127231, i32 %i.et ; 3 uses
  %..0125 = select i1 %.not151, i32 %i.et, i32 %.0125232 ; 2 uses
  %.1124. = select i1 %.not151, i64 %.1124233, i64 %.0.lcssa.i183 ; 2 uses
  %..0122 = select i1 %.not151, i64 %.0.lcssa.i183, i64 %.0122234
  %i.je = icmp samesign ult i32 %.0120236, 5
  br i1 %i.je, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184
  %i.jf = sitofp i32 %i.et to float               ; 3 uses
  %i.jg = sitofp i32 %.0125232 to float
  %i.jh = fsub float %i.jf, %i.jg                 ; 2 uses
  %i.ji = uitofp i64 %.0122234 to float           ; 3 uses
  %i.jj = fsub nnan float %i.ji, %i.en
  %i.jk = fmul float %i.jj, %i.jh
  %i.jl = uitofp nneg i64 %.1124233 to float      ; 3 uses
  %i.jm = uitofp i64 %.0.lcssa.i183 to float      ; 3 uses
  %i.jn = fsub float %i.jl, %i.jm
  %i.jo = fsub nnan float %i.jl, %i.en
  %i.jp = sitofp i32 %.0127231 to float
  %i.jq = fsub float %i.jf, %i.jp                 ; 2 uses
  %i.jr = fmul float %i.jo, %i.jq
  %i.js = fsub nnan float %i.jm, %i.ji
  %i.jt = fmul float %i.jr, %i.js
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.jn, float %i.jt) ; 2 uses
  %i.jv = fcmp oeq float %i.ju, 0.000000e+00
  %i.jw = fsub nnan float %i.ji, %i.jl
  %i.jx = fsub nnan float %i.jm, %i.en
  %i.jy = fmul float %i.jh, %i.jx
  %i.jz = fmul float %i.jq, %i.jy
  %i.ka = fmul float %i.jw, %i.jz
  %i.kb = fdiv float %i.ka, %i.ju
  %i.kc = select i1 %i.jv, float 0.000000e+00, float %i.kb
  %i.kd = fadd float %i.kc, %i.jf
  %i.ke = fadd float %i.kd, 5.000000e-01
  %i.kf = fptosi float %i.ke to i32
  br label %bb.t

bb.s:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184
  %i.kg = add nsw i32 %.0127., %..0125
  %i.kh = sdiv i32 %i.kg, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ki = phi i32 [ %i.kf, %bb.r ], [ %i.kh, %bb.s ]
  %i.kj = add nuw nsw i32 %.0120236, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kj, 15
  br i1 %exitcond.not, label %bb.u, label %bb.j, !llvm.loop !170

bb.u:                                             ; preds = %bb.j, %bb.t
  %.0127.lcssa = phi i32 [ %.0127231, %bb.j ], [ %.0127., %bb.t ]
  %.1124.lcssa = phi i64 [ %.1124233, %bb.j ], [ %.1124., %bb.t ] ; 3 uses
  %i.kk = icmp eq i64 %.1124.lcssa, 0
  br i1 %i.kk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not162 = icmp eq ptr %9, null
  br i1 %.not162, label %.lr.ph.i218.preheader, label %.lr.ph.i218.preheader.sink.split

bb.w:                                             ; preds = %bb.u
  %i.kl = lshr i64 %4, 2
  %i.km = add i64 %i.kl, %4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.i = phi i64 [ 1, %bb.w ], [ %i.ko, %bb.x ]  ; 5 uses
  %i.kn = icmp ult i64 %.0.i, %i.km
  %i.ko = shl i64 %.0.i, 1
  br i1 %i.kn, label %bb.x, label %_ZN7meshoptL12hashBuckets2Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit:                ; preds = %bb.x
  %i.kp = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.kq = icmp ugt i64 %.0.i, 4611686018427387903
  %i.kr = shl i64 %.0.i, 2                        ; 3 uses
  %i.ks = select i1 %i.kq, i64 -1, i64 %i.kr
  %i.kt = invoke noundef ptr %i.kp(i64 noundef %i.ks)
          to label %bb.y unwind label %bb.aq, !inline_history !4 ; 6 uses

bb.y:                                             ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  store i64 3, ptr %i.g, align 8, !tbaa !26
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !27
  %i.kv = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.kw = invoke noundef ptr %i.kv(i64 noundef %i.l)
          to label %bb.z unwind label %bb.ar, !inline_history !4 ; 10 uses

bb.z:                                             ; preds = %bb.y
  store i64 4, ptr %i.g, align 8, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !27
  %i.ky = add nsw i32 %.0127.lcssa, -1
  %i.kz = sitofp i32 %i.ky to float               ; 5 uses
  br i1 %.not26.i167, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %bb.z
  br i1 %.not.i169, label %.lr.ph.split.us.i195.preheader, label %.lr.ph.split.i190.preheader

.lr.ph.split.i190.preheader:                      ; preds = %.lr.ph.i188
  %i.la = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i190

.lr.ph.split.us.i195.preheader:                   ; preds = %.lr.ph.i188
  %min.iters.check310 = icmp ult i64 %4, 4
  br i1 %min.iters.check310, label %.lr.ph.split.us.i195.preheader336, label %vector.ph311

vector.ph311:                                     ; preds = %.lr.ph.split.us.i195.preheader
  %n.vec312 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert313 = insertelement <4 x float> poison, float %i.kz, i64 0
  %broadcast.splat314 = shufflevector <4 x float> %broadcast.splatinsert313, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph311
  %index316 = phi i64 [ 0, %vector.ph311 ], [ %index.next317, %vector.body315 ] ; 6 uses
  %i.lc = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  %i.lj = load float, ptr %i.lc, align 4, !tbaa !49
  %i.lk = load float, ptr %i.le, align 4, !tbaa !49
  %i.ll = load float, ptr %i.lg, align 4, !tbaa !49
  %i.lm = load float, ptr %i.li, align 4, !tbaa !49
  %i.ln = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 1
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 2
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 3
  %i.lr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.ls = fptosi <4 x float> %i.lr to <4 x i32>
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 28
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !50
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !50
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !50
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !50
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.mg = fptosi <4 x float> %i.mf to <4 x i32>
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !46
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !46
  %i.mn = load float, ptr %i.mj, align 4, !tbaa !46
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !46
  %i.mp = insertelement <4 x float> poison, float %i.ml, i64 0
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 1
  %i.mr = insertelement <4 x float> %i.mq, float %i.mn, i64 2
  %i.ms = insertelement <4 x float> %i.mr, float %i.mo, i64 3
  %i.mt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.mu = fptosi <4 x float> %i.mt to <4 x i32>
  %i.mv = shl <4 x i32> %i.ls, splat (i32 20)
  %i.mw = shl <4 x i32> %i.mg, splat (i32 10)
  %i.mx = or <4 x i32> %i.mw, %i.mv
  %i.my = or <4 x i32> %i.mx, %i.mu
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index316
  store <4 x i32> %i.my, ptr %i.mz, align 4, !tbaa !28
  %index.next317 = add nuw i64 %index316, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next317, %n.vec312
  br i1 %i.na, label %middle.block318, label %vector.body315, !llvm.loop !171

middle.block318:                                  ; preds = %vector.body315
  %cmp.n319 = icmp eq i64 %4, %n.vec312
  br i1 %cmp.n319, label %.lr.ph33.i, label %.lr.ph.split.us.i195.preheader336

.lr.ph.split.us.i195.preheader336:                ; preds = %.lr.ph.split.us.i195.preheader, %middle.block318
  %.024.us.i196.ph = phi i64 [ 0, %.lr.ph.split.us.i195.preheader ], [ %n.vec312, %middle.block318 ]
  %i.nb = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i195

.lr.ph.split.us.i195:                             ; preds = %.lr.ph.split.us.i195.preheader336, %.lr.ph.split.us.i195
  %.024.us.i196 = phi i64 [ %i.np, %.lr.ph.split.us.i195 ], [ %.024.us.i196.ph, %.lr.ph.split.us.i195.preheader336 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i196 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !46
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.kz, float 5.000000e-01)
  %i.nh = fptosi float %i.ng to i32
  %i.ni = load <2 x float>, ptr %i.nd, align 4, !tbaa !44
  %i.nj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.nc, <2 x float> splat (float 5.000000e-01))
  %i.nk = fptosi <2 x float> %i.nj to <2 x i32>
  %i.nl = shl <2 x i32> %i.nk, <i32 20, i32 10>   ; 2 uses
  %shift325 = shufflevector <2 x i32> %i.nl, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop326 = or <2 x i32> %shift325, %i.nl
  %i.nm = extractelement <2 x i32> %foldExtExtBinop326, i64 0
  %i.nn = or i32 %i.nm, %i.nh
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i196
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !28
  %i.np = add nuw i64 %.024.us.i196, 1            ; 2 uses
  %exitcond28.not.i197 = icmp eq i64 %i.np, %4
  br i1 %exitcond28.not.i197, label %.lr.ph33.i, label %.lr.ph.split.us.i195, !llvm.loop !172

.lr.ph.split.i190:                                ; preds = %.lr.ph.split.i190.preheader, %bb.ac
  %.024.i191 = phi i64 [ %i.oj, %bb.ac ], [ 0, %.lr.ph.split.i190.preheader ] ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i191
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !29
  %i.ns = and i8 %i.nr, 1
  %.not23.i192 = icmp eq i8 %i.ns, 0
  br i1 %.not23.i192, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.i190
  %i.nt = trunc i64 %.024.i191 to i32
  %i.nu = or i32 %i.nt, 1073741824
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i190
  %i.nv = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i191 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !46
  %i.ny = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.kz, float 5.000000e-01)
  %i.nz = fptosi float %i.ny to i32
  %i.oa = load <2 x float>, ptr %i.nv, align 4, !tbaa !44
  %i.ob = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.lb, <2 x float> splat (float 5.000000e-01))
  %i.oc = fptosi <2 x float> %i.ob to <2 x i32>
  %i.od = shl <2 x i32> %i.oc, <i32 20, i32 10>   ; 2 uses
  %i.oe = extractelement <2 x i32> %i.od, i64 1
  %i.of = or i32 %i.oe, %i.nz
  %i.og = extractelement <2 x i32> %i.od, i64 0
  %i.oh = or i32 %i.of, %i.og
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i193 = phi i32 [ %i.oh, %bb.ab ], [ %i.nu, %bb.aa ]
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i191
  store i32 %.sink.i193, ptr %i.oi, align 4, !tbaa !28
  %i.oj = add nuw i64 %.024.i191, 1               ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %i.oj, %4
  br i1 %exitcond.not.i194, label %.lr.ph33.i, label %.lr.ph.split.i190, !llvm.loop !166

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread: ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kt, i8 -1, i64 %i.kr, i1 false)
  br label %bb.ag

.lr.ph33.i:                                       ; preds = %bb.ac, %.lr.ph.split.us.i195, %middle.block318
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kt, i8 -1, i64 %i.kr, i1 false)
  %i.ok = add i64 %.0.i, -1                       ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %.lr.ph33.i
  %.032.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.pp, %bb.af ] ; 4 uses
  %.01930.i = phi i64 [ 0, %.lr.ph33.i ], [ %.1.i, %bb.af ] ; 3 uses
  %i.ol = trunc i64 %.032.i to i32
  %i.om = and i64 %.032.i, 4294967295
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !28 ; 3 uses
  %i.op = lshr i32 %i.oo, 13
  %i.oq = xor i32 %i.op, %i.oo
  %i.or = mul i32 %i.oq, 1540483477               ; 2 uses
  %i.os = lshr i32 %i.or, 15
  %i.ot = xor i32 %i.os, %i.or
  %i.ou = zext i32 %i.ot to i64
  %i.ov = and i64 %i.ok, %i.ou                    ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !28 ; 2 uses
  %i.oy = icmp eq i32 %i.ox, -1
  br i1 %i.oy, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.ad, %bb.ae
  %.pr.i = phi i32 [ %i.ph, %bb.ae ], [ %i.ox, %bb.ad ]
  %.02313.i29.i = phi i64 [ %i.pf, %bb.ae ], [ %i.ov, %bb.ad ]
  %.02214.i28.i = phi i64 [ %i.pd, %bb.ae ], [ 0, %bb.ad ]
  %i.oz = zext i32 %.pr.i to i64                  ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !28
  %i.pc = icmp eq i32 %i.pb, %i.oo
  br i1 %i.pc, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i200
  %i.pd = add i64 %.02214.i28.i, 1                ; 3 uses
  %i.pe = add i64 %i.pd, %.02313.i29.i
  %i.pf = and i64 %i.pe, %i.ok                    ; 3 uses
  %.not.i.i = icmp ule i64 %i.pd, %i.ok
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !28 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, -1
  br i1 %i.pi, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i200

_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %bb.ae, %bb.ad
  %.02313.i.lcssa27.i = phi i64 [ %i.ov, %bb.ad ], [ %i.pf, %bb.ae ]
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.02313.i.lcssa27.i
  store i32 %i.ol, ptr %i.pj, align 4, !tbaa !28
  %i.pk = add i64 %.01930.i, 1
  %i.pl = trunc i64 %.01930.i to i32
  br label %bb.af

_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.lr.ph.i200
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.oz
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %.sink.i201 = phi i32 [ %i.pn, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.pl, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ]
  %.1.i = phi i64 [ %.01930.i, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.pk, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ] ; 4 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.032.i
  store i32 %.sink.i201, ptr %i.po, align 4, !tbaa !28
  %i.pp = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %i.pp, %4
  br i1 %exitcond.not.i202, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit, label %bb.ad, !llvm.loop !11

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit:    ; preds = %bb.af
  %i.pq = icmp ugt i64 %.1.i, 419244183493398900
  %i.pr = mul i64 %.1.i, 44                       ; 2 uses
  %spec.select = select i1 %i.pq, i64 -1, i64 %i.pr
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread
  %i.ps = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %i.pr, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ]
  %.019.lcssa.i222 = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %.1.i, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ] ; 6 uses
  %i.pt = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %spec.select, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ]
  %i.pu = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.pv = invoke noundef ptr %i.pu(i64 noundef %i.pt)
          to label %bb.ah unwind label %bb.as, !inline_history !7 ; 6 uses

bb.ah:                                            ; preds = %bb.ag
  store i64 5, ptr %i.g, align 8, !tbaa !26
  %i.pw = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.pv, i8 0, i64 %i.ps, i1 false)
  br i1 %.not.i179, label %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.ah, %bb.aj
  %.067.i = phi i64 [ %i.uf, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.067.i ; 3 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !28
  %i.pz = getelementptr i8, ptr %i.px, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !28
  %i.qb = getelementptr i8, ptr %i.px, i64 8
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !28
  %i.qd = zext i32 %i.py to i64                   ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !28 ; 3 uses
  %i.qg = zext i32 %i.qa to i64                   ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !28 ; 2 uses
  %i.qj = zext i32 %i.qc to i64                   ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !28 ; 2 uses
  %i.qm = icmp eq i32 %i.qf, %i.qi
  %i.qn = icmp eq i32 %i.qf, %i.ql
  %i.qo = and i1 %i.qm, %i.qn                     ; 2 uses
  %i.qp = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qd ; 2 uses
  %i.qq = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qg
  %i.qr = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qj
  %i.qs = select i1 %i.qo, float 3.000000e+00, float 1.000000e+00
  %i.qt = load <3 x float>, ptr %i.qq, align 4, !tbaa !44
  %i.qu = shufflevector <3 x float> %i.qt, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.qv = load float, ptr %i.qp, align 4, !tbaa !49
  %i.qw = load <3 x float>, ptr %i.qp, align 4, !tbaa !44 ; 3 uses
  %i.qx = shufflevector <3 x float> %i.qw, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.qy = fsub <4 x float> %i.qu, %i.qx           ; 2 uses
  %i.qz = load <3 x float>, ptr %i.qr, align 4, !tbaa !44
  %i.ra = shufflevector <3 x float> %i.qz, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rb = shufflevector <3 x float> %i.qw, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rc = fsub <4 x float> %i.ra, %i.rb           ; 2 uses
  %i.rd = fneg <4 x float> %i.rc
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rf = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.rg = fmul <4 x float> %i.rf, %i.re
  %i.rh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qy, <4 x float> %i.rc, <4 x float> %i.rg) ; 6 uses
  %foldExtExtBinop328 = fmul <4 x float> %i.rh, %i.rh
  %i.ri = extractelement <4 x float> %foldExtExtBinop328, i64 1
  %i.rj = extractelement <4 x float> %i.rh, i64 0 ; 2 uses
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.rj, float %i.ri)
  %i.rl = extractelement <4 x float> %i.rh, i64 2 ; 2 uses
  %i.rm = tail call float @llvm.fmuladd.f32(float %i.rl, float %i.rl, float %i.rk) ; 2 uses
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.rm) ; 2 uses
  %i.rn = fcmp ogt float %i.rm, 0.000000e+00
  %i.ro = insertelement <4 x float> poison, float %sqrt.i.i.i, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = fdiv <4 x float> %i.rh, %i.rp
  %i.rr = insertelement <4 x i1> poison, i1 %i.rn, i64 0
  %i.rs = shufflevector <4 x i1> %i.rr, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.rt = select <4 x i1> %i.rs, <4 x float> %i.rq, <4 x float> %i.rh ; 7 uses
  %shift330 = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop331 = fmul <4 x float> %i.qx, %shift330
  %i.ru = extractelement <4 x float> %foldExtExtBinop331, i64 0
  %i.rv = extractelement <4 x float> %i.rt, i64 0
  %i.rw = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.qv, float %i.ru)
  %i.rx = extractelement <4 x float> %i.rt, i64 2
  %i.ry = extractelement <3 x float> %i.qw, i64 2
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.ry, float %i.rw)
  %i.sa = fneg float %i.rz                        ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %sqrt.i.i.i)
  %i.sb = fmul float %i.qs, %sqrt.i.i             ; 5 uses
  %i.sc = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.sd = insertelement <4 x float> poison, float %i.sb, i64 0
  %i.se = shufflevector <4 x float> %i.sd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sf = fmul <4 x float> %i.sc, %i.se           ; 2 uses
  %i.sg = fmul float %i.sb, %i.sa                 ; 2 uses
  %i.sh = fmul <4 x float> %i.rt, %i.sf           ; 3 uses
  %i.si = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.sj = shufflevector <4 x float> %i.sf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.sk = insertelement <2 x float> %i.sj, float %i.sg, i64 1
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sm = fmul <4 x float> %i.si, %i.sl           ; 3 uses
  %i.sn = shufflevector <4 x float> %i.rt, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.so = insertelement <2 x float> %i.sn, float %i.sa, i64 1
  %i.sp = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x float> %i.so, %i.sq           ; 3 uses
  %i.ss = zext i32 %i.qf to i64
  %i.st = getelementptr inbounds nuw [44 x i8], ptr %i.pv, i64 %i.ss ; 5 uses
  %i.su = load <4 x float>, ptr %i.st, align 4, !tbaa !44
  %i.sv = fadd <4 x float> %i.su, %i.sh
  store <4 x float> %i.sv, ptr %i.st, align 4, !tbaa !44
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %i.sx = load <4 x float>, ptr %i.sw, align 4, !tbaa !44
  %i.sy = fadd <4 x float> %i.sx, %i.sm
  store <4 x float> %i.sy, ptr %i.sw, align 4, !tbaa !44
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 32 ; 2 uses
  %i.ta = load <2 x float>, ptr %i.sz, align 4, !tbaa !44
  %i.tb = fadd <2 x float> %i.sr, %i.ta
  store <2 x float> %i.tb, ptr %i.sz, align 4, !tbaa !44
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 40 ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !48
  %i.te = fadd float %i.sb, %i.td
  store float %i.te, ptr %i.tc, align 4, !tbaa !48
  br i1 %i.qo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i204
  %i.tf = zext i32 %i.qi to i64
  %i.tg = getelementptr inbounds nuw [44 x i8], ptr %i.pv, i64 %i.tf ; 5 uses
  %i.th = load <4 x float>, ptr %i.tg, align 4, !tbaa !44
  %i.ti = fadd <4 x float> %i.sh, %i.th
  store <4 x float> %i.ti, ptr %i.tg, align 4, !tbaa !44
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 16 ; 2 uses
  %i.tk = load <4 x float>, ptr %i.tj, align 4, !tbaa !44
  %i.tl = fadd <4 x float> %i.sm, %i.tk
  store <4 x float> %i.tl, ptr %i.tj, align 4, !tbaa !44
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 32 ; 2 uses
  %i.tn = load <2 x float>, ptr %i.tm, align 4, !tbaa !44
  %i.to = fadd <2 x float> %i.sr, %i.tn
  store <2 x float> %i.to, ptr %i.tm, align 4, !tbaa !44
end_hunk_4
