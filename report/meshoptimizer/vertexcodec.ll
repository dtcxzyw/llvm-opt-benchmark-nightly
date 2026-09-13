Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexcodec?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@meshopt_encodeVertexBufferLevel:bb.a
  %i.ib = or i32 %i.ia, %.05054.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.157.i, i64 %4 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 1            ; 2 uses
  %i.ie = xor i32 %i.id, %i.hz
  %i.if = or i32 %i.ie, %i.ib
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 %4 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 1            ; 2 uses
  %i.ii = xor i32 %i.ih, %i.id
  %i.ij = or i32 %i.ii, %i.if
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %4 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 1            ; 4 uses
  %i.im = xor i32 %i.il, %i.ih
  %i.in = or i32 %i.im, %i.ij                     ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 %4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !16

_ZN7meshoptL14estimateRotateEPKhmmmm.exit:        ; preds = %.critedge.preheader.i
  store i64 %i.cj, ptr %i.e, align 16, !tbaa !36
  store i64 %i.dr, ptr %i.ah, align 8, !tbaa !36
  store i64 %i.ez, ptr %i.ai, align 16, !tbaa !36
  store i64 %i.gh, ptr %i.aj, align 8, !tbaa !36
  store <4 x i64> %i.hw, ptr %i.ak, align 16, !tbaa !36
  %i.ip = icmp ult i64 %i.dr, %i.cj
  %i.iq = zext i1 %i.ip to i32
  %i.ir = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.cj)
  %i.is = icmp ult i64 %i.ez, %i.ir
  %i.it = select i1 %i.is, i32 2, i32 %i.iq       ; 2 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !36
  %i.ix = icmp ult i64 %i.gh, %i.iw
  %i.iy = select i1 %i.ix, i32 3, i32 %i.it       ; 2 uses
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.iz
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !36
  %i.jc = extractelement <4 x i64> %i.hw, i64 0
  %i.jd = icmp ult i64 %i.jc, %i.jb
  %i.je = select i1 %i.jd, i32 4, i32 %i.iy       ; 2 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !36
  %i.ji = extractelement <4 x i64> %i.hw, i64 1
  %i.jj = icmp ult i64 %i.ji, %i.jh
  %i.jk = select i1 %i.jj, i32 5, i32 %i.je       ; 2 uses
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jl
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !36
  %i.jo = extractelement <4 x i64> %i.hw, i64 2
  %i.jp = icmp ult i64 %i.jo, %i.jn
  %i.jq = select i1 %i.jp, i32 6, i32 %i.jk       ; 2 uses
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !36
  %i.ju = extractelement <4 x i64> %i.hw, i64 3
  %i.jv = icmp ult i64 %i.ju, %i.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.jw = shl nuw nsw i32 %i.jq, 4
  %i.jx = select i1 %i.jv, i32 112, i32 %i.jw
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit
  %wide.trip.count.i = phi i64 [ 3, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit ], [ 2, %bb.e ]
  %i.jy = phi i32 [ %i.jx, %_ZN7meshoptL14estimateRotateEPKhmmmm.exit ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %bb.i ] ; 2 uses
  %.06881.i = phi i64 [ %i.ld, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.jz = add i64 %i.z, %.06881.i
  %umin354 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.jz)
  %i.ka = mul i64 %i.al, %indvar
  %i.kb = add i64 %i.ka, -1
  %i.kc = add i64 %umin354, %i.kb                 ; 3 uses
  %i.kd = add i64 %.06881.i, %i.z
  %i.ke = icmp ult i64 %i.kd, %3
  %i.kf = sub nuw i64 %3, %.06881.i
  %i.kg = select i1 %i.ke, i64 %i.z, i64 %i.kf    ; 16 uses
  %i.kh = add i64 %i.kg, 15
  %i.ki = and i64 %i.kh, -16                      ; 2 uses
  %i.kj = tail call i64 @llvm.usub.sat.i64(i64 %.06881.i, i64 1)
  %i.kk = mul i64 %i.kj, %4
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %i.kl, i64 %4, i1 false)
  %i.km = icmp ult i64 %i.kg, %i.ki
  br i1 %i.km, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kg
  %i.ko = sub nuw i64 %i.ki, %i.kg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.kn, i8 0, i64 %i.ko, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.kp = mul i64 %.06881.i, %4
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 %i.kp ; 3 uses
  %.not.i25.i.i = icmp eq i64 %i.kg, 0            ; 4 uses
  %xtraiter355 = and i64 %i.kg, 1
  %i.kr = icmp eq i64 %i.kc, 0
  %unroll_iter359 = and i64 %i.kg, -2
  %lcmp.mod357.not = icmp eq i64 %xtraiter355, 0
  %lcmp.mod358 = trunc i64 %i.kg to i1
  %xtraiter361 = and i64 %i.kg, 1
  %i.ks = icmp eq i64 %i.kc, 0
  %unroll_iter365 = and i64 %i.kg, -2
  %lcmp.mod363.not = icmp eq i64 %xtraiter361, 0
  %lcmp.mod364 = trunc i64 %i.kg to i1
  %xtraiter367 = and i64 %i.kg, 1
  %i.kt = icmp eq i64 %i.kc, 0
  %unroll_iter371 = and i64 %i.kg, -2
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  %lcmp.mod370 = trunc i64 %i.kg to i1
  %i.ku = tail call i64 @llvm.umax.i64(i64 %i.kg, i64 16)
  %i.kv = add i64 %i.ku, -1
  %i.kw = lshr i64 %i.kv, 4                       ; 2 uses
  %i.kx = add nuw nsw i64 %i.kw, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.kw, 0
  %n.vec = and i64 %i.kx, 2305843009213693950     ; 3 uses
  %i.ky = shl i64 %n.vec, 4
  %cmp.n = icmp eq i64 %i.kx, %n.vec
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %bb.n, %bb.l
  %indvars.iv.i103 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i106, %bb.n ] ; 3 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv.i103 to i32 ; 2 uses
  %i.la = or i32 %i.jy, %i.kz
  %i.lb = lshr i32 %i.la, 4                       ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i103 ; 2 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %i.ld = add i64 %.06881.i, %i.af                ; 2 uses
  %i.le = icmp ult i64 %i.ld, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.le, label %bb.j, label %.preheader.i, !llvm.loop !17

bb.n:                                             ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i
  br i1 %exitcond89.not.i, label %bb.m, label %.preheader77.i, !llvm.loop !18

