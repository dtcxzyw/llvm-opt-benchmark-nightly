Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/parallel_joint?download=true
inline.NumInlined: 95
inline.NumDeleted: 24
begin_hunk_0_@b3PrepareParallelJoint:bb.a
  %i.jp = fmul <2 x float> %i.go, %i.jo
  %i.jq = fsub <2 x float> %i.jp, %i.iq
  %i.jr = insertelement <2 x float> %i.ir, float %i.jn, i64 1
  %i.js = fadd <2 x float> %i.jr, %i.jq
  %i.jt = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.jt, ptr %.sroa.491.0..sroa_idx, align 4, !tbaa !77
  %foldExtExtBinop322 = fmul <2 x float> %i.go, %i.ji
  %i.ju = extractelement <2 x float> %foldExtExtBinop322, i64 0
  %i.jv = fsub float %i.jm, %i.ju                 ; 2 uses
  %i.jw = fmul <2 x float> %i.hp, %i.ji           ; 2 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 1
  %i.jy = fadd float %i.jx, %i.in
  %i.jz = extractelement <2 x float> %i.jw, i64 0
  %i.ka = fadd float %i.jz, %i.jy                 ; 3 uses
  %i.kb = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.is, %i.kb
  %i.kd = fsub <2 x float> %i.js, %i.kc           ; 4 uses
  %i.ke = fmul <2 x float> %i.kd, zeroinitializer ; 4 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  %i.kg = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kh = fsub ninf <2 x float> %i.ke, %i.kg
  %i.ki = insertelement <2 x float> %i.kh, float %i.ka, i64 1
  %i.kj = fmul <2 x float> %i.ki, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.kk = fmul float %i.jv, 0.000000e+00          ; 3 uses
  %i.kl = extractelement <2 x float> %i.kd, i64 1
  %i.km = fsub float %i.kl, %i.kk
  %i.kn = extractelement <2 x float> %i.kd, i64 0
  %i.ko = fsub float %i.kk, %i.kn
  %i.kp = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.km, i64 1
  %i.kr = fadd <2 x float> %i.kq, %i.kj           ; 5 uses
  %i.ks = extractelement <2 x float> %i.kj, i64 1 ; 2 uses
  %i.kt = fadd float %i.ks, %i.ko                 ; 4 uses
  %i.ku = extractelement <2 x float> %i.kr, i64 0
  %i.kv = fmul float %i.ik, %i.ku
  %i.kw = fmul float %i.gy, %i.kt
  %i.kx = fsub float %i.kv, %i.kw
  %i.ky = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kz = insertelement <2 x float> %i.ky, float %i.kt, i64 1 ; 2 uses
  %i.la = fmul <2 x float> %i.go, %i.kz
  %i.lb = fmul <2 x float> %i.is, %i.kr
  %i.lc = fsub <2 x float> %i.la, %i.lb           ; 2 uses
  %i.ld = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.le = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> %i.kr, <2 x i32> <i32 0, i32 2>
  %i.lg = fmul <2 x float> %i.ld, %i.lf
  %i.lh = fmul <2 x float> %i.ld, %i.kz
  %i.li = fadd <2 x float> %i.lg, %i.lc           ; 2 uses
  %i.lj = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lk = insertelement <2 x float> %i.lj, float %i.kx, i64 0
  %i.ll = fadd <2 x float> %i.lh, %i.lk           ; 2 uses
  %i.lm = fmul <2 x float> %i.is, %i.li
  %i.ln = fmul <2 x float> %i.ip, %i.ll
  %i.lo = fsub <2 x float> %i.lm, %i.ln
  %foldExtExtBinop327 = fmul <2 x float> %i.go, %i.ll
  %foldExtExtBinop329 = fmul <2 x float> %i.go, %i.li
  %shift331 = shufflevector <2 x float> %foldExtExtBinop329, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop332 = fsub <2 x float> %foldExtExtBinop327, %shift331
  %i.lp = extractelement <2 x float> %foldExtExtBinop332, i64 0
  %i.lq = fmul <2 x float> %i.lo, splat (float 2.000000e+00)
  %i.lr = fadd <2 x float> %i.kr, %i.lq
  %i.ls = fmul float %i.lp, 2.000000e+00
  %i.lt = fadd float %i.kt, %i.ls
  %i.lu = fmul <2 x float> %i.lr, splat (float 5.000000e-01)
  %i.lv = fmul float %i.lt, 5.000000e-01
  store <2 x float> %i.lu, ptr %i.gz, align 4, !tbaa !77
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float %i.lv, ptr %.sroa.489.0..sroa_idx, align 4, !tbaa !77
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.lx = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ly = insertelement <2 x float> %i.lx, float %i.kk, i64 1
  %i.lz = fsub <2 x float> %i.ke, %i.ly
  %i.ma = fsub float %i.jv, %i.kf
  %i.mb = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mc = insertelement <2 x float> %i.mb, float %i.ka, i64 1
  %i.md = fadd <2 x float> %i.mc, %i.lz           ; 5 uses
  %i.me = fadd float %i.ks, %i.ma                 ; 4 uses
  %i.mf = extractelement <2 x float> %i.md, i64 0
  %i.mg = fmul float %i.ik, %i.mf
  %i.mh = fmul float %i.gy, %i.me
  %i.mi = fsub float %i.mg, %i.mh
  %i.mj = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mk = insertelement <2 x float> %i.mj, float %i.me, i64 1 ; 2 uses
  %i.ml = fmul <2 x float> %i.go, %i.mk
  %i.mm = fmul <2 x float> %i.is, %i.md
  %i.mn = fsub <2 x float> %i.ml, %i.mm           ; 2 uses
  %i.mo = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> %i.md, <2 x i32> <i32 0, i32 2>
  %i.mq = fmul <2 x float> %i.ld, %i.mp
  %i.mr = fmul <2 x float> %i.ld, %i.mk
  %i.ms = fadd <2 x float> %i.mq, %i.mn           ; 2 uses
  %i.mt = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mu = insertelement <2 x float> %i.mt, float %i.mi, i64 0
  %i.mv = fadd <2 x float> %i.mr, %i.mu           ; 2 uses
  %i.mw = fmul <2 x float> %i.is, %i.ms
  %i.mx = fmul <2 x float> %i.ip, %i.mv
  %i.my = fsub <2 x float> %i.mw, %i.mx
  %foldExtExtBinop334 = fmul <2 x float> %i.go, %i.mv
  %foldExtExtBinop336 = fmul <2 x float> %i.go, %i.ms
  %shift338 = shufflevector <2 x float> %foldExtExtBinop336, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop339 = fsub <2 x float> %foldExtExtBinop334, %shift338
  %i.mz = extractelement <2 x float> %foldExtExtBinop339, i64 0
  %i.na = fmul <2 x float> %i.my, splat (float 2.000000e+00)
  %i.nb = fadd <2 x float> %i.md, %i.na
  %i.nc = fmul float %i.mz, 2.000000e+00
  %i.nd = fadd float %i.me, %i.nc
  %i.ne = fmul <2 x float> %i.nb, splat (float 5.000000e-01)
  %i.nf = fmul float %i.nd, 5.000000e-01
  store <2 x float> %i.ne, ptr %i.lw, align 4, !tbaa !77
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store float %i.nf, ptr %.sroa.445.0..sroa_idx, align 4, !tbaa !77
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.nh = load float, ptr %i.fk, align 4, !tbaa !129 ; 2 uses
  %i.ni = fcmp oeq float %i.nh, 0.000000e+00
  br i1 %i.ni, label %b3MakeSoft.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !130
  %i.nm = load float, ptr %i.nj, align 8, !tbaa !102
  %i.nn = fmul float %i.nh, f0x40C90FDB           ; 2 uses
  %i.no = fmul float %i.nl, 2.000000e+00
  %i.np = fmul float %i.nn, %i.nm                 ; 2 uses
  %i.nq = fadd float %i.no, %i.np                 ; 2 uses
  %i.nr = fmul float %i.np, %i.nq                 ; 2 uses
  %i.ns = fadd float %i.nr, 1.000000e+00
  %i.nt = fdiv float 1.000000e+00, %i.ns          ; 2 uses
  %i.nu = fdiv float %i.nn, %i.nq
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.nv = fmul float %i.nr, %i.nt
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.nv, i64 1
  br label %b3MakeSoft.exit

