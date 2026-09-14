Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ij
  store i32 %i.hu, ptr %i.ik, align 4, !tbaa !39
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 %i.hq, ptr %i.io, align 4, !tbaa !40
  %i.ip = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.ih, align 4, !tbaa !28
  %i.ir = zext i32 %i.hu to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ir ; 4 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !28
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.iu
  store i32 %i.hq, ptr %i.iv, align 4, !tbaa !39
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !28
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %i.hs, ptr %i.iz, align 4, !tbaa !40
  %i.ja = load i32, ptr %i.is, align 4, !tbaa !28
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.is, align 4, !tbaa !28
  %i.jc = add nuw nsw i64 %.07485.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.jc, %i.ff
  br i1 %exitcond93.not.i, label %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit, label %.lr.ph86.i, !llvm.loop !3

_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit: ; preds = %.lr.ph86.i, %.preheader.i
  store i32 0, ptr %i.er, align 4, !tbaa !28
  %i.jd = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.je = icmp ugt i64 %.0702, 4611686018427387903
  %i.jf = select i1 %i.je, i64 -1, i64 %i.fh      ; 6 uses
  %i.jg = invoke noundef ptr %i.jd(i64 noundef %i.jf)
          to label %bb.k unwind label %bb.br, !inline_history !4 ; 58 uses

bb.k:                                             ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.jh = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.ji = add nuw nsw i64 %i.jh, 1
  store i64 %i.ji, ptr %i.es, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jh
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !27
  %i.jk = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jl = invoke noundef ptr %i.jk(i64 noundef %i.jf)
          to label %bb.l unwind label %bb.bs, !inline_history !4 ; 23 uses

bb.l:                                             ; preds = %bb.k
  %i.jm = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.jn = add nuw nsw i64 %i.jm, 1
  store i64 %i.jn, ptr %i.es, align 8, !tbaa !26
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jm
  store ptr %i.jl, ptr %i.jo, align 8, !tbaa !27
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjS0_PKfmmPKjR17meshopt_Allocator(ptr noundef %i.jg, ptr noundef %i.jl, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull align 8 dereferenceable(200) %16)
          to label %bb.m unwind label %bb.bs

bb.m:                                             ; preds = %bb.l
  %i.jp = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jq = invoke noundef ptr %i.jp(i64 noundef %.0702)
          to label %bb.n unwind label %bb.bt, !inline_history !65 ; 87 uses

bb.n:                                             ; preds = %bb.m
  %i.jr = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.js = add nuw nsw i64 %i.jr, 1
  store i64 %i.js, ptr %i.es, align 8, !tbaa !26
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jr
  store ptr %i.jq, ptr %i.jt, align 8, !tbaa !27
  %i.ju = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jv = invoke noundef ptr %i.ju(i64 noundef %i.jf)
          to label %bb.o unwind label %bb.bu, !inline_history !4 ; 22 uses

bb.o:                                             ; preds = %bb.n
  %i.jw = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.jx = add nuw nsw i64 %i.jw, 1
  store i64 %i.jx, ptr %i.es, align 8, !tbaa !26
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jw
  store ptr %i.jv, ptr %i.jy, align 8, !tbaa !27
  %i.jz = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ka = invoke noundef ptr %i.jz(i64 noundef %i.jf)
          to label %bb.p unwind label %bb.bv, !inline_history !4 ; 21 uses

bb.p:                                             ; preds = %bb.o
  %i.kb = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.kc = add nuw nsw i64 %i.kb, 1
  store i64 %i.kc, ptr %i.es, align 8, !tbaa !26
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.kb
  store ptr %i.ka, ptr %i.kd, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jv, i8 -1, i64 %i.fh, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ka, i8 -1, i64 %i.fh, i1 false)
  br i1 %.not88.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph296.i

.loopexit292.i:                                   ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph296.i
  %exitcond343.not.i = icmp eq i64 %i.kf, %.0702
  br i1 %exitcond343.not.i, label %.lr.ph298.i, label %.lr.ph296.i, !llvm.loop !66

.lr.ph296.i:                                      ; preds = %bb.p, %.loopexit292.i
  %.0231295.i = phi i64 [ %i.kf, %.loopexit292.i ], [ 0, %bb.p ] ; 3 uses
  %i.ke = trunc i64 %.0231295.i to i32            ; 6 uses
  %i.kf = add nuw i64 %.0231295.i, 1              ; 3 uses
  %i.kg = and i64 %i.kf, 4294967295
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !28 ; 2 uses
  %i.kj = and i64 %.0231295.i, 4294967295         ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !28 ; 3 uses
  %i.km = sub i32 %i.ki, %i.kl
  %i.kn = zext i32 %i.kl to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.kn
  %i.kp = zext i32 %i.km to i64
  %.not327.i = icmp eq i32 %i.ki, %i.kl
  br i1 %.not327.i, label %.loopexit292.i, label %.lr.ph.i450

.lr.ph.i450:                                      ; preds = %.lr.ph296.i
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.kj ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kj
  br label %bb.q