bb.o:                                             ; preds = %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, %.preheader77.i
  %.07179.i = phi i64 [ 0, %.preheader77.i ], [ %i.yc, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i ] ; 4 uses
  %i.lf = add nuw nsw i64 %.07179.i, %.091171     ; 5 uses
  switch i32 %i.kz, label %default.unreachable33.i.i [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.p
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.lf
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !9   ; 2 uses
  br i1 %i.kt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i
  %.03238.i.i.i = phi i64 [ %i.lw, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.03337.i.i.i = phi ptr [ %i.lv, %.lr.ph.i.i.i ], [ %i.lg, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.136.i.i.i = phi i8 [ %i.lp, %.lr.ph.i.i.i ], [ %i.li, %.lr.ph.preheader.i.i.i ]
  %niter372 = phi i64 [ %niter372.next.1, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.lj = load i8, ptr %.03337.i.i.i, align 1, !tbaa !9 ; 2 uses
  %i.lk = sub i8 %i.lj, %.136.i.i.i               ; 2 uses
  %.neg.i.i.i.i = ashr i8 %i.lk, 7
  %i.ll = shl i8 %i.lk, 1
  %i.lm = xor i8 %i.ll, %.neg.i.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i
  store i8 %i.lm, ptr %i.ln, align 2, !tbaa !9
  %i.lo = getelementptr inbounds nuw i8, ptr %.03337.i.i.i, i64 %4 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !9   ; 3 uses
  %i.lq = sub i8 %i.lp, %i.lj                     ; 2 uses
  %.neg.i.i.i.i.1 = ashr i8 %i.lq, 7
  %i.lr = shl i8 %i.lq, 1
  %i.ls = xor i8 %i.lr, %.neg.i.i.i.i.1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  store i8 %i.ls, ptr %i.lu, align 1, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 %4 ; 2 uses
  %i.lw = add nuw nsw i64 %.03238.i.i.i, 2        ; 2 uses
  %niter372.next.1 = add i64 %niter372, 2         ; 2 uses
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371
  br i1 %niter372.ncmp.1, label %.lr.ph.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !19

bb.q:                                             ; preds = %bb.o
  %.tr.i.i.i = trunc i64 %.07179.i to i16
  %i.lx = shl i16 %.tr.i.i.i, 3
  %i.ly = and i16 %i.lx, 8                        ; 3 uses
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i20.i.i

.lr.ph.preheader.i20.i.i:                         ; preds = %bb.q
  %i.lz = and i64 %i.lf, 9223372036854775806      ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.lz ; 2 uses
  %i.mb = or i64 %i.lf, 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !9
  %i.me = zext i8 %i.md to i16
  %i.mf = shl nuw i16 %i.me, 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.lz
  %i.mh = load i8, ptr %i.mg, align 2, !tbaa !9
  %i.mi = zext i8 %i.mh to i16
  %i.mj = or disjoint i16 %i.mf, %i.mi            ; 2 uses
  br i1 %i.ks, label %.lr.ph.i21.i.i.epil.preheader, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.preheader.i20.i.i, %.lr.ph.i21.i.i
  %.03240.i.i.i = phi i64 [ %i.nb, %.lr.ph.i21.i.i ], [ 0, %.lr.ph.preheader.i20.i.i ] ; 3 uses
  %.03339.i.i.i = phi ptr [ %i.na, %.lr.ph.i21.i.i ], [ %i.ma, %.lr.ph.preheader.i20.i.i ] ; 2 uses
  %.138.i.i.i = phi i16 [ %i.ms, %.lr.ph.i21.i.i ], [ %i.mj, %.lr.ph.preheader.i20.i.i ]
  %niter366 = phi i64 [ %niter366.next.1, %.lr.ph.i21.i.i ], [ 0, %.lr.ph.preheader.i20.i.i ]
  %i.mk = load i16, ptr %.03339.i.i.i, align 1    ; 2 uses
  %i.ml = sub i16 %i.mk, %.138.i.i.i              ; 2 uses
  %.neg.i.i22.i.i = ashr i16 %i.ml, 15
  %i.mm = shl i16 %i.ml, 1
  %i.mn = xor i16 %i.mm, %.neg.i.i22.i.i
  %i.mo = lshr i16 %i.mn, %i.ly
  %i.mp = trunc i16 %i.mo to i8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03240.i.i.i
  store i8 %i.mp, ptr %i.mq, align 2, !tbaa !9
  %i.mr = getelementptr inbounds nuw i8, ptr %.03339.i.i.i, i64 %4 ; 2 uses
  %i.ms = load i16, ptr %i.mr, align 1            ; 3 uses
  %i.mt = sub i16 %i.ms, %i.mk                    ; 2 uses
  %.neg.i.i22.i.i.1 = ashr i16 %i.mt, 15
  %i.mu = shl i16 %i.mt, 1
  %i.mv = xor i16 %i.mu, %.neg.i.i22.i.i.1
  %i.mw = lshr i16 %i.mv, %i.ly
  %i.mx = trunc i16 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03240.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  store i8 %i.mx, ptr %i.mz, align 1, !tbaa !9
  %i.na = getelementptr inbounds nuw i8, ptr %i.mr, i64 %4 ; 2 uses
  %i.nb = add nuw nsw i64 %.03240.i.i.i, 2        ; 2 uses
  %niter366.next.1 = add i64 %niter366, 2         ; 2 uses
  %niter366.ncmp.1 = icmp eq i64 %niter366.next.1, %unroll_iter365
  br i1 %niter366.ncmp.1, label %.lr.ph.i.loopexit339.unr-lcssa, label %.lr.ph.i21.i.i, !llvm.loop !20

bb.r:                                             ; preds = %bb.o
  %.tr.i24.i.i = trunc i64 %.07179.i to i32
  %i.nc = shl i32 %.tr.i24.i.i, 3
  %i.nd = and i32 %i.nc, 24                       ; 3 uses
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.preheader.i26.i.i

.lr.ph.preheader.i26.i.i:                         ; preds = %bb.r
  %i.ne = and i64 %i.lf, 9223372036854775804      ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ne ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ne
  %i.nh = load i32, ptr %i.ng, align 4            ; 2 uses
  br i1 %i.kr, label %.lr.ph.i27.i.i.epil.preheader, label %.lr.ph.i27.i.i

.lr.ph.i27.i.i:                                   ; preds = %.lr.ph.preheader.i26.i.i, %.lr.ph.i27.i.i
  %.03343.i.i.i = phi i64 [ %i.nx, %.lr.ph.i27.i.i ], [ 0, %.lr.ph.preheader.i26.i.i ] ; 3 uses
  %.03442.i.i.i = phi ptr [ %i.nw, %.lr.ph.i27.i.i ], [ %i.nf, %.lr.ph.preheader.i26.i.i ] ; 2 uses
  %.141.i.i.i = phi i32 [ %i.np, %.lr.ph.i27.i.i ], [ %i.nh, %.lr.ph.preheader.i26.i.i ]
  %niter360 = phi i64 [ %niter360.next.1, %.lr.ph.i27.i.i ], [ 0, %.lr.ph.preheader.i26.i.i ]
  %i.ni = load i32, ptr %.03442.i.i.i, align 1    ; 2 uses
  %i.nj = xor i32 %i.ni, %.141.i.i.i              ; 2 uses
  %i.nk = tail call noundef i32 @llvm.fshl.i32(i32 %i.nj, i32 %i.nj, i32 range(i32 -134217728, 134217728) %i.lb)
  %i.nl = lshr i32 %i.nk, %i.nd
  %i.nm = trunc i32 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03343.i.i.i
  store i8 %i.nm, ptr %i.nn, align 2, !tbaa !9
  %i.no = getelementptr inbounds nuw i8, ptr %.03442.i.i.i, i64 %4 ; 2 uses
  %i.np = load i32, ptr %i.no, align 1            ; 3 uses
  %i.nq = xor i32 %i.np, %i.ni                    ; 2 uses
  %i.nr = tail call noundef i32 @llvm.fshl.i32(i32 %i.nq, i32 %i.nq, i32 range(i32 -134217728, 134217728) %i.lb)
  %i.ns = lshr i32 %i.nr, %i.nd
  %i.nt = trunc i32 %i.ns to i8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03343.i.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  store i8 %i.nt, ptr %i.nv, align 1, !tbaa !9
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 %4 ; 2 uses
  %i.nx = add nuw nsw i64 %.03343.i.i.i, 2        ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %.lr.ph.i.loopexit340.unr-lcssa, label %.lr.ph.i27.i.i, !llvm.loop !21

default.unreachable33.i.i:                        ; preds = %bb.o
  unreachable

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i:   ; preds = %bb.o
  br i1 %.not.i25.i.i, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i, label %.lr.ph.i

.lr.ph.i.loopexit.unr-lcssa:                      ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod369.not, label %.lr.ph.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.03238.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.lw, %.lr.ph.i.loopexit.unr-lcssa ]
  %.03337.i.i.i.epil.init = phi ptr [ %i.lg, %.lr.ph.preheader.i.i.i ], [ %i.lv, %.lr.ph.i.loopexit.unr-lcssa ]
  %.136.i.i.i.epil.init = phi i8 [ %i.li, %.lr.ph.preheader.i.i.i ], [ %i.lp, %.lr.ph.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod370)
  %i.ny = load i8, ptr %.03337.i.i.i.epil.init, align 1, !tbaa !9
  %i.nz = sub i8 %i.ny, %.136.i.i.i.epil.init     ; 2 uses
  %.neg.i.i.i.i.epil = ashr i8 %i.nz, 7
  %i.oa = shl i8 %i.nz, 1
  %i.ob = xor i8 %i.oa, %.neg.i.i.i.i.epil
  %i.oc = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03238.i.i.i.epil.init
  store i8 %i.ob, ptr %i.oc, align 1, !tbaa !9
  br label %.lr.ph.i

.lr.ph.i.loopexit339.unr-lcssa:                   ; preds = %.lr.ph.i21.i.i
  br i1 %lcmp.mod363.not, label %.lr.ph.i, label %.lr.ph.i21.i.i.epil.preheader

.lr.ph.i21.i.i.epil.preheader:                    ; preds = %.lr.ph.i.loopexit339.unr-lcssa, %.lr.ph.preheader.i20.i.i
  %.03240.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i20.i.i ], [ %i.nb, %.lr.ph.i.loopexit339.unr-lcssa ]
  %.03339.i.i.i.epil.init = phi ptr [ %i.ma, %.lr.ph.preheader.i20.i.i ], [ %i.na, %.lr.ph.i.loopexit339.unr-lcssa ]
  %.138.i.i.i.epil.init = phi i16 [ %i.mj, %.lr.ph.preheader.i20.i.i ], [ %i.ms, %.lr.ph.i.loopexit339.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod364)
  %i.od = load i16, ptr %.03339.i.i.i.epil.init, align 1
  %i.oe = sub i16 %i.od, %.138.i.i.i.epil.init    ; 2 uses
  %.neg.i.i22.i.i.epil = ashr i16 %i.oe, 15
  %i.of = shl i16 %i.oe, 1
  %i.og = xor i16 %i.of, %.neg.i.i22.i.i.epil
  %i.oh = lshr i16 %i.og, %i.ly
  %i.oi = trunc i16 %i.oh to i8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03240.i.i.i.epil.init
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !9
  br label %.lr.ph.i

.lr.ph.i.loopexit340.unr-lcssa:                   ; preds = %.lr.ph.i27.i.i
  br i1 %lcmp.mod357.not, label %.lr.ph.i, label %.lr.ph.i27.i.i.epil.preheader

.lr.ph.i27.i.i.epil.preheader:                    ; preds = %.lr.ph.i.loopexit340.unr-lcssa, %.lr.ph.preheader.i26.i.i
  %.03343.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i26.i.i ], [ %i.nx, %.lr.ph.i.loopexit340.unr-lcssa ]
  %.03442.i.i.i.epil.init = phi ptr [ %i.nf, %.lr.ph.preheader.i26.i.i ], [ %i.nw, %.lr.ph.i.loopexit340.unr-lcssa ]
  %.141.i.i.i.epil.init = phi i32 [ %i.nh, %.lr.ph.preheader.i26.i.i ], [ %i.np, %.lr.ph.i.loopexit340.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.ok = load i32, ptr %.03442.i.i.i.epil.init, align 1
  %i.ol = xor i32 %i.ok, %.141.i.i.i.epil.init    ; 2 uses
  %i.om = tail call noundef i32 @llvm.fshl.i32(i32 %i.ol, i32 %i.ol, i32 range(i32 -134217728, 134217728) %i.lb)
  %i.on = lshr i32 %i.om, %i.nd
  %i.oo = trunc i32 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03343.i.i.i.epil.init
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !9
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i27.i.i.epil.preheader, %.lr.ph.i.loopexit340.unr-lcssa, %.lr.ph.i21.i.i.epil.preheader, %.lr.ph.i.loopexit339.unr-lcssa, %.lr.ph.i.i.i.epil.preheader, %.lr.ph.i.loopexit.unr-lcssa, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i
  %.promoted.i104 = load i64, ptr %i.lc, align 8, !tbaa !36 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.oq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i104, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.oq, %vector.ph ], [ %i.xz, %vector.body ]
  %i.or = shl nuw i64 %index, 4                   ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.or ; 16 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.or ; 16 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load i8, ptr %i.os, align 16, !tbaa !9
  %i.ow = load i8, ptr %i.ou, align 16, !tbaa !9
  %i.ox = insertelement <2 x i8> poison, i8 %i.ov, i64 0
  %i.oy = insertelement <2 x i8> %i.ox, i8 %i.ow, i64 1 ; 3 uses
  %i.oz = icmp eq <2 x i8> %i.oy, zeroinitializer
  %i.pa = select <2 x i1> %i.oz, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.os, i64 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 17
  %i.pd = load i8, ptr %i.pb, align 1, !tbaa !9
  %i.pe = load i8, ptr %i.pc, align 1, !tbaa !9
  %i.pf = insertelement <2 x i8> poison, i8 %i.pd, i64 0
  %i.pg = insertelement <2 x i8> %i.pf, i8 %i.pe, i64 1 ; 3 uses
  %i.ph = icmp ne <2 x i8> %i.pg, zeroinitializer
  %i.pi = zext <2 x i1> %i.ph to <2 x i64>
  %i.pj = add nuw nsw <2 x i64> %i.pa, %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ot, i64 18
  %i.pm = load i8, ptr %i.pk, align 2, !tbaa !9
  %i.pn = load i8, ptr %i.pl, align 2, !tbaa !9
  %i.po = insertelement <2 x i8> poison, i8 %i.pm, i64 0
  %i.pp = insertelement <2 x i8> %i.po, i8 %i.pn, i64 1 ; 3 uses
  %i.pq = icmp ne <2 x i8> %i.pp, zeroinitializer
  %i.pr = zext <2 x i1> %i.pq to <2 x i64>
  %i.ps = add nuw nsw <2 x i64> %i.pj, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.os, i64 3
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ot, i64 19
  %i.pv = load i8, ptr %i.pt, align 1, !tbaa !9
  %i.pw = load i8, ptr %i.pu, align 1, !tbaa !9
  %i.px = insertelement <2 x i8> poison, i8 %i.pv, i64 0
  %i.py = insertelement <2 x i8> %i.px, i8 %i.pw, i64 1 ; 3 uses
  %i.pz = icmp ne <2 x i8> %i.py, zeroinitializer
  %i.qa = zext <2 x i1> %i.pz to <2 x i64>
  %i.qb = add nuw nsw <2 x i64> %i.ps, %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ot, i64 20
  %i.qe = load i8, ptr %i.qc, align 4, !tbaa !9
  %i.qf = load i8, ptr %i.qd, align 4, !tbaa !9
  %i.qg = insertelement <2 x i8> poison, i8 %i.qe, i64 0
  %i.qh = insertelement <2 x i8> %i.qg, i8 %i.qf, i64 1 ; 3 uses
  %i.qi = icmp ne <2 x i8> %i.qh, zeroinitializer
  %i.qj = zext <2 x i1> %i.qi to <2 x i64>
  %i.qk = add nuw nsw <2 x i64> %i.qb, %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.os, i64 5
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ot, i64 21
  %i.qn = load i8, ptr %i.ql, align 1, !tbaa !9
  %i.qo = load i8, ptr %i.qm, align 1, !tbaa !9
  %i.qp = insertelement <2 x i8> poison, i8 %i.qn, i64 0
  %i.qq = insertelement <2 x i8> %i.qp, i8 %i.qo, i64 1 ; 3 uses
  %i.qr = icmp ne <2 x i8> %i.qq, zeroinitializer
  %i.qs = zext <2 x i1> %i.qr to <2 x i64>
  %i.qt = add nuw nsw <2 x i64> %i.qk, %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.os, i64 6
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ot, i64 22
  %i.qw = load i8, ptr %i.qu, align 2, !tbaa !9
  %i.qx = load i8, ptr %i.qv, align 2, !tbaa !9
  %i.qy = insertelement <2 x i8> poison, i8 %i.qw, i64 0
  %i.qz = insertelement <2 x i8> %i.qy, i8 %i.qx, i64 1 ; 3 uses
  %i.ra = icmp ne <2 x i8> %i.qz, zeroinitializer
  %i.rb = zext <2 x i1> %i.ra to <2 x i64>
  %i.rc = add nuw nsw <2 x i64> %i.qt, %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.os, i64 7
  %i.re = getelementptr inbounds nuw i8, ptr %i.ot, i64 23
  %i.rf = load i8, ptr %i.rd, align 1, !tbaa !9
  %i.rg = load i8, ptr %i.re, align 1, !tbaa !9
  %i.rh = insertelement <2 x i8> poison, i8 %i.rf, i64 0
  %i.ri = insertelement <2 x i8> %i.rh, i8 %i.rg, i64 1 ; 3 uses
  %i.rj = icmp ne <2 x i8> %i.ri, zeroinitializer
  %i.rk = zext <2 x i1> %i.rj to <2 x i64>
  %i.rl = add nuw nsw <2 x i64> %i.rc, %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ro = load i8, ptr %i.rm, align 8, !tbaa !9
  %i.rp = load i8, ptr %i.rn, align 8, !tbaa !9
  %i.rq = insertelement <2 x i8> poison, i8 %i.ro, i64 0
  %i.rr = insertelement <2 x i8> %i.rq, i8 %i.rp, i64 1 ; 3 uses
  %i.rs = icmp ne <2 x i8> %i.rr, zeroinitializer
  %i.rt = zext <2 x i1> %i.rs to <2 x i64>
  %i.ru = add nuw nsw <2 x i64> %i.rl, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.os, i64 9
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ot, i64 25
  %i.rx = load i8, ptr %i.rv, align 1, !tbaa !9
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !9
  %i.rz = insertelement <2 x i8> poison, i8 %i.rx, i64 0
  %i.sa = insertelement <2 x i8> %i.rz, i8 %i.ry, i64 1 ; 3 uses
  %i.sb = icmp ne <2 x i8> %i.sa, zeroinitializer
  %i.sc = zext <2 x i1> %i.sb to <2 x i64>
  %i.sd = add nuw nsw <2 x i64> %i.ru, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.os, i64 10
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ot, i64 26
  %i.sg = load i8, ptr %i.se, align 2, !tbaa !9
  %i.sh = load i8, ptr %i.sf, align 2, !tbaa !9
  %i.si = insertelement <2 x i8> poison, i8 %i.sg, i64 0
  %i.sj = insertelement <2 x i8> %i.si, i8 %i.sh, i64 1 ; 3 uses
  %i.sk = icmp ne <2 x i8> %i.sj, zeroinitializer
end_hunk_0
begin_hunk_1_@meshopt_encodeVertexBufferLevel:bb.a
  %i.tb = insertelement <2 x i8> %i.ta, i8 %i.sz, i64 1 ; 3 uses
  %i.tc = icmp ne <2 x i8> %i.tb, zeroinitializer
  %i.td = zext <2 x i1> %i.tc to <2 x i64>
  %i.te = add nuw nsw <2 x i64> %i.sv, %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.os, i64 13
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ot, i64 29
  %i.th = load i8, ptr %i.tf, align 1, !tbaa !9
  %i.ti = load i8, ptr %i.tg, align 1, !tbaa !9
  %i.tj = insertelement <2 x i8> poison, i8 %i.th, i64 0
  %i.tk = insertelement <2 x i8> %i.tj, i8 %i.ti, i64 1 ; 3 uses
  %i.tl = icmp ne <2 x i8> %i.tk, zeroinitializer
  %i.tm = zext <2 x i1> %i.tl to <2 x i64>
  %i.tn = add nuw nsw <2 x i64> %i.te, %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.os, i64 14
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ot, i64 30
  %i.tq = load i8, ptr %i.to, align 2, !tbaa !9
  %i.tr = load i8, ptr %i.tp, align 2, !tbaa !9
  %i.ts = insertelement <2 x i8> poison, i8 %i.tq, i64 0
  %i.tt = insertelement <2 x i8> %i.ts, i8 %i.tr, i64 1 ; 3 uses
  %i.tu = icmp ne <2 x i8> %i.tt, zeroinitializer
  %i.tv = zext <2 x i1> %i.tu to <2 x i64>
  %i.tw = add nuw nsw <2 x i64> %i.tn, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.os, i64 15
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ot, i64 31
  %i.tz = load i8, ptr %i.tx, align 1, !tbaa !9
  %i.ua = load i8, ptr %i.ty, align 1, !tbaa !9
  %i.ub = insertelement <2 x i8> poison, i8 %i.tz, i64 0
  %i.uc = insertelement <2 x i8> %i.ub, i8 %i.ua, i64 1 ; 3 uses
  %i.ud = icmp ne <2 x i8> %i.uc, zeroinitializer
  %i.ue = zext <2 x i1> %i.ud to <2 x i64>
  %i.uf = add nuw nsw <2 x i64> %i.tw, %i.ue
  %i.ug = icmp ugt <2 x i8> %i.oy, splat (i8 2)
  %i.uh = select <2 x i1> %i.ug, <2 x i64> splat (i64 5), <2 x i64> splat (i64 4)
  %i.ui = icmp ugt <2 x i8> %i.pg, splat (i8 2)
  %i.uj = zext <2 x i1> %i.ui to <2 x i64>
  %i.uk = add nuw nsw <2 x i64> %i.uh, %i.uj
  %i.ul = icmp ugt <2 x i8> %i.pp, splat (i8 2)
  %i.um = zext <2 x i1> %i.ul to <2 x i64>
  %i.un = add nuw nsw <2 x i64> %i.uk, %i.um
  %i.uo = icmp ugt <2 x i8> %i.py, splat (i8 2)
  %i.up = zext <2 x i1> %i.uo to <2 x i64>
  %i.uq = add nuw nsw <2 x i64> %i.un, %i.up
  %i.ur = icmp ugt <2 x i8> %i.qh, splat (i8 2)
  %i.us = zext <2 x i1> %i.ur to <2 x i64>
  %i.ut = add nuw nsw <2 x i64> %i.uq, %i.us
  %i.uu = icmp ugt <2 x i8> %i.qq, splat (i8 2)
  %i.uv = zext <2 x i1> %i.uu to <2 x i64>
  %i.uw = add nuw nsw <2 x i64> %i.ut, %i.uv
  %i.ux = icmp ugt <2 x i8> %i.qz, splat (i8 2)
  %i.uy = zext <2 x i1> %i.ux to <2 x i64>
  %i.uz = add nuw nsw <2 x i64> %i.uw, %i.uy
  %i.va = icmp ugt <2 x i8> %i.ri, splat (i8 2)
  %i.vb = zext <2 x i1> %i.va to <2 x i64>
  %i.vc = add nuw nsw <2 x i64> %i.uz, %i.vb
  %i.vd = icmp ugt <2 x i8> %i.rr, splat (i8 2)
  %i.ve = zext <2 x i1> %i.vd to <2 x i64>
  %i.vf = add nuw nsw <2 x i64> %i.vc, %i.ve
  %i.vg = icmp ugt <2 x i8> %i.sa, splat (i8 2)
  %i.vh = zext <2 x i1> %i.vg to <2 x i64>
  %i.vi = add nuw nsw <2 x i64> %i.vf, %i.vh
  %i.vj = icmp ugt <2 x i8> %i.sj, splat (i8 2)
  %i.vk = zext <2 x i1> %i.vj to <2 x i64>
  %i.vl = add nuw nsw <2 x i64> %i.vi, %i.vk
  %i.vm = icmp ugt <2 x i8> %i.ss, splat (i8 2)
  %i.vn = zext <2 x i1> %i.vm to <2 x i64>
  %i.vo = add nuw nsw <2 x i64> %i.vl, %i.vn
  %i.vp = icmp ugt <2 x i8> %i.tb, splat (i8 2)
  %i.vq = zext <2 x i1> %i.vp to <2 x i64>
  %i.vr = add nuw nsw <2 x i64> %i.vo, %i.vq
  %i.vs = icmp ugt <2 x i8> %i.tk, splat (i8 2)
  %i.vt = zext <2 x i1> %i.vs to <2 x i64>
  %i.vu = add nuw nsw <2 x i64> %i.vr, %i.vt
  %i.vv = icmp ugt <2 x i8> %i.tt, splat (i8 2)
  %i.vw = zext <2 x i1> %i.vv to <2 x i64>
  %i.vx = add nuw nsw <2 x i64> %i.vu, %i.vw
  %i.vy = icmp ugt <2 x i8> %i.uc, splat (i8 2)
  %i.vz = zext <2 x i1> %i.vy to <2 x i64>
  %i.wa = add nuw nsw <2 x i64> %i.vx, %i.vz
  %i.wb = icmp ugt <2 x i8> %i.oy, splat (i8 14)
  %i.wc = select <2 x i1> %i.wb, <2 x i64> splat (i64 9), <2 x i64> splat (i64 8)
  %i.wd = icmp ugt <2 x i8> %i.pg, splat (i8 14)
  %i.we = zext <2 x i1> %i.wd to <2 x i64>
  %i.wf = add nuw nsw <2 x i64> %i.wc, %i.we
  %i.wg = icmp ugt <2 x i8> %i.pp, splat (i8 14)
  %i.wh = zext <2 x i1> %i.wg to <2 x i64>
  %i.wi = add nuw nsw <2 x i64> %i.wf, %i.wh
  %i.wj = icmp ugt <2 x i8> %i.py, splat (i8 14)
  %i.wk = zext <2 x i1> %i.wj to <2 x i64>
  %i.wl = add nuw nsw <2 x i64> %i.wi, %i.wk
  %i.wm = icmp ugt <2 x i8> %i.qh, splat (i8 14)
  %i.wn = zext <2 x i1> %i.wm to <2 x i64>
  %i.wo = add nuw nsw <2 x i64> %i.wl, %i.wn
  %i.wp = icmp ugt <2 x i8> %i.qq, splat (i8 14)
  %i.wq = zext <2 x i1> %i.wp to <2 x i64>
  %i.wr = add nuw nsw <2 x i64> %i.wo, %i.wq
  %i.ws = icmp ugt <2 x i8> %i.qz, splat (i8 14)
  %i.wt = zext <2 x i1> %i.ws to <2 x i64>
  %i.wu = add nuw nsw <2 x i64> %i.wr, %i.wt
  %i.wv = icmp ugt <2 x i8> %i.ri, splat (i8 14)
  %i.ww = zext <2 x i1> %i.wv to <2 x i64>
  %i.wx = add nuw nsw <2 x i64> %i.wu, %i.ww
  %i.wy = icmp ugt <2 x i8> %i.rr, splat (i8 14)
  %i.wz = zext <2 x i1> %i.wy to <2 x i64>
  %i.xa = add nuw nsw <2 x i64> %i.wx, %i.wz
  %i.xb = icmp ugt <2 x i8> %i.sa, splat (i8 14)
  %i.xc = zext <2 x i1> %i.xb to <2 x i64>
  %i.xd = add nuw nsw <2 x i64> %i.xa, %i.xc
  %i.xe = icmp ugt <2 x i8> %i.sj, splat (i8 14)
  %i.xf = zext <2 x i1> %i.xe to <2 x i64>
  %i.xg = add nuw nsw <2 x i64> %i.xd, %i.xf
  %i.xh = icmp ugt <2 x i8> %i.ss, splat (i8 14)
  %i.xi = zext <2 x i1> %i.xh to <2 x i64>
  %i.xj = add nuw nsw <2 x i64> %i.xg, %i.xi
  %i.xk = icmp ugt <2 x i8> %i.tb, splat (i8 14)
  %i.xl = zext <2 x i1> %i.xk to <2 x i64>
  %i.xm = add nuw nsw <2 x i64> %i.xj, %i.xl
  %i.xn = icmp ugt <2 x i8> %i.tk, splat (i8 14)
  %i.xo = zext <2 x i1> %i.xn to <2 x i64>
  %i.xp = add nuw nsw <2 x i64> %i.xm, %i.xo
  %i.xq = icmp ugt <2 x i8> %i.tt, splat (i8 14)
  %i.xr = zext <2 x i1> %i.xq to <2 x i64>
  %i.xs = add nuw nsw <2 x i64> %i.xp, %i.xr
  %i.xt = icmp ugt <2 x i8> %i.uc, splat (i8 14)
  %i.xu = zext <2 x i1> %i.xt to <2 x i64>
  %i.xv = add nuw nsw <2 x i64> %i.xs, %i.xu
  %i.xw = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.uf, <2 x i64> %i.wa)
  %i.xx = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.xw, <2 x i64> %i.xv)
  %i.xy = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.xx, <2 x i64> splat (i64 16))
  %i.xz = add <2 x i64> %i.xy, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ya = icmp eq i64 %index.next, %n.vec
  br i1 %i.ya, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %i.yb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.xz) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.promoted.i104, %.lr.ph.i ], [ %i.yb, %middle.block ]
  %.07078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ky, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa294 = phi i64 [ %i.yb, %middle.block ], [ %i.yr, %scalar.ph ]
  store i64 %.lcssa294, ptr %i.lc, align 8, !tbaa !36
  br label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i

