Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86_avx?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZNK4ncnn15Padding_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !53
  %i.hu = add nsw i32 %i.hr, %i.ht                ; 2 uses
  store i32 %i.hu, ptr %i.f, align 4, !tbaa !58
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !61
  %.not213 = icmp eq i32 %i.hw, 0
  br i1 %.not213, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hx = add nsw i32 %i.m, %i.ca
  %i.hy = add nsw i32 %i.hx, %i.ho
  %i.hz = add nsw i32 %i.hk, %i.cb
  %i.ia = add nsw i32 %i.hz, %i.hm
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ia, i32 noundef %i.hy, i32 noundef %i.hu, i32 noundef %i.by, i64 noundef %.pre, i32 noundef 8, ptr noundef %i.ic)
  %i.id = load ptr, ptr %2, align 8, !tbaa !18
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %.thread272, label %_ZNK4ncnn3Mat5emptyEv.exit233

_ZNK4ncnn3Mat5emptyEv.exit233:                    ; preds = %bb.ai
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !20
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !59
  %i.ij = sext i32 %i.ii to i64
  %i.ik = mul i64 %i.ig, %i.ij
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %.thread272, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit233
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.in)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn15Padding_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.f, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread272

.thread272:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit233, %bb.aj, %bb.ai
  %.6.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit233 ], [ 0, %bb.aj ], [ -100, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.thread

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.thread275

bb.al:                                            ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  switch i32 %i.cd, label %.thread275 [
    i32 1, label %bb.am
    i32 2, label %bb.aq
    i32 3, label %bb.au
    i32 4, label %bb.ba
  ]

bb.am:                                            ; preds = %bb.al
  %i.io = shl nsw i32 %i.cb, 2
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !50 ; 2 uses
  %i.ir = add nsw i32 %i.iq, %i.io
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.it = load i32, ptr %i.is, align 4, !tbaa !51
  %i.iu = add nsw i32 %i.ir, %i.it                ; 3 uses
  %i.iv = and i32 %i.iu, 7                        ; 2 uses
  %.not305 = icmp eq i32 %i.iv, 0
  %i.iw = and i32 %i.iu, 3
  %i.ix = icmp eq i32 %i.iw, 0
  %i.iy = lshr i64 %.pre, 2
  %i.iz = select i1 %i.ix, i64 2, i64 0
  %i.ja = select i1 %.not305, i64 3, i64 %i.iz
  %i.jb = shl nuw i64 %i.iy, %i.ja
  %i.jc = and i32 %i.iq, 3
  %i.jd = icmp eq i32 %i.jc, 0
  %i.je = icmp eq i32 %i.iv, 4
  %or.cond15 = and i1 %i.jd, %i.je
  br i1 %or.cond15, label %bb.an, label %.thread275

bb.an:                                            ; preds = %bb.am
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !61
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.ao, label %.thread275

bb.ao:                                            ; preds = %bb.an
  %i.ji = ashr exact i32 %i.iu, 2
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ji, i64 noundef %i.jb, i32 noundef 4, ptr noundef %i.jk)
  %i.jl = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit232

_ZNK4ncnn3Mat5emptyEv.exit232:                    ; preds = %bb.ao
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !20
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !59
  %i.jr = sext i32 %i.jq to i64
  %i.js = mul i64 %i.jo, %i.jr
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit232
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !38
  %i.jw = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jy = load <2 x i32>, ptr %i.ip, align 8, !tbaa !58
  %i.jz = sdiv <2 x i32> %i.jy, splat (i32 4)     ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val247 = load i32, ptr %i.ka, align 4, !tbaa !63
  %i.kb = extractelement <2 x i32> %i.jz, i64 0
  %i.kc = extractelement <2 x i32> %i.jz, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack4_sseERKNS_3MatERS0_iiiiRKDv4_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.jl, i32 %.val247, i32 noundef 0, i32 noundef 0, i32 noundef %i.kb, i32 noundef %i.kc, <4 x float> %i.jx)
  br label %.thread