bb.q:                                             ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph.i450
  %.0230294.i = phi i64 [ 0, %.lr.ph.i450 ], [ %i.lr, %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.0230294.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !39 ; 5 uses
  %i.ku = icmp eq i32 %i.kt, %i.ke
  br i1 %i.ku, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.ke, ptr %i.kq, align 4, !tbaa !28
  store i32 %i.ke, ptr %i.kr, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.kv = add i32 %i.kt, 1
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !28 ; 2 uses
  %i.kz = zext i32 %i.kt to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !28 ; 3 uses
  %i.lc = sub i32 %i.ky, %i.lb
  %i.ld = zext i32 %i.lb to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ld
  %i.lf = zext i32 %i.lc to i64
  %.not1.not.i.i = icmp eq i32 %i.ky, %i.lb
  br i1 %.not1.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.lg = add nuw nsw i64 %.0142.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.lg, %i.lf
  br i1 %exitcond.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i, !llvm.loop !67

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.t
  %.0142.i.i = phi i64 [ %i.lg, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %.0142.i.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !39
  %i.lj = icmp eq i32 %i.li, %i.ke
  br i1 %i.lj, label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, label %bb.t

.loopexit291.i:                                   ; preds = %bb.t, %bb.s
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kz ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.lm = icmp eq i32 %i.ll, -1
  %i.ln = select i1 %i.lm, i32 %i.ke, i32 %i.kt
  store i32 %i.ln, ptr %i.lk, align 4, !tbaa !28
  %i.lo = load i32, ptr %i.kq, align 4, !tbaa !28
  %i.lp = icmp eq i32 %i.lo, -1
  %i.lq = select i1 %i.lp, i32 %i.kt, i32 %i.ke
  store i32 %i.lq, ptr %i.kq, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i: ; preds = %.lr.ph.i.i, %.loopexit291.i, %bb.r
  %i.lr = add nuw nsw i64 %.0230294.i, 1          ; 2 uses
  %exitcond.not.i451 = icmp eq i64 %i.lr, %i.kp
  br i1 %exitcond.not.i451, label %.loopexit292.i, label %bb.q, !llvm.loop !68

._crit_edge.i452:                                 ; preds = %bb.ap
  %i.ls = and i32 %13, 32
  %.not.not.i = icmp eq i32 %i.ls, 0
  br i1 %.not.not.i, label %.loopexit289.i, label %.lr.ph317.i

.lr.ph317.i:                                      ; preds = %._crit_edge.i452
  %.not260.i = icmp eq ptr %.0379, null           ; 2 uses
  %.not261.i = icmp eq ptr %10, null
  br label %bb.aq

.lr.ph298.i:                                      ; preds = %.loopexit292.i, %bb.ap
  %.0229297.i = phi i64 [ %i.of, %bb.ap ], [ 0, %.loopexit292.i ] ; 23 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0229297.i
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !28
  %i.lv = zext i32 %i.lu to i64                   ; 2 uses
  %i.lw = icmp eq i64 %.0229297.i, %i.lv
  br i1 %i.lw, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %.lr.ph298.i
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.0229297.i
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !28 ; 3 uses
  %i.lz = zext i32 %i.ly to i64                   ; 4 uses
  %i.ma = icmp eq i64 %.0229297.i, %i.lz
  br i1 %i.ma, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0229297.i
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !28 ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0229297.i
  %i.me = load i32, ptr %i.md, align 4, !tbaa !28 ; 4 uses
  %i.mf = icmp eq i32 %i.mc, -1
  %i.mg = icmp eq i32 %i.me, -1
  %or.cond.i = select i1 %i.mf, i1 %i.mg, i1 false
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mh = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 0, ptr %i.mh, align 1, !tbaa !29
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %18 = icmp ne i32 %i.mc, -1
  %19 = icmp ne i32 %i.me, -1
  %or.cond3.i = select i1 %18, i1 %19, i1 false
  %i.mi = zext i32 %i.mc to i64                   ; 3 uses
  br i1 %or.cond3.i, label %bb.y, label %._crit_edge351.i

._crit_edge351.i:                                 ; preds = %bb.x
  %.pre352.i = zext i32 %i.me to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !28
  %i.ml = zext i32 %i.me to i64                   ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !28
  %i.mo = icmp ne i32 %i.mk, %i.mn
  %.not267.i = icmp eq i64 %.0229297.i, %i.mi
  %or.cond270.i = or i1 %.not267.i, %i.mo
  br i1 %or.cond270.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mp = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 2, ptr %i.mp, align 1, !tbaa !29
  br label %bb.ap

bb.aa:                                            ; preds = %bb.y, %._crit_edge351.i
  %.pre-phi353.i = phi i64 [ %.pre352.i, %._crit_edge351.i ], [ %i.ml, %bb.y ]
  %.not268.i = icmp eq i64 %.0229297.i, %i.mi
  %.not269.i = icmp eq i64 %.0229297.i, %.pre-phi353.i
  %or.cond271.i = select i1 %.not268.i, i1 true, i1 %.not269.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i ; 2 uses
  br i1 %or.cond271.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.mq, align 1, !tbaa !29
  br label %bb.ap

bb.ac:                                            ; preds = %bb.aa
  store i8 4, ptr %i.mq, align 1, !tbaa !29
  br label %bb.ap

bb.ad:                                            ; preds = %bb.u
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.lz
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !28
  %i.mt = zext i32 %i.ms to i64
  %i.mu = icmp eq i64 %.0229297.i, %i.mt
  br i1 %i.mu, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0229297.i
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !28 ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0229297.i
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !28 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.lz
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !28 ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lz
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !28 ; 3 uses
  %.not264.i = icmp eq i32 %i.mw, -1
  br i1 %.not264.i, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nd = zext i32 %i.mw to i64                   ; 2 uses
  %i.ne = icmp ne i64 %.0229297.i, %i.nd
  %i.nf = icmp ne i32 %i.my, -1
  %or.cond5.i = select i1 %i.ne, i1 %i.nf, i1 false
  br i1 %or.cond5.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ng = zext i32 %i.my to i64                   ; 2 uses
  %i.nh = icmp ne i64 %.0229297.i, %i.ng
  %i.ni = icmp ne i32 %i.na, -1
  %or.cond7.i = select i1 %i.nh, i1 %i.ni, i1 false
  br i1 %or.cond7.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.nj = icmp eq i32 %i.na, %i.ly
  %i.nk = icmp eq i32 %i.nc, -1
  %.not265.i = icmp eq i32 %i.nc, %i.ly
  %i.nl = or i1 %i.nk, %.not265.i
  %or.cond272.i = select i1 %i.nj, i1 true, i1 %i.nl
  br i1 %or.cond272.i, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.nd
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !28 ; 2 uses
  %i.no = zext i32 %i.nc to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !28
  %i.nr = icmp eq i32 %i.nn, %i.nq
  br i1 %i.nr, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ng
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !28 ; 2 uses
  %i.nu = zext i32 %i.na to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !28
  %i.nx = icmp ne i32 %i.nt, %i.nw
  %.not266.i = icmp eq i32 %i.nn, %i.nt
  %or.cond273.i = or i1 %.not266.i, %i.nx
  br i1 %or.cond273.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ny = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 2, ptr %i.ny, align 1, !tbaa !29
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.nz = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 4, ptr %i.nz, align 1, !tbaa !29
  br label %bb.ap

bb.am:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.oa = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 4, ptr %i.oa, align 1, !tbaa !29
  br label %bb.ap

bb.an:                                            ; preds = %bb.ad
  %i.ob = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 4, ptr %i.ob, align 1, !tbaa !29
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph298.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.lv
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !29
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ac, %bb.ab, %bb.z, %bb.w
  %i.of = add nuw i64 %.0229297.i, 1              ; 2 uses
  %exitcond344.not.i = icmp eq i64 %i.of, %.0702
  br i1 %exitcond344.not.i, label %._crit_edge.i452, label %.lr.ph298.i, !llvm.loop !69

bb.aq:                                            ; preds = %bb.az, %.lr.ph317.i
  %.0228314.i = phi i64 [ 0, %.lr.ph317.i ], [ %i.rh, %bb.az ] ; 10 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0228314.i ; 2 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.oh, label %bb.az [
    i8 2, label %bb.ar
    i8 4, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0228314.i
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !28
  %i.ok = zext i32 %i.oj to i64                   ; 2 uses
  %.not259.i = icmp eq i64 %.0228314.i, %i.ok
  br i1 %.not259.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !29
  br label %.sink.split.i

bb.at:                                            ; preds = %bb.ar
  %i.on = trunc nuw i64 %.0228314.i to i32        ; 4 uses
  br i1 %.not261.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.at
  br i1 %.not260.i, label %.split.us.split.us.i, label %.split.us.split.i

.split.us.split.us.i:                             ; preds = %.split.us.i, %.split.us.split.us.i
  %.0225.us.us.i = phi i32 [ %i.oq, %.split.us.split.us.i ], [ %i.on, %.split.us.i ]
  %i.oo = zext i32 %.0225.us.us.i to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !28 ; 3 uses
  %i.or = zext i32 %i.oq to i64
  %.not262.us.us.i = icmp eq i64 %.0228314.i, %i.or
  br i1 %.not262.us.us.i, label %.preheader287.i.preheader, label %.split.us.split.us.i, !llvm.loop !70

.split.us.split.i:                                ; preds = %.split.us.i, %.split.us.split.i
  %.0225.us.i = phi i32 [ %i.ou, %.split.us.split.i ], [ %i.on, %.split.us.i ]
  %i.os = zext i32 %.0225.us.i to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !28 ; 3 uses
  %i.ov = zext i32 %i.ou to i64
  %.not262.us.i = icmp eq i64 %.0228314.i, %i.ov
  br i1 %.not262.us.i, label %.preheader287.i.preheader, label %.split.us.split.i, !llvm.loop !70

.split.i:                                         ; preds = %bb.at
  br i1 %.not260.i, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i, %.split.split.us.i
  %.0226.us300.i = phi i1 [ %i.pc, %.split.split.us.i ], [ false, %.split.i ]
  %.0225.us301.i = phi i32 [ %i.pe, %.split.split.us.i ], [ %i.on, %.split.i ]
  %i.ow = zext i32 %.0225.us301.i to i64          ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %10, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !29
  %i.oz = lshr i8 %i.oy, 1
  %.lobit.us.i = and i8 %i.oz, 1
  %i.pa = zext i1 %.0226.us300.i to i8
  %i.pb = or i8 %.lobit.us.i, %i.pa
  %i.pc = icmp ne i8 %i.pb, 0                     ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ow
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !28 ; 3 uses
  %i.pf = zext i32 %i.pe to i64
  %.not262.us302.i = icmp eq i64 %.0228314.i, %i.pf
  br i1 %.not262.us302.i, label %.preheader287.i.preheader, label %.split.split.us.i, !llvm.loop !70

.split.split.i:                                   ; preds = %.split.i, %.split.split.i
  %.0226.i = phi i1 [ %i.pp, %.split.split.i ], [ false, %.split.i ]
  %.0225.i = phi i32 [ %i.pr, %.split.split.i ], [ %i.on, %.split.i ]
  %i.pg = zext i32 %.0225.i to i64                ; 2 uses
end_hunk_0
begin_hunk_1_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a

pred.store.continue1148:                          ; preds = %pred.store.if1147, %pred.store.continue1146
  %i.xo = extractelement <16 x i1> %i.us, i64 9
  br i1 %i.xo, label %pred.store.if1149, label %pred.store.continue1150

pred.store.if1149:                                ; preds = %pred.store.continue1148
  %i.xp = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 25
  store i8 4, ptr %i.xq, align 1, !tbaa !29
  br label %pred.store.continue1150

pred.store.continue1150:                          ; preds = %pred.store.if1149, %pred.store.continue1148
  %i.xr = extractelement <16 x i1> %i.us, i64 10
  br i1 %i.xr, label %pred.store.if1151, label %pred.store.continue1152

pred.store.if1151:                                ; preds = %pred.store.continue1150
  %i.xs = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 26
  store i8 4, ptr %i.xt, align 1, !tbaa !29
  br label %pred.store.continue1152

pred.store.continue1152:                          ; preds = %pred.store.if1151, %pred.store.continue1150
  %i.xu = extractelement <16 x i1> %i.us, i64 11
  br i1 %i.xu, label %pred.store.if1153, label %pred.store.continue1154

pred.store.if1153:                                ; preds = %pred.store.continue1152
  %i.xv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 27
  store i8 4, ptr %i.xw, align 1, !tbaa !29
  br label %pred.store.continue1154

pred.store.continue1154:                          ; preds = %pred.store.if1153, %pred.store.continue1152
  %i.xx = extractelement <16 x i1> %i.us, i64 12
  br i1 %i.xx, label %pred.store.if1155, label %pred.store.continue1156

pred.store.if1155:                                ; preds = %pred.store.continue1154
  %i.xy = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 28
  store i8 4, ptr %i.xz, align 1, !tbaa !29
  br label %pred.store.continue1156

pred.store.continue1156:                          ; preds = %pred.store.if1155, %pred.store.continue1154
  %i.ya = extractelement <16 x i1> %i.us, i64 13
  br i1 %i.ya, label %pred.store.if1157, label %pred.store.continue1158

pred.store.if1157:                                ; preds = %pred.store.continue1156
  %i.yb = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 29
  store i8 4, ptr %i.yc, align 1, !tbaa !29
  br label %pred.store.continue1158

pred.store.continue1158:                          ; preds = %pred.store.if1157, %pred.store.continue1156
  %i.yd = extractelement <16 x i1> %i.us, i64 14
  br i1 %i.yd, label %pred.store.if1159, label %pred.store.continue1160

pred.store.if1159:                                ; preds = %pred.store.continue1158
  %i.ye = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 30
  store i8 4, ptr %i.yf, align 1, !tbaa !29
  br label %pred.store.continue1160

pred.store.continue1160:                          ; preds = %pred.store.if1159, %pred.store.continue1158
  %i.yg = extractelement <16 x i1> %i.us, i64 15
  br i1 %i.yg, label %pred.store.if1161, label %pred.store.continue1162

pred.store.if1161:                                ; preds = %pred.store.continue1160
  %i.yh = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 31
  store i8 4, ptr %i.yi, align 1, !tbaa !29
  br label %pred.store.continue1162

pred.store.continue1162:                          ; preds = %pred.store.if1161, %pred.store.continue1160
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yj = icmp eq i64 %index.next, %n.vec
  br i1 %i.yj, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %pred.store.continue1162
  %cmp.n = icmp eq i64 %.0702, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph323.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1163 = and i64 %.0702, -8                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue1181, %vec.epilog.ph
  %index1164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1182, %pred.store.continue1181 ] ; 9 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164 ; 2 uses
  %wide.load1165 = load <8 x i8>, ptr %i.yk, align 1, !tbaa !29
  %i.yl = icmp eq <8 x i8> %wide.load1165, splat (i8 1) ; 8 uses
  %i.ym = extractelement <8 x i1> %i.yl, i64 0
  br i1 %i.ym, label %pred.store.if1166, label %pred.store.continue1167

pred.store.if1166:                                ; preds = %vec.epilog.vector.body
  store i8 4, ptr %i.yk, align 1, !tbaa !29
  br label %pred.store.continue1167

pred.store.continue1167:                          ; preds = %pred.store.if1166, %vec.epilog.vector.body
  %i.yn = extractelement <8 x i1> %i.yl, i64 1
  br i1 %i.yn, label %pred.store.if1168, label %pred.store.continue1169

pred.store.if1168:                                ; preds = %pred.store.continue1167
  %i.yo = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  store i8 4, ptr %i.yp, align 1, !tbaa !29
  br label %pred.store.continue1169

pred.store.continue1169:                          ; preds = %pred.store.if1168, %pred.store.continue1167
  %i.yq = extractelement <8 x i1> %i.yl, i64 2
  br i1 %i.yq, label %pred.store.if1170, label %pred.store.continue1171

pred.store.if1170:                                ; preds = %pred.store.continue1169
  %i.yr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 2
  store i8 4, ptr %i.ys, align 1, !tbaa !29
  br label %pred.store.continue1171

pred.store.continue1171:                          ; preds = %pred.store.if1170, %pred.store.continue1169
  %i.yt = extractelement <8 x i1> %i.yl, i64 3
  br i1 %i.yt, label %pred.store.if1172, label %pred.store.continue1173

pred.store.if1172:                                ; preds = %pred.store.continue1171
  %i.yu = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 3
  store i8 4, ptr %i.yv, align 1, !tbaa !29
  br label %pred.store.continue1173

pred.store.continue1173:                          ; preds = %pred.store.if1172, %pred.store.continue1171
  %i.yw = extractelement <8 x i1> %i.yl, i64 4
  br i1 %i.yw, label %pred.store.if1174, label %pred.store.continue1175

pred.store.if1174:                                ; preds = %pred.store.continue1173
  %i.yx = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  store i8 4, ptr %i.yy, align 1, !tbaa !29
  br label %pred.store.continue1175

pred.store.continue1175:                          ; preds = %pred.store.if1174, %pred.store.continue1173
  %i.yz = extractelement <8 x i1> %i.yl, i64 5
  br i1 %i.yz, label %pred.store.if1176, label %pred.store.continue1177

pred.store.if1176:                                ; preds = %pred.store.continue1175
  %i.za = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 5
  store i8 4, ptr %i.zb, align 1, !tbaa !29
  br label %pred.store.continue1177

pred.store.continue1177:                          ; preds = %pred.store.if1176, %pred.store.continue1175
  %i.zc = extractelement <8 x i1> %i.yl, i64 6
  br i1 %i.zc, label %pred.store.if1178, label %pred.store.continue1179

pred.store.if1178:                                ; preds = %pred.store.continue1177
  %i.zd = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 6
  store i8 4, ptr %i.ze, align 1, !tbaa !29
  br label %pred.store.continue1179

pred.store.continue1179:                          ; preds = %pred.store.if1178, %pred.store.continue1177
  %i.zf = extractelement <8 x i1> %i.yl, i64 7
  br i1 %i.zf, label %pred.store.if1180, label %pred.store.continue1181

pred.store.if1180:                                ; preds = %pred.store.continue1179
  %i.zg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 7
  store i8 4, ptr %i.zh, align 1, !tbaa !29
  br label %pred.store.continue1181

pred.store.continue1181:                          ; preds = %pred.store.if1180, %pred.store.continue1179
  %index.next1182 = add nuw i64 %index1164, 8     ; 2 uses
  %i.zi = icmp eq i64 %index.next1182, %n.vec1163
  br i1 %i.zi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %pred.store.continue1181
  %cmp.n1183 = icmp eq i64 %.0702, %n.vec1163
  br i1 %cmp.n1183, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i.preheader

.lr.ph323.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0322.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1163, %vec.epilog.middle.block ]
  br label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader, %bb.bn
  %.0322.i = phi i64 [ %i.zm, %bb.bn ], [ %.0322.i.ph, %.lr.ph323.i.preheader ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0322.i ; 2 uses
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !29
  %i.zl = icmp eq i8 %i.zk, 1
  br i1 %i.zl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph323.i
  store i8 4, ptr %i.zj, align 1, !tbaa !29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph323.i
  %i.zm = add nuw i64 %.0322.i, 1                 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %i.zm, %.0702
  br i1 %exitcond350.not.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i, !llvm.loop !80

_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit: ; preds = %bb.bn, %middle.block, %vec.epilog.middle.block, %bb.p, %.loopexit284.i
  %i.zn = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.zo = icmp ugt i64 %.0702, 1537228672809129301
  %i.zp = mul nuw i64 %.0702, 12
  %i.zq = select i1 %i.zo, i64 -1, i64 %i.zp
  %i.zr = invoke noundef ptr %i.zn(i64 noundef %i.zq)
          to label %bb.bo unwind label %bb.bw, !inline_history !5 ; 37 uses

bb.bo:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.zs = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.zt = add nuw nsw i64 %i.zs, 1
  store i64 %i.zt, ptr %i.es, align 8, !tbaa !26
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.zs
  store ptr %i.zr, ptr %i.zu, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.zv = call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.zr, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull %i.b) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.not402 = icmp eq i64 %9, 0
  br i1 %.not402, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.preheader729.preheader

.preheader729.preheader:                          ; preds = %bb.bo
  %xtraiter1306 = and i64 %9, 1
  %i.zw = icmp eq i64 %9, 1
  br i1 %i.zw, label %.preheader729.epil.preheader, label %.preheader729.preheader.new

.preheader729.preheader.new:                      ; preds = %.preheader729.preheader
  %unroll_iter1311 = and i64 %9, -2
  br label %.preheader729

.unr-lcssa:                                       ; preds = %bb.bz
  %lcmp.mod1308.not = icmp eq i64 %xtraiter1306, 0
  br i1 %lcmp.mod1308.not, label %.epilog-lcssa, label %.preheader729.epil.preheader

.preheader729.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader729.preheader
  %.0349774.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %i.abd, %.unr-lcssa ] ; 2 uses
  %.0350773.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %.1351.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod1310 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod1310)
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774.epil.init
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !44
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  br i1 %i.zz, label %bb.bp, label %.epilog-lcssa