_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i: ; preds = %._crit_edge.i, %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i, %bb.r, %bb.q, %bb.p
  %i.yc = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %i.yc, 4
  br i1 %exitcond.not.i105, label %bb.n, label %bb.o, !llvm.loop !23

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.yd = phi i64 [ %i.yr, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.07078.i = phi i64 [ %i.ys, %scalar.ph ], [ %.07078.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07078.i
  %i.yf = load <16 x i8>, ptr %i.ye, align 16, !tbaa !9 ; 3 uses
  %.not319 = icmp eq <16 x i8> %i.yf, zeroinitializer
  %i.yg = select <16 x i1> %.not319, <16 x i64> <i64 2, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> <i64 3, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>
  %i.yh = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.yg)
  %i.yi = icmp ugt <16 x i8> %i.yf, splat (i8 2)
  %i.yj = select <16 x i1> %i.yi, <16 x i64> <i64 5, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.yk = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.yj)
  %i.yl = icmp ugt <16 x i8> %i.yf, splat (i8 14)
  %i.ym = select <16 x i1> %i.yl, <16 x i64> <i64 9, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1>, <16 x i64> <i64 8, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
  %i.yn = tail call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %i.ym)
  %i.yo = tail call i64 @llvm.umin.i64(i64 %i.yh, i64 %i.yk)
  %i.yp = tail call i64 @llvm.umin.i64(i64 %i.yo, i64 %i.yn)
  %i.yq = tail call i64 @llvm.umin.i64(i64 %i.yp, i64 16)
  %i.yr = add i64 %i.yq, %i.yd                    ; 2 uses
  %i.ys = add nuw nsw i64 %.07078.i, 16           ; 2 uses
  %i.yt = icmp ult i64 %i.ys, %i.kg
  br i1 %i.yt, label %scalar.ph, label %._crit_edge.i, !llvm.loop !24