bb.aq:                                            ; preds = %bb.al
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !50
  %i.kf = add nsw i32 %i.ke, %i.cb
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !51
  %i.ki = add nsw i32 %i.kf, %i.kh
  %i.kj = shl nsw i32 %i.ca, 2
  %i.kk = add nsw i32 %i.m, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !49
  %i.kn = add nsw i32 %i.kk, %i.km                ; 3 uses
  %i.ko = and i32 %i.kn, 7                        ; 2 uses
  %.not304 = icmp eq i32 %i.ko, 0
  %i.kp = and i32 %i.kn, 3
  %i.kq = icmp eq i32 %i.kp, 0
  %i.kr = lshr i64 %.pre, 2
  %i.ks = select i1 %i.kq, i64 2, i64 0
  %i.kt = select i1 %.not304, i64 3, i64 %i.ks
  %i.ku = shl nuw i64 %i.kr, %i.kt
  %i.kv = and i32 %i.m, 3
  %i.kw = icmp eq i32 %i.kv, 0
  %i.kx = icmp eq i32 %i.ko, 4
  %or.cond17 = and i1 %i.kw, %i.kx
  br i1 %or.cond17, label %bb.ar, label %.thread275

bb.ar:                                            ; preds = %bb.aq
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !61
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.as, label %.thread275

bb.as:                                            ; preds = %bb.ar
  %i.lb = ashr exact i32 %i.kn, 2
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ki, i32 noundef %i.lb, i64 noundef %i.ku, i32 noundef 4, ptr noundef %i.ld)
  %i.le = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit231

_ZNK4ncnn3Mat5emptyEv.exit231:                    ; preds = %bb.as
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !20
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !59
  %i.lk = sext i32 %i.lj to i64
  %i.ll = mul i64 %i.lh, %i.lk
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %.thread, label %bb.at

bb.at:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit231
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !38
  %i.lp = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = load <2 x i32>, ptr %i.l, align 8, !tbaa !58
  %i.ls = sdiv <2 x i32> %i.lr, splat (i32 4)     ; 2 uses
  %i.lt = load i32, ptr %i.kd, align 8, !tbaa !50
  %i.lu = load i32, ptr %i.kg, align 4, !tbaa !51
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val244 = load i32, ptr %i.lv, align 4, !tbaa !63
  %i.lw = extractelement <2 x i32> %i.ls, i64 0
  %i.lx = extractelement <2 x i32> %i.ls, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack4_sseERKNS_3MatERS0_iiiiRKDv4_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.le, i32 %.val244, i32 noundef %i.lw, i32 noundef %i.lx, i32 noundef %i.lt, i32 noundef %i.lu, <4 x float> %i.lq)
  br label %.thread

bb.au:                                            ; preds = %bb.al
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !50
  %i.ma = add nsw i32 %i.lz, %i.cb
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !51
  %i.md = add nsw i32 %i.ma, %i.mc
  %i.me = add nsw i32 %i.m, %i.ca
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !49
  %i.mh = add nsw i32 %i.me, %i.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.mi = shl nsw i32 %i.by, 2                    ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !52 ; 2 uses
  %i.ml = add nsw i32 %i.mi, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !53
  %i.mo = add nsw i32 %i.ml, %i.mn                ; 6 uses
  store i32 %i.mo, ptr %i.g, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.mp = and i32 %i.mo, 7                        ; 2 uses
  %.not303 = icmp eq i32 %i.mp, 0                 ; 2 uses
  %i.mq = and i32 %i.mo, 3
  %i.mr = icmp eq i32 %i.mq, 0                    ; 3 uses
  %i.ms = select i1 %i.mr, i32 4, i32 1           ; 2 uses
  %i.mt = select i1 %.not303, i32 8, i32 %i.ms
  store i32 %i.mt, ptr %i.h, align 4, !tbaa !58
  %i.mu = lshr i64 %.pre, 2
  %i.mv = select i1 %i.mr, i64 2, i64 0
  %i.mw = select i1 %.not303, i64 3, i64 %i.mv
  %i.mx = shl nuw i64 %i.mu, %i.mw
  %i.my = and i32 %i.mk, 3
  %i.mz = icmp eq i32 %i.my, 0
  %i.na = icmp eq i32 %i.mp, 4
  %or.cond19 = and i1 %i.mz, %i.na
  br i1 %or.cond19, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %.not214 = icmp eq i32 %i.mo, %i.mi
  br i1 %.not214, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !61
  %.not215 = icmp eq i32 %i.nc, 0
  br i1 %.not215, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %6 = ashr exact i32 %i.mo, 2
  %7 = select i1 %i.mr, i32 %6, i32 %i.mo
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.md, i32 noundef %i.mh, i32 noundef %7, i64 noundef %i.mx, i32 noundef %i.ms, ptr noundef %i.ne)
  %i.nf = load ptr, ptr %2, align 8, !tbaa !18
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %.thread292, label %_ZNK4ncnn3Mat5emptyEv.exit230