bb.bp:                                            ; preds = %.preheader729.epil.preheader
  %i.aaa = trunc i64 %.0349774.epil.init to i32
  %i.aab = add nuw nsw i64 %.0350773.epil.init, 1
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773.epil.init
  store i32 %i.aaa, ptr %i.aac, align 4, !tbaa !28
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader729.epil.preheader, %bb.bp, %.unr-lcssa
  %.1351.lcssa = phi i64 [ %.1351.1, %.unr-lcssa ], [ %i.aab, %bb.bp ], [ %.0350773.epil.init, %.preheader729.epil.preheader ] ; 15 uses
  %i.aad = mul i64 %.1351.lcssa, %.0702           ; 2 uses
  %i.aae = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aaf = icmp ugt i64 %i.aad, 4611686018427387903
  %i.aag = shl nuw i64 %i.aad, 2
  %i.aah = select i1 %i.aaf, i64 -1, i64 %i.aag
  %i.aai = invoke noundef ptr %i.aae(i64 noundef %i.aah)
          to label %bb.ca unwind label %bb.cb, !inline_history !6 ; 7 uses

bb.bq:                                            ; preds = %.noexc437, %bb.i
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.br:                                            ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bs:                                            ; preds = %bb.k, %bb.l
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bt:                                            ; preds = %bb.m
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bu:                                            ; preds = %bb.n
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bv:                                            ; preds = %bb.o
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bw:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.preheader729:                                    ; preds = %bb.bz, %.preheader729.preheader.new
  %.0349774 = phi i64 [ 0, %.preheader729.preheader.new ], [ %i.abd, %bb.bz ] ; 4 uses
  %.0350773 = phi i64 [ 0, %.preheader729.preheader.new ], [ %.1351.1, %bb.bz ] ; 3 uses
  %niter1312 = phi i64 [ 0, %.preheader729.preheader.new ], [ %niter1312.next.1, %bb.bz ]
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !44
  %i.aas = fcmp ogt float %i.aar, 0.000000e+00
  br i1 %i.aas, label %bb.bx, label %.preheader729.1

bb.bx:                                            ; preds = %.preheader729
  %i.aat = trunc i64 %.0349774 to i32
  %i.aau = add nuw nsw i64 %.0350773, 1
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773
  store i32 %i.aat, ptr %i.aav, align 4, !tbaa !28
  br label %.preheader729.1

.preheader729.1:                                  ; preds = %.preheader729, %bb.bx
  %.1351 = phi i64 [ %i.aau, %bb.bx ], [ %.0350773, %.preheader729 ] ; 3 uses
  %i.aaw = or disjoint i64 %.0349774, 1           ; 2 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aaw
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !44
  %i.aaz = fcmp ogt float %i.aay, 0.000000e+00
  br i1 %i.aaz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.preheader729.1
  %i.aba = trunc i64 %i.aaw to i32
  %i.abb = add nuw nsw i64 %.1351, 1
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.1351
  store i32 %i.aba, ptr %i.abc, align 4, !tbaa !28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.preheader729.1
  %.1351.1 = phi i64 [ %i.abb, %bb.by ], [ %.1351, %.preheader729.1 ] ; 3 uses
  %i.abd = add nuw i64 %.0349774, 2               ; 2 uses
  %niter1312.next.1 = add nuw i64 %niter1312, 2   ; 2 uses
  %niter1312.ncmp.1 = icmp eq i64 %niter1312.next.1, %unroll_iter1311
  br i1 %niter1312.ncmp.1, label %.unr-lcssa, label %.preheader729, !llvm.loop !81

bb.ca:                                            ; preds = %.epilog-lcssa
  %i.abe = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.abf = add nuw nsw i64 %i.abe, 1
  store i64 %i.abf, ptr %i.es, align 8, !tbaa !26
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.abe
  store ptr %i.aai, ptr %i.abg, align 8, !tbaa !27
  %i.abh = lshr i64 %7, 2                         ; 2 uses
  br i1 %.not88.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.ca
  %.not33.i = icmp eq i64 %.1351.lcssa, 0
  br i1 %.not33.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.split.us.i