.preheader.i:                                     ; preds = %bb.m
  %.pre.i = load i64, ptr %i.d, align 16, !tbaa !36 ; 2 uses
  %i.yu = load i64, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %.pre.i
  %i.yw = zext i1 %i.yv to i32                    ; 2 uses
  br i1 %i.ae, label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.yx = tail call i64 @llvm.umin.i64(i64 %i.yu, i64 %.pre.i)
  %i.yy = load i64, ptr %i.an, align 16, !tbaa !36
  %i.yz = icmp ult i64 %i.yy, %i.yx
  %i.za = select i1 %i.yz, i32 2, i32 %i.yw
  br label %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit

_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit:    ; preds = %.preheader.i.1, %.preheader.i
  %.lcssa350 = phi i32 [ %i.yw, %.preheader.i ], [ %i.za, %.preheader.i.1 ] ; 2 uses
  %i.zb = icmp eq i32 %.lcssa350, 2
  %i.zc = or disjoint i32 %i.jy, 2
  %i.zd = select i1 %i.zb, i32 %i.zc, i32 %.lcssa350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ze = trunc i32 %i.zd to i8
  %i.zf = lshr exact i64 %.091171, 2
  %i.zg = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.zf
  store i8 %i.ze, ptr %i.zg, align 1, !tbaa !9
  %i.zh = add nuw nsw i64 %.091171, 4             ; 2 uses
  %i.zi = icmp ult i64 %i.zh, %4
  br i1 %i.zi, label %bb.e, label %.loopexit145, !llvm.loop !25