b3MakeSoft.exit:                                  ; preds = %bb.ae, %bb.af
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.af ], [ zeroinitializer, %bb.ae ]
  %.sroa.5.0.i = phi float [ %i.nt, %bb.af ], [ 0.000000e+00, %bb.ae ]
  store <2 x float> %.sroa.014.0.i, ptr %i.ng, align 4, !tbaa !77
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !77
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.nx = load i8, ptr %i.nw, align 4, !tbaa !131 ; 3 uses
  %i.ny = icmp ult i8 %i.nx, 2
  br i1 %i.ny, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %b3MakeSoft.exit
  %i.nz = zext i8 %i.nx to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @33, i64 %i.nz) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %b3MakeSoft.exit
  %i.oa = icmp eq i8 %i.nx, 0
  br i1 %i.oa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.ob, align 4, !tbaa !77
  %.sroa_idx246 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %.sroa_idx246, align 4, !tbaa !77
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartParallelJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !func_sanitize !78 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5102.0.copyload = load float, ptr %.sroa.5102.0..sroa_idx, align 4, !tbaa !77
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.8105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.8105.0.copyload = load float, ptr %.sroa.8105.0..sroa_idx, align 4, !tbaa !77
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !77
  %i.h = load <2 x float>, ptr %.sroa.6103.0..sroa_idx, align 4, !tbaa !77
  %i.i = load <2 x float>, ptr %.sroa.9106.0..sroa_idx, align 4, !tbaa !77
  %.sroa.11108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.11108.0.copyload = load float, ptr %.sroa.11108.0..sroa_idx, align 4, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !77
  %.sroa.6.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !77
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %3 = load <2 x float>, ptr %i.j, align 4, !tbaa !77
  %4 = load <2 x float>, ptr %.sroa.6.0..sroa_idx98, align 4, !tbaa !77
  %5 = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !77
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.m = load i32, ptr %i.l, align 4, !tbaa !100  ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ne ptr %1, null, !nosanitize !10
  %i.p = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.q = and i64 %i.p, 7, !nosanitize !10
  %i.r = icmp eq i64 %i.q, 0, !nosanitize !10
  %i.s = and i1 %i.o, %i.r, !nosanitize !10
  br i1 %i.s, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.p) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103  ; 3 uses
  %i.v = sext i32 %i.m to i64                     ; 2 uses
  %i.w = getelementptr inbounds [56 x i8], ptr %i.u, i64 %i.v
  %i.x = mul nsw i64 %i.v, 56
  %i.y = ptrtoint ptr %i.u to i64, !nosanitize !10 ; 3 uses
  %i.z = add i64 %i.x, %i.y, !nosanitize !10      ; 3 uses
  %i.aa = icmp ne ptr %i.u, null, !nosanitize !10
  %i.ab = icmp eq i64 %i.z, 0
  %i.ac = xor i1 %i.aa, %i.ab
  %i.ad = icmp uge i64 %i.z, %i.y, !nosanitize !10
  %i.ae = icmp slt i32 %i.m, 0
  %i.af = xor i1 %i.ae, %i.ad
  %i.ag = and i1 %i.ac, %i.af, !nosanitize !10
  br i1 %i.ag, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.y, i64 %i.z) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ah = phi ptr [ %2, %bb.c ], [ %i.w, %bb.f ]  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !101 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp ne ptr %1, null, !nosanitize !10
  %i.am = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !10
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !10
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !10
  br i1 %i.ap, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.am) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !103 ; 3 uses
  %i.as = sext i32 %i.aj to i64                   ; 2 uses
  %i.at = getelementptr inbounds [56 x i8], ptr %i.ar, i64 %i.as
  %i.au = mul nsw i64 %i.as, 56
  %i.av = ptrtoint ptr %i.ar to i64, !nosanitize !10 ; 3 uses
  %i.aw = add i64 %i.au, %i.av, !nosanitize !10   ; 3 uses
  %i.ax = icmp ne ptr %i.ar, null, !nosanitize !10
  %i.ay = icmp eq i64 %i.aw, 0
  %i.az = xor i1 %i.ax, %i.ay
  %i.ba = icmp uge i64 %i.aw, %i.av, !nosanitize !10
  %i.bb = icmp slt i32 %i.aj, 0
  %i.bc = xor i1 %i.bb, %i.ba
  %i.bd = and i1 %i.az, %i.bc, !nosanitize !10
  br i1 %i.bd, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.av, i64 %i.aw) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.be = phi ptr [ %2, %bb.h ], [ %i.at, %bb.k ] ; 5 uses
  %i.bf = icmp ne ptr %i.ah, null, !nosanitize !10
  %i.bg = ptrtoint ptr %i.ah to i64, !nosanitize !10 ; 2 uses
  %i.bh = and i64 %i.bg, 3, !nosanitize !10
  %i.bi = icmp eq i64 %i.bh, 0, !nosanitize !10
  %i.bj = and i1 %i.bf, %i.bi, !nosanitize !10
  br i1 %i.bj, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.bg) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  %i.bl = icmp ne ptr %i.be, null, !nosanitize !10
  %i.bm = ptrtoint ptr %i.be to i64, !nosanitize !10 ; 2 uses
  %i.bn = and i64 %i.bm, 3, !nosanitize !10
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !10
  %i.bp = and i1 %i.bl, %i.bo, !nosanitize !10
  br i1 %i.bp, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.bm) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.bq, align 4, !tbaa !77
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.bs, align 4
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 4
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.bt, align 4
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !77 ; 2 uses
  %6 = shufflevector <2 x float> %i.bu, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %7 = shufflevector <2 x float> %i.bu, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %8 = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %9 = insertelement <3 x float> %8, float %.sroa.239.0.copyload, i64 0
  %10 = fmul <3 x float> %7, %9
  %11 = shufflevector <2 x float> %.sroa.038.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %12 = insertelement <3 x float> %11, float %.sroa.237.0.copyload, i64 0
  %13 = fmul <3 x float> %6, %12
  %14 = fadd <3 x float> %13, %10                 ; 6 uses
  %i.bv = extractelement <3 x float> %14, i64 1   ; 2 uses
  %i.bw = extractelement <3 x float> %14, i64 2   ; 2 uses
  %i.bx = extractelement <3 x float> %14, i64 0   ; 2 uses
  %15 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %16 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %17 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = fmul float %.sroa.5.0.copyload, %i.bv
  %i.bz = fmul float %.sroa.8.0.copyload, %i.bw
  %i.ca = fadd float %i.by, %i.bz
  %18 = fmul <2 x float> %3, %15
  %19 = fmul <2 x float> %4, %16
  %20 = fadd <2 x float> %18, %19
  %21 = fmul <2 x float> %5, %17
  %i.cb = fadd <2 x float> %21, %20
  %22 = fmul float %.sroa.11.0.copyload, %i.bx
  %23 = fadd float %22, %i.ca
  %i.cc = fadd <2 x float> %.sroa.042.0.copyload, %i.cb
  %i.cd = fadd float %.sroa.6.0.copyload, %23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !105
  %i.cg = and i32 %i.cf, 4096
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.648.0.copyload = load float, ptr %.sroa.648.0..sroa_idx, align 4, !tbaa !77
  %i.ch = fmul float %.sroa.11108.0.copyload, %i.bx
  %i.ci = fmul float %.sroa.5102.0.copyload, %i.bv
  %i.cj = fmul float %.sroa.8105.0.copyload, %i.bw
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = fadd float %i.ch, %i.ck
  %i.cm = fsub float %.sroa.648.0.copyload, %i.cl
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.bk, align 4, !tbaa !77
  %i.cn = fmul <2 x float> %i.i, %17
  %i.co = fmul <2 x float> %i.g, %15
  %i.cp = fmul <2 x float> %i.h, %16
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = fadd <2 x float> %i.cn, %i.cq
  %i.cs = fsub <2 x float> %.sroa.046.0.copyload, %i.cr
  store <2 x float> %i.cs, ptr %i.bk, align 4, !tbaa !77
  store float %i.cm, ptr %.sroa.648.0..sroa_idx, align 4, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !105
  %i.cv = and i32 %i.cu, 4096
  %.not75 = icmp eq i32 %i.cv, 0
  br i1 %.not75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store <2 x float> %i.cc, ptr %i.bq, align 4, !tbaa !77
  store float %i.cd, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !77
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden void @b3SolveParallelJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !func_sanitize !78 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @42, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.6535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.6535.0.copyload = load float, ptr %.sroa.6535.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  %.sroa.7538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.9544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.9544.0.copyload = load float, ptr %.sroa.9544.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  %.sroa.10547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !77 ; 2 uses
  %i.h = load <2 x float>, ptr %.sroa.7538.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  %i.i = load <2 x float>, ptr %.sroa.10547.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  %.sroa.12553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.12553.0.copyload = load float, ptr %.sroa.12553.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.6512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.6512.0.copyload = load float, ptr %.sroa.6512.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  %.sroa.7515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.9.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx520, align 4, !tbaa !77 ; 2 uses
  %.sroa.10523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !77 ; 3 uses
  %i.l = load <2 x float>, ptr %.sroa.7515.0..sroa_idx, align 4, !tbaa !77 ; 3 uses
  %i.m = load <2 x float>, ptr %.sroa.10523.0..sroa_idx, align 4, !tbaa !77 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !77 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.p = load i32, ptr %i.o, align 4, !tbaa !100  ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ne ptr %1, null, !nosanitize !10
  %i.s = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.t = and i64 %i.s, 7, !nosanitize !10
  %i.u = icmp eq i64 %i.t, 0, !nosanitize !10
  %i.v = and i1 %i.r, %i.u, !nosanitize !10
  br i1 %i.v, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.s) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !103  ; 3 uses
  %i.y = sext i32 %i.p to i64                     ; 2 uses
  %i.z = getelementptr inbounds [56 x i8], ptr %i.x, i64 %i.y
  %i.aa = mul nsw i64 %i.y, 56
  %i.ab = ptrtoint ptr %i.x to i64, !nosanitize !10 ; 3 uses
  %i.ac = add i64 %i.aa, %i.ab, !nosanitize !10   ; 3 uses
  %i.ad = icmp ne ptr %i.x, null, !nosanitize !10
  %i.ae = icmp eq i64 %i.ac, 0
  %i.af = xor i1 %i.ad, %i.ae
  %i.ag = icmp uge i64 %i.ac, %i.ab, !nosanitize !10
  %i.ah = icmp slt i32 %i.p, 0
  %i.ai = xor i1 %i.ah, %i.ag
  %i.aj = and i1 %i.af, %i.ai, !nosanitize !10
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @44, i64 %i.ab, i64 %i.ac) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ak = phi ptr [ %2, %bb.c ], [ %i.z, %bb.f ]  ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.am = load i32, ptr %i.al, align 4, !tbaa !101 ; 3 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ne ptr %1, null, !nosanitize !10
  %i.ap = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.aq = and i64 %i.ap, 7, !nosanitize !10
  %i.ar = icmp eq i64 %i.aq, 0, !nosanitize !10
  %i.as = and i1 %i.ao, %i.ar, !nosanitize !10
  br i1 %i.as, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.ap) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103 ; 3 uses
  %i.av = sext i32 %i.am to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [56 x i8], ptr %i.au, i64 %i.av
  %i.ax = mul nsw i64 %i.av, 56
  %i.ay = ptrtoint ptr %i.au to i64, !nosanitize !10 ; 3 uses
  %i.az = add i64 %i.ax, %i.ay, !nosanitize !10   ; 3 uses
  %i.ba = icmp ne ptr %i.au, null, !nosanitize !10
  %i.bb = icmp eq i64 %i.az, 0
  %i.bc = xor i1 %i.ba, %i.bb
  %i.bd = icmp uge i64 %i.az, %i.ay, !nosanitize !10
  %i.be = icmp slt i32 %i.am, 0
  %i.bf = xor i1 %i.be, %i.bd
  %i.bg = and i1 %i.bc, %i.bf, !nosanitize !10
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @46, i64 %i.ay, i64 %i.az) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bh = phi ptr [ %2, %bb.h ], [ %i.aw, %bb.k ] ; 7 uses
  %i.bi = icmp ne ptr %i.ak, null, !nosanitize !10
  %i.bj = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.bk = and i64 %i.bj, 3, !nosanitize !10
  %i.bl = icmp eq i64 %i.bk, 0, !nosanitize !10
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !10
  br i1 %i.bm, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @47, i64 %i.bj) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %.sroa.0232.0.copyload = load <2 x float>, ptr %i.bn, align 4, !tbaa !77 ; 4 uses
  %.sroa.7235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 20 ; 2 uses
  %.sroa.7235.0.copyload = load float, ptr %.sroa.7235.0..sroa_idx, align 4, !tbaa !77 ; 4 uses
  %i.bo = icmp ne ptr %i.bh, null, !nosanitize !10
  %i.bp = ptrtoint ptr %i.bh to i64, !nosanitize !10 ; 2 uses
  %i.bq = and i64 %i.bp, 3, !nosanitize !10
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !10
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !10
  br i1 %i.bs, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @48, i64 %i.bp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 2 uses
  %.sroa.0226.0.copyload = load <2 x float>, ptr %i.bt, align 4, !tbaa !77 ; 5 uses
  %.sroa.7229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 20 ; 2 uses
  %.sroa.7229.0.copyload = load float, ptr %.sroa.7229.0..sroa_idx, align 4, !tbaa !77 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !97  ; 3 uses
  %i.bw = icmp ult i8 %i.bv, 2
  br i1 %i.bw, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.bx = zext i8 %i.bv to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @49, i64 %i.bx) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ca = load <2 x float>, ptr %i.by, align 4    ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.cc = load <2 x float>, ptr %i.cb, align 4    ; 5 uses
  %i.cd = load <2 x float>, ptr %i.bz, align 4    ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cf = load <2 x float>, ptr %i.ce, align 4    ; 5 uses
  %shift = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.cf
  %shift589 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop590 = fmul <2 x float> %i.cc, %shift589
  %foldExtExtBinop592 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop590
  %i.cg = shufflevector <2 x float> %foldExtExtBinop592, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cf, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cj = fmul <2 x float> %i.ch, %i.ci
  %i.ck = shufflevector <2 x float> %i.cd, <2 x float> %i.cf, <2 x i32> <i32 1, i32 3>
  %i.cl = fmul <2 x float> %i.ch, %i.ck           ; 2 uses
  %i.cm = fmul <2 x float> %i.ca, %i.cd           ; 2 uses
  %shift594 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop595 = fadd <2 x float> %i.cm, %shift594
  %foldExtExtBinop597 = fmul <2 x float> %i.cc, %i.cf
  %foldExtExtBinop599 = fadd <2 x float> %foldExtExtBinop597, %foldExtExtBinop595
  %i.cn = shufflevector <2 x float> %i.cc, <2 x float> %i.ca, <2 x i32> <i32 0, i32 2>
  %i.co = fmul <2 x float> %i.cn, %i.cd
  %i.cp = fmul <2 x float> %i.ca, %i.ci
  %i.cq = fsub <2 x float> %i.co, %i.cp
  %i.cr = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float -0.000000e+00, i64 3
  %i.ct = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cv = shufflevector <4 x float> %i.cg, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 0, i32 7>
  %i.cw = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = fadd <4 x float> %i.cu, %i.cx
  %i.cz = shufflevector <2 x float> %i.ca, <2 x float> %i.cc, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.da = insertelement <4 x float> %i.cz, float 0.000000e+00, i64 3
  %i.db = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.dc = insertelement <4 x float> %i.db, float 1.000000e+00, i64 3
  %i.dd = fmul <4 x float> %i.da, %i.dc
  %i.de = fadd <4 x float> %i.dd, %i.cy           ; 11 uses
  %i.df = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.cl, <2 x i32> <i32 3, i32 1>
  %i.dg = insertelement <2 x float> %foldExtExtBinop599, float 0.000000e+00, i64 1
  %i.dh = fsub <2 x float> %i.df, %i.dg           ; 3 uses
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dl = load <2 x float>, ptr %i.dj, align 4    ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.dn = load <2 x float>, ptr %i.dm, align 4    ; 5 uses
  %i.do = load <2 x float>, ptr %i.dk, align 4    ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.dq = load <2 x float>, ptr %i.dp, align 4    ; 4 uses
  %i.dr = shufflevector <2 x float> %i.dl, <2 x float> %i.dn, <2 x i32> <i32 1, i32 2>
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.dn, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dv = shufflevector <2 x float> %i.do, <2 x float> %i.dq, <2 x i32> <i32 1, i32 2>
  %i.dw = fmul <2 x float> %i.du, %i.dv
  %i.dx = fsub <2 x float> %i.dt, %i.dw
  %i.dy = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x float> %i.dy, %i.do
  %i.ea = fadd <2 x float> %i.dz, %i.dx
  %i.eb = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ec = fmul <2 x float> %i.dl, %i.eb
  %i.ed = fadd <2 x float> %i.ec, %i.ea           ; 3 uses
  %i.ee = fmul <2 x float> %i.dn, %i.eb           ; 2 uses
  %i.ef = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.ef, %i.eg           ; 2 uses
  %i.ei = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = fmul <2 x float> %i.dl, %i.ei           ; 2 uses
  %i.ek = fsub <2 x float> %i.ej, %i.eh
  %i.el = fadd <2 x float> %i.ej, %i.eh
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.en = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.en, %i.eo
  %i.eq = fadd <2 x float> %i.em, %i.ep           ; 2 uses
  %i.er = fadd <2 x float> %i.ee, %i.eq
  %i.es = fsub <2 x float> %i.ee, %i.eq
  %i.et = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.eu = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x float> %i.de, <4 x float> %i.eu, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.ew = shufflevector <2 x float> %i.ed, <2 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ex = fmul <4 x float> %i.ev, %i.ew           ; 4 uses
  %shift601 = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop602 = fadd <4 x float> %i.ex, %shift601
  %shift604 = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop605 = fadd <4 x float> %shift604, %foldExtExtBinop602
  %shift607 = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop608 = fadd <4 x float> %shift607, %foldExtExtBinop605
  %i.ey = extractelement <4 x float> %foldExtExtBinop608, i64 0
  %i.ez = fcmp olt float %i.ey, 0.000000e+00      ; 2 uses
  %i.fa = fneg <2 x float> %i.et
  %i.fb = fneg <2 x float> %i.ed
  %.sroa.0213.0 = select i1 %i.ez, <2 x float> %i.fb, <2 x float> %i.ed ; 4 uses
  %.sroa.7.0 = select i1 %i.ez, <2 x float> %i.fa, <2 x float> %i.et ; 6 uses
  %.sroa.3.8.vec.extract51.i307 = extractelement <2 x float> %.sroa.7.0, i64 0
  %.sroa.3.12.vec.extract53.i312 = extractelement <2 x float> %.sroa.7.0, i64 1
  %i.fc = extractelement <2 x float> %i.dh, i64 0
  %i.fd = fmul float %i.fc, %.sroa.3.12.vec.extract53.i312
  %i.fe = shufflevector <4 x float> %i.de, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ff = fmul <2 x float> %i.fe, %.sroa.0213.0   ; 2 uses
  %shift610 = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop611 = fadd <2 x float> %i.ff, %shift610
  %i.fg = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.fh = extractelement <4 x float> %i.de, i64 1
  %i.fi = fmul float %i.fh, %.sroa.3.8.vec.extract51.i307
  %i.fj = fadd float %i.fi, %i.fg
  %i.fk = shufflevector <4 x float> %i.de, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7> ; 2 uses
  %i.fl = shufflevector <2 x float> %.sroa.7.0, <2 x float> %.sroa.0213.0, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fm = insertelement <4 x float> %i.fl, float 1.000000e+00, i64 3
  %i.fn = fmul <4 x float> %i.fk, %i.fm
  %i.fo = shufflevector <4 x float> %i.de, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 3 uses
  %i.fp = shufflevector <2 x float> %.sroa.0213.0, <2 x float> %.sroa.7.0, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.fq = insertelement <4 x float> %i.fp, float 1.000000e+00, i64 3
  %i.fr = fmul <4 x float> %i.fo, %i.fq
  %i.fs = fsub <4 x float> %i.fn, %i.fr
  %i.ft = shufflevector <2 x float> %.sroa.0213.0, <2 x float> %.sroa.7.0, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.fu = insertelement <4 x float> %i.ft, float 1.000000e+00, i64 3
  %i.fv = fmul <4 x float> %i.di, %i.fu
  %i.fw = fadd <4 x float> %i.fv, %i.fs
  %i.fx = shufflevector <2 x float> %.sroa.7.0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.fy = insertelement <4 x float> %i.fx, float 1.000000e+00, i64 3
  %i.fz = fmul <4 x float> %i.de, %i.fy
  %i.ga = fsub <4 x float> %i.fw, %i.fz           ; 4 uses
  %.scalar = fadd float %i.fd, %i.fj
  %i.gb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gd = icmp eq i8 %i.bv, 0
  br i1 %i.gd, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !132 ; 2 uses
  %i.gg = fcmp ogt float %i.gf, 0.000000e+00
  br i1 %i.gg, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !133
  %i.gj = shufflevector <4 x float> %i.ga, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.gk = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.go = load float, ptr %i.gn, align 4, !tbaa !134
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !135
  %i.gr = fmul <4 x float> %i.gc, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.gs = fmul <4 x float> %i.ga, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.gt = shufflevector <4 x float> %i.ga, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.gu = fmul <4 x float> %i.gt, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.gv = fmul <4 x float> %i.ga, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.gw = fmul <4 x float> %i.gt, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gx = fsub <4 x float> %i.gs, %i.gu
  %i.gy = fadd <4 x float> %i.gr, %i.gx           ; 5 uses
  %shift613 = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop614 = fmul <4 x float> %shift613, %i.gy
  %i.gz = fmul <4 x float> %i.de, %i.gy
  %i.ha = shufflevector <4 x float> %foldExtExtBinop614, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.hb = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.hc = fmul <4 x float> %i.de, %i.hb
  %i.hd = shufflevector <4 x float> %i.ha, <4 x float> %i.hc, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.he = fsub <4 x float> %i.hd, %i.gz
  %i.hf = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hg = fmul <4 x float> %i.di, %i.hf
  %i.hh = fadd <4 x float> %i.hg, %i.he           ; 2 uses
  %i.hi = insertelement <4 x float> %i.de, float 1.000000e+00, i64 3 ; 2 uses
  %i.hj = fmul <4 x float> %i.hi, %i.hh
  %i.hk = shufflevector <4 x float> %i.hh, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hl = fmul <4 x float> %i.fo, %i.hk
  %i.hm = fsub <4 x float> %i.hj, %i.hl
  %i.hn = fmul <4 x float> %i.hm, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.ho = fadd <4 x float> %i.gy, %i.hn
  %i.hp = fmul <4 x float> %i.ho, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00> ; 12 uses
  %i.hq = fsub <4 x float> %i.gv, %i.gw
  %3 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.gr, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %4 = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %3, <4 x float> %4, <4 x i32> <i32 0, i32 4, i32 0, i32 3>
  %i.hr = fadd <4 x float> %5, %i.hq              ; 4 uses
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ht = fmul <4 x float> %i.fk, %i.hs
  %i.hu = fmul <4 x float> %i.de, %i.hr
  %i.hv = fsub <4 x float> %i.ht, %i.hu
  %i.hw = shufflevector <4 x float> %i.hr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hx = fmul <4 x float> %i.di, %i.hw
  %i.hy = fadd <4 x float> %i.hx, %i.hv           ; 2 uses
  %i.hz = fmul <4 x float> %i.hi, %i.hy
  %i.ia = shufflevector <4 x float> %i.hy, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ib = fmul <4 x float> %i.fo, %i.ia
  %i.ic = fsub <4 x float> %i.hz, %i.ib
  %i.id = fmul <4 x float> %i.ic, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.ie = fadd <4 x float> %i.hr, %i.id
  %i.if = fmul <4 x float> %i.ie, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -0.000000e+00> ; 13 uses
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ii = shufflevector <4 x float> %i.hp, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  store <2 x float> %i.ii, ptr %i.ih, align 4, !tbaa !77
  %.sroa.9206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ij = extractelement <4 x float> %i.hp, i64 2
  store float %i.ij, ptr %.sroa.9206.0..sroa_idx, align 4, !tbaa !77
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %i.ig, ptr %i.ik, align 4, !tbaa !77
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.il = extractelement <4 x float> %i.if, i64 2 ; 2 uses
  store float %i.il, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !77
  %i.im = insertelement <2 x float> poison, float %.sroa.6535.0.copyload, i64 0
  %i.in = insertelement <2 x float> %i.im, float %.sroa.9544.0.copyload, i64 1
  %i.io = insertelement <2 x float> poison, float %.sroa.6512.0.copyload, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %.sroa.9.0.copyload, i64 1
  %i.iq = fadd <2 x float> %i.in, %i.ip           ; 2 uses
  %i.ir = fadd float %.sroa.12553.0.copyload, %.sroa.12.0.copyload
  %i.is = extractelement <4 x float> %i.if, i64 0
  %i.it = extractelement <4 x float> %i.if, i64 1
  %i.iu = fsub float %.sroa.7229.0.copyload, %.sroa.7235.0.copyload
  %i.iv = fadd <2 x float> %i.g, %i.k             ; 2 uses
  %i.iw = fadd <2 x float> %i.h, %i.l             ; 2 uses
  %i.ix = fadd <2 x float> %i.i, %i.m             ; 2 uses
  %i.iy = shufflevector <4 x float> %i.if, <4 x float> %i.hp, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.iz = fmul <2 x float> %i.iq, %i.iy
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jb = shufflevector <4 x float> %i.hp, <4 x float> %i.if, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.jc = fmul <2 x float> %i.iq, %i.jb
  %i.jd = fadd <2 x float> %i.jc, %i.ja
  %i.je = shufflevector <4 x float> %i.if, <4 x float> %i.hp, <2 x i32> <i32 0, i32 4>
  %i.jf = fmul <2 x float> %i.iv, %i.je
  %i.jg = shufflevector <4 x float> %i.if, <4 x float> %i.hp, <2 x i32> <i32 1, i32 5>
  %i.jh = fmul <2 x float> %i.iw, %i.jg
  %i.ji = fadd <2 x float> %i.jf, %i.jh
  %i.jj = shufflevector <4 x float> %i.if, <4 x float> %i.hp, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.jk = fmul <2 x float> %i.ix, %i.jj
  %i.jl = fadd <2 x float> %i.jk, %i.ji           ; 2 uses
  %i.jm = shufflevector <4 x float> %i.hp, <4 x float> %i.if, <2 x i32> <i32 0, i32 4>
  %i.jn = fmul <2 x float> %i.iv, %i.jm
  %i.jo = shufflevector <4 x float> %i.hp, <4 x float> %i.if, <2 x i32> <i32 1, i32 5>
  %i.jp = fmul <2 x float> %i.iw, %i.jo
  %i.jq = fadd <2 x float> %i.jn, %i.jp
  %i.jr = shufflevector <4 x float> %i.hp, <4 x float> %i.if, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.js = fmul <2 x float> %i.ix, %i.jr
  %i.jt = fadd <2 x float> %i.js, %i.jq           ; 2 uses
  %i.ju = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %i.jv, %i.jr
  %i.jx = fadd <2 x float> %i.jw, %i.jd           ; 2 uses
  %i.jy = fmul <2 x float> %i.ii, %i.jl
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = fmul <2 x float> %i.ii, %i.jt
  %i.kb = fadd <2 x float> %i.ka, %i.jz
  %i.kc = shufflevector <4 x float> %i.hp, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kd = fmul <2 x float> %i.kc, %i.jx
  %i.ke = extractelement <2 x float> %i.jl, i64 0
  %i.kf = fmul float %i.is, %i.ke
  %i.kg = extractelement <2 x float> %i.jt, i64 1
  %i.kh = fmul float %i.it, %i.kg
  %i.ki = fadd float %i.kf, %i.kh
  %i.kj = extractelement <2 x float> %i.jx, i64 1
  %i.kk = fmul float %i.il, %i.kj
  %i.kl = fadd float %i.kk, %i.ki                 ; 2 uses
  %i.km = fadd <2 x float> %i.kd, %i.kb           ; 4 uses
  %i.kn = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.0232.0.copyload ; 2 uses
  %i.ko = fmul <2 x float> %i.kn, %i.iy
  %i.kp = fmul <2 x float> %i.kn, %i.jb
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kr = fadd <2 x float> %i.ko, %i.kq
  %i.ks = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %i.kt, %i.jj
  %i.kv = fadd <2 x float> %i.ku, %i.kr
  %i.kw = icmp ne ptr %1, null, !nosanitize !10
  %i.kx = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.ky = and i64 %i.kx, 7, !nosanitize !10
  %i.kz = icmp eq i64 %i.ky, 0, !nosanitize !10
  %i.la = and i1 %i.kw, %i.kz, !nosanitize !10
  br i1 %i.la, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @50, i64 %i.kx) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lc = load float, ptr %i.lb, align 8, !tbaa !102
  %i.ld = fmul float %i.gf, %i.lc                 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.lf = load <2 x float>, ptr %i.le, align 4, !tbaa !77 ; 4 uses
  %i.lg = insertelement <2 x float> %i.km, float %i.kl, i64 0
  %i.lh = fmul <2 x float> %i.km, %i.lg           ; 2 uses
  %shift616 = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fsub <2 x float> %i.lh, %shift616
  %i.li = extractelement <2 x float> %foldExtExtBinop617, i64 0 ; 2 uses
  %i.lj = fcmp ogt float %i.li, f0x057A0000
  br i1 %i.lj, label %bb.x, label %b3Solve2.exit