_ZNK4ncnn3Mat5emptyEv.exit230:                    ; preds = %bb.ax
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !20
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !59
  %i.nl = sext i32 %i.nk to i64
  %i.nm = mul i64 %i.ni, %i.nl
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %.thread292, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.no = load i32, ptr %i.mj, align 8, !tbaa !52
  %i.np = sdiv i32 %i.no, 4
  store i32 %i.np, ptr %i.i, align 4, !tbaa !58
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.nr)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn15Padding_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %.thread292

.thread292:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit230, %bb.ay, %bb.ax
  %.12.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit230 ], [ 0, %bb.ay ], [ -100, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.thread

bb.az:                                            ; preds = %bb.au, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.thread275

bb.ba:                                            ; preds = %bb.al
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !50
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !51
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !52
  %i.oa = add nsw i32 %i.nz, %i.bz
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !53
  %i.od = add nsw i32 %i.oa, %i.oc                ; 2 uses
  store i32 %i.od, ptr %i.j, align 4, !tbaa !58
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !61
  %.not216 = icmp eq i32 %i.of, 0
  br i1 %.not216, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.og = add nsw i32 %i.m, %i.ca
  %i.oh = add nsw i32 %i.og, %i.nx
  %i.oi = add nsw i32 %i.nt, %i.cb
  %i.oj = add nsw i32 %i.oi, %i.nv
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.oj, i32 noundef %i.oh, i32 noundef %i.od, i32 noundef %i.by, i64 noundef %.pre, i32 noundef 4, ptr noundef %i.ol)
  %i.om = load ptr, ptr %2, align 8, !tbaa !18
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %.thread299, label %_ZNK4ncnn3Mat5emptyEv.exit229

_ZNK4ncnn3Mat5emptyEv.exit229:                    ; preds = %bb.bb
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !20
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !59
  %i.os = sext i32 %i.or to i64
  %i.ot = mul i64 %i.op, %i.os
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %.thread299, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229
  %i.ov = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ow)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn15Padding_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.j, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread299