.loopexit145:                                     ; preds = %_ZN7meshoptL15estimateChannelEPKhmmmmmii.exit, %bb.d
  %i.zj = icmp eq i32 %i.k, 0                     ; 5 uses
  %i.zk = lshr i64 %4, 2                          ; 3 uses
  %i.zl = select i1 %i.zj, i64 0, i64 %i.zk       ; 4 uses
  %i.zm = icmp eq i32 %5, 0
  br label %bb.s

bb.s:                                             ; preds = %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit, %.loopexit145
  %.093 = phi ptr [ %i.r, %.loopexit145 ], [ %.26095.i, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 11 uses
  %.0 = phi i64 [ 0, %.loopexit145 ], [ %i.bfe, %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit ] ; 6 uses
  %i.zn = icmp ult i64 %.0, %3
  br i1 %i.zn, label %bb.t, label %bb.au

bb.t:                                             ; preds = %bb.s
  %i.zo = add i64 %.0, %i.z                       ; 2 uses
  %i.zp = icmp ult i64 %i.zo, %3
  %i.zq = sub nuw i64 %3, %.0
  %i.zr = select i1 %i.zp, i64 %i.z, i64 %i.zq    ; 19 uses
  %i.zs = mul i64 %.0, %4
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 %i.zs ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.zu = add i64 %i.zr, 15                       ; 2 uses
  %i.zv = and i64 %i.zu, -16                      ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.zw = ptrtoint ptr %.093 to i64
  %i.zx = sub i64 %i.m, %i.zw
  %i.zy = icmp ult i64 %i.zx, %i.zl
  br i1 %i.zy, label %_ZN7meshoptL17encodeVertexBlockEPhS0_PKhmmS0_S2_ii.exit.thread, label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %bb.t
  %i.zz = getelementptr inbounds nuw i8, ptr %.093, i64 %i.zl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.093, i8 0, i64 %i.zl, i1 false)
  %.not.i25.i.i108 = icmp eq i64 %i.zr, 0         ; 3 uses
  %i.aaa = icmp eq i64 %i.zv, 0                   ; 3 uses
  %i.aab = lshr i64 %i.zu, 4
  %i.aac = add nuw nsw i64 %i.aab, 3
  %i.aad = lshr i64 %i.aac, 2                     ; 6 uses
  %umin373 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.zo)
  %i.aae = xor i64 %.0, -1
  %i.aaf = add i64 %umin373, %i.aae               ; 3 uses
  %xtraiter374 = and i64 %i.zr, 1
  %i.aag = icmp eq i64 %i.aaf, 0
  %unroll_iter378 = and i64 %i.zr, -2
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  %lcmp.mod377 = trunc i64 %i.zr to i1
  %xtraiter380 = and i64 %i.zr, 1
  %i.aah = icmp eq i64 %i.aaf, 0
  %unroll_iter384 = and i64 %i.zr, -2
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  %lcmp.mod383 = trunc i64 %i.zr to i1
  %xtraiter386 = and i64 %i.zr, 1
  %i.aai = icmp eq i64 %i.aaf, 0
  %unroll_iter390 = and i64 %i.zr, -2
  %lcmp.mod388.not = icmp eq i64 %xtraiter386, 0
  %lcmp.mod389 = trunc i64 %i.zr to i1
  %i.aaj = add i64 %i.zr, -1
  %i.aak = lshr i64 %i.aaj, 4                     ; 2 uses
  %i.aal = add nuw nsw i64 %i.aak, 1              ; 2 uses
  %min.iters.check297 = icmp eq i64 %i.aak, 0
  %n.vec299 = and i64 %i.aal, 2305843009213693950 ; 3 uses
  %i.aam = shl i64 %n.vec299, 4
  %i.aan = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aad, i64 0 ; 2 uses
  %cmp.n307 = icmp eq i64 %i.aal, %n.vec299
  br label %bb.u

