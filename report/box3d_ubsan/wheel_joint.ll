Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/wheel_joint?download=true
inline.NumInlined: 311
inline.NumDeleted: 26
begin_hunk_0_@b3PrepareWheelJoint:bb.a
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.ui = insertelement <2 x float> %i.uh, float %i.nt, i64 1
  %i.uj = fmul <2 x float> %i.ug, %i.ui
  %i.uk = fadd <2 x float> %i.ue, %i.uj
  %i.ul = insertelement <2 x float> %i.ro, float %i.tn, i64 0
  %i.um = fmul <2 x float> %i.ul, %i.uk
  %i.un = insertelement <2 x float> %i.ry, float %i.ty, i64 0
  %i.uo = fadd <2 x float> %i.un, %i.um
  %i.up = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uq = insertelement <2 x float> %i.up, float %i.ts, i64 0
  %i.ur = fadd <2 x float> %i.uq, %i.uo           ; 2 uses
  %i.us = fcmp ogt <2 x float> %i.ur, zeroinitializer
  %i.ut = fdiv <2 x float> splat (float 1.000000e+00), %i.ur
  %i.uu = select <2 x i1> %i.us, <2 x float> %i.ut, <2 x float> zeroinitializer ; 2 uses
  %i.uv = extractelement <2 x float> %i.uu, i64 1
  store float %i.uv, ptr %i.rn, align 4, !tbaa !134
  %i.uw = extractelement <2 x float> %i.uu, i64 0
  store float %i.uw, ptr %i.sb, align 4, !tbaa !135
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.uy = load i8, ptr %i.ux, align 4, !tbaa !156 ; 3 uses
  %i.uz = icmp ult i8 %i.uy, 2
  br i1 %i.uz, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %b3MakeSoft.exit390
  %i.va = zext i8 %i.uy to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @119, i64 %i.va) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %b3MakeSoft.exit390
  %i.vb = icmp eq i8 %i.uy, 0
  br i1 %i.vb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store <4 x i32> zeroinitializer, ptr %i.eg, align 4, !tbaa !85
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float 0.000000e+00, ptr %i.vc, align 4, !tbaa !136
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x float> zeroinitializer, ptr %i.vd, align 4, !tbaa !85
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 220
  store float 0.000000e+00, ptr %i.ve, align 4, !tbaa !113
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x float> zeroinitializer, ptr %i.vf, align 4, !tbaa !85
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float 0.000000e+00, ptr %i.vg, align 4, !tbaa !137
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartWheelJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !115 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load float, ptr %i.f, align 4, !tbaa !127 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !128 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5951.0.copyload = load float, ptr %.sroa.5951.0..sroa_idx, align 4, !tbaa !85
  %.sroa.6952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.8954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.8954.0.copyload = load float, ptr %.sroa.8954.0..sroa_idx, align 4, !tbaa !85
  %.sroa.9955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !85
  %i.l = load <2 x float>, ptr %.sroa.6952.0..sroa_idx, align 4, !tbaa !85
  %i.m = load <2 x float>, ptr %.sroa.9955.0..sroa_idx, align 4, !tbaa !85
  %.sroa.11957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.11957.0.copyload = load float, ptr %.sroa.11957.0..sroa_idx, align 4, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.0943.0.copyload = load float, ptr %i.n, align 4, !tbaa !85
  %.sroa.4944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.4944.0.copyload = load float, ptr %.sroa.4944.0..sroa_idx, align 4, !tbaa !85
  %.sroa.5945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.5945.0.copyload = load float, ptr %.sroa.5945.0..sroa_idx, align 4, !tbaa !85
  %.sroa.6946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.6946.0.copyload = load float, ptr %.sroa.6946.0..sroa_idx, align 4, !tbaa !85
  %.sroa.7947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.7947.0.copyload = load float, ptr %.sroa.7947.0..sroa_idx, align 4, !tbaa !85
  %.sroa.8948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.8948.0.copyload = load float, ptr %.sroa.8948.0..sroa_idx, align 4, !tbaa !85
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !85
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !85
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.r = load i32, ptr %i.q, align 4, !tbaa !129  ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ne ptr %1, null, !nosanitize !10
  %i.u = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.v = and i64 %i.u, 7, !nosanitize !10
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !10
  %i.x = and i1 %i.t, %i.w, !nosanitize !10
  br i1 %i.x, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @121, i64 %i.u) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !138  ; 3 uses
  %i.aa = sext i32 %i.r to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.aa
  %i.ac = mul nsw i64 %i.aa, 56
  %i.ad = ptrtoint ptr %i.z to i64, !nosanitize !10 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !10   ; 3 uses
  %i.af = icmp ne ptr %i.z, null, !nosanitize !10
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = xor i1 %i.af, %i.ag
  %i.ai = icmp uge i64 %i.ae, %i.ad, !nosanitize !10
  %i.aj = icmp slt i32 %i.r, 0
  %i.ak = xor i1 %i.aj, %i.ai
  %i.al = and i1 %i.ah, %i.ak, !nosanitize !10
  br i1 %i.al, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @122, i64 %i.ad, i64 %i.ae) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.am = phi ptr [ %2, %bb.c ], [ %i.ab, %bb.f ] ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !130 ; 3 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ne ptr %1, null, !nosanitize !10
  %i.ar = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !10
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !10
  %i.au = and i1 %i.aq, %i.at, !nosanitize !10
  br i1 %i.au, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @123, i64 %i.ar) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !138 ; 3 uses
  %i.ax = sext i32 %i.ao to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.ax
  %i.az = mul nsw i64 %i.ax, 56
  %i.ba = ptrtoint ptr %i.aw to i64, !nosanitize !10 ; 3 uses
  %i.bb = add i64 %i.az, %i.ba, !nosanitize !10   ; 3 uses
  %i.bc = icmp ne ptr %i.aw, null, !nosanitize !10
  %i.bd = icmp eq i64 %i.bb, 0
  %i.be = xor i1 %i.bc, %i.bd
  %i.bf = icmp uge i64 %i.bb, %i.ba, !nosanitize !10
  %i.bg = icmp slt i32 %i.ao, 0
  %i.bh = xor i1 %i.bg, %i.bf
  %i.bi = and i1 %i.be, %i.bh, !nosanitize !10
  br i1 %i.bi, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.ba, i64 %i.bb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bj = phi ptr [ %2, %bb.h ], [ %i.ay, %bb.k ] ; 12 uses
  %i.bk = icmp ne ptr %i.am, null, !nosanitize !10
  %i.bl = ptrtoint ptr %i.am to i64, !nosanitize !10 ; 2 uses
  %i.bm = and i64 %i.bl, 3, !nosanitize !10
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !10
  %i.bo = and i1 %i.bk, %i.bn, !nosanitize !10
  br i1 %i.bo, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.bl) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.br = load <2 x float>, ptr %i.bq, align 4    ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.bt = load <2 x float>, ptr %i.bs, align 4    ; 7 uses
  %.sroa.0471.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 3 uses
  %.sroa.2472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.2472.0.copyload = load float, ptr %.sroa.2472.0..sroa_idx, align 4 ; 3 uses
  %3 = shufflevector <2 x float> %i.br, <2 x float> %i.bt, <3 x i32> <i32 0, i32 1, i32 2> ; 2 uses
  %4 = shufflevector <2 x float> %.sroa.0471.0.copyload, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %5 = insertelement <3 x float> %4, float %.sroa.2472.0.copyload, i64 1
  %6 = fmul <3 x float> %3, %5
  %7 = shufflevector <2 x float> %i.br, <2 x float> %i.bt, <3 x i32> <i32 1, i32 2, i32 0> ; 2 uses
  %8 = shufflevector <2 x float> %.sroa.0471.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %9 = insertelement <3 x float> %8, float %.sroa.2472.0.copyload, i64 2 ; 2 uses
  %10 = fmul <3 x float> %7, %9
  %11 = fsub <3 x float> %6, %10
  %12 = shufflevector <2 x float> %i.bt, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1> ; 2 uses
  %13 = shufflevector <2 x float> %.sroa.0471.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.bu = insertelement <3 x float> %13, float %.sroa.2472.0.copyload, i64 0
  %i.bv = fmul <3 x float> %12, %i.bu
  %i.bw = fadd <3 x float> %i.bv, %11             ; 2 uses
  %i.bx = fmul <3 x float> %7, %i.bw
  %14 = fmul <3 x float> %3, %i.bw
  %i.by = shufflevector <3 x float> %14, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.bz = fsub <3 x float> %i.bx, %i.by
  %i.ca = fmul <3 x float> %i.bz, splat (float 2.000000e+00)
  %i.cb = fadd <3 x float> %9, %i.ca              ; 2 uses
  %i.cc = icmp ne ptr %i.bj, null, !nosanitize !10
  %i.cd = ptrtoint ptr %i.bj to i64, !nosanitize !10 ; 2 uses
  %i.ce = and i64 %i.cd, 3, !nosanitize !10
  %i.cf = icmp eq i64 %i.ce, 0, !nosanitize !10
  %i.cg = and i1 %i.cc, %i.cf, !nosanitize !10
  br i1 %i.cg, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %i.cd) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.cj = load <2 x float>, ptr %i.ci, align 4    ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.cl = load <2 x float>, ptr %i.ck, align 4    ; 9 uses
  %.sroa.0461.0.copyload = load <2 x float>, ptr %i.ch, align 4 ; 6 uses
  %.sroa.2462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.2462.0.copyload = load float, ptr %.sroa.2462.0..sroa_idx, align 4 ; 5 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cn = fmul <2 x float> %i.cm, %.sroa.0461.0.copyload
  %i.co = shufflevector <2 x float> %.sroa.0461.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cp = insertelement <2 x float> %i.co, float %.sroa.2462.0.copyload, i64 0
  %i.cq = fmul <2 x float> %i.cj, %i.cp
  %i.cr = fsub <2 x float> %i.cn, %i.cq
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %.sroa.0461.0.copyload
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <2 x float> %i.cl, <2 x float> %i.cj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cx = insertelement <4 x float> %i.cw, float 1.000000e+00, i64 3
  %i.cy = shufflevector <2 x float> %i.cj, <2 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.cz = insertelement <4 x float> %i.cy, float 0.000000e+00, i64 3
  %i.da = shufflevector <2 x float> %.sroa.0461.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.db = insertelement <4 x float> %i.da, float 1.000000e+00, i64 3
  %i.dc = insertelement <4 x float> %i.db, float %.sroa.2462.0.copyload, i64 1
  %i.dd = shufflevector <2 x float> %.sroa.0461.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.de = insertelement <4 x float> %i.dd, float 0.000000e+00, i64 3
  %i.df = insertelement <4 x float> %i.de, float %.sroa.2462.0.copyload, i64 0
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0448.0.copyload = load <2 x float>, ptr %i.dg, align 4
  %.sroa.2449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.2449.0.copyload = load float, ptr %.sroa.2449.0..sroa_idx, align 4
  %.sroa.0446.0.copyload = load <2 x float>, ptr %i.dh, align 4
  %.sroa.2447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.2447.0.copyload = load float, ptr %.sroa.2447.0..sroa_idx, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 340
  %.sroa.0438.0.copyload = load <2 x float>, ptr %i.di, align 4
  %.sroa.2439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.sroa.2439.0.copyload = load float, ptr %.sroa.2439.0..sroa_idx, align 4
  %i.dj = shufflevector <2 x float> %.sroa.0448.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dk = insertelement <3 x float> %i.dj, float %.sroa.2449.0.copyload, i64 2
  %i.dl = shufflevector <2 x float> %.sroa.0446.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dm = insertelement <3 x float> %i.dl, float %.sroa.2447.0.copyload, i64 2
  %i.dn = fsub <3 x float> %i.dk, %i.dm
  %i.do = shufflevector <2 x float> %.sroa.0438.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dp = insertelement <3 x float> %i.do, float %.sroa.2439.0.copyload, i64 2
  %i.dq = fadd <3 x float> %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ds = load <2 x float>, ptr %i.dr, align 4    ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.du = load <2 x float>, ptr %i.dt, align 4    ; 5 uses
  %i.dv = fmul <2 x float> %i.br, %i.ds           ; 2 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop972.a = fadd <2 x float> %i.dv, %shift
  %i.dw = fmul <2 x float> %i.bt, %i.du           ; 2 uses
  %foldExtExtBinop974 = fadd <2 x float> %i.dw, %foldExtExtBinop972.a
  %i.dx = shufflevector <2 x float> %i.br, <2 x float> %i.bt, <3 x i32> <i32 1, i32 0, i32 2>
  %i.dy = shufflevector <2 x float> %i.du, <2 x float> %i.ds, <3 x i32> <i32 0, i32 3, i32 2>
  %i.dz = fmul <3 x float> %i.dx, %i.dy
  %i.ea = shufflevector <2 x float> %i.bt, <2 x float> %i.br, <3 x i32> <i32 0, i32 3, i32 2>
  %i.eb = shufflevector <2 x float> %i.ds, <2 x float> %i.du, <3 x i32> <i32 1, i32 0, i32 2>
  %i.ec = fmul <3 x float> %i.ea, %i.eb
  %i.ed = fsub <3 x float> %i.dz, %i.ec
  %i.ee = shufflevector <2 x float> %i.ds, <2 x float> %i.du, <3 x i32> <i32 0, i32 2, i32 1>
  %i.ef = fmul <3 x float> %12, %i.ee
  %i.eg = fadd <3 x float> %i.ed, %i.ef
  %i.eh = shufflevector <2 x float> %i.br, <2 x float> %i.bt, <3 x i32> <i32 0, i32 2, i32 1>
  %i.ei = shufflevector <2 x float> %i.du, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ej = fmul <3 x float> %i.eh, %i.ei
  %i.ek = fadd <3 x float> %i.ej, %i.eg           ; 15 uses
  %i.el = insertelement <2 x float> %i.dw, float 1.000000e+00, i64 0
  %i.em = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %foldExtExtBinop974, <2 x i32> <i32 0, i32 2>
  %i.en = fsub <2 x float> %i.el, %i.em           ; 4 uses
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.eq = load <2 x float>, ptr %i.ep, align 4    ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.es = load <2 x float>, ptr %i.er, align 4    ; 4 uses
  %shift976 = shufflevector <2 x float> %.sroa.0461.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop977.a = fmul <2 x float> %i.cl, %shift976
  %i.et = extractelement <2 x float> %foldExtExtBinop977.a, i64 0
  %i.eu = shufflevector <2 x float> %i.cj, <2 x float> %i.cl, <4 x i32> <i32 1, i32 3, i32 1, i32 2>
  %i.ev = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.sroa.2462.0.copyload, i64 0
  %i.ew = fmul <4 x float> %i.eu, %i.ev           ; 2 uses
  %i.ex = shufflevector <2 x float> %i.es, <2 x float> %i.eq, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.ey = insertelement <4 x float> %i.ex, float %i.et, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %.sroa.2462.0.copyload, i64 1 ; 2 uses
  %i.fa = fsub <4 x float> %i.ew, %i.ez
  %i.fb = fmul <4 x float> %i.ew, %i.ez           ; 3 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.fd = shufflevector <4 x float> %i.cu, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fe = insertelement <4 x float> %i.fa, float -0.000000e+00, i64 3
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.cv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fg = fadd <4 x float> %i.fd, %i.ff           ; 2 uses
  %i.fh = fmul <4 x float> %i.cx, %i.fg
  %i.fi = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fj = fmul <4 x float> %i.cz, %i.fi
  %i.fk = fsub <4 x float> %i.fh, %i.fj
  %i.fl = fmul <4 x float> %i.fk, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 2 uses
  %i.fm = fadd <4 x float> %i.dc, %i.fl           ; 5 uses
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fo = fadd <4 x float> %i.df, %i.fn
  %i.fp = shufflevector <4 x float> %i.fm, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.fq = fsub <3 x float> %i.fp, %i.cb
  %i.fr = fadd <3 x float> %i.dq, %i.fq
  %foldExtExtBinop979.a = fmul <2 x float> %i.cl, %i.eq
  %foldExtExtBinop981 = fmul <2 x float> %i.cj, %i.es
  %i.fs = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> %foldExtExtBinop979.a, <2 x i32> <i32 0, i32 2>
  %i.fu = shufflevector <4 x float> %i.fb, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> %foldExtExtBinop981, <2 x i32> <i32 0, i32 2>
  %i.fw = fsub <2 x float> %i.ft, %i.fv
  %i.fx = fmul <2 x float> %i.cs, %i.eq
  %i.fy = fadd <2 x float> %i.fx, %i.fw
  %i.fz = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ga = fmul <2 x float> %i.cj, %i.fz
  %i.gb = fadd <2 x float> %i.ga, %i.fy           ; 3 uses
  %i.gc = fmul <2 x float> %i.cl, %i.fz           ; 2 uses
  %i.gd = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ge = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.gd, %i.ge           ; 2 uses
  %i.gg = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = fmul <2 x float> %i.cj, %i.gg           ; 2 uses
  %i.gi = fsub <2 x float> %i.gh, %i.gf
  %i.gj = fadd <2 x float> %i.gh, %i.gf
  %i.gk = shufflevector <2 x float> %i.gi, <2 x float> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.gl = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.gl, %i.gm
  %i.go = fadd <2 x float> %i.gk, %i.gn           ; 2 uses
  %i.gp = fadd <2 x float> %i.gc, %i.go
  %i.gq = fsub <2 x float> %i.gc, %i.go
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> %i.gq, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gs = shufflevector <3 x float> %i.ek, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.gt = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x float> %i.gs, <4 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gv = shufflevector <2 x float> %i.gb, <2 x float> %i.gr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gw = fmul <4 x float> %i.gu, %i.gv           ; 4 uses
  %shift983 = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop984 = fadd <4 x float> %i.gw, %shift983
  %shift986 = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop987 = fadd <4 x float> %shift986, %foldExtExtBinop984
  %shift989 = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop990.a = fadd <4 x float> %shift989, %foldExtExtBinop987
  %i.gx = extractelement <4 x float> %foldExtExtBinop990.a, i64 0
  %i.gy = fcmp olt float %i.gx, 0.000000e+00      ; 2 uses
  %i.gz = fneg <2 x float> %i.gr
  %i.ha = fneg <2 x float> %i.gb
  %.sroa.0398.0 = select i1 %i.gy, <2 x float> %i.ha, <2 x float> %i.gb ; 9 uses
  %.sroa.8402.0 = select i1 %i.gy, <2 x float> %i.gz, <2 x float> %i.gr ; 7 uses
  %i.hb = shufflevector <3 x float> %i.ek, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.hc = fmul <2 x float> %i.hb, %i.hb           ; 3 uses
  %i.hd = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hc)
  %i.he = shufflevector <3 x float> %i.ek, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 0>
  %i.hf = fmul <4 x float> %i.gs, %i.he           ; 4 uses
  %i.hg = shufflevector <2 x float> %i.hc, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.hh = shufflevector <3 x float> %i.ek, <3 x float> %i.hg, <4 x i32> <i32 1, i32 0, i32 4, i32 2>
  %i.hi = fmul <4 x float> %i.eo, %i.hh           ; 3 uses
  %foldExtExtBinop992.a = fsub <4 x float> %i.hf, %i.hi
  %i.hj = fadd <4 x float> %i.hi, %i.hf           ; 4 uses
  %i.hk = extractelement <2 x float> %i.hc, i64 0
  %i.hl = extractelement <4 x float> %i.hf, i64 2
  %i.hm = fadd float %i.hk, %i.hl
  %i.hn = fmul float %i.hm, 2.000000e+00
  %i.ho = shufflevector <2 x float> %.sroa.0398.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0958.0.vec.extract = extractelement <2 x float> %.sroa.0398.0, i64 0 ; 2 uses
  %.sroa.5959.8.vec.extract = extractelement <2 x float> %.sroa.8402.0, i64 0 ; 2 uses
  %.sroa.5959.12.vec.extract = extractelement <2 x float> %.sroa.8402.0, i64 1 ; 2 uses
  %i.hp = extractelement <2 x float> %.sroa.0398.0, i64 1 ; 4 uses
  %i.hq = fmul float %i.hp, %i.hp
  %foldExtExtBinop994.a = fmul <2 x float> %.sroa.0398.0, %.sroa.0398.0
  %i.hr = extractelement <2 x float> %foldExtExtBinop994.a, i64 0
  %i.hs = shufflevector <2 x float> %.sroa.0398.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = shufflevector <2 x float> %.sroa.8402.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = fmul <2 x float> %i.hs, %i.ht           ; 2 uses
  %i.hv = shufflevector <2 x float> %.sroa.0398.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %.sroa.8402.0   ; 2 uses
  %i.hx = fsub <2 x float> %i.hu, %i.hw
  %i.hy = fadd <2 x float> %i.hu, %i.hw
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> %i.hx, <2 x i32> <i32 0, i32 3>
  %i.ia = fmul <2 x float> %i.hz, splat (float 2.000000e+00) ; 11 uses
  %i.ib = fadd float %i.hr, %i.hq
  %i.ic = fmul float %i.ib, 2.000000e+00
  %i.id = fsub float 1.000000e+00, %i.ic          ; 5 uses
  %i.ie = fadd <3 x float> %i.cb, %i.fr           ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ii = load float, ptr %i.if, align 4, !tbaa !112
  %i.ij = load float, ptr %i.ig, align 4, !tbaa !139
  %i.ik = fadd float %i.ii, %i.ij
  %i.il = load float, ptr %i.ih, align 4, !tbaa !113
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ip = load <2 x float>, ptr %i.in, align 4, !tbaa !85 ; 4 uses
  %i.iq = load float, ptr %i.io, align 4, !tbaa !157
  %i.ir = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %foldExtExtBinop992.a, <4 x i32> <i32 7, i32 poison, i32 poison, i32 3>
  %i.is = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.hj, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.it = fsub <4 x float> %i.hf, %i.hi           ; 2 uses
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> %i.it, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.iv = fsub float 1.000000e+00, %i.hn          ; 7 uses
  %i.iw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.iv, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> %i.hj, <4 x i32> <i32 0, i32 7, i32 poison, i32 3>
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> %i.it, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.iz = fmul <4 x float> %i.iy, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 8 uses
  %i.ja = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.jb = fmul <4 x float> %i.fm, %i.iz
  %i.jc = shufflevector <4 x float> %i.iz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.jd = fmul <4 x float> %i.ja, %i.jc
  %i.je = fsub <4 x float> %i.jb, %i.jd
  %.scalar = fsub float %i.ik, %i.il              ; 2 uses
  %i.jf = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.jh = load <2 x float>, ptr %i.p, align 4, !tbaa !85 ; 6 uses
  %i.ji = load float, ptr %i.im, align 4, !tbaa !158 ; 3 uses
  %i.jj = extractelement <2 x float> %i.jh, i64 0
  %i.jk = shufflevector <4 x float> %i.hj, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jl = insertelement <2 x float> %i.jk, float %i.hd, i64 1
  %i.jm = fmul <2 x float> %i.jl, splat (float 2.000000e+00)
  %i.jn = fsub <2 x float> splat (float 1.000000e+00), %i.jm ; 6 uses
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.jp = shufflevector <4 x float> %i.ir, <4 x float> %i.jo, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> %i.hj, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jr = fmul <4 x float> %i.jq, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 9 uses
  %i.js = shufflevector <4 x float> %i.iu, <4 x float> %i.jo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jt = fmul <4 x float> %i.js, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 9 uses
  %i.ju = extractelement <4 x float> %i.jr, i64 0
  %i.jv = fmul <4 x float> %i.fm, %i.jr
  %i.jw = shufflevector <4 x float> %i.jr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.jx = fmul <4 x float> %i.fo, %i.jw
  %i.jy = fsub <4 x float> %i.jv, %i.jx
  %i.jz = extractelement <4 x float> %i.jt, i64 0 ; 2 uses
  %i.ka = fmul <4 x float> %i.fm, %i.jt
  %i.kb = shufflevector <4 x float> %i.jo, <4 x float> %i.jt, <4 x i32> <i32 1, i32 4, i32 5, i32 poison>
  %i.kc = insertelement <4 x float> %i.kb, float 1.000000e+00, i64 3
  %i.kd = fmul <4 x float> %i.ja, %i.kc
  %i.ke = fsub <4 x float> %i.ka, %i.kd
  %foldExtExtBinop996 = fmul <4 x float> %i.jr, %i.jg
  %i.kf = extractelement <4 x float> %foldExtExtBinop996, i64 0
  %i.kg = fmul float %i.jz, %i.jj
  %i.kh = fadd float %i.kf, %i.kg
  %i.ki = shufflevector <4 x float> %i.jt, <4 x float> %i.jr, <2 x i32> <i32 1, i32 6>
  %i.kj = insertelement <2 x float> %i.jh, float %.scalar, i64 1
  %i.kk = fmul <2 x float> %i.ki, %i.kj
  %i.kl = shufflevector <2 x float> %i.jf, <2 x float> %i.jh, <2 x i32> <i32 0, i32 2>
  %i.km = fmul <2 x float> %i.jn, %i.kl
  %i.kn = fadd <2 x float> %i.kk, %i.km
  %i.ko = shufflevector <4 x float> %i.iz, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.ko, %i.kq
  %i.ks = fadd <2 x float> %i.kn, %i.kr           ; 3 uses
  %i.kt = fmul float %i.iv, %i.ji
  %i.ku = fadd float %i.kh, %i.kt                 ; 2 uses
  %i.kv = shufflevector <4 x float> %i.jr, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.kw = shufflevector <2 x float> %i.jn, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.kx = shufflevector <3 x float> %i.kv, <3 x float> %i.kw, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ky = fmul <3 x float> %i.ie, %i.kx
  %i.kz = shufflevector <3 x float> %i.ie, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 3 uses
  %i.la = shufflevector <4 x float> %i.jr, <4 x float> poison, <3 x i32> <i32 poison, i32 2, i32 0>
  %i.lb = shufflevector <3 x float> %i.kw, <3 x float> %i.la, <3 x i32> <i32 0, i32 4, i32 5>
  %i.lc = fmul <3 x float> %i.kz, %i.lb
  %i.ld = fsub <3 x float> %i.ky, %i.lc
  %i.le = shufflevector <4 x float> %i.jt, <4 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
end_hunk_0