bb.x:                                             ; preds = %bb.w
  %i.lk = fadd <2 x float> %i.kv, %i.gm           ; 3 uses
  %i.ll = fdiv float 1.000000e+00, %i.li          ; 4 uses
  %i.lm = fmul float %i.kl, %i.ll
  %i.ln = extractelement <2 x float> %i.lk, i64 1
  %i.lo = fmul float %i.lm, %i.ln
  %i.lp = extractelement <2 x float> %i.km, i64 1
  %i.lq = fmul float %i.lp, %i.ll
  %i.lr = extractelement <2 x float> %i.lk, i64 0
  %i.ls = fmul float %i.lq, %i.lr
  %i.lt = fsub float %i.lo, %i.ls
  %.sroa.0.0.vec.insert.i418 = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lu = fneg float %i.ll
  %i.lv = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %i.lu, i64 1
  %i.lx = fmul <2 x float> %i.km, %i.lw
  %i.ly = fmul <2 x float> %i.lx, %i.lk           ; 2 uses
  %shift619 = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop620 = fadd <2 x float> %shift619, %i.ly
  %.sroa.0.4.vec.insert.i419 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i418, <2 x float> %foldExtExtBinop620, <2 x i32> <i32 0, i32 2>
  br label %b3Solve2.exit

b3Solve2.exit:                                    ; preds = %bb.w, %bb.x
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i419, %bb.x ], [ zeroinitializer, %bb.w ]
  %i.lz = fneg float %i.go
  %.sroa.0470.4.vec.extract476 = extractelement <2 x float> %i.lf, i64 1
  %i.ma = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = fmul <2 x float> %.sroa.0.0.i, %i.mb
  %i.md = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x float> %i.me, %i.lf
  %i.mg = fsub <2 x float> %i.mc, %i.mf
  %i.mh = fadd <2 x float> %i.lf, %i.mg           ; 6 uses
  store <2 x float> %i.mh, ptr %i.le, align 4, !tbaa !77
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %i.mh, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %i.mh, i64 1
  %i.mi = fmul <2 x float> %i.mh, %i.mh
  %i.mj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mi) ; 2 uses
  %i.mk = fmul float %i.ld, %i.ld
  %i.ml = fcmp ogt float %i.mj, %i.mk
  br i1 %i.ml, label %bb.y, label %bb.z