bb.u:                                             ; preds = %.thread92.i, %.lr.ph.i107
  %.054120.i = phi i64 [ 0, %.lr.ph.i107 ], [ %i.bfa, %.thread92.i ] ; 17 uses
  %.058119.i = phi ptr [ %i.zz, %.lr.ph.i107 ], [ %.26095.i, %.thread92.i ] ; 8 uses
  br i1 %i.zj, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aao = lshr i64 %.054120.i, 2
  %i.aap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aao
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !9
  %i.aar = zext i8 %i.aaq to i32                  ; 2 uses
  %i.aas = and i32 %i.aar, 3
  switch i32 %i.aas, label %default.unreachable [
    i32 0, label %.thread.i
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109
  ]

.thread.i:                                        ; preds = %bb.v, %bb.u
  br i1 %.not.i25.i.i108, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134, label %.lr.ph.preheader.i.i.i127

.lr.ph.preheader.i.i.i127:                        ; preds = %.thread.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.zt, i64 %.054120.i ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.g, i64 %.054120.i
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !9 ; 2 uses
  br i1 %i.aai, label %.lr.ph.i.i.i128.epil.preheader, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %.lr.ph.preheader.i.i.i127, %.lr.ph.i.i.i128
  %.03238.i.i.i129 = phi i64 [ %i.abj, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ] ; 3 uses
  %.03337.i.i.i130 = phi ptr [ %i.abi, %.lr.ph.i.i.i128 ], [ %i.aat, %.lr.ph.preheader.i.i.i127 ] ; 2 uses
  %.136.i.i.i131 = phi i8 [ %i.abc, %.lr.ph.i.i.i128 ], [ %i.aav, %.lr.ph.preheader.i.i.i127 ]
  %niter391 = phi i64 [ %niter391.next.1, %.lr.ph.i.i.i128 ], [ 0, %.lr.ph.preheader.i.i.i127 ]
  %i.aaw = load i8, ptr %.03337.i.i.i130, align 1, !tbaa !9 ; 2 uses
  %i.aax = sub i8 %i.aaw, %.136.i.i.i131          ; 2 uses
  %.neg.i.i.i.i132 = ashr i8 %i.aax, 7
  %i.aay = shl i8 %i.aax, 1
  %i.aaz = xor i8 %i.aay, %.neg.i.i.i.i132
  %i.aba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  store i8 %i.aaz, ptr %i.aba, align 2, !tbaa !9
  %i.abb = getelementptr inbounds nuw i8, ptr %.03337.i.i.i130, i64 %4 ; 2 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !9 ; 3 uses
  %i.abd = sub i8 %i.abc, %i.aaw                  ; 2 uses
  %.neg.i.i.i.i132.1 = ashr i8 %i.abd, 7
  %i.abe = shl i8 %i.abd, 1
  %i.abf = xor i8 %i.abe, %.neg.i.i.i.i132.1
  %i.abg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03238.i.i.i129
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 1
  store i8 %i.abf, ptr %i.abh, align 1, !tbaa !9
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abb, i64 %4 ; 2 uses
  %i.abj = add nuw nsw i64 %.03238.i.i.i129, 2    ; 2 uses
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.i134.loopexit.unr-lcssa, label %.lr.ph.i.i.i128, !llvm.loop !19

