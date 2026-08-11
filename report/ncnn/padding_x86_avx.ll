inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZNK4ncnn15Padding_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.eu = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %.thread, label %_ZNK4ncnn3Mat5emptyEv.exit235

_ZNK4ncnn3Mat5emptyEv.exit235:                    ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !59
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ex, %i.fa
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit235
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !38
  %i.ff = insertelement <8 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <8 x float> %i.ff, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fh = load <2 x i32>, ptr %i.l, align 8, !tbaa !58
  %i.fi = sdiv <2 x i32> %i.fh, splat (i32 8)     ; 2 uses
  %i.fj = load i32, ptr %i.dt, align 8, !tbaa !50
  %i.fk = load i32, ptr %i.dw, align 4, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val238 = load i32, ptr %i.fl, align 4, !tbaa !63
  %i.fm = extractelement <2 x i32> %i.fi, i64 0
  %i.fn = extractelement <2 x i32> %i.fi, i64 1
  tail call fastcc void @_ZN4ncnnL26padding_constant_pack8_avxERKNS_3MatERS0_iiiiRKDv8_f(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.eu, i32 %.val238, i32 noundef %i.fm, i32 noundef %i.fn, i32 noundef %i.fj, i32 noundef %i.fk, <8 x float> %i.fg)
  br label %.thread

bb.ab:                                            ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !50
  %i.fq = add nsw i32 %i.fp, %i.cb
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !51
  %i.ft = add nsw i32 %i.fq, %i.fs
  %i.fu = add nsw i32 %i.m, %i.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !49
  %i.fx = add nsw i32 %i.fu, %i.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.fy = shl nsw i32 %i.by, 3                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !52 ; 2 uses
  %i.gb = add nsw i32 %i.fy, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !53
  %i.ge = add nsw i32 %i.gb, %i.gd                ; 6 uses
  store i32 %i.ge, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.gf = and i32 %i.ge, 7
  %i.gg = icmp eq i32 %i.gf, 0                    ; 2 uses
  %i.gh = and i32 %i.ge, 3
  %i.gi = icmp eq i32 %i.gh, 0                    ; 2 uses
  %i.gj = select i1 %i.gi, i32 4, i32 1
  %i.gk = select i1 %i.gg, i32 8, i32 %i.gj
  store i32 %i.gk, ptr %i.d, align 4, !tbaa !58
  %i.gl = lshr i64 %.pre, 3
  %i.gm = select i1 %i.gi, i64 2, i64 0
  %i.gn = select i1 %i.gg, i64 3, i64 %i.gm
  %i.go = shl nuw i64 %i.gl, %i.gn
  %i.gp = or i32 %i.ge, %i.ga
  %i.gq = and i32 %i.gp, 7
  %or.cond13 = icmp eq i32 %i.gq, 0
  br i1 %or.cond13, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %.not = icmp eq i32 %i.ge, %i.fy
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !61
  %.not212 = icmp eq i32 %i.gs, 0
  br i1 %.not212, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gt = sdiv i32 %i.ge, 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ft, i32 noundef %i.fx, i32 noundef %i.gt, i64 noundef %i.go, i32 noundef 8, ptr noundef %i.gv)
  %i.gw = load ptr, ptr %2, align 8, !tbaa !18
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %.thread265, label %_ZNK4ncnn3Mat5emptyEv.exit234

_ZNK4ncnn3Mat5emptyEv.exit234:                    ; preds = %bb.ae
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !59
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.gz, %i.hc
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %.thread265, label %bb.af

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.hf = load i32, ptr %i.fz, align 8, !tbaa !52
  %i.hg = sdiv i32 %i.hf, 8
  store i32 %i.hg, ptr %i.e, align 4, !tbaa !58
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.hi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn15Padding_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.thread265

.thread265:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit234, %bb.af, %bb.ae
  %.4.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit234 ], [ 0, %bb.af ], [ -100, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread

bb.ag:                                            ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread275

bb.ah:                                            ; preds = %bb.s
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !51
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !52
  %i.hr = add nsw i32 %i.hq, %i.bz
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 236
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
  %i.mo = add nsw i32 %i.ml, %i.mn                ; 5 uses
  store i32 %i.mo, ptr %i.g, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.mp = and i32 %i.mo, 7                        ; 2 uses
  %.not303 = icmp eq i32 %i.mp, 0                 ; 2 uses
  %i.mq = and i32 %i.mo, 3
  %i.mr = icmp eq i32 %i.mq, 0                    ; 2 uses
  %i.ms = select i1 %i.mr, i32 4, i32 1           ; 3 uses
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
  %i.nd = sdiv i32 %i.mo, %i.ms
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.md, i32 noundef %i.mh, i32 noundef %i.nd, i64 noundef %i.mx, i32 noundef %i.ms, ptr noundef %i.nf)
  %i.ng = load ptr, ptr %2, align 8, !tbaa !18
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %.thread292, label %_ZNK4ncnn3Mat5emptyEv.exit230

_ZNK4ncnn3Mat5emptyEv.exit230:                    ; preds = %bb.ax
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !20
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !59
  %i.nm = sext i32 %i.nl to i64
  %i.nn = mul i64 %i.nj, %i.nm
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %.thread292, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.np = load i32, ptr %i.mj, align 8, !tbaa !52
  %i.nq = sdiv i32 %i.np, 4
  store i32 %i.nq, ptr %i.i, align 4, !tbaa !58
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ns)
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
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !50
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !51
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !52
  %i.ob = add nsw i32 %i.oa, %i.bz
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !53
  %i.oe = add nsw i32 %i.ob, %i.od                ; 2 uses
  store i32 %i.oe, ptr %i.j, align 4, !tbaa !58
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.og = load i32, ptr %i.of, align 8, !tbaa !61
  %.not216 = icmp eq i32 %i.og, 0
  br i1 %.not216, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.oh = add nsw i32 %i.m, %i.ca
  %i.oi = add nsw i32 %i.oh, %i.ny
  %i.oj = add nsw i32 %i.nu, %i.cb
  %i.ok = add nsw i32 %i.oj, %i.nw
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !62
  tail call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ok, i32 noundef %i.oi, i32 noundef %i.oe, i32 noundef %i.by, i64 noundef %.pre, i32 noundef 4, ptr noundef %i.om)
  %i.on = load ptr, ptr %2, align 8, !tbaa !18
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %.thread299, label %_ZNK4ncnn3Mat5emptyEv.exit229

_ZNK4ncnn3Mat5emptyEv.exit229:                    ; preds = %bb.bb
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !20
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.os = load i32, ptr %i.or, align 8, !tbaa !59
  %i.ot = sext i32 %i.os to i64
  %i.ou = mul i64 %i.oq, %i.ot
  %i.ov = icmp eq i64 %i.ou, 0
  br i1 %i.ov, label %.thread299, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ox)
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
  %i.oy = phi i32 [ %i.br, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ], [ %i.cd, %bb.al ], [ %i.cd, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ %i.cd, %bb.s ], [ 1, %bb.am ], [ 1, %bb.an ], [ 2, %bb.aq ], [ 2, %bb.ar ], [ 3, %bb.az ], [ 1, %bb.t ], [ 1, %bb.u ], [ 2, %bb.x ], [ 2, %bb.y ], [ 3, %bb.ag ], [ 4, %bb.ak ], [ 4, %bb.bd ]
  %i.oz = phi <4 x i32> [ %i.bn, %_ZNK4ncnn3Mat8elembitsEv.exit.thread.thread ], [ %i.bx, %bb.al ], [ %i.bx, %_ZNK4ncnn3Mat8elembitsEv.exit.thread ], [ %i.bx, %bb.s ], [ %i.bx, %bb.am ], [ %i.bx, %bb.an ], [ %i.bx, %bb.aq ], [ %i.bx, %bb.ar ], [ %i.bx, %bb.az ], [ %i.bx, %bb.t ], [ %i.bx, %bb.u ], [ %i.bx, %bb.x ], [ %i.bx, %bb.y ], [ %i.bx, %bb.ag ], [ %i.bx, %bb.ak ], [ %i.bx, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !11 ; 2 uses
  %i.pd = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.pd, ptr %4, align 16, !tbaa !55
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre, ptr %i.pe, align 16, !tbaa !56
  %i.pf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bl, ptr %i.pf, align 8, !tbaa !57
  %i.pg = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !17
  store ptr %i.pi, ptr %i.pg, align 16, !tbaa !17
  %i.pj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.oy, ptr %i.pj, align 8, !tbaa !60
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <4 x i32> %i.oz, ptr %i.pk, align 4, !tbaa !58
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !20
  store i64 %i.po, ptr %i.pm, align 16, !tbaa !20
  %.not.i237 = icmp eq ptr %i.pc, null
  br i1 %.not.i237, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.be

bb.be:                                            ; preds = %.thread275
  %i.pp = atomicrmw add ptr %i.pc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %.thread275, %bb.be
  %.not217 = icmp eq i32 %i.bl, 1
  br i1 %.not217, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !65
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !69
  %i.ps = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !62
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.pt = load ptr, ptr %4, align 16, !tbaa !18
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %.thread302, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bg
  %i.pv = load i64, ptr %i.pm, align 16, !tbaa !20
  %i.pw = load i32, ptr %i.pl, align 8, !tbaa !59
  %i.px = sext i32 %i.pw to i64
  %i.py = mul i64 %i.pv, %i.px
  %i.pz = icmp eq i64 %i.py, 0
  br i1 %i.pz, label %.thread302, label %bb.bh

.thread302:                                       ; preds = %bb.bg, %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bl

bb.bh:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bh, %_ZN4ncnn3Mat6addrefEv.exit
  %i.qb = invoke noundef i32 @_ZNK4ncnn7Padding7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bl:                                            ; preds = %.thread302, %bb.bj
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Padding_x86_avx19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.jq = extractelement <2 x i32> %i.jl, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.iw, i32 %.val274, i32 noundef %i.jp, i32 noundef %i.jq, i32 noundef %i.jm, i32 noundef %i.jn, <2 x i64> %i.jj)
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.ac:                                            ; preds = %bb.m
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !50
  %i.jt = add nsw i32 %i.js, %i.n
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !51
  %i.jw = add nsw i32 %i.jt, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !48
  %i.jz = add nsw i32 %i.jy, %i.p
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !49
  %i.kc = add nsw i32 %i.jz, %i.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.kd = load i32, ptr %i.b, align 4, !tbaa !58
  %i.ke = shl nsw i32 %i.kd, 3                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !52 ; 2 uses
  %i.kh = add nsw i32 %i.ke, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !53
  %i.kk = add nsw i32 %i.kh, %i.kj                ; 6 uses
  store i32 %i.kk, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.kl = and i32 %i.kk, 7
  %i.km = icmp eq i32 %i.kl, 0                    ; 2 uses
  %i.kn = and i32 %i.kk, 3
  %i.ko = icmp eq i32 %i.kn, 0                    ; 2 uses
  %i.kp = select i1 %i.ko, i32 4, i32 1
  %i.kq = select i1 %i.km, i32 8, i32 %i.kp
  store i32 %i.kq, ptr %i.e, align 4, !tbaa !58
  %i.kr = lshr i64 %i.x, 3
  %i.ks = select i1 %i.ko, i64 2, i64 0
  %i.kt = select i1 %i.km, i64 3, i64 %i.ks
  %i.ku = shl nuw i64 %i.kr, %i.kt
  %i.kv = or i32 %i.kk, %i.kg
  %i.kw = and i32 %i.kv, 7
  %or.cond13 = icmp eq i32 %i.kw, 0
  br i1 %or.cond13, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %.not = icmp eq i32 %i.kk, %i.ke
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !61
  %.not229 = icmp eq i32 %i.ky, 0
  br i1 %.not229, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kz = sdiv i32 %i.kk, 8
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.jw, i32 noundef %i.kc, i32 noundef %i.kz, i64 noundef %i.ku, i32 noundef 8, ptr noundef %i.lb)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lc = load ptr, ptr %2, align 8, !tbaa !18
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %.thread296, label %_ZNK4ncnn3Mat5emptyEv.exit266

_ZNK4ncnn3Mat5emptyEv.exit266:                    ; preds = %bb.ag
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !20
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !59
  %i.li = sext i32 %i.lh to i64
  %i.lj = mul i64 %i.lf, %i.li
  %i.lk = icmp eq i64 %i.lj, 0
  br i1 %i.lk, label %.thread296, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.cs

bb.ai:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.lm = load i32, ptr %i.kf, align 8, !tbaa !52
  %i.ln = sdiv i32 %i.lm, 8
  store i32 %i.ln, ptr %i.f, align 4, !tbaa !58
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.lp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn15Padding_x86_avx19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %2, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.thread296

.thread296:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit266, %bb.ai, %bb.ag
  %.4.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit266 ], [ 0, %bb.ai ], [ -100, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN4ncnnL38padding_constant_pack8_bf16s_fp16s_avxERKNS_3MatERS0_iiiiRKDv2_x.exit.thread

bb.aj:                                            ; preds = %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.thread306

bb.ak:                                            ; preds = %bb.m
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !50
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !48
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.ly = load i32, ptr %i.a, align 4, !tbaa !58
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !52
  %i.mb = add nsw i32 %i.ma, %i.ly
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !53
  %i.me = add nsw i32 %i.mb, %i.md                ; 2 uses
  store i32 %i.me, ptr %i.g, align 4, !tbaa !58
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !61
  %.not230 = icmp eq i32 %i.mg, 0
  br i1 %.not230, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.mh = add nsw i32 %i.lv, %i.p
  %i.mi = add nsw i32 %i.mh, %i.lx
  %i.mj = add nsw i32 %i.lr, %i.n
  %i.mk = add nsw i32 %i.mj, %i.lt
  %i.ml = load i32, ptr %i.b, align 4, !tbaa !58
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.mk, i32 noundef %i.mi, i32 noundef %i.me, i32 noundef %i.ml, i64 noundef %i.x, i32 noundef 8, ptr noundef %i.mn)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mo = load ptr, ptr %2, align 8, !tbaa !18
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %.thread303, label %_ZNK4ncnn3Mat5emptyEv.exit265

_ZNK4ncnn3Mat5emptyEv.exit265:                    ; preds = %bb.am
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !59
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul i64 %i.mr, %i.mu
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %.thread303, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %bb.cs

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
  %i.rp = add nsw i32 %i.rm, %i.ro                ; 5 uses
  store i32 %i.rp, ptr %i.h, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.rq = and i32 %i.rp, 7                        ; 2 uses
  %.not334 = icmp eq i32 %i.rq, 0                 ; 2 uses
  %i.rr = and i32 %i.rp, 3
  %i.rs = icmp eq i32 %i.rr, 0                    ; 2 uses
  %i.rt = select i1 %i.rs, i32 4, i32 1           ; 3 uses
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
  %i.se = sdiv i32 %i.rp, %i.rt
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.rb, i32 noundef %i.rh, i32 noundef %i.se, i64 noundef %i.ry, i32 noundef %i.rt, ptr noundef %i.sg)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.sh = load ptr, ptr %2, align 8, !tbaa !18
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %.thread323, label %_ZNK4ncnn3Mat5emptyEv.exit262

_ZNK4ncnn3Mat5emptyEv.exit262:                    ; preds = %bb.bh
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !20
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !59
  %i.sn = sext i32 %i.sm to i64
  %i.so = mul i64 %i.sk, %i.sn
  %i.sp = icmp eq i64 %i.so, 0
  br i1 %i.sp, label %.thread323, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.cs

bb.bj:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.sr = load i32, ptr %i.rk, align 8, !tbaa !52
  %i.ss = sdiv i32 %i.sr, 4
  store i32 %i.ss, ptr %i.j, align 4, !tbaa !58
  %i.st = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.su)
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
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !50
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !51
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !48
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.td = load i32, ptr %i.a, align 4, !tbaa !58
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !52
  %i.tg = add nsw i32 %i.tf, %i.td
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !53
  %i.tj = add nsw i32 %i.tg, %i.ti                ; 2 uses
  store i32 %i.tj, ptr %i.k, align 4, !tbaa !58
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !61
  %.not233 = icmp eq i32 %i.tl, 0
  br i1 %.not233, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.tm = add nsw i32 %i.ta, %i.p
  %i.tn = add nsw i32 %i.tm, %i.tc
  %i.to = add nsw i32 %i.sw, %i.n
  %i.tp = add nsw i32 %i.to, %i.sy
  %i.tq = load i32, ptr %i.b, align 4, !tbaa !58
  %i.tr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.tp, i32 noundef %i.tn, i32 noundef %i.tj, i32 noundef %i.tq, i64 noundef %i.x, i32 noundef 4, ptr noundef %i.ts)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.tt = load ptr, ptr %2, align 8, !tbaa !18
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %.thread330, label %_ZNK4ncnn3Mat5emptyEv.exit261

_ZNK4ncnn3Mat5emptyEv.exit261:                    ; preds = %bb.bn
  %i.tv = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !20
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !59
  %i.tz = sext i32 %i.ty to i64
  %i.ua = mul i64 %i.tw, %i.tz
  %i.ub = icmp eq i64 %i.ua, 0
  br i1 %i.ub, label %.thread330, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %bb.cs

bb.bp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit261
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %i.ue)
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
  %i.uf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !11 ; 2 uses
  %i.ui = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.ui, ptr %5, align 16, !tbaa !55
  %i.uj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uk = load i64, ptr %i.w, align 8, !tbaa !56
  store i64 %i.uk, ptr %i.uj, align 16, !tbaa !56
  %i.ul = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.um = load i32, ptr %i.y, align 8, !tbaa !57
  store i32 %i.um, ptr %i.ul, align 8, !tbaa !57
  %i.un = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !17
  store ptr %i.up, ptr %i.un, align 16, !tbaa !17
  %i.uq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ur = load <4 x i32>, ptr %i.u, align 8, !tbaa !58
  store <4 x i32> %i.ur, ptr %i.uq, align 8, !tbaa !58
  %i.us = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ut = load i32, ptr %i.s, align 8, !tbaa !59
  store i32 %i.ut, ptr %i.us, align 8, !tbaa !59
  %i.uu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !20
  store i64 %i.uw, ptr %i.uu, align 16, !tbaa !20
  %.not.i272 = icmp eq ptr %i.uh, null
  br i1 %.not.i272, label %_ZN4ncnn3Mat6addrefEv.exit273, label %bb.br

bb.br:                                            ; preds = %.thread306
  %i.ux = atomicrmw add ptr %i.uh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit273

_ZN4ncnn3Mat6addrefEv.exit273:                    ; preds = %bb.br, %.thread306
  %.not234 = icmp eq i32 %i.z, 1
  br i1 %.not234, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !65
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !69
  %i.va = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !62
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.vb = load ptr, ptr %5, align 16, !tbaa !18
  %i.vc = icmp eq ptr %i.vb, null
  br i1 %i.vc, label %.thread333, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.bt
  %i.vd = load i64, ptr %i.uu, align 16, !tbaa !20
  %i.ve = load i32, ptr %i.us, align 8, !tbaa !59
  %i.vf = sext i32 %i.ve to i64
  %i.vg = mul i64 %i.vd, %i.vf
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %.thread333, label %bb.bu