bb.y:                                             ; preds = %b3Solve2.exit
  %sqrt.i = call float @llvm.sqrt.f32(float %i.mj)
  %i.mm = fdiv float %i.ld, %sqrt.i
  %i.mn = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mp = fmul <2 x float> %i.mo, %i.mh           ; 3 uses
  store <2 x float> %i.mp, ptr %i.le, align 4, !tbaa !77
  %.pre573 = extractelement <2 x float> %i.mp, i64 0
  %.pre574 = extractelement <2 x float> %i.mp, i64 1
  br label %bb.z

bb.z:                                             ; preds = %b3Solve2.exit, %bb.y
  %.sroa.02.4.vec.extract.i.pre-phi = phi float [ %.sroa.01.4.vec.extract.i.i, %b3Solve2.exit ], [ %.pre574, %bb.y ]
  %.sroa.02.0.vec.extract.i.pre-phi = phi float [ %.sroa.01.0.vec.extract.i.i, %b3Solve2.exit ], [ %.pre573, %bb.y ]
  %i.mq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.02.0.vec.extract.i.pre-phi, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ms = shufflevector <2 x float> %i.lf, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.mt = fsub <4 x float> %i.mr, %i.ms
  %i.mu = fsub float %.sroa.02.4.vec.extract.i.pre-phi, %.sroa.0470.4.vec.extract476
  %i.mv = fmul <4 x float> %i.hp, %i.mt
  %i.mw = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.mu, i64 0
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.my = fmul <4 x float> %i.if, %i.mx
  %i.mz = fadd <4 x float> %i.mv, %i.my           ; 7 uses
  %i.na = extractelement <4 x float> %i.mz, i64 0 ; 3 uses
  %i.nb = fmul float %.sroa.6535.0.copyload, %i.na
  %i.nc = extractelement <4 x float> %i.mz, i64 1 ; 3 uses
  %i.nd = fmul float %.sroa.9544.0.copyload, %i.nc
  %i.ne = fadd float %i.nb, %i.nd
  %i.nf = extractelement <4 x float> %i.mz, i64 2 ; 3 uses
  %i.ng = fmul float %.sroa.12553.0.copyload, %i.nf
  %i.nh = fadd float %i.ng, %i.ne
  %i.ni = shufflevector <4 x float> %i.mz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x float> %i.g, %i.ni
  %i.nk = shufflevector <4 x float> %i.mz, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nl = fmul <2 x float> %i.h, %i.nk
  %i.nm = fadd <2 x float> %i.nj, %i.nl
  %i.nn = shufflevector <4 x float> %i.mz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.no = fmul <2 x float> %i.i, %i.nn
  %i.np = fadd <2 x float> %i.no, %i.nm
  %i.nq = fsub <2 x float> %.sroa.0232.0.copyload, %i.np
  %i.nr = fsub float %.sroa.7235.0.copyload, %i.nh
  %i.ns = fmul float %.sroa.6512.0.copyload, %i.na
  %i.nt = fmul float %.sroa.9.0.copyload, %i.nc
end_hunk_0