.thread299:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229, %bb.bc, %bb.bb
  %.14.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit229 ], [ 0, %bb.bc ], [ -100, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %.thread

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %.thread275

.thread275:                                       ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread, %bb.al, %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.s, %bb.am, %bb.an, %bb.aq, %bb.ar, %bb.az, %bb.t, %bb.u, %bb.x, %bb.y, %bb.ag, %bb.ak, %bb.bd
  %i.ox = phi i32 [ %i.br, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ], [ %i.cd, %bb.al ], [ %i.cd, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ %i.cd, %bb.s ], [ 1, %bb.am ], [ 1, %bb.an ], [ 2, %bb.aq ], [ 2, %bb.ar ], [ 3, %bb.az ], [ 1, %bb.t ], [ 1, %bb.u ], [ 2, %bb.x ], [ 2, %bb.y ], [ 3, %bb.ag ], [ 4, %bb.ak ], [ 4, %bb.bd ]
  %i.oy = phi <4 x i32> [ %i.bn, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ], [ %i.bx, %bb.al ], [ %i.bx, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ %i.bx, %bb.s ], [ %i.bx, %bb.am ], [ %i.bx, %bb.an ], [ %i.bx, %bb.aq ], [ %i.bx, %bb.ar ], [ %i.bx, %bb.az ], [ %i.bx, %bb.t ], [ %i.bx, %bb.u ], [ %i.bx, %bb.x ], [ %i.bx, %bb.y ], [ %i.bx, %bb.ag ], [ %i.bx, %bb.ak ], [ %i.bx, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.oz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !11 ; 2 uses
  %i.pc = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.pc, ptr %4, align 16, !tbaa !55
  %i.pd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre, ptr %i.pd, align 16, !tbaa !56
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bl, ptr %i.pe, align 8, !tbaa !57
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !17
  store ptr %i.ph, ptr %i.pf, align 16, !tbaa !17
  %i.pi = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.ox, ptr %i.pi, align 8, !tbaa !60
  %i.pj = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <4 x i32> %i.oy, ptr %i.pj, align 4, !tbaa !58
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !20
  store i64 %i.pn, ptr %i.pl, align 16, !tbaa !20
  %.not.i237 = icmp eq ptr %i.pb, null
  br i1 %.not.i237, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.be

bb.be:                                            ; preds = %.thread275
  %i.po = atomicrmw add ptr %i.pb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %.thread275, %bb.be
  %.not217 = icmp eq i32 %i.bl, 1
  br i1 %.not217, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !65
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !69
  %i.pr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.pq, ptr %i.pr, align 8, !tbaa !62
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ps = load ptr, ptr %4, align 16, !tbaa !18
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %.thread302, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bg
  %i.pu = load i64, ptr %i.pl, align 16, !tbaa !20
  %i.pv = load i32, ptr %i.pk, align 8, !tbaa !59
  %i.pw = sext i32 %i.pv to i64
  %i.px = mul i64 %i.pu, %i.pw
  %i.py = icmp eq i64 %i.px, 0
  br i1 %i.py, label %.thread302, label %bb.bh

.thread302:                                       ; preds = %bb.bg, %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bl

bb.bh:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bh, %_ZN4ncnn3Mat6addrefEv.exit
  %i.qa = invoke noundef i32 @_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bl:                                            ; preds = %.thread302, %bb.bj
  %.17 = phi i32 [ -100, %.thread302 ], [ %i.qa, %bb.bj ]
  %i.qc = load ptr, ptr %i.oz, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.qc, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit219, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qd = atomicrmw add ptr %i.qc, i32 -1 acq_rel, align 4
  %i.qe = icmp eq i32 %i.qd, 1
  br i1 %i.qe, label %bb.bn, label %_ZN4ncnn3MatD2Ev.exit219

bb.bn:                                            ; preds = %bb.bm
  %i.qf = load ptr, ptr %i.pf, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.qf, null
  %i.qg = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qh = load ptr, ptr %i.qf, align 8, !tbaa !9
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  invoke void %i.qj(ptr noundef nonnull align 8 dereferenceable(8) %i.qf, ptr noundef %i.qg)
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Padding_x86_avx19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE:bb.a

bb.ao:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit265
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.mz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn15Padding_x86_avx19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.g, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread303

.thread303:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit265, %bb.ao, %bb.am
  %.6.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit265 ], [ 0, %bb.ao ], [ -100, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.thread306

bb.aq:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  switch i32 %i.v, label %.thread306 [
    i32 1, label %bb.ar
    i32 2, label %bb.ax
    i32 3, label %bb.bd
    i32 4, label %bb.bl
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.na = shl nsw i32 %i.n, 2
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !50 ; 2 uses
  %i.nd = add nsw i32 %i.nc, %i.na
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !51
  %i.ng = add nsw i32 %i.nd, %i.nf                ; 3 uses
  %i.nh = and i32 %i.ng, 7                        ; 2 uses
  %.not336 = icmp eq i32 %i.nh, 0
  %i.ni = and i32 %i.ng, 3
  %i.nj = icmp eq i32 %i.ni, 0
  %i.nk = lshr i64 %i.x, 2
  %i.nl = select i1 %i.nj, i64 2, i64 0
  %i.nm = select i1 %.not336, i64 3, i64 %i.nl
  %i.nn = shl nuw i64 %i.nk, %i.nm
  %i.no = and i32 %i.nc, 3
  %i.np = icmp eq i32 %i.no, 0
  %i.nq = icmp eq i32 %i.nh, 4
  %or.cond15 = and i1 %i.np, %i.nq
  br i1 %or.cond15, label %bb.as, label %.thread306

bb.as:                                            ; preds = %bb.ar
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !61
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %bb.at, label %.thread306

bb.at:                                            ; preds = %bb.as
  %i.nu = ashr exact i32 %i.ng, 2
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.nu, i64 noundef %i.nn, i32 noundef 4, ptr noundef %i.nw)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nx = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit264

_ZNK4ncnn3Mat5emptyEv.exit264:                    ; preds = %bb.au
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !20
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !59
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul i64 %i.oa, %i.od
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread, label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.aw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit264
  %i.oh = load i16, ptr %i.c, align 2, !tbaa !122
  %i.oi = zext i16 %i.oh to i64                   ; 4 uses
  %i.oj = shl nuw nsw i64 %i.oi, 16
  %i.ok = shl nuw nsw i64 %i.oi, 32
  %i.ol = shl nuw i64 %i.oi, 48
  %i.om = or disjoint i64 %i.ok, %i.oj
  %i.on = or disjoint i64 %i.om, %i.ol
  %i.oo = or disjoint i64 %i.on, %i.oi
  %i.op = load <2 x i32>, ptr %i.nb, align 8, !tbaa !58
  %i.oq = sdiv <2 x i32> %i.op, splat (i32 4)     ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val280 = load i32, ptr %i.or, align 4, !tbaa !63
  %i.os = extractelement <2 x i32> %i.oq, i64 0
  %i.ot = extractelement <2 x i32> %i.oq, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.nx, i32 %.val280, i32 noundef 0, i32 noundef 0, i32 noundef %i.os, i32 noundef %i.ot, i64 noundef %i.oo)
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.ax:                                            ; preds = %bb.aq
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !50
  %i.ow = add nsw i32 %i.ov, %i.n
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !51
  %i.oz = add nsw i32 %i.ow, %i.oy
  %i.pa = shl nsw i32 %i.p, 2
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !48 ; 2 uses
  %i.pd = add nsw i32 %i.pc, %i.pa
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !49
  %i.pg = add nsw i32 %i.pd, %i.pf                ; 3 uses
  %i.ph = and i32 %i.pg, 7                        ; 2 uses
  %.not335 = icmp eq i32 %i.ph, 0
  %i.pi = and i32 %i.pg, 3
  %i.pj = icmp eq i32 %i.pi, 0
  %i.pk = lshr i64 %i.x, 2
  %i.pl = select i1 %i.pj, i64 2, i64 0
  %i.pm = select i1 %.not335, i64 3, i64 %i.pl
  %i.pn = shl nuw i64 %i.pk, %i.pm
  %i.po = and i32 %i.pc, 3
  %i.pp = icmp eq i32 %i.po, 0
  %i.pq = icmp eq i32 %i.ph, 4
  %or.cond17 = and i1 %i.pp, %i.pq
  br i1 %or.cond17, label %bb.ay, label %.thread306

bb.ay:                                            ; preds = %bb.ax
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !61
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %bb.az, label %.thread306

bb.az:                                            ; preds = %bb.ay
  %i.pu = ashr exact i32 %i.pg, 2
  %i.pv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.oz, i32 noundef %i.pu, i64 noundef %i.pn, i32 noundef 4, ptr noundef %i.pw)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.px = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit263