.lr.ph29.split.us.i:                              ; preds = %.lr.ph29.i
  %.not.i458 = icmp eq ptr %.0379, null
  br i1 %.not.i458, label %.lr.ph.us.us.i.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph29.split.us.i
  %xtraiter1313 = and i64 %.1351.lcssa, 1
  %i.abi = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1317 = and i64 %.1351.lcssa, -2
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1313, 0
  %lcmp.mod1316 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph29.split.us.i
  %xtraiter1320 = and i64 %.1351.lcssa, 1
  %i.abj = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1324 = and i64 %.1351.lcssa, -2
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1320, 0
  %lcmp.mod1323 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.027.us.us.i = phi i64 [ %i.acs, %._crit_edge.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ] ; 3 uses
  %i.abk = and i64 %.027.us.us.i, 4294967295
  %i.abl = mul i64 %i.abk, %i.abh
  %i.abm = getelementptr [4 x i8], ptr %6, i64 %i.abl ; 3 uses
  %i.abn = mul i64 %.027.us.us.i, %.1351.lcssa
  %i.abo = getelementptr [4 x i8], ptr %i.aai, i64 %i.abn ; 3 uses
  br i1 %i.abj, label %.epil.preheader1319, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %.02326.us.us.i = phi i64 [ %i.aci, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %niter1325 = phi i64 [ %niter1325.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.us.i
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !28
  %i.abr = zext i32 %i.abq to i64                 ; 2 uses
  %i.abs = getelementptr [4 x i8], ptr %i.abm, i64 %i.abr
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !44
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.abr
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !44
  %i.abw = fmul float %i.abt, %i.abv
  %i.abx = getelementptr [4 x i8], ptr %i.abo, i64 %.02326.us.us.i
  store float %i.abw, ptr %i.abx, align 4, !tbaa !44
  %i.aby = or disjoint i64 %.02326.us.us.i, 1     ; 2 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !28
  %i.acb = zext i32 %i.aca to i64                 ; 2 uses
  %i.acc = getelementptr [4 x i8], ptr %i.abm, i64 %i.acb
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !44
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.acb
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !44
  %i.acg = fmul float %i.acd, %i.acf
  %i.ach = getelementptr [4 x i8], ptr %i.abo, i64 %i.aby
  store float %i.acg, ptr %i.ach, align 4, !tbaa !44
  %i.aci = add nuw nsw i64 %.02326.us.us.i, 2     ; 2 uses
end_hunk_1
begin_hunk_2_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.cvu
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !28 ; 2 uses
  %i.cvx = zext i32 %i.cvo to i64
  %i.cvy = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.cvx
  %i.cvz = load i32, ptr %i.cvy, align 4, !tbaa !28 ; 2 uses
  %i.cwa = zext i32 %i.cvt to i64
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.cwa
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !28 ; 2 uses
  %.not.i563 = icmp eq i32 %i.cvw, %i.cvz
  %.not38.i = icmp eq i32 %i.cvw, %i.cwc
  %.not39.i = icmp eq i32 %i.cvz, %i.cwc
  %i.cwd = or i1 %.not38.i, %.not39.i
  %or.cond40.i = select i1 %.not.i563, i1 true, i1 %i.cwd
  br i1 %or.cond40.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph.i562
  %i.cwe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03441.i ; 3 uses
  store i32 %i.cvj, ptr %i.cwe, align 4, !tbaa !28
  %i.cwf = getelementptr i8, ptr %i.cwe, i64 4
  store i32 %i.cvo, ptr %i.cwf, align 4, !tbaa !28
  %i.cwg = getelementptr i8, ptr %i.cwe, i64 8
  store i32 %i.cvt, ptr %i.cwg, align 4, !tbaa !28
  %i.cwh = add i64 %.03441.i, 3
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %.lr.ph.i562
  %.1.i564 = phi i64 [ %i.cwh, %bb.gz ], [ %.03441.i, %.lr.ph.i562 ] ; 4 uses
  %i.cwi = add i64 %.042.i, 3                     ; 2 uses
  %i.cwj = icmp ult i64 %i.cwi, %.0339782
  br i1 %i.cwj, label %.lr.ph.i562, label %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit, !llvm.loop !112

_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit:    ; preds = %bb.ha
  %i.cwk = icmp ugt i64 %.1.i564, %11
  %or.cond428 = and i1 %.not405, %i.cwk
  %i.cwl = fcmp ole float %.2698779, %i.cve
  %or.cond718.not = select i1 %or.cond428, i1 %i.cwl, i1 false
  br i1 %or.cond718.not, label %.lr.ph.i567, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit

.lr.ph.i567:                                      ; preds = %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit, %bb.hc
  %.038.i = phi i64 [ %i.cxb, %bb.hc ], [ 0, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ] ; 2 uses
  %.03237.i = phi float [ %.1.i568, %bb.hc ], [ f0x7F7FFFFF, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ] ; 3 uses
  %.03336.i = phi i64 [ %.134.i, %bb.hc ], [ 0, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ] ; 3 uses
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.cwn = load i32, ptr %i.cwm, align 4, !tbaa !28 ; 2 uses
  %i.cwo = zext i32 %i.cwn to i64
  %i.cwp = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %i.cwo
  %i.cwq = load i32, ptr %i.cwp, align 4, !tbaa !28
  %i.cwr = zext i32 %i.cwq to i64
  %i.cws = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %i.cwr
  %i.cwt = load float, ptr %i.cws, align 4, !tbaa !44 ; 3 uses
  %i.cwu = fcmp ogt float %i.cwt, %i.cve
  br i1 %i.cwu, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph.i567
  %i.cwv = getelementptr i8, ptr %i.cwm, i64 4
  %i.cww = fcmp ogt float %.03237.i, %i.cwt
  %..032.i = select i1 %i.cww, float %i.cwt, float %.03237.i
  %i.cwx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03336.i ; 2 uses
  %i.cwy = getelementptr i8, ptr %i.cwx, i64 4
  %i.cwz = load <2 x i32>, ptr %i.cwv, align 4, !tbaa !28
  store i32 %i.cwn, ptr %i.cwx, align 4, !tbaa !28
  store <2 x i32> %i.cwz, ptr %i.cwy, align 4, !tbaa !28
  %i.cxa = add i64 %.03336.i, 3
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.i567
  %.134.i = phi i64 [ %i.cxa, %bb.hb ], [ %.03336.i, %.lr.ph.i567 ] ; 2 uses
  %.1.i568 = phi float [ %..032.i, %bb.hb ], [ %.03237.i, %.lr.ph.i567 ] ; 2 uses
  %i.cxb = add i64 %.038.i, 3                     ; 2 uses
  %i.cxc = icmp ult i64 %i.cxb, %.1.i564
  br i1 %i.cxc, label %.lr.ph.i567, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, !llvm.loop !8

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit: ; preds = %bb.hc, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit
  %.3699 = phi float [ %.2698779, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ], [ %.1.i568, %bb.hc ] ; 2 uses
  %.3 = phi i64 [ %.1.i564, %_ZN7meshoptL16remapIndexBufferEPjmPKjS2_.exit ], [ %.134.i, %bb.hc ] ; 3 uses
  %i.cxd = icmp ugt i64 %.3, %11
  br i1 %i.cxd, label %.preheader.i505.preheader, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread: ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit, %.lr.ph784.split.us, %bb.dn
  %.2698.lcssa = phi float [ %.1697, %.lr.ph784.split.us ], [ %.1697, %bb.dn ], [ %.2698779, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit ], [ %.2698779, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit ], [ %.3699, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 2 uses
  %.0339.lcssa = phi i64 [ %2, %.lr.ph784.split.us ], [ %2, %bb.dn ], [ %.0339782, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit ], [ %.0339782, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit ], [ %.3, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 3 uses
  %.2690 = phi float [ 0.000000e+00, %.lr.ph784.split.us ], [ 0.000000e+00, %bb.dn ], [ %.8, %_ZN7meshoptL20performEdgeCollapsesEPjPhPKNS_8CollapseEmPKjS6_S6_PKhS6_S6_PKNS_7Vector3ERKNS_13EdgeAdjacencyEmfRf.exit ], [ %.0688780, %_ZN7meshoptL17pickEdgeCollapsesEPNS_8CollapseEmPKjmS3_PKhS3_S3_.exit ], [ %.8, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 2 uses
  %not..not405 = xor i1 %.not405, true
  %i.cxe = icmp ule i64 %.0339.lcssa, %11
  %or.cond430810 = or i1 %i.cxe, %not..not405
  %i.cxf = fcmp ugt float %.2698.lcssa, %i.bga
  %or.cond719811 = select i1 %or.cond430810, i1 true, i1 %i.cxf
  br i1 %or.cond719811, label %.critedge, label %.lr.ph817

.lr.ph817:                                        ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread
  %xtraiter1376 = and i64 %.0343, 1
  %i.cxg = icmp eq i64 %.0343, 1                  ; 0 uses
  %unroll_iter1381 = and i64 %.0343, 4294967294
  %lcmp.mod1378.not = icmp eq i64 %xtraiter1376, 0
  %lcmp.mod1380 = trunc i64 %.0343 to i1
  br label %bb.hd

bb.hd:                                            ; preds = %.lr.ph817, %bb.hg
  %.0334816 = phi i1 [ true, %.lr.ph817 ], [ false, %bb.hg ]
  %.5815 = phi i64 [ %.0339.lcssa, %.lr.ph817 ], [ %.134.i575, %bb.hg ] ; 3 uses
  %.3691813 = phi float [ %.2690, %.lr.ph817 ], [ %i.cyr, %bb.hg ] ; 3 uses
  %.5701812 = phi float [ %.2698.lcssa, %.lr.ph817 ], [ %.1.i576, %bb.hg ]
  %i.cxh = fmul float %.5701812, 1.500000e+00     ; 2 uses
  %i.cxi = fcmp olt float %i.cxh, %i.bga
  %i.cxj = select i1 %i.cxi, float %i.cxh, float %i.bga ; 4 uses
  switch i64 %.0343, label %.lr.ph808 [
    i64 0, label %.lr.ph.i571.preheader
    i64 1, label %.lr.ph808.epil.preheader
  ]

.lr.ph.i571.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph808
  br i1 %lcmp.mod1378.not, label %.lr.ph.i571.preheader, label %.lr.ph808.epil.preheader

.lr.ph808.epil.preheader:                         ; preds = %bb.hd, %.lr.ph.i571.preheader.loopexit.unr-lcssa
  %.0332806.epil.init = phi i64 [ 0, %bb.hd ], [ %i.cyp, %.lr.ph.i571.preheader.loopexit.unr-lcssa ]
  %.0333805.epil.init = phi float [ 0.000000e+00, %bb.hd ], [ %.1.1, %.lr.ph.i571.preheader.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1380)
  %i.cxk = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332806.epil.init
  %i.cxl = load float, ptr %i.cxk, align 4, !tbaa !44 ; 3 uses
  %i.cxm = fcmp ule float %i.cxl, %.0333805.epil.init
  %i.cxn = fcmp ugt float %i.cxl, %i.cxj
  %or.cond431.epil = select i1 %i.cxm, i1 true, i1 %i.cxn
  %.1.epil = select i1 %or.cond431.epil, float %.0333805.epil.init, float %i.cxl
  br label %.lr.ph.i571.preheader

.lr.ph.i571.preheader:                            ; preds = %.lr.ph808.epil.preheader, %.lr.ph.i571.preheader.loopexit.unr-lcssa, %bb.hd
  %.0333.lcssa = phi float [ 0.000000e+00, %bb.hd ], [ %.1.1, %.lr.ph.i571.preheader.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph808.epil.preheader ] ; 2 uses
  br label %.lr.ph.i571

.lr.ph.i571:                                      ; preds = %.lr.ph.i571.preheader, %bb.hf
  %.038.i572 = phi i64 [ %i.cyd, %bb.hf ], [ 0, %.lr.ph.i571.preheader ] ; 2 uses
  %.03237.i573 = phi float [ %.1.i576, %bb.hf ], [ f0x7F7FFFFF, %.lr.ph.i571.preheader ] ; 3 uses
  %.03336.i574 = phi i64 [ %.134.i575, %bb.hf ], [ 0, %.lr.ph.i571.preheader ] ; 3 uses
  %i.cxo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.038.i572 ; 2 uses
  %i.cxp = load i32, ptr %i.cxo, align 4, !tbaa !28 ; 2 uses
  %i.cxq = zext i32 %i.cxp to i64
  %i.cxr = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %i.cxq
  %i.cxs = load i32, ptr %i.cxr, align 4, !tbaa !28
  %i.cxt = zext i32 %i.cxs to i64
  %i.cxu = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %i.cxt
  %i.cxv = load float, ptr %i.cxu, align 4, !tbaa !44 ; 3 uses
  %i.cxw = fcmp ogt float %i.cxv, %i.cxj
  br i1 %i.cxw, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.lr.ph.i571
  %i.cxx = getelementptr i8, ptr %i.cxo, i64 4
  %i.cxy = fcmp ogt float %.03237.i573, %i.cxv
  %..032.i580 = select i1 %i.cxy, float %i.cxv, float %.03237.i573
  %i.cxz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03336.i574 ; 2 uses
  %i.cya = getelementptr i8, ptr %i.cxz, i64 4
  %i.cyb = load <2 x i32>, ptr %i.cxx, align 4, !tbaa !28
  store i32 %i.cxp, ptr %i.cxz, align 4, !tbaa !28
  store <2 x i32> %i.cyb, ptr %i.cya, align 4, !tbaa !28
  %i.cyc = add i64 %.03336.i574, 3
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph.i571
  %.134.i575 = phi i64 [ %i.cyc, %bb.he ], [ %.03336.i574, %.lr.ph.i571 ] ; 5 uses
  %.1.i576 = phi float [ %..032.i580, %bb.he ], [ %.03237.i573, %.lr.ph.i571 ] ; 3 uses
  %i.cyd = add i64 %.038.i572, 3                  ; 2 uses
  %i.cye = icmp ult i64 %i.cyd, %.5815
  br i1 %i.cye, label %.lr.ph.i571, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581, !llvm.loop !8

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581: ; preds = %bb.hf
  %i.cyf = icmp ne i64 %.134.i575, %.5815
  %or.cond = or i1 %.0334816, %i.cyf
  br i1 %or.cond, label %bb.hg, label %.critedge

.lr.ph808:                                        ; preds = %bb.hd, %.lr.ph808
  %.0332806 = phi i64 [ %i.cyp, %.lr.ph808 ], [ 0, %bb.hd ] ; 3 uses
  %.0333805 = phi float [ %.1.1, %.lr.ph808 ], [ 0.000000e+00, %bb.hd ] ; 2 uses
  %niter1382 = phi i64 [ %niter1382.next.1, %.lr.ph808 ], [ 0, %bb.hd ]
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332806
  %i.cyh = load float, ptr %i.cyg, align 4, !tbaa !44 ; 3 uses
  %i.cyi = fcmp ule float %i.cyh, %.0333805
  %i.cyj = fcmp ugt float %i.cyh, %i.cxj
  %or.cond431 = select i1 %i.cyi, i1 true, i1 %i.cyj
  %.1 = select i1 %or.cond431, float %.0333805, float %i.cyh ; 2 uses
  %i.cyk = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332806
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 4
  %i.cym = load float, ptr %i.cyl, align 4, !tbaa !44 ; 3 uses
  %i.cyn = fcmp ule float %i.cym, %.1
  %i.cyo = fcmp ugt float %i.cym, %i.cxj
  %or.cond431.1 = select i1 %i.cyn, i1 true, i1 %i.cyo
  %.1.1 = select i1 %or.cond431.1, float %.1, float %i.cym ; 3 uses
  %i.cyp = add nuw nsw i64 %.0332806, 2           ; 2 uses
  %niter1382.next.1 = add nuw nsw i64 %niter1382, 2 ; 2 uses
  %niter1382.ncmp.1 = icmp eq i64 %niter1382.next.1, %unroll_iter1381
  br i1 %niter1382.ncmp.1, label %.lr.ph.i571.preheader.loopexit.unr-lcssa, label %.lr.ph808, !llvm.loop !113

bb.hg:                                            ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581
  %i.cyq = fcmp olt float %.3691813, %.0333.lcssa
  %i.cyr = select i1 %i.cyq, float %.0333.lcssa, float %.3691813 ; 2 uses
  %i.cys = icmp ule i64 %.134.i575, %11
  %i.cyt = fcmp ugt float %.1.i576, %i.bga
  %or.cond719 = select i1 %i.cys, i1 true, i1 %i.cyt
  br i1 %or.cond719, label %.critedge, label %bb.hd

.critedge:                                        ; preds = %bb.hg, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread
  %.3691.lcssa = phi float [ %.2690, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread ], [ %.3691813, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581 ], [ %i.cyr, %bb.hg ]
  %.5.lcssa = phi i64 [ %.0339.lcssa, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread ], [ %.5815, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit581 ], [ %.134.i575, %bb.hg ] ; 13 uses
  %i.cyu = and i32 %13, 536870912
  %.not408 = icmp eq i32 %i.cyu, 0
  br i1 %.not408, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %bb.hh

bb.hh:                                            ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr align 1 %i.bfs, i8 0, i64 %.0702, i1 false)
  %.not837 = icmp eq i64 %.5.lcssa, 0
  br i1 %.not837, label %._crit_edge825, label %.lr.ph824.preheader

.lr.ph824.preheader:                              ; preds = %bb.hh
  %xtraiter1383 = and i64 %.5.lcssa, 1
  %i.cyv = icmp eq i64 %.5.lcssa, 1
  br i1 %i.cyv, label %.lr.ph824.epil.preheader, label %.lr.ph824.preheader.new

.lr.ph824.preheader.new:                          ; preds = %.lr.ph824.preheader
  %unroll_iter1387 = and i64 %.5.lcssa, -2
  br label %.lr.ph824

._crit_edge825.loopexit.unr-lcssa:                ; preds = %.lr.ph824
  %lcmp.mod1385.not = icmp eq i64 %xtraiter1383, 0
  br i1 %lcmp.mod1385.not, label %._crit_edge825, label %.lr.ph824.epil.preheader

.lr.ph824.epil.preheader:                         ; preds = %._crit_edge825.loopexit.unr-lcssa, %.lr.ph824.preheader
  %.0331822.epil.init = phi i64 [ 0, %.lr.ph824.preheader ], [ %i.dmu, %._crit_edge825.loopexit.unr-lcssa ]
  %lcmp.mod1386 = trunc i64 %.5.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1386)
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331822.epil.init
  %i.cyx = load i32, ptr %i.cyw, align 4, !tbaa !28
  %i.cyy = zext i32 %i.cyx to i64                 ; 2 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %i.cyy
  store i8 1, ptr %i.cyz, align 1, !tbaa !29
  %i.cza = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.cyy
  %i.czb = load i32, ptr %i.cza, align 4, !tbaa !28
  %i.czc = zext i32 %i.czb to i64
  %i.czd = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %i.czc
  store i8 1, ptr %i.czd, align 1, !tbaa !29
  br label %._crit_edge825

._crit_edge825:                                   ; preds = %.lr.ph824.epil.preheader, %._crit_edge825.loopexit.unr-lcssa, %bb.hh
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %.5.lcssa, i64 noundef %.0702, ptr noundef %i.jg)
  br i1 %.not88.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.i582

.lr.ph.i582:                                      ; preds = %._crit_edge825
  %.not70.i = icmp eq ptr %.0346, null
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, %.lr.ph.i582
  %.06245.i = phi i64 [ 0, %.lr.ph.i582 ], [ %i.dmc, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i ] ; 13 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %.06245.i
  %i.czf = load i8, ptr %i.cze, align 1, !tbaa !29
  %.not.i584 = icmp eq i8 %i.czf, 0
  br i1 %.not.i584, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.czg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.06245.i
  %i.czh = load i8, ptr %i.czg, align 1, !tbaa !29
  switch i8 %i.czh, label %bb.hk [
    i8 4, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
    i8 2, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
    i8 1, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
  ]

bb.hk:                                            ; preds = %bb.hj
  %i.czi = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.06245.i
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !28
  %i.czk = zext i32 %i.czj to i64                 ; 2 uses
  %.not67.i = icmp eq i64 %.06245.i, %i.czk
  br i1 %.not67.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.czl = getelementptr inbounds nuw [12 x i8], ptr %i.zr, i64 %i.czk
  %i.czm = getelementptr inbounds nuw [12 x i8], ptr %i.zr, i64 %.06245.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.czm, ptr noundef nonnull align 4 dereferenceable(12) %i.czl, i64 12, i1 false), !tbaa.struct !142
  br label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

bb.hm:                                            ; preds = %bb.hk
  %i.czn = getelementptr inbounds nuw [12 x i8], ptr %i.zr, i64 %.06245.i ; 4 uses
  %i.czo = getelementptr inbounds nuw [44 x i8], ptr %i.aej, i64 %.06245.i ; 11 uses
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 8
  %.sroa.1819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 12
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 16
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 20
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 24
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 28
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 32
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 36
  %.sroa.33.0.copyload.i = load float, ptr %.sroa.33.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.48.0.copyload.i = load float, ptr %.sroa.48.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.011.0.copyload.i = load float, ptr %i.czo, align 4, !tbaa !44 ; 3 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.43.0.copyload.i = load float, ptr %.sroa.43.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.38.0.copyload.i = load float, ptr %.sroa.38.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.czo, i64 40
  %.sroa.50.0.copyload.i = load float, ptr %.sroa.50.0..sroa_idx.i, align 4, !tbaa !44 ; 4 uses
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czn, i64 4 ; 2 uses
  %i.czq = load <2 x float>, ptr %i.czn, align 4, !tbaa !44 ; 3 uses
  %i.czr = load float, ptr %i.czp, align 4, !tbaa !50 ; 6 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %i.czn, i64 8 ; 2 uses
  %i.czt = load float, ptr %i.czs, align 4, !tbaa !46 ; 8 uses
  %i.czu = fmul float %.sroa.50.0.copyload.i, f0x38D1B717 ; 6 uses
  %i.czv = extractelement <2 x float> %i.czq, i64 0 ; 7 uses
  %i.czw = fmul float %i.czv, %i.czu
  %i.czx = fsub float %.sroa.33.0.copyload.i, %i.czw ; 2 uses
  %i.czy = fmul float %i.czu, %i.czr
  %i.czz = load <2 x float>, ptr %.sroa.1819.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %i.daa = shufflevector <2 x float> %i.czz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.dab = insertelement <4 x float> %i.daa, float %.sroa.38.0.copyload.i, i64 0
  %i.dac = insertelement <4 x float> %i.dab, float %.sroa.011.0.copyload.i, i64 3 ; 2 uses
  %i.dad = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.czy, i64 0
  %i.dae = insertelement <4 x float> %i.dad, float %i.czu, i64 3 ; 2 uses
  %i.daf = fsub <4 x float> %i.dac, %i.dae
  %i.dag = fadd <4 x float> %i.dac, %i.dae
  %i.dah = shufflevector <4 x float> %i.daf, <4 x float> %i.dag, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.dai = fmul float %i.czu, %i.czt
  %i.daj = load <2 x float>, ptr %.sroa.814.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !44
  %i.dak = shufflevector <2 x float> %i.daj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.dal = insertelement <4 x float> %i.dak, float %.sroa.28.0.copyload.i, i64 0
  %i.dam = insertelement <4 x float> %i.dal, float %.sroa.43.0.copyload.i, i64 3 ; 2 uses
  %i.dan = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.czu, i64 1
  %i.dao = insertelement <4 x float> %i.dan, float %i.dai, i64 3
  %i.dap = shufflevector <4 x float> %i.dao, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.daq = fadd <4 x float> %i.dam, %i.dap
  %i.dar = fsub <4 x float> %i.dam, %i.dap
  %i.das = shufflevector <4 x float> %i.daq, <4 x float> %i.dar, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dat = fadd float %.sroa.50.0.copyload.i, %i.czu ; 4 uses
  %i.dau = shufflevector <4 x float> %i.das, <4 x float> %i.dah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not403, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.dav = trunc nuw i64 %.06245.i to i32
  %i.daw = shufflevector <4 x float> %i.das, <4 x float> %i.dah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dax = insertelement <8 x float> poison, float %i.dat, i64 0
  %i.day = shufflevector <8 x float> %i.dax, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, %bb.hn
  %.sroa.33.0.i = phi float [ %i.czx, %bb.hn ], [ %i.dcn, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %.0.i = phi i32 [ %i.dav, %bb.hn ], [ %i.dcr, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.daz = phi <8 x float> [ %i.daw, %bb.hn ], [ %i.dco, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.dba = zext i32 %.0.i to i64                  ; 3 uses
  %i.dbb = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dba ; 5 uses
  %i.dbc = mul i64 %.0330, %i.dba
  %i.dbd = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.dbc
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.dbb, i64 16
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dbb, i64 24
  %i.dbg = load float, ptr %i.dbf, align 4, !tbaa !51
  %i.dbh = call float @llvm.fmuladd.f32(float %i.dbg, float %i.dat, float %.sroa.33.0.i)
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbb, i64 28
  %i.dbj = load <4 x float>, ptr %i.dbb, align 4, !tbaa !44 ; 2 uses
  %i.dbk = load <2 x float>, ptr %i.dbe, align 4, !tbaa !44 ; 2 uses
  %i.dbl = load <2 x float>, ptr %i.dbi, align 4, !tbaa !44
  %i.dbm = shufflevector <2 x float> %i.dbk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dbn = shufflevector <4 x float> %i.dbm, <4 x float> %i.dbj, <8 x i32> <i32 1, i32 6, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbo = shufflevector <2 x float> %i.dbl, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbp = shufflevector <8 x float> %i.dbn, <8 x float> %i.dbo, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 8, i32 poison, i32 poison, i32 poison>
  %i.dbq = shufflevector <2 x float> %i.dbk, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbr = shufflevector <8 x float> %i.dbp, <8 x float> %i.dbq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.dbs = shufflevector <4 x float> %i.dbj, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbt = shufflevector <8 x float> %i.dbr, <8 x float> %i.dbs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 8>
  %i.dbu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dbt, <8 x float> %i.day, <8 x float> %i.daz)
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.dbb, i64 40
  %i.dbw = load float, ptr %i.dbv, align 4, !tbaa !48 ; 2 uses
  %i.dbx = fcmp oeq float %i.dbw, 0.000000e+00
  %i.dby = fdiv float %i.dat, %i.dbw
  %i.dbz = select i1 %i.dbx, float 0.000000e+00, float %i.dby ; 2 uses
  %i.dca = insertelement <8 x float> poison, float %i.dbz, i64 0
  %i.dcb = shufflevector <8 x float> %i.dca, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %bb.ho
  %.087.i.i = phi i64 [ 0, %bb.ho ], [ %i.dcp, %bb.hp ] ; 2 uses
  %i.dcc = phi float [ %i.dbh, %bb.ho ], [ %i.dcn, %bb.hp ]
  %i.dcd = phi <8 x float> [ %i.dbu, %bb.ho ], [ %i.dco, %bb.hp ]
  %i.dce = getelementptr inbounds nuw [16 x i8], ptr %i.dbd, i64 %.087.i.i
  %i.dcf = load <4 x float>, ptr %i.dce, align 4, !tbaa !44 ; 3 uses
  %i.dcg = fneg <4 x float> %i.dcf                ; 2 uses
  %i.dch = shufflevector <4 x float> %i.dcg, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 1, i32 0>
  %i.dci = shufflevector <4 x float> %i.dcf, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0>
  %i.dcj = fmul <8 x float> %i.dci, %i.dch
  %i.dck = extractelement <4 x float> %i.dcg, i64 3
  %i.dcl = extractelement <4 x float> %i.dcf, i64 0
  %i.dcm = fmul float %i.dcl, %i.dck
  %i.dcn = call float @llvm.fmuladd.f32(float %i.dcm, float %i.dbz, float %i.dcc) ; 4 uses
  %i.dco = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dcj, <8 x float> %i.dcb, <8 x float> %i.dcd) ; 4 uses
  %i.dcp = add nuw i64 %.087.i.i, 1               ; 2 uses
  %exitcond.not.i.i587 = icmp eq i64 %i.dcp, %.0330
  br i1 %exitcond.not.i.i587, label %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, label %bb.hp, !llvm.loop !114

_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i: ; preds = %bb.hp
  %i.dcq = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.dba
  %i.dcr = load i32, ptr %i.dcq, align 4, !tbaa !28 ; 2 uses
  %i.dcs = zext i32 %i.dcr to i64
  %.not69.i = icmp eq i64 %.06245.i, %i.dcs
  br i1 %.not69.i, label %bb.hq, label %bb.ho, !llvm.loop !115

bb.hq:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i
  br i1 %.not70.i, label %bb.hs, label %bb.hr
end_hunk_2
begin_hunk_3_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %.not.us65.i = icmp eq i8 %i.dsz, 0
  br i1 %.not.us65.i, label %.loopexit.us69.i, label %bb.it

bb.it:                                            ; preds = %.lr.ph.split.split.split.us.i
  %i.dta = and i64 %.05060.us64.i, 4294967295     ; 3 uses
  %i.dtb = getelementptr inbounds nuw i8, ptr %10, i64 %i.dta
  %i.dtc = load i8, ptr %i.dtb, align 1, !tbaa !29
  %i.dtd = and i8 %i.dtc, 1
  %.not56.us66.i = icmp eq i8 %i.dtd, 0
  br i1 %.not56.us66.i, label %bb.iu, label %.loopexit.us69.i

bb.iu:                                            ; preds = %bb.it
  %i.dte = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.05060.us64.i
  %i.dtf = load i8, ptr %i.dte, align 1, !tbaa !29
  %.not57.us67.i = icmp eq i8 %i.dtf, 4
  br i1 %.not57.us67.i, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.dtg = getelementptr inbounds nuw [12 x i8], ptr %i.zr, i64 %.05060.us64.i ; 3 uses
  %i.dth = mul i64 %i.dta, %i.dqk
  %i.dti = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dth ; 3 uses
  %i.dtj = load float, ptr %i.dtg, align 4, !tbaa !49
  %i.dtk = call float @llvm.fmuladd.f32(float %i.dtj, float %i.zv, float %i.dqo)
  store float %i.dtk, ptr %i.dti, align 4, !tbaa !44
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.dtg, i64 4
  %i.dtm = load float, ptr %i.dtl, align 4, !tbaa !50
  %i.dtn = call float @llvm.fmuladd.f32(float %i.dtm, float %i.zv, float %i.dqp)
  %i.dto = getelementptr inbounds nuw i8, ptr %i.dti, i64 4
  store float %i.dtn, ptr %i.dto, align 4, !tbaa !44
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dtg, i64 8
  %i.dtq = load float, ptr %i.dtp, align 4, !tbaa !46
  %i.dtr = call float @llvm.fmuladd.f32(float %i.dtq, float %i.zv, float %i.dqq)
  %i.dts = getelementptr inbounds nuw i8, ptr %i.dti, i64 8
  store float %i.dtr, ptr %i.dts, align 4, !tbaa !44
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.dtt = mul i64 %.05060.us64.i, %.0330
  %i.dtu = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.dtt ; 3 uses
  %i.dtv = mul i64 %i.dta, %i.dql
  %i.dtw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dtv ; 3 uses
  br i1 %i.dsx, label %.epil.preheader1398, label %.new1397

.new1397:                                         ; preds = %bb.iw, %.new1397
  %.059.us68.i = phi i64 [ %i.duq, %.new1397 ], [ 0, %bb.iw ] ; 4 uses
  %niter1404 = phi i64 [ %niter1404.next.1, %.new1397 ], [ 0, %bb.iw ]
  %i.dtx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.us68.i
  %i.dty = load i32, ptr %i.dtx, align 8, !tbaa !28
  %i.dtz = getelementptr inbounds nuw [4 x i8], ptr %i.dtu, i64 %.059.us68.i
  %i.dua = load float, ptr %i.dtz, align 4, !tbaa !44
  %i.dub = zext i32 %i.dty to i64                 ; 2 uses
  %i.duc = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dub
  %i.dud = load float, ptr %i.duc, align 4, !tbaa !44
  %i.due = fdiv float %i.dua, %i.dud
  %i.duf = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %i.dub
  store float %i.due, ptr %i.duf, align 4, !tbaa !44
  %i.dug = or disjoint i64 %.059.us68.i, 1        ; 2 uses
  %i.duh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dug
  %i.dui = load i32, ptr %i.duh, align 4, !tbaa !28
  %i.duj = getelementptr inbounds nuw [4 x i8], ptr %i.dtu, i64 %i.dug
  %i.duk = load float, ptr %i.duj, align 4, !tbaa !44
  %i.dul = zext i32 %i.dui to i64                 ; 2 uses
  %i.dum = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dul
  %i.dun = load float, ptr %i.dum, align 4, !tbaa !44
  %i.duo = fdiv float %i.duk, %i.dun
  %i.dup = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %i.dul
  store float %i.duo, ptr %i.dup, align 4, !tbaa !44
  %i.duq = add nuw nsw i64 %.059.us68.i, 2        ; 2 uses
  %niter1404.next.1 = add nuw i64 %niter1404, 2   ; 2 uses
  %niter1404.ncmp.1 = icmp eq i64 %niter1404.next.1, %unroll_iter1403
  br i1 %niter1404.ncmp.1, label %.loopexit.us69.i.loopexit.unr-lcssa, label %.new1397, !llvm.loop !125

.loopexit.us69.i.loopexit.unr-lcssa:              ; preds = %.new1397
  br i1 %lcmp.mod1401.not, label %.loopexit.us69.i, label %.epil.preheader1398

.epil.preheader1398:                              ; preds = %.loopexit.us69.i.loopexit.unr-lcssa, %bb.iw
  %.059.us68.i.epil.init = phi i64 [ 0, %bb.iw ], [ %i.duq, %.loopexit.us69.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1402)
  %i.dur = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.us68.i.epil.init
  %i.dus = load i32, ptr %i.dur, align 4, !tbaa !28
  %i.dut = getelementptr inbounds nuw [4 x i8], ptr %i.dtu, i64 %.059.us68.i.epil.init
  %i.duu = load float, ptr %i.dut, align 4, !tbaa !44
  %i.duv = zext i32 %i.dus to i64                 ; 2 uses
  %i.duw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.duv
  %i.dux = load float, ptr %i.duw, align 4, !tbaa !44
  %i.duy = fdiv float %i.duu, %i.dux
  %i.duz = getelementptr inbounds nuw [4 x i8], ptr %i.dtw, i64 %i.duv
  store float %i.duy, ptr %i.duz, align 4, !tbaa !44
  br label %.loopexit.us69.i

.loopexit.us69.i:                                 ; preds = %.epil.preheader1398, %.loopexit.us69.i.loopexit.unr-lcssa, %bb.it, %.lr.ph.split.split.split.us.i
  %i.dva = add nuw i64 %.05060.us64.i, 1          ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.dva, %.0702
  br i1 %exitcond76.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.split.split.us.i, !llvm.loop !120

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.split.i.preheader, %.loopexit.i615
  %.05060.i = phi i64 [ %i.dxf, %.loopexit.i615 ], [ 0, %.lr.ph.split.split.split.i.preheader ] ; 6 uses
  %i.dvb = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %.05060.i
  %i.dvc = load i8, ptr %i.dvb, align 1, !tbaa !29
  %.not.i614 = icmp eq i8 %i.dvc, 0
  br i1 %.not.i614, label %.loopexit.i615, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph.split.split.split.i
  %i.dvd = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.05060.i
  %i.dve = load i32, ptr %i.dvd, align 4, !tbaa !28
  %i.dvf = zext i32 %i.dve to i64                 ; 3 uses
  %i.dvg = getelementptr inbounds nuw i8, ptr %10, i64 %i.dvf
  %i.dvh = load i8, ptr %i.dvg, align 1, !tbaa !29
  %i.dvi = and i8 %i.dvh, 1
  %.not56.i = icmp eq i8 %i.dvi, 0
  br i1 %.not56.i, label %bb.iy, label %.loopexit.i615

bb.iy:                                            ; preds = %bb.ix
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.05060.i
  %i.dvk = load i8, ptr %i.dvj, align 1, !tbaa !29
  %.not57.i = icmp eq i8 %i.dvk, 4
  br i1 %.not57.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.dvl = getelementptr inbounds nuw [12 x i8], ptr %i.zr, i64 %.05060.i ; 3 uses
  %i.dvm = mul i64 %i.dqk, %i.dvf
  %i.dvn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dvm ; 3 uses
  %i.dvo = load float, ptr %i.dvl, align 4, !tbaa !49
  %i.dvp = call float @llvm.fmuladd.f32(float %i.dvo, float %i.zv, float %i.dqo)
  store float %i.dvp, ptr %i.dvn, align 4, !tbaa !44
  %i.dvq = getelementptr inbounds nuw i8, ptr %i.dvl, i64 4
  %i.dvr = load float, ptr %i.dvq, align 4, !tbaa !50
  %i.dvs = call float @llvm.fmuladd.f32(float %i.dvr, float %i.zv, float %i.dqp)
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvn, i64 4
  store float %i.dvs, ptr %i.dvt, align 4, !tbaa !44
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvl, i64 8
  %i.dvv = load float, ptr %i.dvu, align 4, !tbaa !46
  %i.dvw = call float @llvm.fmuladd.f32(float %i.dvv, float %i.zv, float %i.dqq)
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvn, i64 8
  store float %i.dvw, ptr %i.dvx, align 4, !tbaa !44
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.dvy = mul i64 %.05060.i, %.0330
  %i.dvz = getelementptr inbounds nuw [4 x i8], ptr %.0352, i64 %i.dvy ; 3 uses
  %i.dwa = mul i64 %i.dql, %i.dvf
  %i.dwb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dwa ; 3 uses
  br i1 %i.dsw, label %.epil.preheader1390, label %.new1389

.new1389:                                         ; preds = %bb.ja, %.new1389
  %.059.i = phi i64 [ %i.dwv, %.new1389 ], [ 0, %bb.ja ] ; 4 uses
  %niter1396 = phi i64 [ %niter1396.next.1, %.new1389 ], [ 0, %bb.ja ]
  %i.dwc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.i
  %i.dwd = load i32, ptr %i.dwc, align 8, !tbaa !28
  %i.dwe = getelementptr inbounds nuw [4 x i8], ptr %i.dvz, i64 %.059.i
  %i.dwf = load float, ptr %i.dwe, align 4, !tbaa !44
  %i.dwg = zext i32 %i.dwd to i64                 ; 2 uses
  %i.dwh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dwg
  %i.dwi = load float, ptr %i.dwh, align 4, !tbaa !44
  %i.dwj = fdiv float %i.dwf, %i.dwi
  %i.dwk = getelementptr inbounds nuw [4 x i8], ptr %i.dwb, i64 %i.dwg
  store float %i.dwj, ptr %i.dwk, align 4, !tbaa !44
  %i.dwl = or disjoint i64 %.059.i, 1             ; 2 uses
  %i.dwm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dwl
  %i.dwn = load i32, ptr %i.dwm, align 4, !tbaa !28
  %i.dwo = getelementptr inbounds nuw [4 x i8], ptr %i.dvz, i64 %i.dwl
  %i.dwp = load float, ptr %i.dwo, align 4, !tbaa !44
  %i.dwq = zext i32 %i.dwn to i64                 ; 2 uses
  %i.dwr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dwq
  %i.dws = load float, ptr %i.dwr, align 4, !tbaa !44
  %i.dwt = fdiv float %i.dwp, %i.dws
  %i.dwu = getelementptr inbounds nuw [4 x i8], ptr %i.dwb, i64 %i.dwq
  store float %i.dwt, ptr %i.dwu, align 4, !tbaa !44
  %i.dwv = add nuw nsw i64 %.059.i, 2             ; 2 uses
  %niter1396.next.1 = add nuw i64 %niter1396, 2   ; 2 uses
  %niter1396.ncmp.1 = icmp eq i64 %niter1396.next.1, %unroll_iter1395
  br i1 %niter1396.ncmp.1, label %.loopexit.i615.loopexit.unr-lcssa, label %.new1389, !llvm.loop !125

.loopexit.i615.loopexit.unr-lcssa:                ; preds = %.new1389
  br i1 %lcmp.mod1393.not, label %.loopexit.i615, label %.epil.preheader1390

.epil.preheader1390:                              ; preds = %.loopexit.i615.loopexit.unr-lcssa, %bb.ja
  %.059.i.epil.init = phi i64 [ 0, %bb.ja ], [ %i.dwv, %.loopexit.i615.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1394)
  %i.dww = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059.i.epil.init
  %i.dwx = load i32, ptr %i.dww, align 4, !tbaa !28
  %i.dwy = getelementptr inbounds nuw [4 x i8], ptr %i.dvz, i64 %.059.i.epil.init
  %i.dwz = load float, ptr %i.dwy, align 4, !tbaa !44
  %i.dxa = zext i32 %i.dwx to i64                 ; 2 uses
  %i.dxb = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.dxa
  %i.dxc = load float, ptr %i.dxb, align 4, !tbaa !44
  %i.dxd = fdiv float %i.dwz, %i.dxc
  %i.dxe = getelementptr inbounds nuw [4 x i8], ptr %i.dwb, i64 %i.dxa
  store float %i.dxd, ptr %i.dxe, align 4, !tbaa !44
  br label %.loopexit.i615

.loopexit.i615:                                   ; preds = %.epil.preheader1390, %.loopexit.i615.loopexit.unr-lcssa, %bb.ix, %.lr.ph.split.split.split.i
  %i.dxf = add nuw i64 %.05060.i, 1               ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.dxf, %.0702
  br i1 %exitcond74.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.split.split.i, !llvm.loop !120

_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit: ; preds = %.loopexit.i615, %.loopexit.us69.i, %.loopexit.us.i, %bb.ie, %._crit_edge825, %.critedge
  %i.dxg = and i32 %13, 1073741824
  %i.dxh = icmp eq i32 %i.dxg, 0
  %i.dxi = icmp ne ptr %.0379, null               ; 2 uses
  %i.dxj = icmp eq i64 %.5.lcssa, 0
  %i.dxk = or i1 %i.dxh, %i.dxj
  %or.cond830.not = or i1 %i.dxk, %i.dxi
  br i1 %or.cond830.not, label %.loopexit722, label %.lr.ph827

.lr.ph827:                                        ; preds = %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, %bb.je
  %.0329826 = phi i64 [ %i.dzi, %bb.je ], [ 0, %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit ] ; 2 uses
  %i.dxl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0329826 ; 4 uses
  %i.dxm = load i32, ptr %i.dxl, align 4, !tbaa !28 ; 4 uses
  %i.dxn = getelementptr i8, ptr %i.dxl, i64 4    ; 2 uses
  %i.dxo = load i32, ptr %i.dxn, align 4, !tbaa !28 ; 4 uses
  %i.dxp = getelementptr i8, ptr %i.dxl, i64 8    ; 2 uses
  %i.dxq = load i32, ptr %i.dxp, align 4, !tbaa !28 ; 4 uses
  %i.dxr = zext i32 %i.dxm to i64                 ; 3 uses
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.dxr
  %i.dxt = load i8, ptr %i.dxs, align 1, !tbaa !29
  %i.dxu = zext i8 %i.dxt to i32
  %i.dxv = shl i32 %i.dxu, 28
  %i.dxw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.dxr
  %i.dxx = load i32, ptr %i.dxw, align 4, !tbaa !28
  %i.dxy = icmp eq i32 %i.dxx, %i.dxo
  %.pre = zext i32 %i.dxo to i64                  ; 3 uses
  br i1 %i.dxy, label %.lr.ph827._crit_edge, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph827
  %i.dxz = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.pre
  %i.dya = load i32, ptr %i.dxz, align 4, !tbaa !28
  %i.dyb = icmp eq i32 %i.dya, %i.dxm
  %i.dyc = select i1 %i.dyb, i32 -2147483648, i32 0
  br label %.lr.ph827._crit_edge

.lr.ph827._crit_edge:                             ; preds = %.lr.ph827, %bb.jb
  %i.dyd = phi i32 [ %i.dyc, %bb.jb ], [ -2147483648, %.lr.ph827 ]
  %i.dye = or i32 %i.dxv, %i.dyd
  %i.dyf = or i32 %i.dye, %i.dxm
  store i32 %i.dyf, ptr %i.dxl, align 4, !tbaa !28
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.pre
  %i.dyh = load i8, ptr %i.dyg, align 1, !tbaa !29
  %i.dyi = zext i8 %i.dyh to i32
  %i.dyj = shl i32 %i.dyi, 28
  %i.dyk = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.pre
  %i.dyl = load i32, ptr %i.dyk, align 4, !tbaa !28
  %i.dym = icmp eq i32 %i.dyl, %i.dxq
  %.pre892 = zext i32 %i.dxq to i64               ; 3 uses
  br i1 %i.dym, label %._crit_edge891, label %bb.jc

bb.jc:                                            ; preds = %.lr.ph827._crit_edge
  %i.dyn = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.pre892
  %i.dyo = load i32, ptr %i.dyn, align 4, !tbaa !28
  %i.dyp = icmp eq i32 %i.dyo, %i.dxo
  %i.dyq = select i1 %i.dyp, i32 -2147483648, i32 0
  br label %._crit_edge891

._crit_edge891:                                   ; preds = %.lr.ph827._crit_edge, %bb.jc
  %i.dyr = phi i32 [ %i.dyq, %bb.jc ], [ -2147483648, %.lr.ph827._crit_edge ]
  %i.dys = or i32 %i.dyj, %i.dyr
  %i.dyt = or i32 %i.dys, %i.dxo
  store i32 %i.dyt, ptr %i.dxn, align 4, !tbaa !28
  %i.dyu = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.pre892
  %i.dyv = load i8, ptr %i.dyu, align 1, !tbaa !29
  %i.dyw = zext i8 %i.dyv to i32
  %i.dyx = shl i32 %i.dyw, 28
  %i.dyy = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.pre892
  %i.dyz = load i32, ptr %i.dyy, align 4, !tbaa !28
  %i.dza = icmp eq i32 %i.dyz, %i.dxm
  br i1 %i.dza, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge891
  %i.dzb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.dxr
  %i.dzc = load i32, ptr %i.dzb, align 4, !tbaa !28
  %i.dzd = icmp eq i32 %i.dzc, %i.dxq
  %i.dze = select i1 %i.dzd, i32 -2147483648, i32 0
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %._crit_edge891
  %i.dzf = phi i32 [ -2147483648, %._crit_edge891 ], [ %i.dze, %bb.jd ]
  %i.dzg = or i32 %i.dyx, %i.dzf
  %i.dzh = or i32 %i.dzg, %i.dxq
  store i32 %i.dzh, ptr %i.dxp, align 4, !tbaa !28
  %i.dzi = add i64 %.0329826, 3                   ; 2 uses
  %i.dzj = icmp ult i64 %i.dzi, %.5.lcssa
  br i1 %i.dzj, label %.lr.ph827, label %.loopexit722, !llvm.loop !126

.loopexit722:                                     ; preds = %bb.je, %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit
  %20 = icmp ne i64 %.5.lcssa, 0
  %or.cond831 = and i1 %i.dxi, %20
  br i1 %or.cond831, label %.lr.ph829.preheader, label %.loopexit

.lr.ph829.preheader:                              ; preds = %.loopexit722
  %xtraiter1413 = and i64 %.5.lcssa, 3            ; 3 uses
  %i.dzk = icmp ult i64 %.5.lcssa, 4
  br i1 %i.dzk, label %.lr.ph829.epil.preheader, label %.lr.ph829.preheader.new

.lr.ph829.preheader.new:                          ; preds = %.lr.ph829.preheader
  %unroll_iter1417 = and i64 %.5.lcssa, -4
  br label %.lr.ph829

.lr.ph829:                                        ; preds = %.lr.ph829, %.lr.ph829.preheader.new
  %.0828 = phi i64 [ 0, %.lr.ph829.preheader.new ], [ %i.eai, %.lr.ph829 ] ; 5 uses
  %niter1418 = phi i64 [ 0, %.lr.ph829.preheader.new ], [ %niter1418.next.3, %.lr.ph829 ]
  %i.dzl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828 ; 2 uses
  %i.dzm = load i32, ptr %i.dzl, align 4, !tbaa !28
  %i.dzn = zext i32 %i.dzm to i64
  %i.dzo = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dzn
  %i.dzp = load i32, ptr %i.dzo, align 4, !tbaa !28
  store i32 %i.dzp, ptr %i.dzl, align 4, !tbaa !28
  %i.dzq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828
  %i.dzr = getelementptr inbounds nuw i8, ptr %i.dzq, i64 4 ; 2 uses
  %i.dzs = load i32, ptr %i.dzr, align 4, !tbaa !28
  %i.dzt = zext i32 %i.dzs to i64
  %i.dzu = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dzt
  %i.dzv = load i32, ptr %i.dzu, align 4, !tbaa !28
  store i32 %i.dzv, ptr %i.dzr, align 4, !tbaa !28
  %i.dzw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dzw, i64 8 ; 2 uses
  %i.dzy = load i32, ptr %i.dzx, align 4, !tbaa !28
  %i.dzz = zext i32 %i.dzy to i64
  %i.eaa = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.dzz
  %i.eab = load i32, ptr %i.eaa, align 4, !tbaa !28
  store i32 %i.eab, ptr %i.dzx, align 4, !tbaa !28
  %i.eac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828
  %i.ead = getelementptr inbounds nuw i8, ptr %i.eac, i64 12 ; 2 uses
  %i.eae = load i32, ptr %i.ead, align 4, !tbaa !28
  %i.eaf = zext i32 %i.eae to i64
  %i.eag = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.eaf
  %i.eah = load i32, ptr %i.eag, align 4, !tbaa !28
  store i32 %i.eah, ptr %i.ead, align 4, !tbaa !28
  %i.eai = add nuw i64 %.0828, 4                  ; 2 uses
  %niter1418.next.3 = add nuw i64 %niter1418, 4   ; 2 uses
  %niter1418.ncmp.3 = icmp eq i64 %niter1418.next.3, %unroll_iter1417
  br i1 %niter1418.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph829, !llvm.loop !127

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph829
  %lcmp.mod1415.not = icmp eq i64 %xtraiter1413, 0
  br i1 %lcmp.mod1415.not, label %.loopexit, label %.lr.ph829.epil.preheader

.lr.ph829.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph829.preheader
  %.0828.epil.init = phi i64 [ 0, %.lr.ph829.preheader ], [ %i.eai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1416 = icmp ne i64 %xtraiter1413, 0
  call void @llvm.assume(i1 %lcmp.mod1416)
  br label %.lr.ph829.epil

.lr.ph829.epil:                                   ; preds = %.lr.ph829.epil, %.lr.ph829.epil.preheader
  %.0828.epil = phi i64 [ %i.eao, %.lr.ph829.epil ], [ %.0828.epil.init, %.lr.ph829.epil.preheader ] ; 2 uses
  %epil.iter1414 = phi i64 [ %epil.iter1414.next, %.lr.ph829.epil ], [ 0, %.lr.ph829.epil.preheader ]
  %i.eaj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0828.epil ; 2 uses
  %i.eak = load i32, ptr %i.eaj, align 4, !tbaa !28
  %i.eal = zext i32 %i.eak to i64
  %i.eam = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %i.eal
  %i.ean = load i32, ptr %i.eam, align 4, !tbaa !28
  store i32 %i.ean, ptr %i.eaj, align 4, !tbaa !28
  %i.eao = add nuw i64 %.0828.epil, 1
  %epil.iter1414.next = add i64 %epil.iter1414, 1 ; 2 uses
  %epil.iter1414.cmp.not = icmp eq i64 %epil.iter1414.next, %xtraiter1413
  br i1 %epil.iter1414.cmp.not, label %.loopexit, label %.lr.ph829.epil, !llvm.loop !128

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph829.epil, %.loopexit722
  %.not427 = icmp eq ptr %14, null
  br i1 %.not427, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %.loopexit
  %i.eap = call float @sqrtf(float noundef %.3691.lcssa) #14
  %i.eaq = fmul float %i.bfx, %i.eap
  store float %i.eaq, ptr %14, align 4, !tbaa !44
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.ear = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %.not3.i = icmp eq i64 %i.ear, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i627

.lr.ph.i627:                                      ; preds = %bb.jg, %bb.jh
  %.04.i = phi i64 [ %i.eaw, %bb.jh ], [ %i.ear, %bb.jg ] ; 2 uses
  %i.eas = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.eat = getelementptr [8 x i8], ptr %16, i64 %.04.i
  %i.eau = getelementptr i8, ptr %i.eat, i64 -8
  %i.eav = load ptr, ptr %i.eau, align 8, !tbaa !27
  invoke void %i.eas(ptr noundef %i.eav)
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %.lr.ph.i627
  %i.eaw = add i64 %.04.i, -1                     ; 2 uses
  %.not.i628 = icmp eq i64 %i.eaw, 0
  br i1 %.not.i628, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i627, !llvm.loop !9

bb.ji:                                            ; preds = %.lr.ph.i627
  %i.eax = landingpad { ptr, i32 }
          catch ptr null
  %i.eay = extractvalue { ptr, i32 } %i.eax, 0
  call void @__clang_call_terminate(ptr %i.eay) #15
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.jh, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  ret i64 %.5.lcssa

bb.jj:                                            ; preds = %bb.dj, %bb.en, %bb.ep, %bb.eo, %bb.em, %bb.ci, %bb.cj, %bb.cb
  %.pn409.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aee, %bb.cb ], [ %i.afk, %bb.ci ], [ %i.afl, %bb.cj ], [ %i.bcq, %bb.dj ], [ %i.bkm, %bb.em ], [ %i.bkn, %bb.en ], [ %i.bko, %bb.eo ], [ %i.bkp, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.jk

bb.jk:                                            ; preds = %bb.br, %bb.bt, %bb.bv, %bb.jj, %bb.bw, %bb.bu, %bb.bs, %bb.bq
  %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aaj, %bb.bq ], [ %i.aak, %bb.br ], [ %i.aal, %bb.bs ], [ %i.aam, %bb.bt ], [ %i.aan, %bb.bu ], [ %i.aao, %bb.bv ], [ %.pn409.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jj ], [ %i.aap, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.h
  %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn409.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jk ], [ %i.el, %bb.h ]
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
