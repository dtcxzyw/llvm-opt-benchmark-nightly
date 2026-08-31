Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@VULKAN_CreateGraphicsPipeline:bb.a
bb.aw:                                            ; preds = %bb.av
  call void (i32, ptr, ...) @SDL_LogWarn_REAL(i32 noundef 9, ptr noundef nonnull @.str.331) #13
  store i8 1, ptr %i.ip, align 1
  br label %SDLToVK_PolygonMode.exit

SDLToVK_PolygonMode.exit:                         ; preds = %._crit_edge, %bb.au, %bb.av, %bb.aw
  %.0.i = phi i32 [ 1, %bb.au ], [ 0, %._crit_edge ], [ 0, %bb.aw ], [ 0, %bb.av ]
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.0.i, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CullMode, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 %i.iw, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_IndexType, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 %i.jc, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.jf = load i8, ptr %i.je, align 4, !range !3, !noundef !4
  %i.jg = zext nneg i8 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %i.jg, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.jk = load <2 x float>, ptr %i.ji, align 8
  store <2 x float> %i.jk, ptr %i.jj, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jm = load float, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 52
  store float %i.jm, ptr %i.jn, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 56
  store float 1.000000e+00, ptr %i.jo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 -1, ptr %i.d, align 4
  store i32 24, ptr %15, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.jq, align 8
  %i.jr = load i32, ptr %i.w, align 8
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4
  %i.jv = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 %i.ju, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 0, ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %15, i64 28
  store float 1.000000e+00, ptr %i.jx, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.d, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ka = load i8, ptr %i.jz, align 1, !range !3, !noundef !4
  %i.kb = zext nneg i8 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %i.kb, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 44
  store i32 0, ptr %i.kd, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kg = load i32, ptr %i.kf, align 8
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kq = load i32, ptr %i.kp, align 8
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.la = load i8, ptr %i.kz, align 8
  %i.lb = zext i8 %i.la to i32                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i32                    ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lg = load i32, ptr %i.lf, align 8
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.lq = load i32, ptr %i.lp, align 8
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4
  store i32 25, ptr %16, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.mc = load i8, ptr %i.mb, align 2, !range !3, !noundef !4
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 %i.md, ptr %i.me, align 4
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.mg = load i8, ptr %i.mf, align 1, !range !3, !noundef !4
  %i.mh = zext nneg i8 %i.mg to i32
  %i.mi = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.mh, ptr %i.mi, align 8
  %i.mj = load i32, ptr %i.ke, align 4
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_CompareOp, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %i.mm, ptr %i.mn, align 4
  %i.mo = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 0, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.mq = load i8, ptr %i.mp, align 4, !range !3, !noundef !4
  %i.mr = zext nneg i8 %i.mq to i32
  %i.ms = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %i.mr, ptr %i.ms, align 4
  %i.mt = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %i.kj, ptr %i.mt, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.ko, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i32 %i.kt, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 52
  store i32 %i.ky, ptr %.sroa.641.0..sroa_idx, align 4
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store i32 %i.lb, ptr %.sroa.742.0..sroa_idx, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 60
  store i32 %i.le, ptr %.sroa.843.0..sroa_idx, align 4
  %.sroa.944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i32 0, ptr %.sroa.944.0..sroa_idx, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %16, i64 68
  store i32 %i.lj, ptr %i.mu, align 4
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i32 %i.lo, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 76
  store i32 %i.lt, ptr %.sroa.533.0..sroa_idx, align 4
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i32 %i.ly, ptr %.sroa.634.0..sroa_idx, align 8
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 84
  store i32 %i.lb, ptr %.sroa.735.0..sroa_idx, align 4
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 88
  store i32 %i.le, ptr %.sroa.836.0..sroa_idx, align 8
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 92
  store i32 0, ptr %.sroa.937.0..sroa_idx, align 4
  %i.mv = getelementptr inbounds nuw i8, ptr %16, i64 96
  store <2 x float> zeroinitializer, ptr %i.mv, align 8
  %i.mw = load i32, ptr %i.r, align 8             ; 3 uses
  %.not220 = icmp eq i32 %i.mw, 0
  br i1 %.not220, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %SDLToVK_PolygonMode.exit
  %i.mx = load ptr, ptr %i.q, align 8
  %wide.trip.count230 = zext i32 %i.mw to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph215, %bb.ax
  %indvars.iv227 = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next228, %bb.ax ] ; 3 uses
  %i.my = getelementptr inbounds nuw [36 x i8], ptr %i.mx, i64 %indvars.iv227 ; 9 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.mz, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 20
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 28
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 29
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 30
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 2
  %i.na = trunc i8 %.sroa.11.0.copyload to i1
  %narrow = select i1 %i.na, i8 %.sroa.9.0.copyload, i8 15
  %i.nb = and i8 %.sroa.10.0.copyload, 1
  %i.nc = zext nneg i8 %i.nb to i32
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv227 ; 8 uses
  store i32 %i.nc, ptr %i.nd, align 16
  %i.ne = zext i32 %.sroa.0.0.copyload to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  store i32 %i.ng, ptr %i.nh, align 4
  %i.ni = zext i32 %.sroa.4.0.copyload to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i32 %i.nk, ptr %i.nl, align 8
  %i.nm = zext i32 %.sroa.5.0.copyload to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendOp, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 %i.no, ptr %i.np, align 4
  %i.nq = zext i32 %.sroa.6.0.copyload to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i32 %i.ns, ptr %i.nt, align 16
  %i.nu = zext i32 %.sroa.7.0.copyload to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendFactor, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  store i32 %i.nw, ptr %i.nx, align 4
  %i.ny = zext i32 %.sroa.8.0.copyload to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_BlendOp, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  store i32 %i.oa, ptr %i.ob, align 8
  %i.oc = zext i8 %narrow to i32
  %i.od = getelementptr inbounds nuw i8, ptr %i.nd, i64 28
  store i32 %i.oc, ptr %i.od, align 4
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %._crit_edge216, label %bb.ax, !llvm.loop !64