end_hunk_1
begin_hunk_2_@_ZN4ncnnL31padding_constant_pack8_int8_sseERKNS_3MatERS0_iiiil:bb.a
  br i1 %exitcond92.not, label %._crit_edge, label %vec.epilog.scalar.ph381, !llvm.loop !634
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Padding_x86_avx12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !58
  %i.f = load i32, ptr %2, align 4, !tbaa !58
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.i, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.j = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !58
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !58
  %i.m = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not128 = icmp sgt i32 %i.m, %i.l
  br i1 %.not128, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 228
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 220 ; 3 uses
  %i.ar = sext i32 %i.m to i64
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.as = phi i32 [ %i.l, %.noexc42.lr.ph ], [ %i.auo, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %indvars.iv174 = phi i64 [ %i.ar, %.noexc42.lr.ph ], [ %indvars.iv.next175, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %i.n, align 4, !tbaa !63, !noalias !635 ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !72, !noalias !635
  %i.av = load i32, ptr %i.p, align 4, !tbaa !120, !noalias !635
  %i.aw = load ptr, ptr %4, align 8, !tbaa !18, !noalias !635
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !635
  %i.ay = mul i64 %i.ax, %indvars.iv174
  %i.az = load i64, ptr %i.r, align 8, !tbaa !56, !noalias !635 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 16 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = sext i32 %i.au to i64
  %i.be = mul nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bf = mul i64 %i.az, %i.be
  %i.bg = add i64 %i.bf, 15
  %i.bh = and i64 %i.bg, -16
  %i.bi = udiv i64 %i.bh, %i.az
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !60, !noalias !635
  %i.bk = icmp eq i32 %i.bj, 4
  %spec.select = select i1 %i.bk, i64 %i.be, i64 %i.bi
  %i.bl = load float, ptr %i.t, align 4, !tbaa !38
  %i.bm = fptosi float %i.bl to i64               ; 8 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = shl i64 %i.bm, 16
  %i.bp = shl i64 %i.bm, 24
  %i.bq = shl i64 %i.bm, 32
  %i.br = shl i64 %i.bm, 40
  %i.bs = shl i64 %i.bm, 48
  %i.bt = shl i64 %i.bm, 56
  %i.bu = or i64 %i.bo, %i.bn
  %i.bv = or i64 %i.bu, %i.bp
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = or i64 %i.bw, %i.br
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = or i64 %i.by, %i.bt
  %i.ca = or i64 %i.bz, %i.bm                     ; 4 uses
  %i.cb = load i32, ptr %6, align 4, !tbaa !58
  %i.cc = trunc nsw i64 %indvars.iv174 to i32
  %i.cd = sub nsw i32 %i.cc, %i.cb                ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  %i.cf = load i32, ptr %7, align 4, !tbaa !58
  %.not33 = icmp slt i32 %i.cd, %i.cf
  br i1 %.not33, label %.noexc43, label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc42
  %i.cg = trunc i64 %spec.select to i32
  %i.ch = mul i32 %i.av, %i.cg                    ; 4 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %iter.check, label %_ZN4ncnn3MatD2Ev.exit

iter.check:                                       ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.ch to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ch, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check297 = icmp ult i32 %i.ch, 16
  br i1 %min.iters.check297, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  store <4 x i64> %broadcast.splat, ptr %i.ck, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat, ptr %i.cl, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat, ptr %i.cm, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat, ptr %i.cn, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !638

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec298 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert299 = insertelement <4 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat300 = shufflevector <4 x i64> %broadcast.splatinsert299, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index301 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next302, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index301
  store <4 x i64> %broadcast.splat300, ptr %i.cp, align 8, !tbaa !73
  %index.next302 = add nuw i64 %index301, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next302, %n.vec298
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !639

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n303 = icmp eq i64 %n.vec298, %wide.trip.count
  br i1 %cmp.n303, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec298, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store i64 %i.ca, ptr %i.cr, align 8, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !640

.noexc43:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.cs = load i32, ptr %i.u, align 4, !tbaa !63, !noalias !641 ; 72 uses
  %i.ct = load i32, ptr %i.v, align 8, !tbaa !72, !noalias !641 ; 6 uses
  %i.cu = load i32, ptr %i.w, align 4, !tbaa !120, !noalias !641
  %i.cv = load ptr, ptr %8, align 8, !tbaa !18, !noalias !641 ; 4 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64              ; 6 uses
  %i.cx = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !641
  %i.cy = zext nneg i32 %i.cd to i64
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = load i64, ptr %i.y, align 8, !tbaa !56, !noalias !641 ; 4 uses
  %i.db = mul i64 %i.cz, %i.da                    ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.db ; 23 uses
  %i.dd = load i32, ptr %i.z, align 8, !tbaa !57, !noalias !641
  %i.de = load ptr, ptr %i.aa, align 8, !tbaa !17, !noalias !641
  store ptr %i.dc, ptr %9, align 8, !tbaa !18
  store ptr null, ptr %i.ab, align 8, !tbaa !11
  store i64 %i.da, ptr %i.ac, align 8, !tbaa !56
  store i32 %i.dd, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.de, ptr %i.ae, align 8, !tbaa !17
  store i32 %i.cs, ptr %i.ag, align 4, !tbaa !63
  store i32 %i.ct, ptr %i.ah, align 8, !tbaa !72
  store i32 1, ptr %i.ai, align 4, !tbaa !120
  store i32 %i.cu, ptr %i.aj, align 8, !tbaa !59
  %i.df = sext i32 %i.cs to i64                   ; 12 uses
  %i.dg = sext i32 %i.ct to i64
  %i.dh = mul nsw i64 %i.dg, %i.df                ; 2 uses
  %i.di = mul i64 %i.da, %i.dh
  %i.dj = add i64 %i.di, 15
  %i.dk = and i64 %i.dj, -16
  %i.dl = udiv i64 %i.dk, %i.da
  store i64 %i.dl, ptr %i.ak, align 8, !tbaa !20
  %i.dm = load i32, ptr %i.al, align 8, !tbaa !60, !noalias !641 ; 2 uses
  %i.dn = add nsw i32 %i.dm, -1
  store i32 %i.dn, ptr %i.af, align 8, !tbaa !60, !alias.scope !641
  %i.do = icmp eq i32 %i.dm, 4
  br i1 %i.do, label %bb.e, label %_ZNK4ncnn3Mat7channelEi.exit

bb.e:                                             ; preds = %.noexc43
  store i64 %i.dh, ptr %i.ak, align 8, !tbaa !20, !alias.scope !641
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %bb.e, %.noexc43
  %i.dp = load i32, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %thread-pre-split, label %bb.f

thread-pre-split:                                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.dr = load i32, ptr %i.an, align 8, !tbaa !48
  %i.ds = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.dt = load i32, ptr %i.ap, align 8, !tbaa !50
  %i.du = load i32, ptr %i.aq, align 4, !tbaa !51
  call fastcc void @_ZN4ncnnL31padding_constant_pack8_int8_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.bb, i32 %i.at, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du, i64 noundef %i.ca)
  %.pr = load i32, ptr %i.am, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %_ZNK4ncnn3Mat7channelEi.exit
  %i.dv = phi i32 [ %.pr, %thread-pre-split ], [ %i.dp, %_ZNK4ncnn3Mat7channelEi.exit ]
  switch i32 %i.dv, label %_ZN4ncnn3MatD2Ev.exit34 [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.dw = load i32, ptr %i.an, align 8, !tbaa !48 ; 5 uses
  %i.dx = load i32, ptr %i.ao, align 4, !tbaa !49 ; 2 uses
  %i.dy = load i32, ptr %i.ap, align 8, !tbaa !50 ; 15 uses
  %i.dz = load i32, ptr %i.aq, align 4, !tbaa !51 ; 23 uses
  %i.ea = icmp sgt i32 %i.dw, 0
  br i1 %i.ea, label %.preheader9.lr.ph.i, label %.preheader6.i

.preheader9.lr.ph.i:                              ; preds = %bb.g
  %i.eb = icmp sgt i32 %i.dy, 0
  %i.ec = icmp sgt i32 %i.cs, 0                   ; 2 uses
  %i.ed = icmp sgt i32 %i.dz, 0                   ; 3 uses
  br i1 %i.eb, label %.preheader9.us.i.preheader, label %.preheader9.lr.ph.split.i

.preheader9.us.i.preheader:                       ; preds = %.preheader9.lr.ph.i
  %i.ee = zext i32 %i.dz to i64                   ; 5 uses
  %i.ef = add i64 %i.db, %i.cw
  %i.eg = zext i32 %i.cs to i64                   ; 5 uses
  %i.eh = zext nneg i32 %i.dy to i64              ; 5 uses
  %min.iters.check582 = icmp ult i32 %i.dy, 4
  %min.iters.check584 = icmp ult i32 %i.dy, 16
  %i.ei = and i64 %i.eh, 12
  %n.vec586 = and i64 %i.eh, 2147483632           ; 5 uses
  %i.ej = trunc nuw nsw i64 %n.vec586 to i32
  %i.ek = shl nuw nsw i64 %n.vec586, 3
  %cmp.n594 = icmp eq i64 %n.vec586, %i.eh
  %min.epilog.iters.check601 = icmp eq i64 %i.ei, 0
  %n.vec603 = and i64 %i.eh, 2147483644           ; 4 uses
  %i.el = trunc nuw nsw i64 %n.vec603 to i32
  %i.em = shl nuw nsw i64 %n.vec603, 3
  %cmp.n611 = icmp eq i64 %n.vec603, %i.eh
  %min.iters.check545 = icmp ult i32 %i.cs, 4
  %min.iters.check547 = icmp ult i32 %i.cs, 16
  %i.en = and i64 %i.eg, 12
  %n.vec549 = and i64 %i.eg, 2147483632           ; 5 uses
  %i.eo = trunc nuw nsw i64 %n.vec549 to i32
  %i.ep = shl nuw nsw i64 %n.vec549, 3            ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dc, i64 %i.ep  ; 2 uses
  %cmp.n560 = icmp eq i64 %n.vec549, %i.eg
  %min.epilog.iters.check568 = icmp eq i64 %i.en, 0
  %n.vec570 = and i64 %i.eg, 2147483644           ; 4 uses
  %i.er = trunc nuw nsw i64 %n.vec570 to i32
  %i.es = shl nuw nsw i64 %n.vec570, 3            ; 2 uses
  %i.et = getelementptr i8, ptr %i.dc, i64 %i.es  ; 2 uses
  %cmp.n578 = icmp eq i64 %n.vec570, %i.eg
  %min.iters.check510 = icmp ult i32 %i.dz, 4
  %min.iters.check512 = icmp ult i32 %i.dz, 16
  %i.eu = and i64 %i.ee, 12
  %n.vec514 = and i64 %i.ee, 2147483632           ; 5 uses
  %i.ev = trunc nuw nsw i64 %n.vec514 to i32
  %i.ew = shl nuw nsw i64 %n.vec514, 3
  %cmp.n522 = icmp eq i64 %n.vec514, %i.ee
  %min.epilog.iters.check529 = icmp eq i64 %i.eu, 0
  %n.vec531 = and i64 %i.ee, 2147483644           ; 4 uses
  %i.ex = trunc nuw nsw i64 %n.vec531 to i32
  %i.ey = shl nuw nsw i64 %n.vec531, 3
  %cmp.n539 = icmp eq i64 %n.vec531, %i.ee
  br label %iter.check598

iter.check598:                                    ; preds = %.preheader9.us.i.preheader, %._crit_edge.us.i
  %.07123.us.i = phi i32 [ %i.gl, %._crit_edge.us.i ], [ 0, %.preheader9.us.i.preheader ]
  %.07222.us.i = phi ptr [ %.3.lcssa.us.i, %._crit_edge.us.i ], [ %i.bb, %.preheader9.us.i.preheader ] ; 5 uses
  %.pre131.i = load i64, ptr %i.dc, align 8, !tbaa !73 ; 3 uses
  br i1 %min.iters.check582, label %vec.epilog.scalar.ph599.preheader, label %vector.main.loop.iter.check583

vector.main.loop.iter.check583:                   ; preds = %iter.check598
  br i1 %min.iters.check584, label %vec.epilog.ph602, label %vector.ph585

vector.ph585:                                     ; preds = %vector.main.loop.iter.check583
  %i.ez = getelementptr i8, ptr %.07222.us.i, i64 %i.ek ; 2 uses
  %broadcast.splatinsert587 = insertelement <4 x i64> poison, i64 %.pre131.i, i64 0
  %broadcast.splat588 = shufflevector <4 x i64> %broadcast.splatinsert587, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph585
  %index590 = phi i64 [ 0, %vector.ph585 ], [ %index.next592, %vector.body589 ] ; 2 uses
  %i.fa = shl i64 %index590, 3
  %next.gep591 = getelementptr i8, ptr %.07222.us.i, i64 %i.fa ; 4 uses
  %i.fb = getelementptr i8, ptr %next.gep591, i64 32
  %i.fc = getelementptr i8, ptr %next.gep591, i64 64
  %i.fd = getelementptr i8, ptr %next.gep591, i64 96
  store <4 x i64> %broadcast.splat588, ptr %next.gep591, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat588, ptr %i.fb, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat588, ptr %i.fc, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat588, ptr %i.fd, align 8, !tbaa !73
  %index.next592 = add nuw i64 %index590, 16      ; 2 uses
  %i.fe = icmp eq i64 %index.next592, %n.vec586
  br i1 %i.fe, label %middle.block593, label %vector.body589, !llvm.loop !644

middle.block593:                                  ; preds = %vector.body589
  br i1 %cmp.n594, label %..preheader8_crit_edge.us.i, label %vec.epilog.iter.check600

vec.epilog.iter.check600:                         ; preds = %middle.block593
  br i1 %min.epilog.iters.check601, label %vec.epilog.scalar.ph599.preheader, label %vec.epilog.ph602, !prof !78

vec.epilog.ph602:                                 ; preds = %vector.main.loop.iter.check583, %vec.epilog.iter.check600
  %vec.epilog.resume.val595 = phi i64 [ %n.vec586, %vec.epilog.iter.check600 ], [ 0, %vector.main.loop.iter.check583 ]
  %i.ff = getelementptr i8, ptr %.07222.us.i, i64 %i.em ; 2 uses
  %broadcast.splatinsert604 = insertelement <4 x i64> poison, i64 %.pre131.i, i64 0
  %broadcast.splat605 = shufflevector <4 x i64> %broadcast.splatinsert604, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body606

vec.epilog.vector.body606:                        ; preds = %vec.epilog.vector.body606, %vec.epilog.ph602
  %index607 = phi i64 [ %vec.epilog.resume.val595, %vec.epilog.ph602 ], [ %index.next609, %vec.epilog.vector.body606 ] ; 2 uses
  %i.fg = shl i64 %index607, 3
  %next.gep608 = getelementptr i8, ptr %.07222.us.i, i64 %i.fg
  store <4 x i64> %broadcast.splat605, ptr %next.gep608, align 8, !tbaa !73
  %index.next609 = add nuw i64 %index607, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next609, %n.vec603
  br i1 %i.fh, label %vec.epilog.middle.block610, label %vec.epilog.vector.body606, !llvm.loop !645

vec.epilog.middle.block610:                       ; preds = %vec.epilog.vector.body606
  br i1 %cmp.n611, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph599.preheader

vec.epilog.scalar.ph599.preheader:                ; preds = %iter.check598, %vec.epilog.iter.check600, %vec.epilog.middle.block610
  %.06911.us.i.ph = phi i32 [ 0, %iter.check598 ], [ %i.ej, %vec.epilog.iter.check600 ], [ %i.el, %vec.epilog.middle.block610 ]
  %.110.us.i.ph = phi ptr [ %.07222.us.i, %iter.check598 ], [ %i.ez, %vec.epilog.iter.check600 ], [ %i.ff, %vec.epilog.middle.block610 ]
  br label %vec.epilog.scalar.ph599

vec.epilog.scalar.ph599:                          ; preds = %vec.epilog.scalar.ph599.preheader, %vec.epilog.scalar.ph599
  %.06911.us.i = phi i32 [ %i.fj, %vec.epilog.scalar.ph599 ], [ %.06911.us.i.ph, %vec.epilog.scalar.ph599.preheader ]
  %.110.us.i = phi ptr [ %i.fi, %vec.epilog.scalar.ph599 ], [ %.110.us.i.ph, %vec.epilog.scalar.ph599.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 8 ; 2 uses
  store i64 %.pre131.i, ptr %.110.us.i, align 8, !tbaa !73
  %i.fj = add nuw nsw i32 %.06911.us.i, 1         ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.fj, %i.dy
  br i1 %exitcond119.not.i, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph599, !llvm.loop !646

.lr.ph15.us.i:                                    ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i
  %.06814.us.i = phi i32 [ %i.gi, %.lr.ph15.us.i ], [ %.06814.us.i.unr, %.lr.ph15.us.i.prol.loopexit ]
  %.07013.us.i = phi ptr [ %i.gf, %.lr.ph15.us.i ], [ %.07013.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %.212.us.i = phi ptr [ %i.gh, %.lr.ph15.us.i ], [ %.212.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 8
  %i.fl = load i64, ptr %.07013.us.i, align 8, !tbaa !73
  %i.fm = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 8
  store i64 %i.fl, ptr %.212.us.i, align 8, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 16
  %i.fo = load i64, ptr %i.fk, align 8, !tbaa !73
  %i.fp = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 16
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !73
  %i.fq = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 24
  %i.fr = load i64, ptr %i.fn, align 8, !tbaa !73
  %i.fs = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 24
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !73
  %i.ft = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 32
  %i.fu = load i64, ptr %i.fq, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 32
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !73
  %i.fw = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 40
  %i.fx = load i64, ptr %i.ft, align 8, !tbaa !73
  %i.fy = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 40
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !73
  %i.fz = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 48
  %i.ga = load i64, ptr %i.fw, align 8, !tbaa !73
  %i.gb = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 48
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !73
  %i.gc = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 56
  %i.gd = load i64, ptr %i.fz, align 8, !tbaa !73
  %i.ge = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 56
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !73
  %i.gf = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 64 ; 2 uses
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !73
end_hunk_2
begin_hunk_3_@_ZNK4ncnn15Padding_x86_avx12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.so = getelementptr i8, ptr %next.gep345, i64 32
  %i.sp = getelementptr i8, ptr %next.gep345, i64 64
  %i.sq = getelementptr i8, ptr %next.gep345, i64 96
  store <4 x i64> %wide.load, ptr %next.gep345, align 8, !tbaa !73
  store <4 x i64> %wide.load346, ptr %i.so, align 8, !tbaa !73
  store <4 x i64> %wide.load347, ptr %i.sp, align 8, !tbaa !73
  store <4 x i64> %wide.load348, ptr %i.sq, align 8, !tbaa !73
  %index.next349 = add nuw i64 %index343, 16      ; 2 uses
  %i.sr = icmp eq i64 %index.next349, %n.vec341
  br i1 %i.sr, label %middle.block350, label %vector.body342, !llvm.loop !682

middle.block350:                                  ; preds = %vector.body342
  br i1 %cmp.n351, label %.preheader.i, label %vec.epilog.iter.check358

vec.epilog.iter.check358:                         ; preds = %middle.block350
  br i1 %min.epilog.iters.check359, label %.lr.ph83.i.preheader, label %vec.epilog.ph360, !prof !78

vec.epilog.ph360:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check358
  %vec.epilog.resume.val352 = phi i64 [ %n.vec341, %vec.epilog.iter.check358 ], [ 0, %vector.main.loop.iter.check338 ]
  %i.ss = getelementptr i8, ptr %.9.lcssa.i, i64 %i.pj ; 2 uses
  br label %vec.epilog.vector.body362

vec.epilog.vector.body362:                        ; preds = %vec.epilog.vector.body362, %vec.epilog.ph360
  %index363 = phi i64 [ %vec.epilog.resume.val352, %vec.epilog.ph360 ], [ %index.next367, %vec.epilog.vector.body362 ] ; 2 uses
  %i.st = shl i64 %index363, 3                    ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.op, i64 %i.st
  %next.gep365 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.st
  %wide.load366 = load <4 x i64>, ptr %next.gep364, align 8, !tbaa !73
  store <4 x i64> %wide.load366, ptr %next.gep365, align 8, !tbaa !73
  %index.next367 = add nuw i64 %index363, 4       ; 2 uses
  %i.su = icmp eq i64 %index.next367, %n.vec361
  br i1 %i.su, label %vec.epilog.middle.block368, label %vec.epilog.vector.body362, !llvm.loop !683

vec.epilog.middle.block368:                       ; preds = %vec.epilog.vector.body362
  br i1 %cmp.n369, label %.preheader.i, label %.lr.ph83.i.preheader

.lr.ph83.i.preheader:                             ; preds = %iter.check356, %vec.epilog.iter.check358, %vec.epilog.middle.block368
  %.05982.i.ph = phi i32 [ 0, %iter.check356 ], [ %i.pi, %vec.epilog.middle.block368 ], [ %i.pf, %vec.epilog.iter.check358 ] ; 4 uses
  %.06181.i.ph = phi ptr [ %i.op, %iter.check356 ], [ %i.pk, %vec.epilog.middle.block368 ], [ %i.ph, %vec.epilog.iter.check358 ] ; 2 uses
  %.1080.i.ph = phi ptr [ %.9.lcssa.i, %iter.check356 ], [ %i.ss, %vec.epilog.middle.block368 ], [ %i.sj, %vec.epilog.iter.check358 ] ; 2 uses
  %i.sv = sub i32 %i.cs, %.05982.i.ph
  %xtraiter1427 = and i32 %i.sv, 7                ; 2 uses
  %lcmp.mod1428.not = icmp eq i32 %xtraiter1427, 0
  br i1 %lcmp.mod1428.not, label %.lr.ph83.i.prol.loopexit, label %.lr.ph83.i.prol

.lr.ph83.i.prol:                                  ; preds = %.lr.ph83.i.preheader, %.lr.ph83.i.prol
  %.05982.i.prol = phi i32 [ %i.sz, %.lr.ph83.i.prol ], [ %.05982.i.ph, %.lr.ph83.i.preheader ]
  %.06181.i.prol = phi ptr [ %i.sw, %.lr.ph83.i.prol ], [ %.06181.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %.1080.i.prol = phi ptr [ %i.sy, %.lr.ph83.i.prol ], [ %.1080.i.ph, %.lr.ph83.i.preheader ] ; 2 uses
  %prol.iter1429 = phi i32 [ %prol.iter1429.next, %.lr.ph83.i.prol ], [ 0, %.lr.ph83.i.preheader ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.06181.i.prol, i64 8 ; 3 uses
  %i.sx = load i64, ptr %.06181.i.prol, align 8, !tbaa !73
  %i.sy = getelementptr inbounds nuw i8, ptr %.1080.i.prol, i64 8 ; 3 uses
  store i64 %i.sx, ptr %.1080.i.prol, align 8, !tbaa !73
  %i.sz = add nuw nsw i32 %.05982.i.prol, 1       ; 2 uses
  %prol.iter1429.next = add i32 %prol.iter1429, 1 ; 2 uses
  %prol.iter1429.cmp.not = icmp eq i32 %prol.iter1429.next, %xtraiter1427
  br i1 %prol.iter1429.cmp.not, label %.lr.ph83.i.prol.loopexit, label %.lr.ph83.i.prol, !llvm.loop !684

.lr.ph83.i.prol.loopexit:                         ; preds = %.lr.ph83.i.prol, %.lr.ph83.i.preheader
  %.lcssa1376.unr = phi ptr [ poison, %.lr.ph83.i.preheader ], [ %i.sw, %.lr.ph83.i.prol ]
  %.lcssa1375.unr = phi ptr [ poison, %.lr.ph83.i.preheader ], [ %i.sy, %.lr.ph83.i.prol ]
  %.05982.i.unr = phi i32 [ %.05982.i.ph, %.lr.ph83.i.preheader ], [ %i.sz, %.lr.ph83.i.prol ]
  %.06181.i.unr = phi ptr [ %.06181.i.ph, %.lr.ph83.i.preheader ], [ %i.sw, %.lr.ph83.i.prol ]
  %.1080.i.unr = phi ptr [ %.1080.i.ph, %.lr.ph83.i.preheader ], [ %i.sy, %.lr.ph83.i.prol ]
  %i.ta = sub i32 %.05982.i.ph, %i.cs
  %i.tb = icmp ugt i32 %i.ta, -8
  br i1 %i.tb, label %.preheader.i, label %.lr.ph83.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.lr.ph78.i
  %.06077.i = phi i32 [ %i.td, %.lr.ph78.i ], [ %.06077.i.ph, %.lr.ph78.i.preheader ]
  %.976.i = phi ptr [ %i.tc, %.lr.ph78.i ], [ %.976.i.ph, %.lr.ph78.i.preheader ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.976.i, i64 8 ; 2 uses
  store i64 %.pre136.i, ptr %.976.i, align 8, !tbaa !73
  %i.td = add nuw nsw i32 %.06077.i, 1            ; 2 uses
  %exitcond127.not.i = icmp eq i32 %i.td, %i.dy
  br i1 %exitcond127.not.i, label %.preheader1.i, label %.lr.ph78.i, !llvm.loop !685

.preheader.i:                                     ; preds = %.lr.ph83.i.prol.loopexit, %.lr.ph83.i, %middle.block350, %vec.epilog.middle.block368, %.preheader1.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader1.i ], [ %i.ss, %vec.epilog.middle.block368 ], [ %i.sj, %middle.block350 ], [ %.lcssa1375.unr, %.lr.ph83.i.prol.loopexit ], [ %i.ul, %.lr.ph83.i ] ; 6 uses
  %.061.lcssa.i = phi ptr [ %i.op, %.preheader1.i ], [ %i.pk, %vec.epilog.middle.block368 ], [ %i.ph, %middle.block350 ], [ %.lcssa1376.unr, %.lr.ph83.i.prol.loopexit ], [ %i.uj, %.lr.ph83.i ]
  br i1 %i.ot, label %iter.check319, label %._crit_edge89.i

iter.check319:                                    ; preds = %.preheader.i
  %i.te = getelementptr inbounds i8, ptr %.061.lcssa.i, i64 -8
  %.pre137.i = load i64, ptr %i.te, align 8, !tbaa !73 ; 3 uses
  br i1 %min.iters.check304, label %vec.epilog.scalar.ph320.preheader, label %vector.main.loop.iter.check305

vector.main.loop.iter.check305:                   ; preds = %iter.check319
  br i1 %min.iters.check306, label %vec.epilog.ph323, label %vector.ph307

vector.ph307:                                     ; preds = %vector.main.loop.iter.check305
  %i.tf = getelementptr i8, ptr %.10.lcssa.i, i64 %i.pn ; 2 uses
  %broadcast.splatinsert309 = insertelement <4 x i64> poison, i64 %.pre137.i, i64 0
  %broadcast.splat310 = shufflevector <4 x i64> %broadcast.splatinsert309, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph307
  %index312 = phi i64 [ 0, %vector.ph307 ], [ %index.next313, %vector.body311 ] ; 2 uses
  %i.tg = shl i64 %index312, 3
  %next.gep = getelementptr i8, ptr %.10.lcssa.i, i64 %i.tg ; 4 uses
  %i.th = getelementptr i8, ptr %next.gep, i64 32
  %i.ti = getelementptr i8, ptr %next.gep, i64 64
  %i.tj = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat310, ptr %next.gep, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat310, ptr %i.th, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat310, ptr %i.ti, align 8, !tbaa !73
  store <4 x i64> %broadcast.splat310, ptr %i.tj, align 8, !tbaa !73
  %index.next313 = add nuw i64 %index312, 16      ; 2 uses
  %i.tk = icmp eq i64 %index.next313, %n.vec308
  br i1 %i.tk, label %middle.block314, label %vector.body311, !llvm.loop !686

middle.block314:                                  ; preds = %vector.body311
  br i1 %cmp.n315, label %._crit_edge89.i, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block314
  br i1 %min.epilog.iters.check322, label %vec.epilog.scalar.ph320.preheader, label %vec.epilog.ph323, !prof !78

vec.epilog.ph323:                                 ; preds = %vector.main.loop.iter.check305, %vec.epilog.iter.check321
  %vec.epilog.resume.val316 = phi i64 [ %n.vec308, %vec.epilog.iter.check321 ], [ 0, %vector.main.loop.iter.check305 ]
  %i.tl = getelementptr i8, ptr %.10.lcssa.i, i64 %i.pp ; 2 uses
  %broadcast.splatinsert325 = insertelement <4 x i64> poison, i64 %.pre137.i, i64 0
  %broadcast.splat326 = shufflevector <4 x i64> %broadcast.splatinsert325, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body327

vec.epilog.vector.body327:                        ; preds = %vec.epilog.vector.body327, %vec.epilog.ph323
  %index328 = phi i64 [ %vec.epilog.resume.val316, %vec.epilog.ph323 ], [ %index.next330, %vec.epilog.vector.body327 ] ; 2 uses
  %i.tm = shl i64 %index328, 3
  %next.gep329 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.tm
  store <4 x i64> %broadcast.splat326, ptr %next.gep329, align 8, !tbaa !73
  %index.next330 = add nuw i64 %index328, 4       ; 2 uses
  %i.tn = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.tn, label %vec.epilog.middle.block331, label %vec.epilog.vector.body327, !llvm.loop !687

vec.epilog.middle.block331:                       ; preds = %vec.epilog.vector.body327
  br i1 %cmp.n332, label %._crit_edge89.i, label %vec.epilog.scalar.ph320.preheader

vec.epilog.scalar.ph320.preheader:                ; preds = %iter.check319, %vec.epilog.iter.check321, %vec.epilog.middle.block331
  %.087.i.ph = phi i32 [ 0, %iter.check319 ], [ %i.pm, %vec.epilog.iter.check321 ], [ %i.po, %vec.epilog.middle.block331 ]
  %.1186.i.ph = phi ptr [ %.10.lcssa.i, %iter.check319 ], [ %i.tf, %vec.epilog.iter.check321 ], [ %i.tl, %vec.epilog.middle.block331 ]
  br label %vec.epilog.scalar.ph320

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.prol.loopexit, %.lr.ph83.i
  %.05982.i = phi i32 [ %i.um, %.lr.ph83.i ], [ %.05982.i.unr, %.lr.ph83.i.prol.loopexit ]
  %.06181.i = phi ptr [ %i.uj, %.lr.ph83.i ], [ %.06181.i.unr, %.lr.ph83.i.prol.loopexit ] ; 9 uses
  %.1080.i = phi ptr [ %i.ul, %.lr.ph83.i ], [ %.1080.i.unr, %.lr.ph83.i.prol.loopexit ] ; 9 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.06181.i, i64 8
  %i.tp = load i64, ptr %.06181.i, align 8, !tbaa !73
  %i.tq = getelementptr inbounds nuw i8, ptr %.1080.i, i64 8
  store i64 %i.tp, ptr %.1080.i, align 8, !tbaa !73
  %i.tr = getelementptr inbounds nuw i8, ptr %.06181.i, i64 16
  %i.ts = load i64, ptr %i.to, align 8, !tbaa !73
  %i.tt = getelementptr inbounds nuw i8, ptr %.1080.i, i64 16
  store i64 %i.ts, ptr %i.tq, align 8, !tbaa !73
  %i.tu = getelementptr inbounds nuw i8, ptr %.06181.i, i64 24
  %i.tv = load i64, ptr %i.tr, align 8, !tbaa !73
  %i.tw = getelementptr inbounds nuw i8, ptr %.1080.i, i64 24
  store i64 %i.tv, ptr %i.tt, align 8, !tbaa !73
  %i.tx = getelementptr inbounds nuw i8, ptr %.06181.i, i64 32
  %i.ty = load i64, ptr %i.tu, align 8, !tbaa !73
  %i.tz = getelementptr inbounds nuw i8, ptr %.1080.i, i64 32
  store i64 %i.ty, ptr %i.tw, align 8, !tbaa !73
  %i.ua = getelementptr inbounds nuw i8, ptr %.06181.i, i64 40
  %i.ub = load i64, ptr %i.tx, align 8, !tbaa !73
  %i.uc = getelementptr inbounds nuw i8, ptr %.1080.i, i64 40
  store i64 %i.ub, ptr %i.tz, align 8, !tbaa !73
  %i.ud = getelementptr inbounds nuw i8, ptr %.06181.i, i64 48
  %i.ue = load i64, ptr %i.ua, align 8, !tbaa !73
  %i.uf = getelementptr inbounds nuw i8, ptr %.1080.i, i64 48
  store i64 %i.ue, ptr %i.uc, align 8, !tbaa !73
  %i.ug = getelementptr inbounds nuw i8, ptr %.06181.i, i64 56
  %i.uh = load i64, ptr %i.ud, align 8, !tbaa !73
  %i.ui = getelementptr inbounds nuw i8, ptr %.1080.i, i64 56
  store i64 %i.uh, ptr %i.uf, align 8, !tbaa !73
  %i.uj = getelementptr inbounds nuw i8, ptr %.06181.i, i64 64 ; 2 uses
  %i.uk = load i64, ptr %i.ug, align 8, !tbaa !73
  %i.ul = getelementptr inbounds nuw i8, ptr %.1080.i, i64 64 ; 2 uses
  store i64 %i.uk, ptr %i.ui, align 8, !tbaa !73
  %i.um = add nuw nsw i32 %.05982.i, 8            ; 2 uses
  %exitcond128.not.i.7 = icmp eq i32 %i.um, %i.cs
  br i1 %exitcond128.not.i.7, label %.preheader.i, label %.lr.ph83.i, !llvm.loop !688

._crit_edge89.i:                                  ; preds = %vec.epilog.scalar.ph320, %middle.block314, %vec.epilog.middle.block331, %.preheader.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader.i ], [ %i.tl, %vec.epilog.middle.block331 ], [ %i.tf, %middle.block314 ], [ %i.uo, %vec.epilog.scalar.ph320 ]
  %i.un = add nuw nsw i32 %.06292.i, 1            ; 2 uses
  %exitcond130.not.i = icmp eq i32 %i.un, %i.dx
  br i1 %exitcond130.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %.preheader2.i, !llvm.loop !689

vec.epilog.scalar.ph320:                          ; preds = %vec.epilog.scalar.ph320.preheader, %vec.epilog.scalar.ph320
  %.087.i = phi i32 [ %i.up, %vec.epilog.scalar.ph320 ], [ %.087.i.ph, %vec.epilog.scalar.ph320.preheader ]
  %.1186.i = phi ptr [ %i.uo, %vec.epilog.scalar.ph320 ], [ %.1186.i.ph, %vec.epilog.scalar.ph320.preheader ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.1186.i, i64 8 ; 2 uses
  store i64 %.pre137.i, ptr %.1186.i, align 8, !tbaa !73
  %i.up = add nuw nsw i32 %.087.i, 1              ; 2 uses
  %exitcond129.not.i = icmp eq i32 %i.up, %i.dz
  br i1 %exitcond129.not.i, label %._crit_edge89.i, label %vec.epilog.scalar.ph320, !llvm.loop !690

bb.h:                                             ; preds = %bb.f
  %i.uq = load i32, ptr %i.an, align 8, !tbaa !48 ; 9 uses
  %i.ur = load i32, ptr %i.ao, align 4, !tbaa !49 ; 3 uses
  %i.us = load i32, ptr %i.ap, align 8, !tbaa !50 ; 16 uses
  %i.ut = load i32, ptr %i.aq, align 4, !tbaa !51 ; 12 uses
  %i.uu = mul i32 %i.uq, %i.cs
  %i.uv = sext i32 %i.uu to i64                   ; 7 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.uv ; 5 uses
  %i.ux = icmp sgt i32 %i.uq, 0
  br i1 %i.ux, label %.preheader9.lr.ph.i65, label %.preheader6.i47

.preheader9.lr.ph.i65:                            ; preds = %bb.h
  %i.uy = icmp sgt i32 %i.us, 0                   ; 2 uses
  %i.uz = icmp sgt i32 %i.cs, 0                   ; 3 uses
  %i.va = icmp sgt i32 %i.ut, 0
  %i.vb = sub nsw i64 0, %i.df                    ; 4 uses
  br i1 %i.va, label %.preheader9.us.preheader.i, label %.preheader9.lr.ph.split.i66

.preheader9.us.preheader.i:                       ; preds = %.preheader9.lr.ph.i65
  %wide.trip.count144.i = zext i32 %i.us to i64   ; 16 uses
  %wide.trip.count150.i = zext nneg i32 %i.ut to i64 ; 10 uses
  %i.vc = shl nuw nsw i64 %wide.trip.count150.i, 3
  %i.vd = mul nsw i64 %wide.trip.count150.i, -8
  %i.ve = add i64 %i.db, %i.cw
  %.neg1323 = mul nsw i64 %i.uv, -8
  %.neg1324 = sub i64 %.neg1323, %i.ve
  %i.vf = shl nsw i64 %i.df, 3
  %i.vg = zext i32 %i.cs to i64                   ; 5 uses
  %i.vh = shl nuw nsw i64 %wide.trip.count144.i, 3 ; 2 uses
  %scevgep1101.a = getelementptr i8, ptr %i.cv, i64 8 ; 2 uses
  %i.vi = shl nsw i64 %i.uv, 3
  %i.vj = add i64 %i.db, %i.vi                    ; 2 uses
  %scevgep1102.a = getelementptr i8, ptr %scevgep1101.a, i64 %i.vj
  %10 = add i64 %i.vj, %i.vh
  %i.vk = shl nsw i64 %i.df, 3
  %i.vl = add nsw i32 %i.uq, -1
  %i.vm = zext i32 %i.vl to i64
  %i.vn = mul i64 %i.vk, %i.vm
  %i.vo = sub i64 %10, %i.vn
  %scevgep1104 = getelementptr i8, ptr %scevgep1101.a, i64 %i.vo
  %min.iters.check1109.a = icmp ult i32 %i.us, 4
  %stride.check1108 = icmp sgt i32 %i.cs, 0
  %min.iters.check1111 = icmp ult i32 %i.us, 16
  %i.vp = and i64 %wide.trip.count144.i, 12
  %n.vec1113 = and i64 %wide.trip.count144.i, 2147483632 ; 5 uses
  %i.vq = shl nuw nsw i64 %n.vec1113, 3
  %cmp.n1127 = icmp eq i64 %n.vec1113, %wide.trip.count144.i
  %min.epilog.iters.check1133 = icmp eq i64 %i.vp, 0
  %n.vec1135 = and i64 %wide.trip.count144.i, 2147483644 ; 4 uses
  %i.vr = shl nuw nsw i64 %n.vec1135, 3
  %cmp.n1143 = icmp eq i64 %n.vec1135, %wide.trip.count144.i
  %xtraiter1388 = and i64 %wide.trip.count144.i, 3 ; 2 uses
  %lcmp.mod1389.not = icmp eq i64 %xtraiter1388, 0
  %min.iters.check1062 = icmp ult i32 %i.cs, 4
  %min.iters.check1064 = icmp ult i32 %i.cs, 16
  %i.vs = and i64 %i.vg, 12
  %n.vec1066 = and i64 %i.vg, 2147483632          ; 5 uses
  %i.vt = trunc nuw nsw i64 %n.vec1066 to i32
  %i.vu = shl nuw nsw i64 %n.vec1066, 3           ; 2 uses
  %cmp.n1077 = icmp eq i64 %n.vec1066, %i.vg
  %min.epilog.iters.check1085 = icmp eq i64 %i.vs, 0
  %n.vec1087 = and i64 %i.vg, 2147483644          ; 4 uses
  %i.vv = trunc nuw nsw i64 %n.vec1087 to i32
  %i.vw = shl nuw nsw i64 %n.vec1087, 3           ; 2 uses
  %cmp.n1095 = icmp eq i64 %n.vec1087, %i.vg
  %min.iters.check1020 = icmp ult i32 %i.ut, 4
  %min.iters.check1022 = icmp ult i32 %i.ut, 16
  %i.vx = and i64 %wide.trip.count150.i, 12
  %n.vec1024 = and i64 %wide.trip.count150.i, 2147483632 ; 5 uses
  %i.vy = shl nuw nsw i64 %n.vec1024, 3
  %cmp.n1038 = icmp eq i64 %n.vec1024, %wide.trip.count150.i
  %min.epilog.iters.check1044 = icmp eq i64 %i.vx, 0
  %n.vec1046 = and i64 %wide.trip.count150.i, 2147483644 ; 4 uses
  %i.vz = shl nuw nsw i64 %n.vec1046, 3
  %cmp.n1054 = icmp eq i64 %n.vec1046, %wide.trip.count150.i
  %xtraiter1394 = and i64 %wide.trip.count150.i, 3 ; 2 uses
  %lcmp.mod1395.not = icmp eq i64 %xtraiter1394, 0
  br label %.preheader9.us.i71

.preheader9.us.i71:                               ; preds = %._crit_edge.us.i75, %.preheader9.us.preheader.i
  %indvar1059 = phi i64 [ %indvar.next1060, %._crit_edge.us.i75 ], [ 0, %.preheader9.us.preheader.i ] ; 2 uses
  %.08724.us.i = phi i32 [ %i.aba, %._crit_edge.us.i75 ], [ 0, %.preheader9.us.preheader.i ]
  %.08823.us.i = phi ptr [ %.lcssa270, %._crit_edge.us.i75 ], [ %i.bb, %.preheader9.us.preheader.i ] ; 9 uses
  %.08922.us.i = phi ptr [ %i.aaz, %._crit_edge.us.i75 ], [ %i.uw, %.preheader9.us.preheader.i ] ; 15 uses
  %i.wa = mul i64 %i.vf, %indvar1059
  %i.wb = add i64 %.neg1324, %i.wa
  br i1 %i.uy, label %iter.check1130, label %.preheader8.us.i

iter.check1130:                                   ; preds = %.preheader9.us.i71
  br i1 %min.iters.check1109.a, label %.lr.ph.us.i.preheader, label %vector.memcheck1099

vector.memcheck1099:                              ; preds = %iter.check1130
  %scevgep1100 = getelementptr i8, ptr %.08823.us.i, i64 %i.vh
  %bound01105 = icmp ult ptr %.08823.us.i, %scevgep1104
  %bound11106 = icmp ult ptr %scevgep1102.a, %scevgep1100
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %i.wc = or i1 %found.conflict1107, %stride.check1108
  br i1 %i.wc, label %.lr.ph.us.i.preheader, label %vector.main.loop.iter.check1110

vector.main.loop.iter.check1110:                  ; preds = %vector.memcheck1099
  br i1 %min.iters.check1111, label %vec.epilog.ph1134, label %vector.ph1112

vector.ph1112:                                    ; preds = %vector.main.loop.iter.check1110
  %i.wd = getelementptr i8, ptr %.08823.us.i, i64 %i.vq ; 2 uses
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1112
  %index1115 = phi i64 [ 0, %vector.ph1112 ], [ %index.next1125, %vector.body1114 ] ; 3 uses
  %i.we = shl i64 %index1115, 3
  %next.gep1116 = getelementptr i8, ptr %.08823.us.i, i64 %i.we ; 4 uses
  %i.wf = sub nsw i64 %wide.trip.count144.i, %index1115
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.wf ; 4 uses
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 -24
  %i.wi = getelementptr inbounds i8, ptr %i.wg, i64 -56
  %i.wj = getelementptr inbounds i8, ptr %i.wg, i64 -88
  %i.wk = getelementptr inbounds i8, ptr %i.wg, i64 -120
  %wide.load1117.a = load <4 x i64>, ptr %i.wh, align 8, !tbaa !73, !alias.scope !691
  %wide.load1118.a = load <4 x i64>, ptr %i.wi, align 8, !tbaa !73, !alias.scope !691
  %wide.load1119 = load <4 x i64>, ptr %i.wj, align 8, !tbaa !73, !alias.scope !691
  %wide.load1120 = load <4 x i64>, ptr %i.wk, align 8, !tbaa !73, !alias.scope !691
  %reverse1121.a = shufflevector <4 x i64> %wide.load1117.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1122.a = shufflevector <4 x i64> %wide.load1118.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1123 = shufflevector <4 x i64> %wide.load1119, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1124 = shufflevector <4 x i64> %wide.load1120, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.wl = getelementptr i8, ptr %next.gep1116, i64 32
  %i.wm = getelementptr i8, ptr %next.gep1116, i64 64
  %i.wn = getelementptr i8, ptr %next.gep1116, i64 96
  store <4 x i64> %reverse1121.a, ptr %next.gep1116, align 8, !tbaa !73, !alias.scope !694, !noalias !691
  store <4 x i64> %reverse1122.a, ptr %i.wl, align 8, !tbaa !73, !alias.scope !694, !noalias !691
  store <4 x i64> %reverse1123, ptr %i.wm, align 8, !tbaa !73, !alias.scope !694, !noalias !691
  store <4 x i64> %reverse1124, ptr %i.wn, align 8, !tbaa !73, !alias.scope !694, !noalias !691
  %index.next1125 = add nuw i64 %index1115, 16    ; 2 uses
  %i.wo = icmp eq i64 %index.next1125, %n.vec1113
  br i1 %i.wo, label %middle.block1126, label %vector.body1114, !llvm.loop !696

middle.block1126:                                 ; preds = %vector.body1114
  br i1 %cmp.n1127, label %.preheader8.us.i, label %vec.epilog.iter.check1132

vec.epilog.iter.check1132:                        ; preds = %middle.block1126
  br i1 %min.epilog.iters.check1133, label %.lr.ph.us.i.preheader, label %vec.epilog.ph1134, !prof !78

vec.epilog.ph1134:                                ; preds = %vector.main.loop.iter.check1110, %vec.epilog.iter.check1132
  %vec.epilog.resume.val1128 = phi i64 [ %n.vec1113, %vec.epilog.iter.check1132 ], [ 0, %vector.main.loop.iter.check1110 ]
  %i.wp = getelementptr i8, ptr %.08823.us.i, i64 %i.vr ; 2 uses
  br label %vec.epilog.vector.body1136

vec.epilog.vector.body1136:                       ; preds = %vec.epilog.vector.body1136, %vec.epilog.ph1134
  %index1137 = phi i64 [ %vec.epilog.resume.val1128, %vec.epilog.ph1134 ], [ %index.next1141, %vec.epilog.vector.body1136 ] ; 3 uses
  %i.wq = shl i64 %index1137, 3
  %next.gep1138 = getelementptr i8, ptr %.08823.us.i, i64 %i.wq
  %i.wr = sub nsw i64 %wide.trip.count144.i, %index1137
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.wr
  %i.wt = getelementptr inbounds i8, ptr %i.ws, i64 -24
  %wide.load1139 = load <4 x i64>, ptr %i.wt, align 8, !tbaa !73, !alias.scope !691
  %reverse1140 = shufflevector <4 x i64> %wide.load1139, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i64> %reverse1140, ptr %next.gep1138, align 8, !tbaa !73, !alias.scope !694, !noalias !691
  %index.next1141 = add nuw i64 %index1137, 4     ; 2 uses
  %i.wu = icmp eq i64 %index.next1141, %n.vec1135
  br i1 %i.wu, label %vec.epilog.middle.block1142, label %vec.epilog.vector.body1136, !llvm.loop !697

vec.epilog.middle.block1142:                      ; preds = %vec.epilog.vector.body1136
  br i1 %cmp.n1143, label %.preheader8.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %vector.memcheck1099, %iter.check1130, %vec.epilog.iter.check1132, %vec.epilog.middle.block1142
  %indvars.iv141.i.ph = phi i64 [ 0, %iter.check1130 ], [ 0, %vector.memcheck1099 ], [ %n.vec1113, %vec.epilog.iter.check1132 ], [ %n.vec1135, %vec.epilog.middle.block1142 ] ; 3 uses
  %.110.us.i78.ph = phi ptr [ %.08823.us.i, %iter.check1130 ], [ %.08823.us.i, %vector.memcheck1099 ], [ %i.wd, %vec.epilog.iter.check1132 ], [ %i.wp, %vec.epilog.middle.block1142 ] ; 2 uses
  br i1 %lcmp.mod1389.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i.prol
  %indvars.iv141.i.prol = phi i64 [ %indvars.iv.next142.i.prol, %.lr.ph.us.i.prol ], [ %indvars.iv141.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.110.us.i78.prol = phi ptr [ %i.wy, %.lr.ph.us.i.prol ], [ %.110.us.i78.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %prol.iter1390 = phi i64 [ %prol.iter1390.next, %.lr.ph.us.i.prol ], [ 0, %.lr.ph.us.i.preheader ]
  %i.wv = sub nsw i64 %wide.trip.count144.i, %indvars.iv141.i.prol
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.wv
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !73
  %i.wy = getelementptr inbounds nuw i8, ptr %.110.us.i78.prol, i64 8 ; 3 uses
  store i64 %i.wx, ptr %.110.us.i78.prol, align 8, !tbaa !73
  %indvars.iv.next142.i.prol = add nuw nsw i64 %indvars.iv141.i.prol, 1 ; 2 uses
  %prol.iter1390.next = add i64 %prol.iter1390, 1 ; 2 uses
  %prol.iter1390.cmp.not = icmp eq i64 %prol.iter1390.next, %xtraiter1388
  br i1 %prol.iter1390.cmp.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol, !llvm.loop !698

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader
  %.lcssa1348.unr.a = phi ptr [ poison, %.lr.ph.us.i.preheader ], [ %i.wy, %.lr.ph.us.i.prol ]
  %indvars.iv141.i.unr = phi i64 [ %indvars.iv141.i.ph, %.lr.ph.us.i.preheader ], [ %indvars.iv.next142.i.prol, %.lr.ph.us.i.prol ]
  %.110.us.i78.unr = phi ptr [ %.110.us.i78.ph, %.lr.ph.us.i.preheader ], [ %i.wy, %.lr.ph.us.i.prol ]
  %i.wz = sub nsw i64 %indvars.iv141.i.ph, %wide.trip.count144.i
  %i.xa = icmp ugt i64 %i.wz, -4
  br i1 %i.xa, label %.preheader8.us.i, label %.lr.ph.us.i.preheader.new

.lr.ph.us.i.preheader.new:                        ; preds = %.lr.ph.us.i.prol.loopexit
  %invariant.gep1508.a = getelementptr [8 x i8], ptr %.08922.us.i, i64 %wide.trip.count144.i
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %.lr.ph.us.i.preheader.new
  %indvars.iv141.i = phi i64 [ %indvars.iv141.i.unr, %.lr.ph.us.i.preheader.new ], [ %indvars.iv.next142.i.3, %.lr.ph.us.i ] ; 5 uses
  %.110.us.i78 = phi ptr [ %.110.us.i78.unr, %.lr.ph.us.i.preheader.new ], [ %i.xo, %.lr.ph.us.i ] ; 5 uses
  %i.xb = sub nsw i64 %wide.trip.count144.i, %indvars.iv141.i
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.xb
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !73
  %i.xe = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 8
  store i64 %i.xd, ptr %.110.us.i78, align 8, !tbaa !73
  %indvars.iv.next142.i.neg = xor i64 %indvars.iv141.i, -1
  %gep1509.a = getelementptr [8 x i8], ptr %invariant.gep1508.a, i64 %indvars.iv.next142.i.neg
  %i.xf = load i64, ptr %gep1509.a, align 8, !tbaa !73
  %i.xg = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 16
  store i64 %i.xf, ptr %i.xe, align 8, !tbaa !73
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2
  %i.xh = sub nsw i64 %wide.trip.count144.i, %indvars.iv.next142.i.1
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.xh
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !73
  %i.xk = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 24
  store i64 %i.xj, ptr %i.xg, align 8, !tbaa !73
  %indvars.iv.next142.i.2 = add nuw nsw i64 %indvars.iv141.i, 3
  %i.xl = sub nsw i64 %wide.trip.count144.i, %indvars.iv.next142.i.2
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.xl
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !73
  %i.xo = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 32 ; 2 uses
  store i64 %i.xn, ptr %i.xk, align 8, !tbaa !73
  %indvars.iv.next142.i.3 = add nuw nsw i64 %indvars.iv141.i, 4 ; 2 uses
  %exitcond145.not.i.3 = icmp eq i64 %indvars.iv.next142.i.3, %wide.trip.count144.i
  br i1 %exitcond145.not.i.3, label %.preheader8.us.i, label %.lr.ph.us.i, !llvm.loop !699

.lr.ph15.us.i76:                                  ; preds = %.lr.ph15.us.i76.prol.loopexit, %.lr.ph15.us.i76
  %.08414.us.i = phi i32 [ %i.yn, %.lr.ph15.us.i76 ], [ %.08414.us.i.unr, %.lr.ph15.us.i76.prol.loopexit ]
  %.08613.us.i = phi ptr [ %i.yk, %.lr.ph15.us.i76 ], [ %.08613.us.i.unr, %.lr.ph15.us.i76.prol.loopexit ] ; 9 uses
  %.212.us.i77 = phi ptr [ %i.ym, %.lr.ph15.us.i76 ], [ %.212.us.i77.unr, %.lr.ph15.us.i76.prol.loopexit ] ; 9 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 8
  %i.xq = load i64, ptr %.08613.us.i, align 8, !tbaa !73
  %i.xr = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 8
  store i64 %i.xq, ptr %.212.us.i77, align 8, !tbaa !73
  %i.xs = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 16
  %i.xt = load i64, ptr %i.xp, align 8, !tbaa !73
  %i.xu = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 16
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !73
  %i.xv = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 24
  %i.xw = load i64, ptr %i.xs, align 8, !tbaa !73
  %i.xx = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 24
  store i64 %i.xw, ptr %i.xu, align 8, !tbaa !73
  %i.xy = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 32
  %i.xz = load i64, ptr %i.xv, align 8, !tbaa !73
  %i.ya = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 32
  store i64 %i.xz, ptr %i.xx, align 8, !tbaa !73
  %i.yb = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 40
  %i.yc = load i64, ptr %i.xy, align 8, !tbaa !73
  %i.yd = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 40
  store i64 %i.yc, ptr %i.ya, align 8, !tbaa !73
  %i.ye = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 48
  %i.yf = load i64, ptr %i.yb, align 8, !tbaa !73
  %i.yg = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 48
  store i64 %i.yf, ptr %i.yd, align 8, !tbaa !73
  %i.yh = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 56
  %i.yi = load i64, ptr %i.ye, align 8, !tbaa !73
  %i.yj = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 56
  store i64 %i.yi, ptr %i.yg, align 8, !tbaa !73
  %i.yk = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 64 ; 2 uses
  %i.yl = load i64, ptr %i.yh, align 8, !tbaa !73
  %i.ym = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 64 ; 2 uses
  store i64 %i.yl, ptr %i.yj, align 8, !tbaa !73
  %i.yn = add nuw nsw i32 %.08414.us.i, 8         ; 2 uses
  %exitcond146.not.i.7 = icmp eq i32 %i.yn, %i.cs
  br i1 %exitcond146.not.i.7, label %iter.check1041, label %.lr.ph15.us.i76, !llvm.loop !700

vec.epilog.scalar.ph1042:                         ; preds = %vec.epilog.scalar.ph1042.prol.loopexit, %vec.epilog.scalar.ph1042
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.3, %vec.epilog.scalar.ph1042 ], [ %indvars.iv147.i.unr, %vec.epilog.scalar.ph1042.prol.loopexit ] ; 5 uses
  %.318.us.i74 = phi ptr [ %i.zd, %vec.epilog.scalar.ph1042 ], [ %.318.us.i74.unr, %vec.epilog.scalar.ph1042.prol.loopexit ] ; 5 uses
  %i.yo = sub nuw nsw i64 -2, %indvars.iv147.i
  %i.yp = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.yo
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !73
  %i.yr = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 8
  store i64 %i.yq, ptr %.318.us.i74, align 8, !tbaa !73
  %i.ys = sub nuw nsw i64 -3, %indvars.iv147.i
  %i.yt = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.ys
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !73
  %i.yv = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 16
  store i64 %i.yu, ptr %i.yr, align 8, !tbaa !73
  %i.yw = sub nuw nsw i64 -4, %indvars.iv147.i
  %i.yx = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.yw
  %i.yy = load i64, ptr %i.yx, align 8, !tbaa !73
  %i.yz = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 24
  store i64 %i.yy, ptr %i.yv, align 8, !tbaa !73
  %i.za = sub nuw nsw i64 -5, %indvars.iv147.i
  %i.zb = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.za
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !73
  %i.zd = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 32 ; 2 uses
  store i64 %i.zc, ptr %i.yz, align 8, !tbaa !73
  %indvars.iv.next148.i.3 = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next148.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %._crit_edge.us.i75, label %vec.epilog.scalar.ph1042, !llvm.loop !701

iter.check1041:                                   ; preds = %.lr.ph15.us.i76.prol.loopexit, %.lr.ph15.us.i76, %middle.block1076, %vec.epilog.middle.block1094, %.preheader8.us.i
  %.2.lcssa.us.i73 = phi ptr [ %.1.lcssa.us.i, %.preheader8.us.i ], [ %i.aap, %vec.epilog.middle.block1094 ], [ %i.aaf, %middle.block1076 ], [ %.lcssa1349.unr, %.lr.ph15.us.i76.prol.loopexit ], [ %i.ym, %.lr.ph15.us.i76 ] ; 8 uses
  %.086.lcssa.us.i = phi ptr [ %.08922.us.i, %.preheader8.us.i ], [ %i.aao, %vec.epilog.middle.block1094 ], [ %i.aae, %middle.block1076 ], [ %.lcssa1350.unr, %.lr.ph15.us.i76.prol.loopexit ], [ %i.yk, %.lr.ph15.us.i76 ] ; 8 uses
  br i1 %min.iters.check1020, label %vec.epilog.scalar.ph1042.preheader, label %vector.memcheck1013

vector.memcheck1013:                              ; preds = %iter.check1041
  %scevgep1014.a = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.vc
  %scevgep1015.a = getelementptr i8, ptr %.086.lcssa.us.i, i64 -8 ; 2 uses
  %scevgep1016 = getelementptr i8, ptr %scevgep1015.a, i64 %i.vd
  %bound01017 = icmp ult ptr %.2.lcssa.us.i73, %scevgep1015.a
  %bound11018 = icmp ult ptr %scevgep1016, %scevgep1014.a
  %found.conflict1019 = and i1 %bound01017, %bound11018
  br i1 %found.conflict1019, label %vec.epilog.scalar.ph1042.preheader, label %vector.main.loop.iter.check1021

vector.main.loop.iter.check1021:                  ; preds = %vector.memcheck1013
  br i1 %min.iters.check1022, label %vec.epilog.ph1045, label %vector.ph1023

vector.ph1023:                                    ; preds = %vector.main.loop.iter.check1021
  %i.ze = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.vy ; 2 uses
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1023
  %index1026 = phi i64 [ 0, %vector.ph1023 ], [ %index.next1036, %vector.body1025 ] ; 3 uses
  %i.zf = shl i64 %index1026, 3
  %next.gep1027 = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.zf ; 4 uses
  %i.zg = sub nuw nsw i64 -2, %index1026
  %i.zh = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.zg ; 4 uses
  %i.zi = getelementptr inbounds i8, ptr %i.zh, i64 -24
  %i.zj = getelementptr inbounds i8, ptr %i.zh, i64 -56
  %i.zk = getelementptr inbounds i8, ptr %i.zh, i64 -88
  %i.zl = getelementptr inbounds i8, ptr %i.zh, i64 -120
  %wide.load1028.a = load <4 x i64>, ptr %i.zi, align 8, !tbaa !73, !alias.scope !702
  %wide.load1029.a = load <4 x i64>, ptr %i.zj, align 8, !tbaa !73, !alias.scope !702
  %wide.load1030.a = load <4 x i64>, ptr %i.zk, align 8, !tbaa !73, !alias.scope !702
  %wide.load1031 = load <4 x i64>, ptr %i.zl, align 8, !tbaa !73, !alias.scope !702
  %reverse1032.a = shufflevector <4 x i64> %wide.load1028.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1033.a = shufflevector <4 x i64> %wide.load1029.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1034.a = shufflevector <4 x i64> %wide.load1030.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse1035 = shufflevector <4 x i64> %wide.load1031, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.zm = getelementptr i8, ptr %next.gep1027, i64 32
  %i.zn = getelementptr i8, ptr %next.gep1027, i64 64
  %i.zo = getelementptr i8, ptr %next.gep1027, i64 96
  store <4 x i64> %reverse1032.a, ptr %next.gep1027, align 8, !tbaa !73, !alias.scope !705, !noalias !702
  store <4 x i64> %reverse1033.a, ptr %i.zm, align 8, !tbaa !73, !alias.scope !705, !noalias !702
  store <4 x i64> %reverse1034.a, ptr %i.zn, align 8, !tbaa !73, !alias.scope !705, !noalias !702
  store <4 x i64> %reverse1035, ptr %i.zo, align 8, !tbaa !73, !alias.scope !705, !noalias !702
  %index.next1036 = add nuw i64 %index1026, 16    ; 2 uses
  %i.zp = icmp eq i64 %index.next1036, %n.vec1024
  br i1 %i.zp, label %middle.block1037, label %vector.body1025, !llvm.loop !707

middle.block1037:                                 ; preds = %vector.body1025
  br i1 %cmp.n1038, label %._crit_edge.us.i75, label %vec.epilog.iter.check1043

vec.epilog.iter.check1043:                        ; preds = %middle.block1037
  br i1 %min.epilog.iters.check1044, label %vec.epilog.scalar.ph1042.preheader, label %vec.epilog.ph1045, !prof !78

vec.epilog.ph1045:                                ; preds = %vector.main.loop.iter.check1021, %vec.epilog.iter.check1043
  %vec.epilog.resume.val1039 = phi i64 [ %n.vec1024, %vec.epilog.iter.check1043 ], [ 0, %vector.main.loop.iter.check1021 ]
  %i.zq = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.vz ; 2 uses
  br label %vec.epilog.vector.body1047

vec.epilog.vector.body1047:                       ; preds = %vec.epilog.vector.body1047, %vec.epilog.ph1045
  %index1048 = phi i64 [ %vec.epilog.resume.val1039, %vec.epilog.ph1045 ], [ %index.next1052, %vec.epilog.vector.body1047 ] ; 3 uses
  %i.zr = shl i64 %index1048, 3
  %next.gep1049 = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.zr
  %i.zs = sub nuw nsw i64 -2, %index1048
  %i.zt = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.zs
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -24
  %wide.load1050 = load <4 x i64>, ptr %i.zu, align 8, !tbaa !73, !alias.scope !702
  %reverse1051 = shufflevector <4 x i64> %wide.load1050, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i64> %reverse1051, ptr %next.gep1049, align 8, !tbaa !73, !alias.scope !705, !noalias !702
  %index.next1052 = add nuw i64 %index1048, 4     ; 2 uses
  %i.zv = icmp eq i64 %index.next1052, %n.vec1046
  br i1 %i.zv, label %vec.epilog.middle.block1053, label %vec.epilog.vector.body1047, !llvm.loop !708

vec.epilog.middle.block1053:                      ; preds = %vec.epilog.vector.body1047
  br i1 %cmp.n1054, label %._crit_edge.us.i75, label %vec.epilog.scalar.ph1042.preheader

vec.epilog.scalar.ph1042.preheader:               ; preds = %vector.memcheck1013, %iter.check1041, %vec.epilog.iter.check1043, %vec.epilog.middle.block1053
  %indvars.iv147.i.ph = phi i64 [ 0, %iter.check1041 ], [ 0, %vector.memcheck1013 ], [ %n.vec1024, %vec.epilog.iter.check1043 ], [ %n.vec1046, %vec.epilog.middle.block1053 ] ; 3 uses
  %.318.us.i74.ph = phi ptr [ %.2.lcssa.us.i73, %iter.check1041 ], [ %.2.lcssa.us.i73, %vector.memcheck1013 ], [ %i.ze, %vec.epilog.iter.check1043 ], [ %i.zq, %vec.epilog.middle.block1053 ] ; 2 uses
  br i1 %lcmp.mod1395.not, label %vec.epilog.scalar.ph1042.prol.loopexit, label %vec.epilog.scalar.ph1042.prol

vec.epilog.scalar.ph1042.prol:                    ; preds = %vec.epilog.scalar.ph1042.preheader, %vec.epilog.scalar.ph1042.prol
  %indvars.iv147.i.prol = phi i64 [ %indvars.iv.next148.i.prol, %vec.epilog.scalar.ph1042.prol ], [ %indvars.iv147.i.ph, %vec.epilog.scalar.ph1042.preheader ] ; 2 uses
  %.318.us.i74.prol = phi ptr [ %i.zz, %vec.epilog.scalar.ph1042.prol ], [ %.318.us.i74.ph, %vec.epilog.scalar.ph1042.preheader ] ; 2 uses
  %prol.iter1396 = phi i64 [ %prol.iter1396.next, %vec.epilog.scalar.ph1042.prol ], [ 0, %vec.epilog.scalar.ph1042.preheader ]
  %i.zw = sub nuw nsw i64 -2, %indvars.iv147.i.prol
  %i.zx = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.zw
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !73
  %i.zz = getelementptr inbounds nuw i8, ptr %.318.us.i74.prol, i64 8 ; 3 uses
  store i64 %i.zy, ptr %.318.us.i74.prol, align 8, !tbaa !73
  %indvars.iv.next148.i.prol = add nuw nsw i64 %indvars.iv147.i.prol, 1 ; 2 uses
  %prol.iter1396.next = add i64 %prol.iter1396, 1 ; 2 uses
  %prol.iter1396.cmp.not = icmp eq i64 %prol.iter1396.next, %xtraiter1394
  br i1 %prol.iter1396.cmp.not, label %vec.epilog.scalar.ph1042.prol.loopexit, label %vec.epilog.scalar.ph1042.prol, !llvm.loop !709

vec.epilog.scalar.ph1042.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1042.prol, %vec.epilog.scalar.ph1042.preheader
  %.lcssa1351.unr.a = phi ptr [ poison, %vec.epilog.scalar.ph1042.preheader ], [ %i.zz, %vec.epilog.scalar.ph1042.prol ]
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %vec.epilog.scalar.ph1042.preheader ], [ %indvars.iv.next148.i.prol, %vec.epilog.scalar.ph1042.prol ]
  %.318.us.i74.unr = phi ptr [ %.318.us.i74.ph, %vec.epilog.scalar.ph1042.preheader ], [ %i.zz, %vec.epilog.scalar.ph1042.prol ]
  %i.aaa = sub nsw i64 %indvars.iv147.i.ph, %wide.trip.count150.i
  %i.aab = icmp ugt i64 %i.aaa, -4
  br i1 %i.aab, label %._crit_edge.us.i75, label %vec.epilog.scalar.ph1042

.preheader8.us.i:                                 ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %middle.block1126, %vec.epilog.middle.block1142, %.preheader9.us.i71
  %.1.lcssa.us.i = phi ptr [ %.08823.us.i, %.preheader9.us.i71 ], [ %i.wp, %vec.epilog.middle.block1142 ], [ %i.wd, %middle.block1126 ], [ %.lcssa1348.unr.a, %.lr.ph.us.i.prol.loopexit ], [ %i.xo, %.lr.ph.us.i ] ; 8 uses
  %.1.lcssa.us.i1058 = ptrtoaddr ptr %.1.lcssa.us.i to i64
  br i1 %i.uz, label %iter.check1082, label %iter.check1041

iter.check1082:                                   ; preds = %.preheader8.us.i
  br i1 %min.iters.check1062, label %.lr.ph15.us.i76.preheader, label %vector.memcheck1057

vector.memcheck1057:                              ; preds = %iter.check1082
  %i.aac = add i64 %i.wb, %.1.lcssa.us.i1058
  %i.aad = add i64 %i.aac, -1
  %diff.check1061 = icmp ult i64 %i.aad, 127
  br i1 %diff.check1061, label %.lr.ph15.us.i76.preheader, label %vector.main.loop.iter.check1063

vector.main.loop.iter.check1063:                  ; preds = %vector.memcheck1057
  br i1 %min.iters.check1064, label %vec.epilog.ph1086, label %vector.ph1065

vector.ph1065:                                    ; preds = %vector.main.loop.iter.check1063
  %i.aae = getelementptr i8, ptr %.08922.us.i, i64 %i.vu ; 2 uses
  %i.aaf = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.vu ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK4ncnn15Padding_x86_avx12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %exitcond133.not.i = icmp eq i32 %i.agc, %i.uq
  br i1 %exitcond133.not.i, label %.preheader6.i47, label %iter.check1263, !llvm.loop !713

.preheader9.lr.ph.split.split.i67:                ; preds = %.preheader9.lr.ph.split.i66
  br i1 %i.uz, label %.preheader9.us51.i.preheader, label %.preheader9.preheader.i

.preheader9.us51.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.i67
  %i.agd = add i64 %i.db, %i.cw
  %.neg = mul nsw i64 %i.uv, -8
  %.neg1321 = sub i64 %.neg, %i.agd
  %i.age = shl nuw nsw i64 %i.df, 3
  %i.agf = zext nneg i32 %i.cs to i64             ; 5 uses
  %min.iters.check1284.a = icmp ult i32 %i.cs, 4
  %min.iters.check1286 = icmp ult i32 %i.cs, 16
  %i.agg = and i64 %i.agf, 12
  %n.vec1288 = and i64 %i.agf, 2147483632         ; 5 uses
  %i.agh = trunc nuw nsw i64 %n.vec1288 to i32
  %i.agi = shl nuw nsw i64 %n.vec1288, 3          ; 2 uses
  %cmp.n1299 = icmp eq i64 %n.vec1288, %i.agf
  %min.epilog.iters.check1307 = icmp eq i64 %i.agg, 0
  %n.vec1309 = and i64 %i.agf, 2147483644         ; 4 uses
  %i.agj = trunc nuw nsw i64 %n.vec1309 to i32
  %i.agk = shl nuw nsw i64 %n.vec1309, 3          ; 2 uses
  %cmp.n1317 = icmp eq i64 %n.vec1309, %i.agf
  br label %iter.check1304

.preheader9.preheader.i:                          ; preds = %.preheader9.lr.ph.split.split.i67
  %i.agl = add nsw i32 %i.uq, -1
  %i.agm = zext nneg i32 %i.agl to i64
  %i.agn = shl nuw nsw i64 %i.agm, 3
  %i.ago = sub nuw nsw i64 -8, %i.agn
  %i.agp = mul i64 %i.ago, %i.df
  %i.agq = shl nsw i64 %i.uv, 3
  %i.agr = getelementptr i8, ptr %i.dc, i64 %i.agp
  %scevgep.i = getelementptr i8, ptr %i.agr, i64 %i.agq
  br label %.preheader6.i47

iter.check1304:                                   ; preds = %.preheader9.us51.i.preheader, %..preheader7_crit_edge.us61.i
  %indvar1281 = phi i64 [ 0, %.preheader9.us51.i.preheader ], [ %indvar.next1282, %..preheader7_crit_edge.us61.i ] ; 2 uses
  %.08724.us52.i = phi i32 [ 0, %.preheader9.us51.i.preheader ], [ %i.air, %..preheader7_crit_edge.us61.i ]
  %.08823.us53.i = phi ptr [ %i.bb, %.preheader9.us51.i.preheader ], [ %.lcssa, %..preheader7_crit_edge.us61.i ] ; 7 uses
  %.08922.us54.i = phi ptr [ %i.uw, %.preheader9.us51.i.preheader ], [ %i.aiq, %..preheader7_crit_edge.us61.i ] ; 7 uses
  br i1 %min.iters.check1284.a, label %vec.epilog.scalar.ph1305.preheader, label %vector.memcheck1279

vector.memcheck1279:                              ; preds = %iter.check1304
  %i.ags = mul i64 %i.age, %indvar1281
  %i.agt = add i64 %.neg1321, %i.ags
  %.08823.us53.i1280 = ptrtoaddr ptr %.08823.us53.i to i64
  %i.agu = add i64 %i.agt, %.08823.us53.i1280
  %i.agv = add i64 %i.agu, -1
  %diff.check1283 = icmp ult i64 %i.agv, 127
  br i1 %diff.check1283, label %vec.epilog.scalar.ph1305.preheader, label %vector.main.loop.iter.check1285

vector.main.loop.iter.check1285:                  ; preds = %vector.memcheck1279
  br i1 %min.iters.check1286, label %vec.epilog.ph1308, label %vector.ph1287

vector.ph1287:                                    ; preds = %vector.main.loop.iter.check1285
  %i.agw = getelementptr i8, ptr %.08922.us54.i, i64 %i.agi
  %i.agx = getelementptr i8, ptr %.08823.us53.i, i64 %i.agi ; 2 uses
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1287
  %index1290 = phi i64 [ 0, %vector.ph1287 ], [ %index.next1297, %vector.body1289 ] ; 2 uses
  %i.agy = shl i64 %index1290, 3                  ; 2 uses
  %next.gep1291 = getelementptr i8, ptr %.08922.us54.i, i64 %i.agy ; 4 uses
  %next.gep1292 = getelementptr i8, ptr %.08823.us53.i, i64 %i.agy ; 4 uses
  %i.agz = getelementptr i8, ptr %next.gep1291, i64 32
  %i.aha = getelementptr i8, ptr %next.gep1291, i64 64
  %i.ahb = getelementptr i8, ptr %next.gep1291, i64 96
  %wide.load1293.a = load <4 x i64>, ptr %next.gep1291, align 8, !tbaa !73
  %wide.load1294.a = load <4 x i64>, ptr %i.agz, align 8, !tbaa !73
  %wide.load1295 = load <4 x i64>, ptr %i.aha, align 8, !tbaa !73
  %wide.load1296 = load <4 x i64>, ptr %i.ahb, align 8, !tbaa !73
  %i.ahc = getelementptr i8, ptr %next.gep1292, i64 32
  %i.ahd = getelementptr i8, ptr %next.gep1292, i64 64
  %i.ahe = getelementptr i8, ptr %next.gep1292, i64 96
  store <4 x i64> %wide.load1293.a, ptr %next.gep1292, align 8, !tbaa !73
  store <4 x i64> %wide.load1294.a, ptr %i.ahc, align 8, !tbaa !73
  store <4 x i64> %wide.load1295, ptr %i.ahd, align 8, !tbaa !73
  store <4 x i64> %wide.load1296, ptr %i.ahe, align 8, !tbaa !73
  %index.next1297 = add nuw i64 %index1290, 16    ; 2 uses
  %i.ahf = icmp eq i64 %index.next1297, %n.vec1288
  br i1 %i.ahf, label %middle.block1298, label %vector.body1289, !llvm.loop !729

middle.block1298:                                 ; preds = %vector.body1289
  br i1 %cmp.n1299, label %..preheader7_crit_edge.us61.i, label %vec.epilog.iter.check1306

vec.epilog.iter.check1306:                        ; preds = %middle.block1298
  br i1 %min.epilog.iters.check1307, label %vec.epilog.scalar.ph1305.preheader, label %vec.epilog.ph1308, !prof !78

vec.epilog.ph1308:                                ; preds = %vector.main.loop.iter.check1285, %vec.epilog.iter.check1306
  %vec.epilog.resume.val1300 = phi i64 [ %n.vec1288, %vec.epilog.iter.check1306 ], [ 0, %vector.main.loop.iter.check1285 ]
  %i.ahg = getelementptr i8, ptr %.08922.us54.i, i64 %i.agk
  %i.ahh = getelementptr i8, ptr %.08823.us53.i, i64 %i.agk ; 2 uses
  br label %vec.epilog.vector.body1310

vec.epilog.vector.body1310:                       ; preds = %vec.epilog.vector.body1310, %vec.epilog.ph1308
  %index1311 = phi i64 [ %vec.epilog.resume.val1300, %vec.epilog.ph1308 ], [ %index.next1315, %vec.epilog.vector.body1310 ] ; 2 uses
  %i.ahi = shl i64 %index1311, 3                  ; 2 uses
  %next.gep1312 = getelementptr i8, ptr %.08922.us54.i, i64 %i.ahi
  %next.gep1313 = getelementptr i8, ptr %.08823.us53.i, i64 %i.ahi
  %wide.load1314 = load <4 x i64>, ptr %next.gep1312, align 8, !tbaa !73
  store <4 x i64> %wide.load1314, ptr %next.gep1313, align 8, !tbaa !73
  %index.next1315 = add nuw i64 %index1311, 4     ; 2 uses
  %i.ahj = icmp eq i64 %index.next1315, %n.vec1309
  br i1 %i.ahj, label %vec.epilog.middle.block1316, label %vec.epilog.vector.body1310, !llvm.loop !730

vec.epilog.middle.block1316:                      ; preds = %vec.epilog.vector.body1310
  br i1 %cmp.n1317, label %..preheader7_crit_edge.us61.i, label %vec.epilog.scalar.ph1305.preheader

vec.epilog.scalar.ph1305.preheader:               ; preds = %vector.memcheck1279, %iter.check1304, %vec.epilog.iter.check1306, %vec.epilog.middle.block1316
  %.08414.us55.i.ph = phi i32 [ 0, %iter.check1304 ], [ 0, %vector.memcheck1279 ], [ %i.agh, %vec.epilog.iter.check1306 ], [ %i.agj, %vec.epilog.middle.block1316 ] ; 4 uses
  %.08613.us56.i.ph = phi ptr [ %.08922.us54.i, %iter.check1304 ], [ %.08922.us54.i, %vector.memcheck1279 ], [ %i.agw, %vec.epilog.iter.check1306 ], [ %i.ahg, %vec.epilog.middle.block1316 ] ; 2 uses
  %.212.us57.i.ph = phi ptr [ %.08823.us53.i, %iter.check1304 ], [ %.08823.us53.i, %vector.memcheck1279 ], [ %i.agx, %vec.epilog.iter.check1306 ], [ %i.ahh, %vec.epilog.middle.block1316 ] ; 2 uses
  %i.ahk = sub i32 %i.cs, %.08414.us55.i.ph
  %xtraiter = and i32 %i.ahk, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1305.prol.loopexit, label %vec.epilog.scalar.ph1305.prol

vec.epilog.scalar.ph1305.prol:                    ; preds = %vec.epilog.scalar.ph1305.preheader, %vec.epilog.scalar.ph1305.prol
  %.08414.us55.i.prol = phi i32 [ %i.aho, %vec.epilog.scalar.ph1305.prol ], [ %.08414.us55.i.ph, %vec.epilog.scalar.ph1305.preheader ]
  %.08613.us56.i.prol = phi ptr [ %i.ahl, %vec.epilog.scalar.ph1305.prol ], [ %.08613.us56.i.ph, %vec.epilog.scalar.ph1305.preheader ] ; 2 uses
  %.212.us57.i.prol = phi ptr [ %i.ahn, %vec.epilog.scalar.ph1305.prol ], [ %.212.us57.i.ph, %vec.epilog.scalar.ph1305.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph1305.prol ], [ 0, %vec.epilog.scalar.ph1305.preheader ]
  %i.ahl = getelementptr inbounds nuw i8, ptr %.08613.us56.i.prol, i64 8 ; 2 uses
  %i.ahm = load i64, ptr %.08613.us56.i.prol, align 8, !tbaa !73
  %i.ahn = getelementptr inbounds nuw i8, ptr %.212.us57.i.prol, i64 8 ; 3 uses
  store i64 %i.ahm, ptr %.212.us57.i.prol, align 8, !tbaa !73
  %i.aho = add nuw nsw i32 %.08414.us55.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1305.prol.loopexit, label %vec.epilog.scalar.ph1305.prol, !llvm.loop !731

vec.epilog.scalar.ph1305.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1305.prol, %vec.epilog.scalar.ph1305.preheader
  %.lcssa1341.unr = phi ptr [ poison, %vec.epilog.scalar.ph1305.preheader ], [ %i.ahn, %vec.epilog.scalar.ph1305.prol ]
  %.08414.us55.i.unr = phi i32 [ %.08414.us55.i.ph, %vec.epilog.scalar.ph1305.preheader ], [ %i.aho, %vec.epilog.scalar.ph1305.prol ]
  %.08613.us56.i.unr = phi ptr [ %.08613.us56.i.ph, %vec.epilog.scalar.ph1305.preheader ], [ %i.ahl, %vec.epilog.scalar.ph1305.prol ]
  %.212.us57.i.unr = phi ptr [ %.212.us57.i.ph, %vec.epilog.scalar.ph1305.preheader ], [ %i.ahn, %vec.epilog.scalar.ph1305.prol ]
  %i.ahp = sub i32 %.08414.us55.i.ph, %i.cs
  %i.ahq = icmp ugt i32 %i.ahp, -8
  br i1 %i.ahq, label %..preheader7_crit_edge.us61.i, label %vec.epilog.scalar.ph1305

vec.epilog.scalar.ph1305:                         ; preds = %vec.epilog.scalar.ph1305.prol.loopexit, %vec.epilog.scalar.ph1305
  %.08414.us55.i = phi i32 [ %i.aip, %vec.epilog.scalar.ph1305 ], [ %.08414.us55.i.unr, %vec.epilog.scalar.ph1305.prol.loopexit ]
  %.08613.us56.i = phi ptr [ %i.aim, %vec.epilog.scalar.ph1305 ], [ %.08613.us56.i.unr, %vec.epilog.scalar.ph1305.prol.loopexit ] ; 9 uses
  %.212.us57.i = phi ptr [ %i.aio, %vec.epilog.scalar.ph1305 ], [ %.212.us57.i.unr, %vec.epilog.scalar.ph1305.prol.loopexit ] ; 9 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 8
  %i.ahs = load i64, ptr %.08613.us56.i, align 8, !tbaa !73
  %i.aht = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 8
  store i64 %i.ahs, ptr %.212.us57.i, align 8, !tbaa !73
  %i.ahu = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 16
  %i.ahv = load i64, ptr %i.ahr, align 8, !tbaa !73
  %i.ahw = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 16
  store i64 %i.ahv, ptr %i.aht, align 8, !tbaa !73
  %i.ahx = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 24
  %i.ahy = load i64, ptr %i.ahu, align 8, !tbaa !73
  %i.ahz = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 24
  store i64 %i.ahy, ptr %i.ahw, align 8, !tbaa !73
  %i.aia = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 32
  %i.aib = load i64, ptr %i.ahx, align 8, !tbaa !73
  %i.aic = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 32
  store i64 %i.aib, ptr %i.ahz, align 8, !tbaa !73
  %i.aid = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 40
  %i.aie = load i64, ptr %i.aia, align 8, !tbaa !73
  %i.aif = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 40
  store i64 %i.aie, ptr %i.aic, align 8, !tbaa !73
  %i.aig = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 48
  %i.aih = load i64, ptr %i.aid, align 8, !tbaa !73
  %i.aii = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 48
  store i64 %i.aih, ptr %i.aif, align 8, !tbaa !73
  %i.aij = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 56
  %i.aik = load i64, ptr %i.aig, align 8, !tbaa !73
  %i.ail = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 56
  store i64 %i.aik, ptr %i.aii, align 8, !tbaa !73
  %i.aim = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 64
  %i.ain = load i64, ptr %i.aij, align 8, !tbaa !73
  %i.aio = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 64 ; 2 uses
  store i64 %i.ain, ptr %i.ail, align 8, !tbaa !73
  %i.aip = add nuw nsw i32 %.08414.us55.i, 8      ; 2 uses
  %exitcond.not.i68.7 = icmp eq i32 %i.aip, %i.cs
  br i1 %exitcond.not.i68.7, label %..preheader7_crit_edge.us61.i, label %vec.epilog.scalar.ph1305, !llvm.loop !732

..preheader7_crit_edge.us61.i:                    ; preds = %vec.epilog.scalar.ph1305.prol.loopexit, %vec.epilog.scalar.ph1305, %vec.epilog.middle.block1316, %middle.block1298
  %.lcssa = phi ptr [ %i.ahh, %vec.epilog.middle.block1316 ], [ %i.agx, %middle.block1298 ], [ %.lcssa1341.unr, %vec.epilog.scalar.ph1305.prol.loopexit ], [ %i.aio, %vec.epilog.scalar.ph1305 ] ; 2 uses
  %i.aiq = getelementptr inbounds [8 x i8], ptr %.08922.us54.i, i64 %i.vb ; 2 uses
  %i.air = add nuw nsw i32 %.08724.us52.i, 1      ; 2 uses
  %exitcond130.not.i69 = icmp eq i32 %i.air, %i.uq
  %indvar.next1282 = add i64 %indvar1281, 1
  br i1 %exitcond130.not.i69, label %.preheader6.i47, label %iter.check1304, !llvm.loop !713

.preheader6.i47:                                  ; preds = %..preheader7_crit_edge.us61.i, %..preheader8_crit_edge.us42.i, %..preheader7_crit_edge.us45.us.i, %._crit_edge.us.i75, %.preheader9.preheader.i, %bb.h
  %.089.lcssa.i = phi ptr [ %i.uw, %bb.h ], [ %i.agb, %..preheader8_crit_edge.us42.i ], [ %i.aaz, %._crit_edge.us.i75 ], [ %scevgep.i, %.preheader9.preheader.i ], [ %i.aen, %..preheader7_crit_edge.us45.us.i ], [ %i.aiq, %..preheader7_crit_edge.us61.i ] ; 2 uses
  %.088.lcssa.i = phi ptr [ %i.bb, %bb.h ], [ %.lcssa262, %..preheader8_crit_edge.us42.i ], [ %.lcssa270, %._crit_edge.us.i75 ], [ %i.bb, %.preheader9.preheader.i ], [ %.lcssa265, %..preheader7_crit_edge.us45.us.i ], [ %.lcssa, %..preheader7_crit_edge.us61.i ] ; 2 uses
  %i.ais = icmp sgt i32 %i.ct, 0
  br i1 %i.ais, label %.preheader5.lr.ph.i56, label %._crit_edge84.i

.preheader5.lr.ph.i56:                            ; preds = %.preheader6.i47
  %i.ait = icmp sgt i32 %i.us, 0
  %i.aiu = icmp sgt i32 %i.cs, 0
  %i.aiv = icmp sgt i32 %i.ut, 0
  %wide.trip.count156.i = zext i32 %i.us to i64   ; 16 uses
  %wide.trip.count162.i = zext i32 %i.ut to i64   ; 10 uses
  %i.aiw = shl nuw nsw i64 %wide.trip.count162.i, 3
  %i.aix = mul nsw i64 %wide.trip.count162.i, -8
  %i.aiy = zext i32 %i.cs to i64                  ; 5 uses
  %i.aiz = shl nuw nsw i64 %wide.trip.count156.i, 3 ; 2 uses
  %min.iters.check976 = icmp ult i32 %i.us, 4
  %min.iters.check978 = icmp ult i32 %i.us, 16
  %i.aja = and i64 %wide.trip.count156.i, 12
  %n.vec980 = and i64 %wide.trip.count156.i, 2147483632 ; 5 uses
  %i.ajb = shl nuw nsw i64 %n.vec980, 3
  %cmp.n994 = icmp eq i64 %n.vec980, %wide.trip.count156.i
  %min.epilog.iters.check1000 = icmp eq i64 %i.aja, 0
  %n.vec1002 = and i64 %wide.trip.count156.i, 2147483644 ; 4 uses
  %i.ajc = shl nuw nsw i64 %n.vec1002, 3
  %cmp.n1010 = icmp eq i64 %n.vec1002, %wide.trip.count156.i
  %xtraiter1397 = and i64 %wide.trip.count156.i, 3 ; 2 uses
  %lcmp.mod1398.not = icmp eq i64 %xtraiter1397, 0
  %min.iters.check931 = icmp ult i32 %i.cs, 4
  %min.iters.check933 = icmp ult i32 %i.cs, 16
  %i.ajd = and i64 %i.aiy, 12
  %n.vec935 = and i64 %i.aiy, 2147483632          ; 5 uses
  %i.aje = trunc nuw nsw i64 %n.vec935 to i32
  %i.ajf = shl nuw nsw i64 %n.vec935, 3           ; 2 uses
  %cmp.n946 = icmp eq i64 %n.vec935, %i.aiy
  %min.epilog.iters.check954 = icmp eq i64 %i.ajd, 0
  %n.vec956 = and i64 %i.aiy, 2147483644          ; 4 uses
  %i.ajg = trunc nuw nsw i64 %n.vec956 to i32
  %i.ajh = shl nuw nsw i64 %n.vec956, 3           ; 2 uses
  %cmp.n964 = icmp eq i64 %n.vec956, %i.aiy
  %min.iters.check890 = icmp ult i32 %i.ut, 4
  %min.iters.check892 = icmp ult i32 %i.ut, 16
  %i.aji = and i64 %wide.trip.count162.i, 12
  %n.vec894 = and i64 %wide.trip.count162.i, 2147483632 ; 5 uses
  %i.ajj = shl nuw nsw i64 %n.vec894, 3
  %cmp.n908 = icmp eq i64 %n.vec894, %wide.trip.count162.i
  %min.epilog.iters.check914 = icmp eq i64 %i.aji, 0
  %n.vec916 = and i64 %wide.trip.count162.i, 2147483644 ; 4 uses
  %i.ajk = shl nuw nsw i64 %n.vec916, 3
  %cmp.n924 = icmp eq i64 %n.vec916, %wide.trip.count162.i
  %xtraiter1403 = and i64 %wide.trip.count162.i, 3 ; 2 uses
  %lcmp.mod1404.not = icmp eq i64 %xtraiter1403, 0
  br label %.preheader5.i57

.preheader5.i57:                                  ; preds = %._crit_edge.i62, %.preheader5.lr.ph.i56
  %.08283.i = phi i32 [ 0, %.preheader5.lr.ph.i56 ], [ %i.aow, %._crit_edge.i62 ]
  %.482.i = phi ptr [ %.088.lcssa.i, %.preheader5.lr.ph.i56 ], [ %.7.lcssa.i63, %._crit_edge.i62 ] ; 9 uses
  %.19081.i = phi ptr [ %.089.lcssa.i, %.preheader5.lr.ph.i56 ], [ %.291.lcssa.i, %._crit_edge.i62 ] ; 15 uses
  %.19081.i929 = ptrtoaddr ptr %.19081.i to i64
  br i1 %i.ait, label %iter.check997, label %.preheader4.i58

iter.check997:                                    ; preds = %.preheader5.i57
  br i1 %min.iters.check976, label %.lr.ph.i64.preheader, label %vector.memcheck968

vector.memcheck968:                               ; preds = %iter.check997
  %scevgep969 = getelementptr i8, ptr %.482.i, i64 %i.aiz
  %scevgep970 = getelementptr i8, ptr %.19081.i, i64 8 ; 2 uses
  %scevgep972 = getelementptr i8, ptr %scevgep970, i64 %i.aiz
  %bound0973 = icmp ult ptr %.482.i, %scevgep972
  %bound1974 = icmp ult ptr %scevgep970, %scevgep969
  %found.conflict975 = and i1 %bound0973, %bound1974
  br i1 %found.conflict975, label %.lr.ph.i64.preheader, label %vector.main.loop.iter.check977

vector.main.loop.iter.check977:                   ; preds = %vector.memcheck968
  br i1 %min.iters.check978, label %vec.epilog.ph1001, label %vector.ph979

vector.ph979:                                     ; preds = %vector.main.loop.iter.check977
  %i.ajl = getelementptr i8, ptr %.482.i, i64 %i.ajb ; 2 uses
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %vector.ph979
  %index982 = phi i64 [ 0, %vector.ph979 ], [ %index.next992, %vector.body981 ] ; 3 uses
  %i.ajm = shl i64 %index982, 3
  %next.gep983 = getelementptr i8, ptr %.482.i, i64 %i.ajm ; 4 uses
  %i.ajn = sub nsw i64 %wide.trip.count156.i, %index982
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.ajn ; 4 uses
  %i.ajp = getelementptr inbounds i8, ptr %i.ajo, i64 -24
  %i.ajq = getelementptr inbounds i8, ptr %i.ajo, i64 -56
  %i.ajr = getelementptr inbounds i8, ptr %i.ajo, i64 -88
  %i.ajs = getelementptr inbounds i8, ptr %i.ajo, i64 -120
  %wide.load984.a = load <4 x i64>, ptr %i.ajp, align 8, !tbaa !73, !alias.scope !733
  %wide.load985.a = load <4 x i64>, ptr %i.ajq, align 8, !tbaa !73, !alias.scope !733
  %wide.load986.a = load <4 x i64>, ptr %i.ajr, align 8, !tbaa !73, !alias.scope !733
  %wide.load987 = load <4 x i64>, ptr %i.ajs, align 8, !tbaa !73, !alias.scope !733
  %reverse988.a = shufflevector <4 x i64> %wide.load984.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse989.a = shufflevector <4 x i64> %wide.load985.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse990.a = shufflevector <4 x i64> %wide.load986.a, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse991 = shufflevector <4 x i64> %wide.load987, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ajt = getelementptr i8, ptr %next.gep983, i64 32
  %i.aju = getelementptr i8, ptr %next.gep983, i64 64
  %i.ajv = getelementptr i8, ptr %next.gep983, i64 96
  store <4 x i64> %reverse988.a, ptr %next.gep983, align 8, !tbaa !73, !alias.scope !736, !noalias !733
  store <4 x i64> %reverse989.a, ptr %i.ajt, align 8, !tbaa !73, !alias.scope !736, !noalias !733
  store <4 x i64> %reverse990.a, ptr %i.aju, align 8, !tbaa !73, !alias.scope !736, !noalias !733
  store <4 x i64> %reverse991, ptr %i.ajv, align 8, !tbaa !73, !alias.scope !736, !noalias !733
  %index.next992 = add nuw i64 %index982, 16      ; 2 uses
  %i.ajw = icmp eq i64 %index.next992, %n.vec980
  br i1 %i.ajw, label %middle.block993, label %vector.body981, !llvm.loop !738

middle.block993:                                  ; preds = %vector.body981
  br i1 %cmp.n994, label %.preheader4.i58, label %vec.epilog.iter.check999

vec.epilog.iter.check999:                         ; preds = %middle.block993
  br i1 %min.epilog.iters.check1000, label %.lr.ph.i64.preheader, label %vec.epilog.ph1001, !prof !78

vec.epilog.ph1001:                                ; preds = %vector.main.loop.iter.check977, %vec.epilog.iter.check999
  %vec.epilog.resume.val995 = phi i64 [ %n.vec980, %vec.epilog.iter.check999 ], [ 0, %vector.main.loop.iter.check977 ]
  %i.ajx = getelementptr i8, ptr %.482.i, i64 %i.ajc ; 2 uses
  br label %vec.epilog.vector.body1003

vec.epilog.vector.body1003:                       ; preds = %vec.epilog.vector.body1003, %vec.epilog.ph1001
  %index1004 = phi i64 [ %vec.epilog.resume.val995, %vec.epilog.ph1001 ], [ %index.next1008, %vec.epilog.vector.body1003 ] ; 3 uses
  %i.ajy = shl i64 %index1004, 3
  %next.gep1005 = getelementptr i8, ptr %.482.i, i64 %i.ajy
  %i.ajz = sub nsw i64 %wide.trip.count156.i, %index1004
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.ajz
  %i.akb = getelementptr inbounds i8, ptr %i.aka, i64 -24
  %wide.load1006 = load <4 x i64>, ptr %i.akb, align 8, !tbaa !73, !alias.scope !733
  %reverse1007 = shufflevector <4 x i64> %wide.load1006, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i64> %reverse1007, ptr %next.gep1005, align 8, !tbaa !73, !alias.scope !736, !noalias !733
  %index.next1008 = add nuw i64 %index1004, 4     ; 2 uses
  %i.akc = icmp eq i64 %index.next1008, %n.vec1002
  br i1 %i.akc, label %vec.epilog.middle.block1009, label %vec.epilog.vector.body1003, !llvm.loop !739

vec.epilog.middle.block1009:                      ; preds = %vec.epilog.vector.body1003
  br i1 %cmp.n1010, label %.preheader4.i58, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %vector.memcheck968, %iter.check997, %vec.epilog.iter.check999, %vec.epilog.middle.block1009
  %indvars.iv153.i.ph = phi i64 [ 0, %iter.check997 ], [ 0, %vector.memcheck968 ], [ %n.vec980, %vec.epilog.iter.check999 ], [ %n.vec1002, %vec.epilog.middle.block1009 ] ; 3 uses
  %.569.i.ph = phi ptr [ %.482.i, %iter.check997 ], [ %.482.i, %vector.memcheck968 ], [ %i.ajl, %vec.epilog.iter.check999 ], [ %i.ajx, %vec.epilog.middle.block1009 ] ; 2 uses
  br i1 %lcmp.mod1398.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64.prol
  %indvars.iv153.i.prol = phi i64 [ %indvars.iv.next154.i.prol, %.lr.ph.i64.prol ], [ %indvars.iv153.i.ph, %.lr.ph.i64.preheader ] ; 2 uses
  %.569.i.prol = phi ptr [ %i.akg, %.lr.ph.i64.prol ], [ %.569.i.ph, %.lr.ph.i64.preheader ] ; 2 uses
  %prol.iter1399 = phi i64 [ %prol.iter1399.next, %.lr.ph.i64.prol ], [ 0, %.lr.ph.i64.preheader ]
  %i.akd = sub nsw i64 %wide.trip.count156.i, %indvars.iv153.i.prol
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.akd
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !73
  %i.akg = getelementptr inbounds nuw i8, ptr %.569.i.prol, i64 8 ; 3 uses
  store i64 %i.akf, ptr %.569.i.prol, align 8, !tbaa !73
  %indvars.iv.next154.i.prol = add nuw nsw i64 %indvars.iv153.i.prol, 1 ; 2 uses
  %prol.iter1399.next = add i64 %prol.iter1399, 1 ; 2 uses
  %prol.iter1399.cmp.not = icmp eq i64 %prol.iter1399.next, %xtraiter1397
  br i1 %prol.iter1399.cmp.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol, !llvm.loop !740

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %.lcssa1353.unr.a = phi ptr [ poison, %.lr.ph.i64.preheader ], [ %i.akg, %.lr.ph.i64.prol ]
  %indvars.iv153.i.unr = phi i64 [ %indvars.iv153.i.ph, %.lr.ph.i64.preheader ], [ %indvars.iv.next154.i.prol, %.lr.ph.i64.prol ]
  %.569.i.unr = phi ptr [ %.569.i.ph, %.lr.ph.i64.preheader ], [ %i.akg, %.lr.ph.i64.prol ]
  %i.akh = sub nsw i64 %indvars.iv153.i.ph, %wide.trip.count156.i
  %i.aki = icmp ugt i64 %i.akh, -4
  br i1 %i.aki, label %.preheader4.i58, label %.lr.ph.i64.preheader.new

.lr.ph.i64.preheader.new:                         ; preds = %.lr.ph.i64.prol.loopexit
  %invariant.gep1510.a = getelementptr [8 x i8], ptr %.19081.i, i64 %wide.trip.count156.i
  br label %.lr.ph.i64

._crit_edge84.i:                                  ; preds = %._crit_edge.i62, %.preheader6.i47
  %.190.lcssa.i = phi ptr [ %.089.lcssa.i, %.preheader6.i47 ], [ %.291.lcssa.i, %._crit_edge.i62 ] ; 3 uses
  %.4.lcssa.i48 = phi ptr [ %.088.lcssa.i, %.preheader6.i47 ], [ %.7.lcssa.i63, %._crit_edge.i62 ]
  %i.akj = icmp sgt i32 %i.ur, 0
  br i1 %i.akj, label %.preheader2.lr.ph.i49, label %_ZN4ncnn3MatD2Ev.exit34

.preheader2.lr.ph.i49:                            ; preds = %._crit_edge84.i
  %.190.lcssa.i799 = ptrtoaddr ptr %.190.lcssa.i to i64
  %i.akk = shl i32 %i.cs, 1
  %i.akl = sext i32 %i.akk to i64                 ; 4 uses
  %i.akm = sub nsw i64 0, %i.akl
  %i.akn = getelementptr inbounds [8 x i8], ptr %.190.lcssa.i, i64 %i.akm
  %i.ako = icmp sgt i32 %i.us, 0
  %i.akp = icmp sgt i32 %i.cs, 0
  %i.akq = icmp sgt i32 %i.ut, 0
  %i.akr = sub nsw i64 0, %i.df
  %wide.trip.count168.i = zext i32 %i.us to i64   ; 16 uses
  %wide.trip.count174.i = zext i32 %i.ut to i64   ; 10 uses
  %i.aks = shl nuw nsw i64 %wide.trip.count174.i, 3
  %i.akt = mul nsw i64 %wide.trip.count174.i, -8
  %i.aku = shl nsw i64 %i.akl, 3
  %i.akv = sub i64 %i.aku, %.190.lcssa.i799
  %i.akw = shl nsw i64 %i.df, 3                   ; 2 uses
  %i.akx = zext i32 %i.cs to i64                  ; 5 uses
  %i.aky = shl nuw nsw i64 %wide.trip.count168.i, 3 ; 2 uses
  %scevgep840 = getelementptr i8, ptr %.190.lcssa.i, i64 8 ; 2 uses
  %11 = mul nsw i64 %i.akl, -8
  %scevgep841 = getelementptr i8, ptr %scevgep840, i64 %11
  %i.akz = add nsw i32 %i.ur, -1
  %i.ala = zext i32 %i.akz to i64
  %i.alb = mul i64 %i.akw, %i.ala
  %12 = shl nsw i64 %i.akl, 3
  %i.alc = add i64 %i.alb, %12
  %i.ald = sub i64 %i.aky, %i.alc
  %scevgep842 = getelementptr i8, ptr %scevgep840, i64 %i.ald
  %min.iters.check846 = icmp ult i32 %i.us, 4
  %stride.check = icmp sgt i32 %i.cs, 0
  %min.iters.check848 = icmp ult i32 %i.us, 16
  %i.ale = and i64 %wide.trip.count168.i, 12
  %n.vec850 = and i64 %wide.trip.count168.i, 2147483632 ; 5 uses
  %i.alf = shl nuw nsw i64 %n.vec850, 3
  %cmp.n864 = icmp eq i64 %n.vec850, %wide.trip.count168.i
  %min.epilog.iters.check870 = icmp eq i64 %i.ale, 0
  %n.vec872 = and i64 %wide.trip.count168.i, 2147483644 ; 4 uses
  %i.alg = shl nuw nsw i64 %n.vec872, 3
  %cmp.n880 = icmp eq i64 %n.vec872, %wide.trip.count168.i
  %xtraiter1406 = and i64 %wide.trip.count168.i, 3 ; 2 uses
  %lcmp.mod1407.not = icmp eq i64 %xtraiter1406, 0
  %min.iters.check801 = icmp ult i32 %i.cs, 4
  %min.iters.check803 = icmp ult i32 %i.cs, 16
  %i.alh = and i64 %i.akx, 12
  %n.vec805 = and i64 %i.akx, 2147483632          ; 5 uses
  %i.ali = trunc nuw nsw i64 %n.vec805 to i32
  %i.alj = shl nuw nsw i64 %n.vec805, 3           ; 2 uses
  %cmp.n816 = icmp eq i64 %n.vec805, %i.akx
  %min.epilog.iters.check824 = icmp eq i64 %i.alh, 0
  %n.vec826 = and i64 %i.akx, 2147483644          ; 4 uses
  %i.alk = trunc nuw nsw i64 %n.vec826 to i32
  %i.all = shl nuw nsw i64 %n.vec826, 3           ; 2 uses
  %cmp.n834 = icmp eq i64 %n.vec826, %i.akx
  %min.iters.check761 = icmp ult i32 %i.ut, 4
  %min.iters.check763 = icmp ult i32 %i.ut, 16
  %i.alm = and i64 %wide.trip.count174.i, 12
  %n.vec765 = and i64 %wide.trip.count174.i, 2147483632 ; 5 uses
  %i.aln = shl nuw nsw i64 %n.vec765, 3
  %cmp.n778 = icmp eq i64 %n.vec765, %wide.trip.count174.i
  %min.epilog.iters.check784 = icmp eq i64 %i.alm, 0
  %n.vec786 = and i64 %wide.trip.count174.i, 2147483644 ; 4 uses
  %i.alo = shl nuw nsw i64 %n.vec786, 3
  %cmp.n794 = icmp eq i64 %n.vec786, %wide.trip.count174.i
  %xtraiter1412 = and i64 %wide.trip.count174.i, 3 ; 2 uses
  %lcmp.mod1413.not = icmp eq i64 %xtraiter1412, 0
  br label %.preheader2.i50

.preheader4.i58:                                  ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %middle.block993, %vec.epilog.middle.block1009, %.preheader5.i57
  %.5.lcssa.i59 = phi ptr [ %.482.i, %.preheader5.i57 ], [ %i.ajx, %vec.epilog.middle.block1009 ], [ %i.ajl, %middle.block993 ], [ %.lcssa1353.unr.a, %.lr.ph.i64.prol.loopexit ], [ %i.amy, %.lr.ph.i64 ] ; 7 uses
  br i1 %i.aiu, label %iter.check951, label %.preheader3.i60

iter.check951:                                    ; preds = %.preheader4.i58
  %.5.lcssa.i59928 = ptrtoaddr ptr %.5.lcssa.i59 to i64
  %i.alp = sub i64 %.19081.i929, %.5.lcssa.i59928
  %diff.check930 = icmp ugt i64 %i.alp, -128
  %or.cond1331 = select i1 %min.iters.check931, i1 true, i1 %diff.check930
  br i1 %or.cond1331, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check932

vector.main.loop.iter.check932:                   ; preds = %iter.check951
  br i1 %min.iters.check933, label %vec.epilog.ph955, label %vector.ph934

vector.ph934:                                     ; preds = %vector.main.loop.iter.check932
  %i.alq = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.ajf ; 2 uses
  %i.alr = getelementptr i8, ptr %.19081.i, i64 %i.ajf ; 2 uses
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph934
  %index937 = phi i64 [ 0, %vector.ph934 ], [ %index.next944, %vector.body936 ] ; 2 uses
  %i.als = shl i64 %index937, 3                   ; 2 uses
  %next.gep938 = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.als ; 4 uses
  %next.gep939 = getelementptr i8, ptr %.19081.i, i64 %i.als ; 4 uses
  %i.alt = getelementptr i8, ptr %next.gep939, i64 32
  %i.alu = getelementptr i8, ptr %next.gep939, i64 64
  %i.alv = getelementptr i8, ptr %next.gep939, i64 96
  %wide.load940 = load <4 x i64>, ptr %next.gep939, align 8, !tbaa !73
  %wide.load941 = load <4 x i64>, ptr %i.alt, align 8, !tbaa !73
  %wide.load942 = load <4 x i64>, ptr %i.alu, align 8, !tbaa !73
  %wide.load943 = load <4 x i64>, ptr %i.alv, align 8, !tbaa !73
  %i.alw = getelementptr i8, ptr %next.gep938, i64 32
  %i.alx = getelementptr i8, ptr %next.gep938, i64 64
  %i.aly = getelementptr i8, ptr %next.gep938, i64 96
  store <4 x i64> %wide.load940, ptr %next.gep938, align 8, !tbaa !73
  store <4 x i64> %wide.load941, ptr %i.alw, align 8, !tbaa !73
  store <4 x i64> %wide.load942, ptr %i.alx, align 8, !tbaa !73
  store <4 x i64> %wide.load943, ptr %i.aly, align 8, !tbaa !73
  %index.next944 = add nuw i64 %index937, 16      ; 2 uses
  %i.alz = icmp eq i64 %index.next944, %n.vec935
  br i1 %i.alz, label %middle.block945, label %vector.body936, !llvm.loop !741

middle.block945:                                  ; preds = %vector.body936
  br i1 %cmp.n946, label %.preheader3.i60, label %vec.epilog.iter.check953

vec.epilog.iter.check953:                         ; preds = %middle.block945
  br i1 %min.epilog.iters.check954, label %.lr.ph74.i.preheader, label %vec.epilog.ph955, !prof !78

vec.epilog.ph955:                                 ; preds = %vector.main.loop.iter.check932, %vec.epilog.iter.check953
  %vec.epilog.resume.val947 = phi i64 [ %n.vec935, %vec.epilog.iter.check953 ], [ 0, %vector.main.loop.iter.check932 ]
  %i.ama = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.ajh ; 2 uses
  %i.amb = getelementptr i8, ptr %.19081.i, i64 %i.ajh ; 2 uses
  br label %vec.epilog.vector.body957

vec.epilog.vector.body957:                        ; preds = %vec.epilog.vector.body957, %vec.epilog.ph955
  %index958 = phi i64 [ %vec.epilog.resume.val947, %vec.epilog.ph955 ], [ %index.next962, %vec.epilog.vector.body957 ] ; 2 uses
  %i.amc = shl i64 %index958, 3                   ; 2 uses
  %next.gep959 = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.amc
  %next.gep960 = getelementptr i8, ptr %.19081.i, i64 %i.amc
  %wide.load961 = load <4 x i64>, ptr %next.gep960, align 8, !tbaa !73
  store <4 x i64> %wide.load961, ptr %next.gep959, align 8, !tbaa !73
  %index.next962 = add nuw i64 %index958, 4       ; 2 uses
  %i.amd = icmp eq i64 %index.next962, %n.vec956
  br i1 %i.amd, label %vec.epilog.middle.block963, label %vec.epilog.vector.body957, !llvm.loop !742

vec.epilog.middle.block963:                       ; preds = %vec.epilog.vector.body957
  br i1 %cmp.n964, label %.preheader3.i60, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check951, %vec.epilog.iter.check953, %vec.epilog.middle.block963
  %.08073.i.ph = phi i32 [ 0, %iter.check951 ], [ %i.aje, %vec.epilog.iter.check953 ], [ %i.ajg, %vec.epilog.middle.block963 ] ; 4 uses
  %.672.i.ph = phi ptr [ %.5.lcssa.i59, %iter.check951 ], [ %i.alq, %vec.epilog.iter.check953 ], [ %i.ama, %vec.epilog.middle.block963 ] ; 2 uses
  %.29171.i.ph = phi ptr [ %.19081.i, %iter.check951 ], [ %i.alr, %vec.epilog.iter.check953 ], [ %i.amb, %vec.epilog.middle.block963 ] ; 2 uses
  %i.ame = sub i32 %i.cs, %.08073.i.ph
  %xtraiter1400 = and i32 %i.ame, 7               ; 2 uses
  %lcmp.mod1401.not = icmp eq i32 %xtraiter1400, 0
  br i1 %lcmp.mod1401.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i.prol
  %.08073.i.prol = phi i32 [ %i.ami, %.lr.ph74.i.prol ], [ %.08073.i.ph, %.lr.ph74.i.preheader ]
  %.672.i.prol = phi ptr [ %i.amh, %.lr.ph74.i.prol ], [ %.672.i.ph, %.lr.ph74.i.preheader ] ; 2 uses
  %.29171.i.prol = phi ptr [ %i.amf, %.lr.ph74.i.prol ], [ %.29171.i.ph, %.lr.ph74.i.preheader ] ; 2 uses
  %prol.iter1402 = phi i32 [ %prol.iter1402.next, %.lr.ph74.i.prol ], [ 0, %.lr.ph74.i.preheader ]
  %i.amf = getelementptr inbounds nuw i8, ptr %.29171.i.prol, i64 8 ; 3 uses
  %i.amg = load i64, ptr %.29171.i.prol, align 8, !tbaa !73
  %i.amh = getelementptr inbounds nuw i8, ptr %.672.i.prol, i64 8 ; 3 uses
  store i64 %i.amg, ptr %.672.i.prol, align 8, !tbaa !73
  %i.ami = add nuw nsw i32 %.08073.i.prol, 1      ; 2 uses
  %prol.iter1402.next = add i32 %prol.iter1402, 1 ; 2 uses
  %prol.iter1402.cmp.not = icmp eq i32 %prol.iter1402.next, %xtraiter1400
  br i1 %prol.iter1402.cmp.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol, !llvm.loop !743

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %.lcssa1355.unr.a = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.amf, %.lr.ph74.i.prol ]
  %.lcssa1354.unr.a = phi ptr [ poison, %.lr.ph74.i.preheader ], [ %i.amh, %.lr.ph74.i.prol ]
  %.08073.i.unr = phi i32 [ %.08073.i.ph, %.lr.ph74.i.preheader ], [ %i.ami, %.lr.ph74.i.prol ]
  %.672.i.unr = phi ptr [ %.672.i.ph, %.lr.ph74.i.preheader ], [ %i.amh, %.lr.ph74.i.prol ]
  %.29171.i.unr = phi ptr [ %.29171.i.ph, %.lr.ph74.i.preheader ], [ %i.amf, %.lr.ph74.i.prol ]
  %i.amj = sub i32 %.08073.i.ph, %i.cs
  %i.amk = icmp ugt i32 %i.amj, -8
  br i1 %i.amk, label %.preheader3.i60, label %.lr.ph74.i

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %.lr.ph.i64.preheader.new
  %indvars.iv153.i = phi i64 [ %indvars.iv153.i.unr, %.lr.ph.i64.preheader.new ], [ %indvars.iv.next154.i.3, %.lr.ph.i64 ] ; 5 uses
  %.569.i = phi ptr [ %.569.i.unr, %.lr.ph.i64.preheader.new ], [ %i.amy, %.lr.ph.i64 ] ; 5 uses
  %i.aml = sub nsw i64 %wide.trip.count156.i, %indvars.iv153.i
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.aml
  %i.amn = load i64, ptr %i.amm, align 8, !tbaa !73
  %i.amo = getelementptr inbounds nuw i8, ptr %.569.i, i64 8
  store i64 %i.amn, ptr %.569.i, align 8, !tbaa !73
  %indvars.iv.next154.i.neg = xor i64 %indvars.iv153.i, -1
  %gep1511.a = getelementptr [8 x i8], ptr %invariant.gep1510.a, i64 %indvars.iv.next154.i.neg
  %i.amp = load i64, ptr %gep1511.a, align 8, !tbaa !73
  %i.amq = getelementptr inbounds nuw i8, ptr %.569.i, i64 16
  store i64 %i.amp, ptr %i.amo, align 8, !tbaa !73
  %indvars.iv.next154.i.1 = add nuw nsw i64 %indvars.iv153.i, 2
  %i.amr = sub nsw i64 %wide.trip.count156.i, %indvars.iv.next154.i.1
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.amr
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !73
  %i.amu = getelementptr inbounds nuw i8, ptr %.569.i, i64 24
  store i64 %i.amt, ptr %i.amq, align 8, !tbaa !73
  %indvars.iv.next154.i.2 = add nuw nsw i64 %indvars.iv153.i, 3
  %i.amv = sub nsw i64 %wide.trip.count156.i, %indvars.iv.next154.i.2
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.amv
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !73
  %i.amy = getelementptr inbounds nuw i8, ptr %.569.i, i64 32 ; 2 uses
  store i64 %i.amx, ptr %i.amu, align 8, !tbaa !73
  %indvars.iv.next154.i.3 = add nuw nsw i64 %indvars.iv153.i, 4 ; 2 uses
  %exitcond157.not.i.3 = icmp eq i64 %indvars.iv.next154.i.3, %wide.trip.count156.i
  br i1 %exitcond157.not.i.3, label %.preheader4.i58, label %.lr.ph.i64, !llvm.loop !744

.preheader3.i60:                                  ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %middle.block945, %vec.epilog.middle.block963, %.preheader4.i58
  %.291.lcssa.i = phi ptr [ %.19081.i, %.preheader4.i58 ], [ %i.amb, %vec.epilog.middle.block963 ], [ %i.alr, %middle.block945 ], [ %.lcssa1355.unr.a, %.lr.ph74.i.prol.loopexit ], [ %i.aos, %.lr.ph74.i ] ; 10 uses
  %.6.lcssa.i61 = phi ptr [ %.5.lcssa.i59, %.preheader4.i58 ], [ %i.ama, %vec.epilog.middle.block963 ], [ %i.alq, %middle.block945 ], [ %.lcssa1354.unr.a, %.lr.ph74.i.prol.loopexit ], [ %i.aou, %.lr.ph74.i ] ; 9 uses
  br i1 %i.aiv, label %iter.check911, label %._crit_edge.i62

iter.check911:                                    ; preds = %.preheader3.i60
  br i1 %min.iters.check890, label %.lr.ph79.i.preheader, label %vector.memcheck883

vector.memcheck883:                               ; preds = %iter.check911
  %scevgep884 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.aiw
  %scevgep885 = getelementptr i8, ptr %.291.lcssa.i, i64 -8 ; 2 uses
  %scevgep886 = getelementptr i8, ptr %scevgep885, i64 %i.aix
  %bound0887 = icmp ult ptr %.6.lcssa.i61, %scevgep885
  %bound1888 = icmp ult ptr %scevgep886, %scevgep884
  %found.conflict889 = and i1 %bound0887, %bound1888
  br i1 %found.conflict889, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check891

vector.main.loop.iter.check891:                   ; preds = %vector.memcheck883
  br i1 %min.iters.check892, label %vec.epilog.ph915, label %vector.ph893

vector.ph893:                                     ; preds = %vector.main.loop.iter.check891
  %i.amz = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.ajj ; 2 uses
  br label %vector.body895

vector.body895:                                   ; preds = %vector.body895, %vector.ph893
  %index896 = phi i64 [ 0, %vector.ph893 ], [ %index.next906, %vector.body895 ] ; 3 uses
  %i.ana = shl i64 %index896, 3
  %next.gep897 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.ana ; 4 uses
  %i.anb = sub nuw nsw i64 -2, %index896
  %i.anc = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.anb ; 4 uses
  %i.and = getelementptr inbounds i8, ptr %i.anc, i64 -24
  %i.ane = getelementptr inbounds i8, ptr %i.anc, i64 -56
  %i.anf = getelementptr inbounds i8, ptr %i.anc, i64 -88
  %i.ang = getelementptr inbounds i8, ptr %i.anc, i64 -120
  %wide.load898 = load <4 x i64>, ptr %i.and, align 8, !tbaa !73, !alias.scope !745
  %wide.load899 = load <4 x i64>, ptr %i.ane, align 8, !tbaa !73, !alias.scope !745
  %wide.load900 = load <4 x i64>, ptr %i.anf, align 8, !tbaa !73, !alias.scope !745
  %wide.load901 = load <4 x i64>, ptr %i.ang, align 8, !tbaa !73, !alias.scope !745
  %reverse902 = shufflevector <4 x i64> %wide.load898, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse903 = shufflevector <4 x i64> %wide.load899, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse904 = shufflevector <4 x i64> %wide.load900, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse905 = shufflevector <4 x i64> %wide.load901, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.anh = getelementptr i8, ptr %next.gep897, i64 32
  %i.ani = getelementptr i8, ptr %next.gep897, i64 64
  %i.anj = getelementptr i8, ptr %next.gep897, i64 96
  store <4 x i64> %reverse902, ptr %next.gep897, align 8, !tbaa !73, !alias.scope !748, !noalias !745
  store <4 x i64> %reverse903, ptr %i.anh, align 8, !tbaa !73, !alias.scope !748, !noalias !745
  store <4 x i64> %reverse904, ptr %i.ani, align 8, !tbaa !73, !alias.scope !748, !noalias !745
  store <4 x i64> %reverse905, ptr %i.anj, align 8, !tbaa !73, !alias.scope !748, !noalias !745
  %index.next906 = add nuw i64 %index896, 16      ; 2 uses
  %i.ank = icmp eq i64 %index.next906, %n.vec894
  br i1 %i.ank, label %middle.block907, label %vector.body895, !llvm.loop !750

middle.block907:                                  ; preds = %vector.body895
  br i1 %cmp.n908, label %._crit_edge.i62, label %vec.epilog.iter.check913

vec.epilog.iter.check913:                         ; preds = %middle.block907
  br i1 %min.epilog.iters.check914, label %.lr.ph79.i.preheader, label %vec.epilog.ph915, !prof !78

vec.epilog.ph915:                                 ; preds = %vector.main.loop.iter.check891, %vec.epilog.iter.check913
  %vec.epilog.resume.val909 = phi i64 [ %n.vec894, %vec.epilog.iter.check913 ], [ 0, %vector.main.loop.iter.check891 ]
  %i.anl = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.ajk ; 2 uses
  br label %vec.epilog.vector.body917

vec.epilog.vector.body917:                        ; preds = %vec.epilog.vector.body917, %vec.epilog.ph915
  %index918 = phi i64 [ %vec.epilog.resume.val909, %vec.epilog.ph915 ], [ %index.next922, %vec.epilog.vector.body917 ] ; 3 uses
  %i.anm = shl i64 %index918, 3
  %next.gep919 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.anm
  %i.ann = sub nuw nsw i64 -2, %index918
  %i.ano = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.ann
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 -24
  %wide.load920 = load <4 x i64>, ptr %i.anp, align 8, !tbaa !73, !alias.scope !745
  %reverse921 = shufflevector <4 x i64> %wide.load920, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i64> %reverse921, ptr %next.gep919, align 8, !tbaa !73, !alias.scope !748, !noalias !745
  %index.next922 = add nuw i64 %index918, 4       ; 2 uses
  %i.anq = icmp eq i64 %index.next922, %n.vec916
  br i1 %i.anq, label %vec.epilog.middle.block923, label %vec.epilog.vector.body917, !llvm.loop !751

vec.epilog.middle.block923:                       ; preds = %vec.epilog.vector.body917
  br i1 %cmp.n924, label %._crit_edge.i62, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %vector.memcheck883, %iter.check911, %vec.epilog.iter.check913, %vec.epilog.middle.block923
  %indvars.iv159.i.ph = phi i64 [ 0, %iter.check911 ], [ 0, %vector.memcheck883 ], [ %n.vec894, %vec.epilog.iter.check913 ], [ %n.vec916, %vec.epilog.middle.block923 ] ; 3 uses
  %.777.i.ph = phi ptr [ %.6.lcssa.i61, %iter.check911 ], [ %.6.lcssa.i61, %vector.memcheck883 ], [ %i.amz, %vec.epilog.iter.check913 ], [ %i.anl, %vec.epilog.middle.block923 ] ; 2 uses
  br i1 %lcmp.mod1404.not, label %.lr.ph79.i.prol.loopexit, label %.lr.ph79.i.prol

.lr.ph79.i.prol:                                  ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i.prol
  %indvars.iv159.i.prol = phi i64 [ %indvars.iv.next160.i.prol, %.lr.ph79.i.prol ], [ %indvars.iv159.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.777.i.prol = phi ptr [ %i.anu, %.lr.ph79.i.prol ], [ %.777.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %prol.iter1405 = phi i64 [ %prol.iter1405.next, %.lr.ph79.i.prol ], [ 0, %.lr.ph79.i.preheader ]
  %i.anr = sub nuw nsw i64 -2, %indvars.iv159.i.prol
  %i.ans = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.anr
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !73
  %i.anu = getelementptr inbounds nuw i8, ptr %.777.i.prol, i64 8 ; 3 uses
  store i64 %i.ant, ptr %.777.i.prol, align 8, !tbaa !73
  %indvars.iv.next160.i.prol = add nuw nsw i64 %indvars.iv159.i.prol, 1 ; 2 uses
  %prol.iter1405.next = add i64 %prol.iter1405, 1 ; 2 uses
  %prol.iter1405.cmp.not = icmp eq i64 %prol.iter1405.next, %xtraiter1403
  br i1 %prol.iter1405.cmp.not, label %.lr.ph79.i.prol.loopexit, label %.lr.ph79.i.prol, !llvm.loop !752

.lr.ph79.i.prol.loopexit:                         ; preds = %.lr.ph79.i.prol, %.lr.ph79.i.preheader
  %.lcssa1356.unr.a = phi ptr [ poison, %.lr.ph79.i.preheader ], [ %i.anu, %.lr.ph79.i.prol ]
  %indvars.iv159.i.unr = phi i64 [ %indvars.iv159.i.ph, %.lr.ph79.i.preheader ], [ %indvars.iv.next160.i.prol, %.lr.ph79.i.prol ]
  %.777.i.unr = phi ptr [ %.777.i.ph, %.lr.ph79.i.preheader ], [ %i.anu, %.lr.ph79.i.prol ]
  %i.anv = sub nsw i64 %indvars.iv159.i.ph, %wide.trip.count162.i
  %i.anw = icmp ugt i64 %i.anv, -4
  br i1 %i.anw, label %._crit_edge.i62, label %.lr.ph79.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %.08073.i = phi i32 [ %i.aov, %.lr.ph74.i ], [ %.08073.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.672.i = phi ptr [ %i.aou, %.lr.ph74.i ], [ %.672.i.unr, %.lr.ph74.i.prol.loopexit ] ; 9 uses
  %.29171.i = phi ptr [ %i.aos, %.lr.ph74.i ], [ %.29171.i.unr, %.lr.ph74.i.prol.loopexit ] ; 9 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.29171.i, i64 8
  %i.any = load i64, ptr %.29171.i, align 8, !tbaa !73
  %i.anz = getelementptr inbounds nuw i8, ptr %.672.i, i64 8
  store i64 %i.any, ptr %.672.i, align 8, !tbaa !73
  %i.aoa = getelementptr inbounds nuw i8, ptr %.29171.i, i64 16
  %i.aob = load i64, ptr %i.anx, align 8, !tbaa !73
  %i.aoc = getelementptr inbounds nuw i8, ptr %.672.i, i64 16
  store i64 %i.aob, ptr %i.anz, align 8, !tbaa !73
  %i.aod = getelementptr inbounds nuw i8, ptr %.29171.i, i64 24
  %i.aoe = load i64, ptr %i.aoa, align 8, !tbaa !73
  %i.aof = getelementptr inbounds nuw i8, ptr %.672.i, i64 24
  store i64 %i.aoe, ptr %i.aoc, align 8, !tbaa !73
  %i.aog = getelementptr inbounds nuw i8, ptr %.29171.i, i64 32
  %i.aoh = load i64, ptr %i.aod, align 8, !tbaa !73
  %i.aoi = getelementptr inbounds nuw i8, ptr %.672.i, i64 32
  store i64 %i.aoh, ptr %i.aof, align 8, !tbaa !73
  %i.aoj = getelementptr inbounds nuw i8, ptr %.29171.i, i64 40
  %i.aok = load i64, ptr %i.aog, align 8, !tbaa !73
  %i.aol = getelementptr inbounds nuw i8, ptr %.672.i, i64 40
  store i64 %i.aok, ptr %i.aoi, align 8, !tbaa !73
  %i.aom = getelementptr inbounds nuw i8, ptr %.29171.i, i64 48
  %i.aon = load i64, ptr %i.aoj, align 8, !tbaa !73
  %i.aoo = getelementptr inbounds nuw i8, ptr %.672.i, i64 48
  store i64 %i.aon, ptr %i.aol, align 8, !tbaa !73
  %i.aop = getelementptr inbounds nuw i8, ptr %.29171.i, i64 56
  %i.aoq = load i64, ptr %i.aom, align 8, !tbaa !73
  %i.aor = getelementptr inbounds nuw i8, ptr %.672.i, i64 56
  store i64 %i.aoq, ptr %i.aoo, align 8, !tbaa !73
  %i.aos = getelementptr inbounds nuw i8, ptr %.29171.i, i64 64 ; 2 uses
  %i.aot = load i64, ptr %i.aop, align 8, !tbaa !73
  %i.aou = getelementptr inbounds nuw i8, ptr %.672.i, i64 64 ; 2 uses
  store i64 %i.aot, ptr %i.aor, align 8, !tbaa !73
  %i.aov = add nuw nsw i32 %.08073.i, 8           ; 2 uses
  %exitcond158.not.i.7 = icmp eq i32 %i.aov, %i.cs
  br i1 %exitcond158.not.i.7, label %.preheader3.i60, label %.lr.ph74.i, !llvm.loop !753

._crit_edge.i62:                                  ; preds = %.lr.ph79.i.prol.loopexit, %.lr.ph79.i, %middle.block907, %vec.epilog.middle.block923, %.preheader3.i60
  %.7.lcssa.i63 = phi ptr [ %.6.lcssa.i61, %.preheader3.i60 ], [ %i.anl, %vec.epilog.middle.block923 ], [ %i.amz, %middle.block907 ], [ %.lcssa1356.unr.a, %.lr.ph79.i.prol.loopexit ], [ %i.apm, %.lr.ph79.i ] ; 2 uses
  %i.aow = add nuw nsw i32 %.08283.i, 1           ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.aow, %i.ct
  br i1 %exitcond164.not.i, label %._crit_edge84.i, label %.preheader5.i57, !llvm.loop !754

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.prol.loopexit, %.lr.ph79.i
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i.3, %.lr.ph79.i ], [ %indvars.iv159.i.unr, %.lr.ph79.i.prol.loopexit ] ; 5 uses
  %.777.i = phi ptr [ %i.apm, %.lr.ph79.i ], [ %.777.i.unr, %.lr.ph79.i.prol.loopexit ] ; 5 uses
  %i.aox = sub nuw nsw i64 -2, %indvars.iv159.i
  %i.aoy = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.aox
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !73
  %i.apa = getelementptr inbounds nuw i8, ptr %.777.i, i64 8
  store i64 %i.aoz, ptr %.777.i, align 8, !tbaa !73
  %i.apb = sub nuw nsw i64 -3, %indvars.iv159.i
  %i.apc = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.apb
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !73
  %i.ape = getelementptr inbounds nuw i8, ptr %.777.i, i64 16
  store i64 %i.apd, ptr %i.apa, align 8, !tbaa !73
  %i.apf = sub nuw nsw i64 -4, %indvars.iv159.i
  %i.apg = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.apf
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !73
  %i.api = getelementptr inbounds nuw i8, ptr %.777.i, i64 24
  store i64 %i.aph, ptr %i.ape, align 8, !tbaa !73
  %i.apj = sub nuw nsw i64 -5, %indvars.iv159.i
  %i.apk = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.apj
  %i.apl = load i64, ptr %i.apk, align 8, !tbaa !73
  %i.apm = getelementptr inbounds nuw i8, ptr %.777.i, i64 32 ; 2 uses
  store i64 %i.apl, ptr %i.api, align 8, !tbaa !73
  %indvars.iv.next160.i.3 = add nuw nsw i64 %indvars.iv159.i, 4 ; 2 uses
  %exitcond163.not.i.3 = icmp eq i64 %indvars.iv.next160.i.3, %wide.trip.count162.i
  br i1 %exitcond163.not.i.3, label %._crit_edge.i62, label %.lr.ph79.i, !llvm.loop !755

.preheader2.i50:                                  ; preds = %._crit_edge100.i, %.preheader2.lr.ph.i49
  %indvar = phi i64 [ %indvar.next, %._crit_edge100.i ], [ 0, %.preheader2.lr.ph.i49 ] ; 2 uses
  %.078104.i = phi i32 [ %i.atx, %._crit_edge100.i ], [ 0, %.preheader2.lr.ph.i49 ]
  %.8103.i = phi ptr [ %.11.lcssa.i55, %._crit_edge100.i ], [ %.4.lcssa.i48, %.preheader2.lr.ph.i49 ] ; 9 uses
  %.392102.i = phi ptr [ %i.atw, %._crit_edge100.i ], [ %i.akn, %.preheader2.lr.ph.i49 ] ; 15 uses
  %i.apn = mul i64 %i.akw, %indvar
  %i.apo = add i64 %i.akv, %i.apn
  br i1 %i.ako, label %iter.check867, label %.preheader1.i51

iter.check867:                                    ; preds = %.preheader2.i50
  br i1 %min.iters.check846, label %.lr.ph89.i.preheader, label %vector.memcheck838

vector.memcheck838:                               ; preds = %iter.check867
  %scevgep839 = getelementptr i8, ptr %.8103.i, i64 %i.aky
  %bound0843 = icmp ult ptr %.8103.i, %scevgep842
  %bound1844 = icmp ult ptr %scevgep841, %scevgep839
  %found.conflict845 = and i1 %bound0843, %bound1844
  %i.app = or i1 %found.conflict845, %stride.check
  br i1 %i.app, label %.lr.ph89.i.preheader, label %vector.main.loop.iter.check847

vector.main.loop.iter.check847:                   ; preds = %vector.memcheck838
  br i1 %min.iters.check848, label %vec.epilog.ph871, label %vector.ph849

vector.ph849:                                     ; preds = %vector.main.loop.iter.check847
  %i.apq = getelementptr i8, ptr %.8103.i, i64 %i.alf ; 2 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph849
  %index852 = phi i64 [ 0, %vector.ph849 ], [ %index.next862, %vector.body851 ] ; 3 uses
  %i.apr = shl i64 %index852, 3
  %next.gep853 = getelementptr i8, ptr %.8103.i, i64 %i.apr ; 4 uses
  %i.aps = sub nsw i64 %wide.trip.count168.i, %index852
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.aps ; 4 uses
  %i.apu = getelementptr inbounds i8, ptr %i.apt, i64 -24
  %i.apv = getelementptr inbounds i8, ptr %i.apt, i64 -56
  %i.apw = getelementptr inbounds i8, ptr %i.apt, i64 -88
  %i.apx = getelementptr inbounds i8, ptr %i.apt, i64 -120
  %wide.load854 = load <4 x i64>, ptr %i.apu, align 8, !tbaa !73, !alias.scope !756
  %wide.load855 = load <4 x i64>, ptr %i.apv, align 8, !tbaa !73, !alias.scope !756
  %wide.load856 = load <4 x i64>, ptr %i.apw, align 8, !tbaa !73, !alias.scope !756
  %wide.load857 = load <4 x i64>, ptr %i.apx, align 8, !tbaa !73, !alias.scope !756
  %reverse858 = shufflevector <4 x i64> %wide.load854, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse859 = shufflevector <4 x i64> %wide.load855, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse860 = shufflevector <4 x i64> %wide.load856, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse861 = shufflevector <4 x i64> %wide.load857, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.apy = getelementptr i8, ptr %next.gep853, i64 32
  %i.apz = getelementptr i8, ptr %next.gep853, i64 64
  %i.aqa = getelementptr i8, ptr %next.gep853, i64 96
  store <4 x i64> %reverse858, ptr %next.gep853, align 8, !tbaa !73, !alias.scope !759, !noalias !756
  store <4 x i64> %reverse859, ptr %i.apy, align 8, !tbaa !73, !alias.scope !759, !noalias !756
  store <4 x i64> %reverse860, ptr %i.apz, align 8, !tbaa !73, !alias.scope !759, !noalias !756
  store <4 x i64> %reverse861, ptr %i.aqa, align 8, !tbaa !73, !alias.scope !759, !noalias !756
  %index.next862 = add nuw i64 %index852, 16      ; 2 uses
  %i.aqb = icmp eq i64 %index.next862, %n.vec850
  br i1 %i.aqb, label %middle.block863, label %vector.body851, !llvm.loop !761

middle.block863:                                  ; preds = %vector.body851
  br i1 %cmp.n864, label %.preheader1.i51, label %vec.epilog.iter.check869

vec.epilog.iter.check869:                         ; preds = %middle.block863
  br i1 %min.epilog.iters.check870, label %.lr.ph89.i.preheader, label %vec.epilog.ph871, !prof !78

vec.epilog.ph871:                                 ; preds = %vector.main.loop.iter.check847, %vec.epilog.iter.check869
  %vec.epilog.resume.val865 = phi i64 [ %n.vec850, %vec.epilog.iter.check869 ], [ 0, %vector.main.loop.iter.check847 ]
  %i.aqc = getelementptr i8, ptr %.8103.i, i64 %i.alg ; 2 uses
  br label %vec.epilog.vector.body873

vec.epilog.vector.body873:                        ; preds = %vec.epilog.vector.body873, %vec.epilog.ph871
  %index874 = phi i64 [ %vec.epilog.resume.val865, %vec.epilog.ph871 ], [ %index.next878, %vec.epilog.vector.body873 ] ; 3 uses
  %i.aqd = shl i64 %index874, 3
  %next.gep875 = getelementptr i8, ptr %.8103.i, i64 %i.aqd
  %i.aqe = sub nsw i64 %wide.trip.count168.i, %index874
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.aqe
  %i.aqg = getelementptr inbounds i8, ptr %i.aqf, i64 -24
  %wide.load876 = load <4 x i64>, ptr %i.aqg, align 8, !tbaa !73, !alias.scope !756
  %reverse877 = shufflevector <4 x i64> %wide.load876, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i64> %reverse877, ptr %next.gep875, align 8, !tbaa !73, !alias.scope !759, !noalias !756
  %index.next878 = add nuw i64 %index874, 4       ; 2 uses
  %i.aqh = icmp eq i64 %index.next878, %n.vec872
  br i1 %i.aqh, label %vec.epilog.middle.block879, label %vec.epilog.vector.body873, !llvm.loop !762

vec.epilog.middle.block879:                       ; preds = %vec.epilog.vector.body873
  br i1 %cmp.n880, label %.preheader1.i51, label %.lr.ph89.i.preheader

.lr.ph89.i.preheader:                             ; preds = %vector.memcheck838, %iter.check867, %vec.epilog.iter.check869, %vec.epilog.middle.block879
  %indvars.iv165.i.ph = phi i64 [ 0, %iter.check867 ], [ 0, %vector.memcheck838 ], [ %n.vec850, %vec.epilog.iter.check869 ], [ %n.vec872, %vec.epilog.middle.block879 ] ; 3 uses
  %.987.i.ph = phi ptr [ %.8103.i, %iter.check867 ], [ %.8103.i, %vector.memcheck838 ], [ %i.apq, %vec.epilog.iter.check869 ], [ %i.aqc, %vec.epilog.middle.block879 ] ; 2 uses
  br i1 %lcmp.mod1407.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol

.lr.ph89.i.prol:                                  ; preds = %.lr.ph89.i.preheader, %.lr.ph89.i.prol
  %indvars.iv165.i.prol = phi i64 [ %indvars.iv.next166.i.prol, %.lr.ph89.i.prol ], [ %indvars.iv165.i.ph, %.lr.ph89.i.preheader ] ; 2 uses
  %.987.i.prol = phi ptr [ %i.aql, %.lr.ph89.i.prol ], [ %.987.i.ph, %.lr.ph89.i.preheader ] ; 2 uses
  %prol.iter1408 = phi i64 [ %prol.iter1408.next, %.lr.ph89.i.prol ], [ 0, %.lr.ph89.i.preheader ]
  %i.aqi = sub nsw i64 %wide.trip.count168.i, %indvars.iv165.i.prol
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.aqi
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !73
  %i.aql = getelementptr inbounds nuw i8, ptr %.987.i.prol, i64 8 ; 3 uses
  store i64 %i.aqk, ptr %.987.i.prol, align 8, !tbaa !73
  %indvars.iv.next166.i.prol = add nuw nsw i64 %indvars.iv165.i.prol, 1 ; 2 uses
  %prol.iter1408.next = add i64 %prol.iter1408, 1 ; 2 uses
  %prol.iter1408.cmp.not = icmp eq i64 %prol.iter1408.next, %xtraiter1406
  br i1 %prol.iter1408.cmp.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol, !llvm.loop !763

.lr.ph89.i.prol.loopexit:                         ; preds = %.lr.ph89.i.prol, %.lr.ph89.i.preheader
  %.lcssa1357.unr.a = phi ptr [ poison, %.lr.ph89.i.preheader ], [ %i.aql, %.lr.ph89.i.prol ]
  %indvars.iv165.i.unr = phi i64 [ %indvars.iv165.i.ph, %.lr.ph89.i.preheader ], [ %indvars.iv.next166.i.prol, %.lr.ph89.i.prol ]
  %.987.i.unr = phi ptr [ %.987.i.ph, %.lr.ph89.i.preheader ], [ %i.aql, %.lr.ph89.i.prol ]
  %i.aqm = sub nsw i64 %indvars.iv165.i.ph, %wide.trip.count168.i
  %i.aqn = icmp ugt i64 %i.aqm, -4
  br i1 %i.aqn, label %.preheader1.i51, label %.lr.ph89.i.preheader.new

.lr.ph89.i.preheader.new:                         ; preds = %.lr.ph89.i.prol.loopexit
  %invariant.gep1512 = getelementptr [8 x i8], ptr %.392102.i, i64 %wide.trip.count168.i
  br label %.lr.ph89.i

.preheader1.i51:                                  ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i, %middle.block863, %vec.epilog.middle.block879, %.preheader2.i50
  %.9.lcssa.i52 = phi ptr [ %.8103.i, %.preheader2.i50 ], [ %i.aqc, %vec.epilog.middle.block879 ], [ %i.apq, %middle.block863 ], [ %.lcssa1357.unr.a, %.lr.ph89.i.prol.loopexit ], [ %i.ary, %.lr.ph89.i ] ; 8 uses
  %.9.lcssa.i52798 = ptrtoaddr ptr %.9.lcssa.i52 to i64
  br i1 %i.akp, label %iter.check821, label %.preheader.i53

iter.check821:                                    ; preds = %.preheader1.i51
  br i1 %min.iters.check801, label %.lr.ph94.i.preheader, label %vector.memcheck797

vector.memcheck797:                               ; preds = %iter.check821
  %i.aqo = add i64 %i.apo, %.9.lcssa.i52798
  %i.aqp = add i64 %i.aqo, -1
  %diff.check800 = icmp ult i64 %i.aqp, 127
  br i1 %diff.check800, label %.lr.ph94.i.preheader, label %vector.main.loop.iter.check802

vector.main.loop.iter.check802:                   ; preds = %vector.memcheck797
  br i1 %min.iters.check803, label %vec.epilog.ph825, label %vector.ph804

vector.ph804:                                     ; preds = %vector.main.loop.iter.check802
  %i.aqq = getelementptr i8, ptr %.392102.i, i64 %i.alj ; 2 uses
  %i.aqr = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.alj ; 2 uses
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph804
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next814, %vector.body806 ] ; 2 uses
  %i.aqs = shl i64 %index807, 3                   ; 2 uses
  %next.gep808 = getelementptr i8, ptr %.392102.i, i64 %i.aqs ; 4 uses
  %next.gep809 = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.aqs ; 4 uses
  %i.aqt = getelementptr i8, ptr %next.gep808, i64 32
  %i.aqu = getelementptr i8, ptr %next.gep808, i64 64
  %i.aqv = getelementptr i8, ptr %next.gep808, i64 96
  %wide.load810 = load <4 x i64>, ptr %next.gep808, align 8, !tbaa !73
  %wide.load811 = load <4 x i64>, ptr %i.aqt, align 8, !tbaa !73
  %wide.load812 = load <4 x i64>, ptr %i.aqu, align 8, !tbaa !73
  %wide.load813 = load <4 x i64>, ptr %i.aqv, align 8, !tbaa !73
  %i.aqw = getelementptr i8, ptr %next.gep809, i64 32
  %i.aqx = getelementptr i8, ptr %next.gep809, i64 64
  %i.aqy = getelementptr i8, ptr %next.gep809, i64 96
  store <4 x i64> %wide.load810, ptr %next.gep809, align 8, !tbaa !73
  store <4 x i64> %wide.load811, ptr %i.aqw, align 8, !tbaa !73
  store <4 x i64> %wide.load812, ptr %i.aqx, align 8, !tbaa !73
  store <4 x i64> %wide.load813, ptr %i.aqy, align 8, !tbaa !73
  %index.next814 = add nuw i64 %index807, 16      ; 2 uses
  %i.aqz = icmp eq i64 %index.next814, %n.vec805
  br i1 %i.aqz, label %middle.block815, label %vector.body806, !llvm.loop !764

middle.block815:                                  ; preds = %vector.body806
  br i1 %cmp.n816, label %.preheader.i53, label %vec.epilog.iter.check823

vec.epilog.iter.check823:                         ; preds = %middle.block815
  br i1 %min.epilog.iters.check824, label %.lr.ph94.i.preheader, label %vec.epilog.ph825, !prof !78

vec.epilog.ph825:                                 ; preds = %vector.main.loop.iter.check802, %vec.epilog.iter.check823
  %vec.epilog.resume.val817 = phi i64 [ %n.vec805, %vec.epilog.iter.check823 ], [ 0, %vector.main.loop.iter.check802 ]
  %i.ara = getelementptr i8, ptr %.392102.i, i64 %i.all ; 2 uses
  %i.arb = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.all ; 2 uses
  br label %vec.epilog.vector.body827

vec.epilog.vector.body827:                        ; preds = %vec.epilog.vector.body827, %vec.epilog.ph825
  %index828 = phi i64 [ %vec.epilog.resume.val817, %vec.epilog.ph825 ], [ %index.next832, %vec.epilog.vector.body827 ] ; 2 uses
  %i.arc = shl i64 %index828, 3                   ; 2 uses
  %next.gep829 = getelementptr i8, ptr %.392102.i, i64 %i.arc
  %next.gep830 = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.arc
  %wide.load831 = load <4 x i64>, ptr %next.gep829, align 8, !tbaa !73
  store <4 x i64> %wide.load831, ptr %next.gep830, align 8, !tbaa !73
  %index.next832 = add nuw i64 %index828, 4       ; 2 uses
  %i.ard = icmp eq i64 %index.next832, %n.vec826
  br i1 %i.ard, label %vec.epilog.middle.block833, label %vec.epilog.vector.body827, !llvm.loop !765

vec.epilog.middle.block833:                       ; preds = %vec.epilog.vector.body827
  br i1 %cmp.n834, label %.preheader.i53, label %.lr.ph94.i.preheader

.lr.ph94.i.preheader:                             ; preds = %vector.memcheck797, %iter.check821, %vec.epilog.iter.check823, %vec.epilog.middle.block833
  %.07593.i.ph = phi i32 [ 0, %iter.check821 ], [ 0, %vector.memcheck797 ], [ %i.ali, %vec.epilog.iter.check823 ], [ %i.alk, %vec.epilog.middle.block833 ] ; 4 uses
  %.07792.i.ph = phi ptr [ %.392102.i, %iter.check821 ], [ %.392102.i, %vector.memcheck797 ], [ %i.aqq, %vec.epilog.iter.check823 ], [ %i.ara, %vec.epilog.middle.block833 ] ; 2 uses
  %.1091.i.ph = phi ptr [ %.9.lcssa.i52, %iter.check821 ], [ %.9.lcssa.i52, %vector.memcheck797 ], [ %i.aqr, %vec.epilog.iter.check823 ], [ %i.arb, %vec.epilog.middle.block833 ] ; 2 uses
  %i.are = sub i32 %i.cs, %.07593.i.ph
  %xtraiter1409 = and i32 %i.are, 7               ; 2 uses
  %lcmp.mod1410.not = icmp eq i32 %xtraiter1409, 0
  br i1 %lcmp.mod1410.not, label %.lr.ph94.i.prol.loopexit, label %.lr.ph94.i.prol

.lr.ph94.i.prol:                                  ; preds = %.lr.ph94.i.preheader, %.lr.ph94.i.prol
  %.07593.i.prol = phi i32 [ %i.ari, %.lr.ph94.i.prol ], [ %.07593.i.ph, %.lr.ph94.i.preheader ]
  %.07792.i.prol = phi ptr [ %i.arf, %.lr.ph94.i.prol ], [ %.07792.i.ph, %.lr.ph94.i.preheader ] ; 2 uses
  %.1091.i.prol = phi ptr [ %i.arh, %.lr.ph94.i.prol ], [ %.1091.i.ph, %.lr.ph94.i.preheader ] ; 2 uses
  %prol.iter1411 = phi i32 [ %prol.iter1411.next, %.lr.ph94.i.prol ], [ 0, %.lr.ph94.i.preheader ]
  %i.arf = getelementptr inbounds nuw i8, ptr %.07792.i.prol, i64 8 ; 3 uses
  %i.arg = load i64, ptr %.07792.i.prol, align 8, !tbaa !73
  %i.arh = getelementptr inbounds nuw i8, ptr %.1091.i.prol, i64 8 ; 3 uses
  store i64 %i.arg, ptr %.1091.i.prol, align 8, !tbaa !73
  %i.ari = add nuw nsw i32 %.07593.i.prol, 1      ; 2 uses
  %prol.iter1411.next = add i32 %prol.iter1411, 1 ; 2 uses
  %prol.iter1411.cmp.not = icmp eq i32 %prol.iter1411.next, %xtraiter1409
  br i1 %prol.iter1411.cmp.not, label %.lr.ph94.i.prol.loopexit, label %.lr.ph94.i.prol, !llvm.loop !766

.lr.ph94.i.prol.loopexit:                         ; preds = %.lr.ph94.i.prol, %.lr.ph94.i.preheader
  %.lcssa1359.unr = phi ptr [ poison, %.lr.ph94.i.preheader ], [ %i.arf, %.lr.ph94.i.prol ]
  %.lcssa1358.unr.a = phi ptr [ poison, %.lr.ph94.i.preheader ], [ %i.arh, %.lr.ph94.i.prol ]
  %.07593.i.unr = phi i32 [ %.07593.i.ph, %.lr.ph94.i.preheader ], [ %i.ari, %.lr.ph94.i.prol ]
  %.07792.i.unr = phi ptr [ %.07792.i.ph, %.lr.ph94.i.preheader ], [ %i.arf, %.lr.ph94.i.prol ]
  %.1091.i.unr = phi ptr [ %.1091.i.ph, %.lr.ph94.i.preheader ], [ %i.arh, %.lr.ph94.i.prol ]
  %i.arj = sub i32 %.07593.i.ph, %i.cs
  %i.ark = icmp ugt i32 %i.arj, -8
  br i1 %i.ark, label %.preheader.i53, label %.lr.ph94.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.i.preheader.new
  %indvars.iv165.i = phi i64 [ %indvars.iv165.i.unr, %.lr.ph89.i.preheader.new ], [ %indvars.iv.next166.i.3, %.lr.ph89.i ] ; 5 uses
  %.987.i = phi ptr [ %.987.i.unr, %.lr.ph89.i.preheader.new ], [ %i.ary, %.lr.ph89.i ] ; 5 uses
  %i.arl = sub nsw i64 %wide.trip.count168.i, %indvars.iv165.i
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.arl
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !73
  %i.aro = getelementptr inbounds nuw i8, ptr %.987.i, i64 8
  store i64 %i.arn, ptr %.987.i, align 8, !tbaa !73
  %indvars.iv.next166.i.neg = xor i64 %indvars.iv165.i, -1
  %gep1513 = getelementptr [8 x i8], ptr %invariant.gep1512, i64 %indvars.iv.next166.i.neg
  %i.arp = load i64, ptr %gep1513, align 8, !tbaa !73
  %i.arq = getelementptr inbounds nuw i8, ptr %.987.i, i64 16
  store i64 %i.arp, ptr %i.aro, align 8, !tbaa !73
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2
  %i.arr = sub nsw i64 %wide.trip.count168.i, %indvars.iv.next166.i.1
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.arr
  %i.art = load i64, ptr %i.ars, align 8, !tbaa !73
  %i.aru = getelementptr inbounds nuw i8, ptr %.987.i, i64 24
  store i64 %i.art, ptr %i.arq, align 8, !tbaa !73
  %indvars.iv.next166.i.2 = add nuw nsw i64 %indvars.iv165.i, 3
  %i.arv = sub nsw i64 %wide.trip.count168.i, %indvars.iv.next166.i.2
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.arv
  %i.arx = load i64, ptr %i.arw, align 8, !tbaa !73
  %i.ary = getelementptr inbounds nuw i8, ptr %.987.i, i64 32 ; 2 uses
  store i64 %i.arx, ptr %i.aru, align 8, !tbaa !73
  %indvars.iv.next166.i.3 = add nuw nsw i64 %indvars.iv165.i, 4 ; 2 uses
  %exitcond169.not.i.3 = icmp eq i64 %indvars.iv.next166.i.3, %wide.trip.count168.i
  br i1 %exitcond169.not.i.3, label %.preheader1.i51, label %.lr.ph89.i, !llvm.loop !767

.preheader.i53:                                   ; preds = %.lr.ph94.i.prol.loopexit, %.lr.ph94.i, %middle.block815, %vec.epilog.middle.block833, %.preheader1.i51
  %.10.lcssa.i54 = phi ptr [ %.9.lcssa.i52, %.preheader1.i51 ], [ %i.arb, %vec.epilog.middle.block833 ], [ %i.aqr, %middle.block815 ], [ %.lcssa1358.unr.a, %.lr.ph94.i.prol.loopexit ], [ %i.atu, %.lr.ph94.i ] ; 9 uses
  %.077.lcssa.i = phi ptr [ %.392102.i, %.preheader1.i51 ], [ %i.ara, %vec.epilog.middle.block833 ], [ %i.aqq, %middle.block815 ], [ %.lcssa1359.unr, %.lr.ph94.i.prol.loopexit ], [ %i.ats, %.lr.ph94.i ] ; 8 uses
  br i1 %i.akq, label %iter.check781, label %._crit_edge100.i

iter.check781:                                    ; preds = %.preheader.i53
  br i1 %min.iters.check761, label %.lr.ph99.i.preheader, label %vector.memcheck758

vector.memcheck758:                               ; preds = %iter.check781
  %scevgep = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.aks
  %scevgep759 = getelementptr i8, ptr %.077.lcssa.i, i64 -8 ; 2 uses
  %scevgep760 = getelementptr i8, ptr %scevgep759, i64 %i.akt
  %bound0 = icmp ult ptr %.10.lcssa.i54, %scevgep759
  %bound1 = icmp ult ptr %scevgep760, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.i.preheader, label %vector.main.loop.iter.check762

vector.main.loop.iter.check762:                   ; preds = %vector.memcheck758
  br i1 %min.iters.check763, label %vec.epilog.ph785, label %vector.ph764

vector.ph764:                                     ; preds = %vector.main.loop.iter.check762
  %i.arz = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.aln ; 2 uses
  br label %vector.body766

vector.body766:                                   ; preds = %vector.body766, %vector.ph764
  %index767 = phi i64 [ 0, %vector.ph764 ], [ %index.next776, %vector.body766 ] ; 3 uses
  %i.asa = shl i64 %index767, 3
  %next.gep768 = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.asa ; 4 uses
  %i.asb = sub nuw nsw i64 -2, %index767
  %i.asc = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.asb ; 4 uses
  %i.asd = getelementptr inbounds i8, ptr %i.asc, i64 -24
  %i.ase = getelementptr inbounds i8, ptr %i.asc, i64 -56
  %i.asf = getelementptr inbounds i8, ptr %i.asc, i64 -88
  %i.asg = getelementptr inbounds i8, ptr %i.asc, i64 -120
  %wide.load769 = load <4 x i64>, ptr %i.asd, align 8, !tbaa !73, !alias.scope !768
  %wide.load770 = load <4 x i64>, ptr %i.ase, align 8, !tbaa !73, !alias.scope !768
  %wide.load771 = load <4 x i64>, ptr %i.asf, align 8, !tbaa !73, !alias.scope !768
  %wide.load772 = load <4 x i64>, ptr %i.asg, align 8, !tbaa !73, !alias.scope !768
  %reverse = shufflevector <4 x i64> %wide.load769, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse773 = shufflevector <4 x i64> %wide.load770, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse774 = shufflevector <4 x i64> %wide.load771, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse775 = shufflevector <4 x i64> %wide.load772, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ash = getelementptr i8, ptr %next.gep768, i64 32
  %i.asi = getelementptr i8, ptr %next.gep768, i64 64
  %i.asj = getelementptr i8, ptr %next.gep768, i64 96
  store <4 x i64> %reverse, ptr %next.gep768, align 8, !tbaa !73, !alias.scope !771, !noalias !768
  store <4 x i64> %reverse773, ptr %i.ash, align 8, !tbaa !73, !alias.scope !771, !noalias !768
  store <4 x i64> %reverse774, ptr %i.asi, align 8, !tbaa !73, !alias.scope !771, !noalias !768
  store <4 x i64> %reverse775, ptr %i.asj, align 8, !tbaa !73, !alias.scope !771, !noalias !768
  %index.next776 = add nuw i64 %index767, 16      ; 2 uses
  %i.ask = icmp eq i64 %index.next776, %n.vec765
  br i1 %i.ask, label %middle.block777, label %vector.body766, !llvm.loop !773

middle.block777:                                  ; preds = %vector.body766
  br i1 %cmp.n778, label %._crit_edge100.i, label %vec.epilog.iter.check783

vec.epilog.iter.check783:                         ; preds = %middle.block777
  br i1 %min.epilog.iters.check784, label %.lr.ph99.i.preheader, label %vec.epilog.ph785, !prof !78

vec.epilog.ph785:                                 ; preds = %vector.main.loop.iter.check762, %vec.epilog.iter.check783
  %vec.epilog.resume.val779 = phi i64 [ %n.vec765, %vec.epilog.iter.check783 ], [ 0, %vector.main.loop.iter.check762 ]
  %i.asl = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.alo ; 2 uses
  br label %vec.epilog.vector.body787

vec.epilog.vector.body787:                        ; preds = %vec.epilog.vector.body787, %vec.epilog.ph785
  %index788 = phi i64 [ %vec.epilog.resume.val779, %vec.epilog.ph785 ], [ %index.next792, %vec.epilog.vector.body787 ] ; 3 uses
  %i.asm = shl i64 %index788, 3
  %next.gep789 = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.asm
  %i.asn = sub nuw nsw i64 -2, %index788
  %i.aso = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.asn
  %i.asp = getelementptr inbounds i8, ptr %i.aso, i64 -24
  %wide.load790 = load <4 x i64>, ptr %i.asp, align 8, !tbaa !73, !alias.scope !768
  %reverse791 = shufflevector <4 x i64> %wide.load790, <4 x i64> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i64> %reverse791, ptr %next.gep789, align 8, !tbaa !73, !alias.scope !771, !noalias !768
  %index.next792 = add nuw i64 %index788, 4       ; 2 uses
  %i.asq = icmp eq i64 %index.next792, %n.vec786
  br i1 %i.asq, label %vec.epilog.middle.block793, label %vec.epilog.vector.body787, !llvm.loop !774

vec.epilog.middle.block793:                       ; preds = %vec.epilog.vector.body787
  br i1 %cmp.n794, label %._crit_edge100.i, label %.lr.ph99.i.preheader

.lr.ph99.i.preheader:                             ; preds = %vector.memcheck758, %iter.check781, %vec.epilog.iter.check783, %vec.epilog.middle.block793
  %indvars.iv171.i.ph = phi i64 [ 0, %iter.check781 ], [ 0, %vector.memcheck758 ], [ %n.vec765, %vec.epilog.iter.check783 ], [ %n.vec786, %vec.epilog.middle.block793 ] ; 3 uses
  %.1197.i.ph = phi ptr [ %.10.lcssa.i54, %iter.check781 ], [ %.10.lcssa.i54, %vector.memcheck758 ], [ %i.arz, %vec.epilog.iter.check783 ], [ %i.asl, %vec.epilog.middle.block793 ] ; 2 uses
  br i1 %lcmp.mod1413.not, label %.lr.ph99.i.prol.loopexit, label %.lr.ph99.i.prol

.lr.ph99.i.prol:                                  ; preds = %.lr.ph99.i.preheader, %.lr.ph99.i.prol
  %indvars.iv171.i.prol = phi i64 [ %indvars.iv.next172.i.prol, %.lr.ph99.i.prol ], [ %indvars.iv171.i.ph, %.lr.ph99.i.preheader ] ; 2 uses
  %.1197.i.prol = phi ptr [ %i.asu, %.lr.ph99.i.prol ], [ %.1197.i.ph, %.lr.ph99.i.preheader ] ; 2 uses
  %prol.iter1414 = phi i64 [ %prol.iter1414.next, %.lr.ph99.i.prol ], [ 0, %.lr.ph99.i.preheader ]
  %i.asr = sub nuw nsw i64 -2, %indvars.iv171.i.prol
  %i.ass = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.asr
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !73
  %i.asu = getelementptr inbounds nuw i8, ptr %.1197.i.prol, i64 8 ; 3 uses
  store i64 %i.ast, ptr %.1197.i.prol, align 8, !tbaa !73
  %indvars.iv.next172.i.prol = add nuw nsw i64 %indvars.iv171.i.prol, 1 ; 2 uses
  %prol.iter1414.next = add i64 %prol.iter1414, 1 ; 2 uses
  %prol.iter1414.cmp.not = icmp eq i64 %prol.iter1414.next, %xtraiter1412
  br i1 %prol.iter1414.cmp.not, label %.lr.ph99.i.prol.loopexit, label %.lr.ph99.i.prol, !llvm.loop !775

.lr.ph99.i.prol.loopexit:                         ; preds = %.lr.ph99.i.prol, %.lr.ph99.i.preheader
  %.lcssa1360.unr = phi ptr [ poison, %.lr.ph99.i.preheader ], [ %i.asu, %.lr.ph99.i.prol ]
  %indvars.iv171.i.unr = phi i64 [ %indvars.iv171.i.ph, %.lr.ph99.i.preheader ], [ %indvars.iv.next172.i.prol, %.lr.ph99.i.prol ]
  %.1197.i.unr = phi ptr [ %.1197.i.ph, %.lr.ph99.i.preheader ], [ %i.asu, %.lr.ph99.i.prol ]
  %i.asv = sub nsw i64 %indvars.iv171.i.ph, %wide.trip.count174.i
  %i.asw = icmp ugt i64 %i.asv, -4
  br i1 %i.asw, label %._crit_edge100.i, label %.lr.ph99.i

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.prol.loopexit, %.lr.ph94.i
  %.07593.i = phi i32 [ %i.atv, %.lr.ph94.i ], [ %.07593.i.unr, %.lr.ph94.i.prol.loopexit ]
  %.07792.i = phi ptr [ %i.ats, %.lr.ph94.i ], [ %.07792.i.unr, %.lr.ph94.i.prol.loopexit ] ; 9 uses
  %.1091.i = phi ptr [ %i.atu, %.lr.ph94.i ], [ %.1091.i.unr, %.lr.ph94.i.prol.loopexit ] ; 9 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %.07792.i, i64 8
  %i.asy = load i64, ptr %.07792.i, align 8, !tbaa !73
  %i.asz = getelementptr inbounds nuw i8, ptr %.1091.i, i64 8
  store i64 %i.asy, ptr %.1091.i, align 8, !tbaa !73
  %i.ata = getelementptr inbounds nuw i8, ptr %.07792.i, i64 16
  %i.atb = load i64, ptr %i.asx, align 8, !tbaa !73
  %i.atc = getelementptr inbounds nuw i8, ptr %.1091.i, i64 16
  store i64 %i.atb, ptr %i.asz, align 8, !tbaa !73
  %i.atd = getelementptr inbounds nuw i8, ptr %.07792.i, i64 24
  %i.ate = load i64, ptr %i.ata, align 8, !tbaa !73
  %i.atf = getelementptr inbounds nuw i8, ptr %.1091.i, i64 24
  store i64 %i.ate, ptr %i.atc, align 8, !tbaa !73
  %i.atg = getelementptr inbounds nuw i8, ptr %.07792.i, i64 32
  %i.ath = load i64, ptr %i.atd, align 8, !tbaa !73
  %i.ati = getelementptr inbounds nuw i8, ptr %.1091.i, i64 32
  store i64 %i.ath, ptr %i.atf, align 8, !tbaa !73
  %i.atj = getelementptr inbounds nuw i8, ptr %.07792.i, i64 40
  %i.atk = load i64, ptr %i.atg, align 8, !tbaa !73
  %i.atl = getelementptr inbounds nuw i8, ptr %.1091.i, i64 40
  store i64 %i.atk, ptr %i.ati, align 8, !tbaa !73
  %i.atm = getelementptr inbounds nuw i8, ptr %.07792.i, i64 48
  %i.atn = load i64, ptr %i.atj, align 8, !tbaa !73
  %i.ato = getelementptr inbounds nuw i8, ptr %.1091.i, i64 48
  store i64 %i.atn, ptr %i.atl, align 8, !tbaa !73
  %i.atp = getelementptr inbounds nuw i8, ptr %.07792.i, i64 56
  %i.atq = load i64, ptr %i.atm, align 8, !tbaa !73
  %i.atr = getelementptr inbounds nuw i8, ptr %.1091.i, i64 56
  store i64 %i.atq, ptr %i.ato, align 8, !tbaa !73
  %i.ats = getelementptr inbounds nuw i8, ptr %.07792.i, i64 64 ; 2 uses
  %i.att = load i64, ptr %i.atp, align 8, !tbaa !73
  %i.atu = getelementptr inbounds nuw i8, ptr %.1091.i, i64 64 ; 2 uses
  store i64 %i.att, ptr %i.atr, align 8, !tbaa !73
  %i.atv = add nuw nsw i32 %.07593.i, 8           ; 2 uses
  %exitcond170.not.i.7 = icmp eq i32 %i.atv, %i.cs
  br i1 %exitcond170.not.i.7, label %.preheader.i53, label %.lr.ph94.i, !llvm.loop !776

._crit_edge100.i:                                 ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i, %middle.block777, %vec.epilog.middle.block793, %.preheader.i53
  %.11.lcssa.i55 = phi ptr [ %.10.lcssa.i54, %.preheader.i53 ], [ %i.asl, %vec.epilog.middle.block793 ], [ %i.arz, %middle.block777 ], [ %.lcssa1360.unr, %.lr.ph99.i.prol.loopexit ], [ %i.aun, %.lr.ph99.i ]
  %i.atw = getelementptr inbounds [8 x i8], ptr %.392102.i, i64 %i.akr
  %i.atx = add nuw nsw i32 %.078104.i, 1          ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.atx, %i.ur
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond176.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %.preheader2.i50, !llvm.loop !777

.lr.ph99.i:                                       ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i.3, %.lr.ph99.i ], [ %indvars.iv171.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %.1197.i = phi ptr [ %i.aun, %.lr.ph99.i ], [ %.1197.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %i.aty = sub nuw nsw i64 -2, %indvars.iv171.i
  %i.atz = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.aty
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !73
  %i.aub = getelementptr inbounds nuw i8, ptr %.1197.i, i64 8
  store i64 %i.aua, ptr %.1197.i, align 8, !tbaa !73
  %i.auc = sub nuw nsw i64 -3, %indvars.iv171.i
  %i.aud = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.auc
  %i.aue = load i64, ptr %i.aud, align 8, !tbaa !73
  %i.auf = getelementptr inbounds nuw i8, ptr %.1197.i, i64 16
  store i64 %i.aue, ptr %i.aub, align 8, !tbaa !73
  %i.aug = sub nuw nsw i64 -4, %indvars.iv171.i
  %i.auh = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.aug
  %i.aui = load i64, ptr %i.auh, align 8, !tbaa !73
  %i.auj = getelementptr inbounds nuw i8, ptr %.1197.i, i64 24
  store i64 %i.aui, ptr %i.auf, align 8, !tbaa !73
  %i.auk = sub nuw nsw i64 -5, %indvars.iv171.i
  %i.aul = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.auk
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !73
  %i.aun = getelementptr inbounds nuw i8, ptr %.1197.i, i64 32 ; 2 uses
  store i64 %i.aum, ptr %i.auj, align 8, !tbaa !73
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %exitcond175.not.i.3 = icmp eq i64 %indvars.iv.next172.i.3, %wide.trip.count174.i
  br i1 %exitcond175.not.i.3, label %._crit_edge100.i, label %.lr.ph99.i, !llvm.loop !778

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge100.i, %._crit_edge89.i, %._crit_edge73.i, %bb.f, %._crit_edge84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %.pre = load i32, ptr %i.b, align 4, !tbaa !58
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %_ZN4ncnn3MatD2Ev.exit34
  %i.auo = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit34 ], [ %i.as, %bb.d ], [ %i.as, %middle.block ], [ %i.as, %vec.epilog.middle.block ], [ %i.as, %.lr.ph ] ; 2 uses
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %i.aup = sext i32 %i.auo to i64
end_hunk_4