_ZNK4ncnn3Mat5emptyEv.exit263:                    ; preds = %bb.ba
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !20
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !59
  %i.qd = sext i32 %i.qc to i64
  %i.qe = mul i64 %i.qa, %i.qd
  %i.qf = icmp eq i64 %i.qe, 0
  br i1 %i.qf, label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread, label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit263
  %i.qh = load i16, ptr %i.c, align 2, !tbaa !122
  %i.qi = zext i16 %i.qh to i64                   ; 4 uses
  %i.qj = shl nuw nsw i64 %i.qi, 16
  %i.qk = shl nuw nsw i64 %i.qi, 32
  %i.ql = shl nuw i64 %i.qi, 48
  %i.qm = or disjoint i64 %i.qk, %i.qj
  %i.qn = or disjoint i64 %i.qm, %i.ql
  %i.qo = or disjoint i64 %i.qn, %i.qi
  %i.qp = load <2 x i32>, ptr %i.pb, align 8, !tbaa !58
  %i.qq = sdiv <2 x i32> %i.qp, splat (i32 4)     ; 2 uses
  %i.qr = load i32, ptr %i.ou, align 8, !tbaa !50
  %i.qs = load i32, ptr %i.ox, align 4, !tbaa !51
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val282 = load i32, ptr %i.qt, align 4, !tbaa !63
  %i.qu = extractelement <2 x i32> %i.qq, i64 0
  %i.qv = extractelement <2 x i32> %i.qq, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.px, i32 %.val282, i32 noundef %i.qu, i32 noundef %i.qv, i32 noundef %i.qr, i32 noundef %i.qs, i64 noundef %i.qo)
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.bd:                                            ; preds = %bb.aq
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !50
  %i.qy = add nsw i32 %i.qx, %i.n
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !51
  %i.rb = add nsw i32 %i.qy, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !48
  %i.re = add nsw i32 %i.rd, %i.p
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !49
  %i.rh = add nsw i32 %i.re, %i.rg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.ri = load i32, ptr %i.b, align 4, !tbaa !58
  %i.rj = shl nsw i32 %i.ri, 2                    ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !52 ; 2 uses
  %i.rm = add nsw i32 %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !53
  %i.rp = add nsw i32 %i.rm, %i.ro                ; 6 uses
  store i32 %i.rp, ptr %i.h, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.rq = and i32 %i.rp, 7                        ; 2 uses
  %.not334 = icmp eq i32 %i.rq, 0                 ; 2 uses
  %i.rr = and i32 %i.rp, 3
  %i.rs = icmp eq i32 %i.rr, 0                    ; 3 uses
  %i.rt = select i1 %i.rs, i32 4, i32 1           ; 2 uses
  %i.ru = select i1 %.not334, i32 8, i32 %i.rt
  store i32 %i.ru, ptr %i.i, align 4, !tbaa !58
  %i.rv = lshr i64 %i.x, 2
  %i.rw = select i1 %i.rs, i64 2, i64 0
  %i.rx = select i1 %.not334, i64 3, i64 %i.rw
  %i.ry = shl nuw i64 %i.rv, %i.rx
  %i.rz = and i32 %i.rl, 3
  %i.sa = icmp eq i32 %i.rz, 0
  %i.sb = icmp eq i32 %i.rq, 4
  %or.cond19 = and i1 %i.sa, %i.sb
  br i1 %or.cond19, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %.not231 = icmp eq i32 %i.rp, %i.rj
  br i1 %.not231, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !61
  %.not232 = icmp eq i32 %i.sd, 0
  br i1 %.not232, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %7 = ashr exact i32 %i.rp, 2
  %8 = select i1 %i.rs, i32 %7, i32 %i.rp
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.rb, i32 noundef %i.rh, i32 noundef %8, i64 noundef %i.ry, i32 noundef %i.rt, ptr noundef %i.sf)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.sg = load ptr, ptr %2, align 8, !tbaa !18
  %i.sh = icmp eq ptr %i.sg, null
  br i1 %i.sh, label %.thread323, label %_ZNK4ncnn3Mat5emptyEv.exit262