bb.w:                                             ; preds = %bb.v
  %.tr.i.i.i119 = trunc i64 %.054120.i to i16
  %i.abk = shl i16 %.tr.i.i.i119, 3
  %i.abl = and i16 %i.abk, 8                      ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i20.i.i120

.lr.ph.preheader.i20.i.i120:                      ; preds = %bb.w
  %i.abm = and i64 %.054120.i, -2                 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.abm ; 2 uses
  %i.abo = or i64 %.054120.i, 1
  %i.abp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.abo
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !9
  %i.abr = zext i8 %i.abq to i16
  %i.abs = shl nuw i16 %i.abr, 8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.abm
  %i.abu = load i8, ptr %i.abt, align 2, !tbaa !9
  %i.abv = zext i8 %i.abu to i16
  %i.abw = or disjoint i16 %i.abs, %i.abv         ; 2 uses
  br i1 %i.aah, label %.lr.ph.i21.i.i121.epil.preheader, label %.lr.ph.i21.i.i121

.lr.ph.i21.i.i121:                                ; preds = %.lr.ph.preheader.i20.i.i120, %.lr.ph.i21.i.i121
  %.03240.i.i.i122 = phi i64 [ %i.aco, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ] ; 3 uses
  %.03339.i.i.i123 = phi ptr [ %i.acn, %.lr.ph.i21.i.i121 ], [ %i.abn, %.lr.ph.preheader.i20.i.i120 ] ; 2 uses
  %.138.i.i.i124 = phi i16 [ %i.acf, %.lr.ph.i21.i.i121 ], [ %i.abw, %.lr.ph.preheader.i20.i.i120 ]
  %niter385 = phi i64 [ %niter385.next.1, %.lr.ph.i21.i.i121 ], [ 0, %.lr.ph.preheader.i20.i.i120 ]
  %i.abx = load i16, ptr %.03339.i.i.i123, align 1 ; 2 uses
  %i.aby = sub i16 %i.abx, %.138.i.i.i124         ; 2 uses
  %.neg.i.i22.i.i125 = ashr i16 %i.aby, 15
  %i.abz = shl i16 %i.aby, 1
  %i.aca = xor i16 %i.abz, %.neg.i.i22.i.i125
  %i.acb = lshr i16 %i.aca, %i.abl
  %i.acc = trunc i16 %i.acb to i8
  %i.acd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  store i8 %i.acc, ptr %i.acd, align 2, !tbaa !9
  %i.ace = getelementptr inbounds nuw i8, ptr %.03339.i.i.i123, i64 %4 ; 2 uses
  %i.acf = load i16, ptr %i.ace, align 1          ; 3 uses
  %i.acg = sub i16 %i.acf, %i.abx                 ; 2 uses
  %.neg.i.i22.i.i125.1 = ashr i16 %i.acg, 15
  %i.ach = shl i16 %i.acg, 1
  %i.aci = xor i16 %i.ach, %.neg.i.i22.i.i125.1
  %i.acj = lshr i16 %i.aci, %i.abl
  %i.ack = trunc i16 %i.acj to i8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03240.i.i.i122
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 1
  store i8 %i.ack, ptr %i.acm, align 1, !tbaa !9
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ace, i64 %4 ; 2 uses
  %i.aco = add nuw nsw i64 %.03240.i.i.i122, 2    ; 2 uses
  %niter385.next.1 = add i64 %niter385, 2         ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %_ZN7meshoptL12encodeDeltasEPhPKhmmS2_mi.exit.thread.i109.loopexit.unr-lcssa, label %.lr.ph.i21.i.i121, !llvm.loop !20