._crit_edge216:                                   ; preds = %bb.ax, %SDLToVK_PolygonMode.exit
  store i32 26, ptr %17, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i32 %i.mw, ptr %i.og, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %i.v, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %17, i64 40
  store <4 x float> splat (float 1.000000e+00), ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.oj, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 0, ptr %i.ok, align 8
  %i.ol = load ptr, ptr %i.cg, align 8            ; 4 uses
  %i.om = load ptr, ptr %i.cv, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 20 ; 3 uses
  %i.oo = load <4 x i32>, ptr %i.on, align 4
  store <4 x i32> %i.oo, ptr %2, align 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 20 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.or = load <4 x i32>, ptr %i.op, align 4
  store <4 x i32> %i.or, ptr %i.oq, align 16
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8
  call void @SDL_LockMutex_REAL(ptr noundef %i.ot) #13
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.ov, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  br i1 %i.ow, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge216
  %i.ox = load ptr, ptr %i.os, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.ox) #13
  %i.oy = load ptr, ptr %i.a, align 8
  br label %VULKAN_INTERNAL_FetchGraphicsPipelineResourceLayout.exit

bb.az:                                            ; preds = %._crit_edge216
  %i.oz = getelementptr inbounds nuw i8, ptr %i.om, i64 32 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.om, i64 28 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ol, i64 32 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ol, i64 28 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ol, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.pf = call noalias dereferenceable_or_null(72) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 72) #16
  store ptr %i.pf, ptr %i.a, align 8
  %i.pg = load i32, ptr %i.on, align 4
  %i.ph = load i32, ptr %i.pe, align 8
  %i.pi = load i32, ptr %i.pd, align 4
  %i.pj = call fastcc ptr @VULKAN_INTERNAL_FetchDescriptorSetLayout(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.pg, i32 noundef %i.ph, i32 noundef %i.pi, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.pk = load ptr, ptr %i.a, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store ptr %i.pj, ptr %i.pl, align 8
  %i.pm = load i32, ptr %i.pc, align 8
  %i.pn = call fastcc ptr @VULKAN_INTERNAL_FetchDescriptorSetLayout(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.pm)
  %i.po = load ptr, ptr %i.a, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store ptr %i.pn, ptr %i.pp, align 8
  %i.pq = load i32, ptr %i.op, align 4
  %i.pr = load i32, ptr %i.pb, align 8
  %i.ps = load i32, ptr %i.pa, align 4
  %i.pt = call fastcc ptr @VULKAN_INTERNAL_FetchDescriptorSetLayout(ptr noundef nonnull %0, i32 noundef 16, i32 noundef %i.pq, i32 noundef %i.pr, i32 noundef %i.ps, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %i.pu = load ptr, ptr %i.a, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  store ptr %i.pt, ptr %i.pv, align 8
  %i.pw = load i32, ptr %i.oz, align 8
  %i.px = call fastcc ptr @VULKAN_INTERNAL_FetchDescriptorSetLayout(ptr noundef nonnull %0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.pw) ; 2 uses
  %i.py = load ptr, ptr %i.a, align 8             ; 13 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  store ptr %i.px, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8
  store ptr %i.qd, ptr %i.b, align 16
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.qh, ptr %i.qi, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.qm, ptr %i.qn, align 16
  %i.qo = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.qp, ptr %i.qq, align 8
  %i.qr = load i32, ptr %i.on, align 4
  %i.qs = getelementptr inbounds nuw i8, ptr %i.py, i64 40
  store i32 %i.qr, ptr %i.qs, align 8
  %i.qt = load i32, ptr %i.pe, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.py, i64 44
  store i32 %i.qt, ptr %i.qu, align 4
  %i.qv = load i32, ptr %i.pd, align 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.py, i64 48
  store i32 %i.qv, ptr %i.qw, align 8
  %i.qx = load i32, ptr %i.pc, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.py, i64 52
  store i32 %i.qx, ptr %i.qy, align 4
  %i.qz = load i32, ptr %i.op, align 4
  %i.ra = getelementptr inbounds nuw i8, ptr %i.py, i64 56
  store i32 %i.qz, ptr %i.ra, align 8
  %i.rb = load i32, ptr %i.pb, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.py, i64 60
  store i32 %i.rb, ptr %i.rc, align 4
  %i.rd = load i32, ptr %i.pa, align 4
  %i.re = getelementptr inbounds nuw i8, ptr %i.py, i64 64
  store i32 %i.rd, ptr %i.re, align 8
  %i.rf = load i32, ptr %i.oz, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.py, i64 68
  store i32 %i.rf, ptr %i.rg, align 4
  store i32 30, ptr %3, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.rh, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ri, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 4, ptr %i.rj, align 4
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.b, ptr %i.rk, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.rl, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = load ptr, ptr %i.bt, align 8
  %i.rq = call i32 %i.ro(ptr noundef %i.rp, ptr noundef nonnull %3, ptr noundef null, ptr noundef %i.py) #13, !inline_history !65 ; 3 uses
  %.not.i187 = icmp eq i32 %i.rq, 0
  br i1 %.not.i187, label %bb.cm, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rr = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i.i, label %VULKAN_INTERNAL_DestroyGraphicsPipelineResourceLayout.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = load ptr, ptr %i.bt, align 8
  call void %i.ru(ptr noundef %i.rv, ptr noundef nonnull %i.rs, ptr noundef null) #13, !inline_history !66
  br label %VULKAN_INTERNAL_DestroyGraphicsPipelineResourceLayout.exit.i

VULKAN_INTERNAL_DestroyGraphicsPipelineResourceLayout.exit.i: ; preds = %bb.bb, %bb.ba
  call void @SDL_free_REAL(ptr noundef nonnull %i.rr) #13
  %i.rw = load ptr, ptr %i.os, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.rw) #13
  %i.rx = load i8, ptr %i.dj, align 4, !range !3, !noundef !4
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %bb.bc, label %bb.bu

bb.bc:                                            ; preds = %VULKAN_INTERNAL_DestroyGraphicsPipelineResourceLayout.exit.i
  switch i32 %i.rq, label %bb.bt [
    i32 -1, label %VkErrorMessages.exit.i190
    i32 -2, label %bb.bd
    i32 -12, label %bb.be
    i32 -1000069000, label %bb.bf
    i32 -3, label %bb.bg
    i32 -6, label %bb.bh
    i32 -7, label %bb.bi
    i32 -8, label %bb.bj
    i32 -10, label %bb.bk
    i32 -4, label %bb.bl
    i32 -9, label %bb.bm
    i32 -1000001004, label %bb.bn
    i32 -1000000000, label %bb.bo
    i32 -1000255000, label %bb.bp
    i32 1000001003, label %bb.bq
    i32 -1000000001, label %bb.br
    i32 -1000012000, label %bb.bs
  ]

bb.bd:                                            ; preds = %bb.bc
  br label %VkErrorMessages.exit.i190

bb.be:                                            ; preds = %bb.bc
  br label %VkErrorMessages.exit.i190

bb.bf:                                            ; preds = %bb.bc
  br label %VkErrorMessages.exit.i190

bb.bg:                                            ; preds = %bb.bc
  br label %VkErrorMessages.exit.i190

end_hunk_0