_ZNK4ncnn3Mat5emptyEv.exit262:                    ; preds = %bb.bh
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !20
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !59
  %i.sm = sext i32 %i.sl to i64
  %i.sn = mul i64 %i.sj, %i.sm
  %i.so = icmp eq i64 %i.sn, 0
  br i1 %i.so, label %.thread323, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.cs

bb.bj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.sq = load i32, ptr %i.rk, align 8, !tbaa !52
  %i.sr = sdiv i32 %i.sq, 4
  store i32 %i.sr, ptr %i.j, align 4, !tbaa !58
  %i.ss = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.st)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn15Padding_x86_avx19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.i, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %.thread323

.thread323:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit262, %bb.bj, %bb.bh
  %.12.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit262 ], [ 0, %bb.bj ], [ -100, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.bk:                                            ; preds = %bb.bd, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %.thread306

bb.bl:                                            ; preds = %bb.aq
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !50
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !51
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !48
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.tc = load i32, ptr %i.a, align 4, !tbaa !58
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.te = load i32, ptr %i.td, align 8, !tbaa !52
  %i.tf = add nsw i32 %i.te, %i.tc
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !53
  %i.ti = add nsw i32 %i.tf, %i.th                ; 2 uses
  store i32 %i.ti, ptr %i.k, align 4, !tbaa !58
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !61
  %.not233 = icmp eq i32 %i.tk, 0
  br i1 %.not233, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.tl = add nsw i32 %i.sz, %i.p
  %i.tm = add nsw i32 %i.tl, %i.tb
  %i.tn = add nsw i32 %i.sv, %i.n
  %i.to = add nsw i32 %i.tn, %i.sx
  %i.tp = load i32, ptr %i.b, align 4, !tbaa !58
  %i.tq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.to, i32 noundef %i.tm, i32 noundef %i.ti, i32 noundef %i.tp, i64 noundef %i.x, i32 noundef 4, ptr noundef %i.tr)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ts = load ptr, ptr %2, align 8, !tbaa !18
  %i.tt = icmp eq ptr %i.ts, null
  br i1 %i.tt, label %.thread330, label %_ZNK4ncnn3Mat5emptyEv.exit261