bb.x:                                             ; preds = %bb.v
  %i.acp = lshr i32 %i.aar, 4                     ; 3 uses
  %.tr.i24.i.i112 = trunc i64 %.054120.i to i32
  %i.acq = shl i32 %.tr.i24.i.i112, 3
  %i.acr = and i32 %i.acq, 24                     ; 3 uses
  br i1 %.not.i25.i.i108, label %.thread82.i, label %.lr.ph.preheader.i26.i.i113

.lr.ph.preheader.i26.i.i113:                      ; preds = %bb.x
  %i.acs = and i64 %.054120.i, -4                 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.acs ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.acs
  %i.acv = load i32, ptr %i.acu, align 4          ; 2 uses
  br i1 %i.aag, label %.lr.ph.i27.i.i114.epil.preheader, label %.lr.ph.i27.i.i114

.lr.ph.i27.i.i114:                                ; preds = %.lr.ph.preheader.i26.i.i113, %.lr.ph.i27.i.i114
  %.03343.i.i.i115 = phi i64 [ %i.adl, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ] ; 3 uses
  %.03442.i.i.i116 = phi ptr [ %i.adk, %.lr.ph.i27.i.i114 ], [ %i.act, %.lr.ph.preheader.i26.i.i113 ] ; 2 uses
  %.141.i.i.i117 = phi i32 [ %i.add, %.lr.ph.i27.i.i114 ], [ %i.acv, %.lr.ph.preheader.i26.i.i113 ]
  %niter379 = phi i64 [ %niter379.next.1, %.lr.ph.i27.i.i114 ], [ 0, %.lr.ph.preheader.i26.i.i113 ]
  %i.acw = load i32, ptr %.03442.i.i.i116, align 1 ; 2 uses
  %i.acx = xor i32 %i.acw, %.141.i.i.i117         ; 2 uses
  %i.acy = tail call noundef i32 @llvm.fshl.i32(i32 %i.acx, i32 %i.acx, i32 range(i32 -134217728, 134217728) %i.acp)
  %i.acz = lshr i32 %i.acy, %i.acr
  %i.ada = trunc i32 %i.acz to i8
  %i.adb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03343.i.i.i115
  store i8 %i.ada, ptr %i.adb, align 2, !tbaa !9
  %i.adc = getelementptr inbounds nuw i8, ptr %.03442.i.i.i116, i64 %4 ; 2 uses
end_hunk_1