_ZNK4ncnn3Mat5emptyEv.exit261:                    ; preds = %bb.bn
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !20
  %i.tw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !59
  %i.ty = sext i32 %i.tx to i64
  %i.tz = mul i64 %i.tv, %i.ty
  %i.ua = icmp eq i64 %i.tz, 0
  br i1 %i.ua, label %.thread330, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.ub = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %bb.cs

bb.bp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit261
  %i.uc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.ud)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn15Padding_x86_avx19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread330

.thread330:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit261, %bb.bp, %bb.bn
  %.14.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit261 ], [ 0, %bb.bp ], [ -100, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %.thread306

.thread306:                                       ; preds = %bb.aq, %_ZN4ncnn3Mat6addrefEv.exit, %bb.m, %bb.ar, %bb.as, %bb.ax, %bb.ay, %bb.bk, %bb.n, %bb.o, %bb.w, %bb.x, %bb.aj, %bb.ap, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ue = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !11 ; 2 uses
  %i.uh = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.uh, ptr %5, align 16, !tbaa !55
  %i.ui = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uj = load i64, ptr %i.w, align 8, !tbaa !56
  store i64 %i.uj, ptr %i.ui, align 16, !tbaa !56
  %i.uk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ul = load i32, ptr %i.y, align 8, !tbaa !57
  store i32 %i.ul, ptr %i.uk, align 8, !tbaa !57
  %i.um = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !17
  store ptr %i.uo, ptr %i.um, align 16, !tbaa !17
  %i.up = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.uq = load <4 x i32>, ptr %i.u, align 8, !tbaa !58
  store <4 x i32> %i.uq, ptr %i.up, align 8, !tbaa !58
  %i.ur = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.us = load i32, ptr %i.s, align 8, !tbaa !59
  store i32 %i.us, ptr %i.ur, align 8, !tbaa !59
  %i.ut = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !20
  store i64 %i.uv, ptr %i.ut, align 16, !tbaa !20
  %.not.i272 = icmp eq ptr %i.ug, null
  br i1 %.not.i272, label %_ZN4ncnn3Mat6addrefEv.exit273, label %bb.br

bb.br:                                            ; preds = %.thread306
  %i.uw = atomicrmw add ptr %i.ug, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit273

_ZN4ncnn3Mat6addrefEv.exit273:                    ; preds = %bb.br, %.thread306
  %.not234 = icmp eq i32 %i.z, 1
  br i1 %.not234, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !65
  %i.ux = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !69
  %i.uz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.uy, ptr %i.uz, align 8, !tbaa !62
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.va = load ptr, ptr %5, align 16, !tbaa !18
  %i.vb = icmp eq ptr %i.va, null
  br i1 %i.vb, label %.thread333, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bt
  %i.vc = load i64, ptr %i.ut, align 16, !tbaa !20
  %i.vd = load i32, ptr %i.ur, align 8, !tbaa !59
  %i.ve = sext i32 %i.vd to i64
  %i.vf = mul i64 %i.vc, %i.ve
  %i.vg = icmp eq i64 %i.vf, 0
  br i1 %i.vg, label %.thread333, label %bb.bu

.thread333:                                       ; preds = %bb.bt, %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.by

bb.bu:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.cf

bb.bw:                                            ; preds = %bb.bu, %_ZN4ncnn3Mat6addrefEv.exit273
  %i.vi = invoke noundef i32 @_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vj = landingpad { ptr, i32 }
          cleanup
end_hunk_1
