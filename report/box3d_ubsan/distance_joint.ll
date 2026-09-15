Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance_joint?download=true
inline.NumInlined: 143
inline.NumDeleted: 17
begin_hunk_0_@b3SolveDistanceJoint:bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @74, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !78 ; 10 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !121 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.131646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.131646.0.copyload = load float, ptr %.sroa.131646.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %.sroa.181651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = load <2 x float>, ptr %.sroa.181651.0..sroa_idx, align 4, !tbaa !78 ; 5 uses
  %.sroa.281661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.281661.0.copyload = load float, ptr %.sroa.281661.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %.sroa.331666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !78 ; 6 uses
  %i.m = load <2 x float>, ptr %.sroa.331666.0..sroa_idx, align 4, !tbaa !78 ; 6 uses
  %.sroa.431676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.431676.0.copyload = load float, ptr %.sroa.431676.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !78 ; 7 uses
  %i.p = load <2 x float>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !78 ; 7 uses
  %i.q = load <2 x float>, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !78 ; 7 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.43.0.copyload = load float, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float 1.000000e+00, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.u = load i32, ptr %i.t, align 4, !tbaa !122  ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ne ptr %1, null, !nosanitize !10
  %i.x = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !10
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !10
  %i.aa = and i1 %i.w, %i.z, !nosanitize !10
  br i1 %i.aa, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.x) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 3 uses
  %i.ad = sext i32 %i.u to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [56 x i8], ptr %i.ac, i64 %i.ad
  %i.af = mul nsw i64 %i.ad, 56
  %i.ag = ptrtoint ptr %i.ac to i64, !nosanitize !10 ; 3 uses
  %i.ah = add i64 %i.af, %i.ag, !nosanitize !10   ; 3 uses
  %i.ai = icmp ne ptr %i.ac, null, !nosanitize !10
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = xor i1 %i.ai, %i.aj
  %i.al = icmp uge i64 %i.ah, %i.ag, !nosanitize !10
  %i.am = icmp slt i32 %i.u, 0
  %i.an = xor i1 %i.am, %i.al
  %i.ao = and i1 %i.ak, %i.an, !nosanitize !10
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @76, i64 %i.ag, i64 %i.ah) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.ap = phi ptr [ %3, %bb.c ], [ %i.ae, %bb.f ] ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !123 ; 3 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = icmp ne ptr %1, null, !nosanitize !10
  %i.au = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.av = and i64 %i.au, 7, !nosanitize !10
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !10
  %i.ax = and i1 %i.at, %i.aw, !nosanitize !10
  br i1 %i.ax, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @77, i64 %i.au) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !126 ; 3 uses
  %i.ba = sext i32 %i.ar to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [56 x i8], ptr %i.az, i64 %i.ba
  %i.bc = mul nsw i64 %i.ba, 56
  %i.bd = ptrtoint ptr %i.az to i64, !nosanitize !10 ; 3 uses
  %i.be = add i64 %i.bc, %i.bd, !nosanitize !10   ; 3 uses
  %i.bf = icmp ne ptr %i.az, null, !nosanitize !10
  %i.bg = icmp eq i64 %i.be, 0
  %i.bh = xor i1 %i.bf, %i.bg
  %i.bi = icmp uge i64 %i.be, %i.bd, !nosanitize !10
  %i.bj = icmp slt i32 %i.ar, 0
  %i.bk = xor i1 %i.bj, %i.bi
  %i.bl = and i1 %i.bh, %i.bk, !nosanitize !10
  br i1 %i.bl, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.bd, i64 %i.be) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bm = phi ptr [ %3, %bb.h ], [ %i.bb, %bb.k ] ; 12 uses
  %i.bn = icmp ne ptr %i.ap, null, !nosanitize !10
  %i.bo = ptrtoint ptr %i.ap to i64, !nosanitize !10 ; 2 uses
  %i.bp = and i64 %i.bo, 3, !nosanitize !10
  %i.bq = icmp eq i64 %i.bp, 0, !nosanitize !10
  %i.br = and i1 %i.bn, %i.bq, !nosanitize !10
  br i1 %i.br, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @79, i64 %i.bo) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %.sroa.0882.0.copyload = load <2 x float>, ptr %i.ap, align 4 ; 6 uses
  %.sroa.19893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.19893.0.copyload = load float, ptr %.sroa.19893.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %.sroa.0868.0.copyload = load <2 x float>, ptr %i.bs, align 4 ; 9 uses
  %.sroa.19879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %.sroa.19879.0.copyload = load float, ptr %.sroa.19879.0..sroa_idx, align 4, !tbaa !78 ; 5 uses
  %i.bt = icmp ne ptr %i.bm, null, !nosanitize !10
  %i.bu = ptrtoint ptr %i.bm to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 3, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  %i.bx = and i1 %i.bt, %i.bw, !nosanitize !10
  br i1 %i.bx, label %b3Normalize.exit, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @80, i64 %i.bu) #8, !nosanitize !10
  unreachable, !nosanitize !10

b3Normalize.exit:                                 ; preds = %bb.o
  %.sroa.0854.0.copyload = load <2 x float>, ptr %i.bm, align 4 ; 6 uses
  %.sroa.19865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.sroa.19865.0.copyload = load float, ptr %.sroa.19865.0..sroa_idx, align 4, !tbaa !78 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  %.sroa.0841.0.copyload = load <2 x float>, ptr %i.by, align 4 ; 9 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 20 ; 2 uses
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !78 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.cb = load <2 x float>, ptr %i.bz, align 4    ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.cd = load <2 x float>, ptr %i.cc, align 4    ; 4 uses
  %.sroa.0827.0.copyload = load <2 x float>, ptr %i.ca, align 4 ; 4 uses
  %.sroa.2828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 252
  %.sroa.2828.0.copyload = load float, ptr %.sroa.2828.0..sroa_idx, align 4 ; 4 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %i.cd, i64 0
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.ce = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2828.0.copyload
  %i.cf = shufflevector <2 x float> %.sroa.0827.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cg = insertelement <2 x float> %i.cf, float %.sroa.2828.0.copyload, i64 1
  %i.ch = fmul <2 x float> %i.cb, %i.cg
  %i.ci = shufflevector <2 x float> %i.cb, <2 x float> %i.cd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cj = fmul <2 x float> %i.ci, %.sroa.0827.0.copyload
  %i.ck = fsub <2 x float> %i.ch, %i.cj
  %i.cl = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = insertelement <2 x float> %i.cf, float %.sroa.2828.0.copyload, i64 0
  %i.cn = fmul <2 x float> %i.cl, %i.cm
  %i.co = fmul <2 x float> %i.cd, %.sroa.0827.0.copyload ; 2 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = fsub float %i.cp, %i.ce
  %i.cr = fadd <2 x float> %i.cn, %i.ck           ; 3 uses
  %i.cs = extractelement <2 x float> %i.co, i64 1
  %i.ct = fadd float %i.cs, %i.cq                 ; 2 uses
  %i.cu = fmul <2 x float> %i.ci, %i.cr
  %i.cv = fmul float %.sroa.2.8.vec.extract65.i, %i.ct
  %i.cw = fmul float %.sroa.09.0.vec.extract.i.i, %i.ct
  %foldExtExtBinop = fmul <2 x float> %i.cb, %i.cr
  %i.cx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %foldExtExtBinop1705 = fmul <2 x float> %i.cb, %i.cr
  %i.cy = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> %foldExtExtBinop1705, <2 x i32> <i32 0, i32 2>
  %i.da = fsub <2 x float> %i.cu, %i.cz
  %i.db = fsub float %i.cw, %i.cx
  %i.dc = fmul <2 x float> %i.da, splat (float 2.000000e+00)
  %i.dd = fmul float %i.db, 2.000000e+00
  %i.de = fadd <2 x float> %.sroa.0827.0.copyload, %i.dc ; 16 uses
  %i.df = fadd float %.sroa.2828.0.copyload, %i.dd ; 17 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.di = load <2 x float>, ptr %i.dg, align 4    ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.dk = load <2 x float>, ptr %i.dj, align 4    ; 4 uses
  %.sroa.0810.0.copyload = load <2 x float>, ptr %i.dh, align 4 ; 3 uses
  %.sroa.2811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.2811.0.copyload = load float, ptr %.sroa.2811.0..sroa_idx, align 4 ; 4 uses
  %i.dl = shufflevector <2 x float> %i.di, <2 x float> %i.dk, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.dm = insertelement <4 x float> %i.dl, float -0.000000e+00, i64 3
  %i.dn = shufflevector <2 x float> %.sroa.0810.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.do = insertelement <4 x float> %i.dn, float 1.000000e+00, i64 3
  %i.dp = insertelement <4 x float> %i.do, float %.sroa.2811.0.copyload, i64 0
  %i.dq = fmul <4 x float> %i.dm, %i.dp
  %i.dr = shufflevector <2 x float> %i.dk, <2 x float> %i.di, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.ds = insertelement <4 x float> %i.dr, float 0.000000e+00, i64 3
  %i.dt = shufflevector <2 x float> %.sroa.0810.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float 1.000000e+00, i64 3
  %i.dv = insertelement <4 x float> %i.du, float %.sroa.2811.0.copyload, i64 1 ; 2 uses
  %i.dw = fmul <4 x float> %i.ds, %i.dv
  %i.dx = fsub <4 x float> %i.dq, %i.dw
  %i.dy = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float 1.000000e+00, i64 3
  %i.ea = shufflevector <2 x float> %.sroa.0810.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eb = insertelement <4 x float> %i.ea, float 1.000000e+00, i64 3
  %i.ec = insertelement <4 x float> %i.eb, float %.sroa.2811.0.copyload, i64 2
  %i.ed = fmul <4 x float> %i.dz, %i.ec
  %i.ee = fadd <4 x float> %i.ed, %i.dx           ; 2 uses
  %i.ef = insertelement <4 x float> %i.dr, float 1.000000e+00, i64 3
  %i.eg = fmul <4 x float> %i.ef, %i.ee
  %i.eh = shufflevector <2 x float> %i.di, <2 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float 0.000000e+00, i64 3
  %i.ej = shufflevector <4 x float> %i.ee, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ek = fmul <4 x float> %i.ei, %i.ej
  %i.el = fsub <4 x float> %i.eg, %i.ek
  %i.em = fmul <4 x float> %i.el, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 2 uses
  %i.en = fadd <4 x float> %i.dv, %i.em           ; 23 uses
  %i.eo = insertelement <4 x float> %i.dn, float 0.000000e+00, i64 3
  %i.ep = insertelement <4 x float> %i.eo, float %.sroa.2811.0.copyload, i64 0
  %i.eq = shufflevector <4 x float> %i.em, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.er = fadd <4 x float> %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0800.0.copyload = load <2 x float>, ptr %i.es, align 4
  %.sroa.2801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %.sroa.2801.0.copyload = load float, ptr %.sroa.2801.0..sroa_idx, align 4
  %.sroa.0798.0.copyload = load <2 x float>, ptr %i.et, align 4
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.2799.0.copyload = load float, ptr %.sroa.2799.0..sroa_idx, align 4
  %i.eu = fsub float %.sroa.2801.0.copyload, %.sroa.2799.0.copyload
  %i.ev = extractelement <4 x float> %i.en, i64 1 ; 3 uses
  %i.ew = fsub float %i.ev, %i.df
  %i.ex = fadd float %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 268
  %.sroa.0772.0.copyload = load <2 x float>, ptr %i.ey, align 4
  %.sroa.2773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.sroa.2773.0.copyload = load float, ptr %.sroa.2773.0..sroa_idx, align 4
  %i.ez = fsub <2 x float> %.sroa.0800.0.copyload, %.sroa.0798.0.copyload
  %i.fa = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.fb = fsub <2 x float> %i.fa, %i.de
  %i.fc = fadd <2 x float> %i.ez, %i.fb
  %i.fd = fadd <2 x float> %.sroa.0772.0.copyload, %i.fc ; 3 uses
  %i.fe = fadd float %.sroa.2773.0.copyload, %i.ex ; 3 uses
  %i.ff = fmul <2 x float> %i.fd, %i.fd           ; 2 uses
  %shift = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1707 = fadd <2 x float> %i.ff, %shift
  %i.fg = extractelement <2 x float> %foldExtExtBinop1707, i64 0
  %i.fh = fmul float %i.fe, %i.fe
  %i.fi = fadd float %i.fh, %i.fg                 ; 2 uses
  %sqrt.i = call float @llvm.sqrt.f32(float %i.fi) ; 5 uses
  %i.fj = fcmp ogt float %i.fi, f0x057A0000       ; 2 uses
  %i.fk = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x float> %i.fd, %i.fm
  %i.fo = fmul float %i.fe, %i.fk
  %.sroa.07.0.i = select i1 %i.fj, <2 x float> %i.fn, <2 x float> zeroinitializer ; 12 uses
  %.sroa.5.0.i = select i1 %i.fj, float %i.fo, float 0.000000e+00 ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !129 ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 2
  br i1 %i.fr, label %bb.r, label %bb.q, !prof !11, !nosanitize !10

bb.q:                                             ; preds = %b3Normalize.exit
  %i.fs = zext i8 %i.fq to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @81, i64 %i.fs) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %b3Normalize.exit
  %i.ft = trunc nuw i8 %i.fq to i1
  br i1 %i.ft, label %bb.s, label %bb.aw

bb.s:                                             ; preds = %bb.r
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !91 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !92 ; 2 uses
  %i.fy = fcmp olt float %i.fv, %i.fx
  br i1 %i.fy, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !84  ; 3 uses
  %i.gb = icmp ult i8 %i.ga, 2
  br i1 %i.gb, label %bb.v, label %bb.u, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  %i.gc = zext i8 %i.ga to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @82, i64 %i.gc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.v:                                             ; preds = %bb.t
  %i.gd = icmp eq i8 %i.ga, 0
  br i1 %i.gd, label %bb.w, label %bb.aw

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !99
  %i.gg = fcmp ogt float %i.gf, 0.000000e+00
  %i.gh = insertelement <4 x float> poison, float %.sroa.19865.0.copyload, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %.sroa.19893.0.copyload, i64 1
  %i.gj = insertelement <4 x float> %i.gi, float %.sroa.19.0.copyload, i64 2
  %i.gk = insertelement <4 x float> %i.gj, float %.sroa.19879.0.copyload, i64 3 ; 3 uses
  br i1 %i.gg, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.gl = icmp ne ptr %1, null, !nosanitize !10
  %i.gm = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.gn = and i64 %i.gm, 7, !nosanitize !10
  %i.go = icmp eq i64 %i.gn, 0, !nosanitize !10
  %i.gp = and i1 %i.gl, %i.go, !nosanitize !10
  br i1 %i.gp, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.gm) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.gq = shufflevector <2 x float> %.sroa.0854.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gr = insertelement <4 x float> %i.gq, float %.sroa.19865.0.copyload, i64 2
  %i.gs = insertelement <4 x float> %i.gr, float %sqrt.i, i64 3
  %i.gt = shufflevector <2 x float> %.sroa.0882.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %.sroa.19893.0.copyload, i64 2
  %i.gv = load float, ptr %i.s, align 4, !tbaa !77
  %i.gw = insertelement <4 x float> %i.gu, float %i.gv, i64 3
  %i.gx = fsub <4 x float> %i.gs, %i.gw
  %i.gy = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.gz = insertelement <4 x float> %i.gy, float -0.000000e+00, i64 3
  %i.ha = insertelement <4 x float> %i.gz, float %.sroa.19.0.copyload, i64 1
  %i.hb = shufflevector <4 x float> %i.en, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.hc = fmul <4 x float> %i.ha, %i.hb
  %i.hd = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.he = insertelement <4 x float> %i.hd, float 0.000000e+00, i64 3
  %i.hf = insertelement <4 x float> %i.he, float %.sroa.19.0.copyload, i64 0
  %i.hg = insertelement <4 x float> %i.en, float 1.000000e+00, i64 3
  %i.hh = fmul <4 x float> %i.hf, %i.hg
  %i.hi = fsub <4 x float> %i.hc, %i.hh
  %i.hj = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> %i.de, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float 0.000000e+00, i64 3
  %i.hl = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.hm = insertelement <4 x float> %i.hl, float 1.000000e+00, i64 3
  %i.hn = insertelement <4 x float> %i.hm, float %i.df, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %.sroa.19879.0.copyload, i64 1 ; 2 uses
  %i.hp = fmul <4 x float> %i.hk, %i.ho
  %i.hq = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> %i.ho, <4 x i32> <i32 5, i32 4, i32 2, i32 poison>
  %i.hs = insertelement <4 x float> %i.hr, float 0.000000e+00, i64 3
  %i.ht = shufflevector <2 x float> %i.de, <2 x float> %.sroa.0868.0.copyload, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.hu = insertelement <4 x float> %i.ht, float 1.000000e+00, i64 3
  %i.hv = fmul <4 x float> %i.hs, %i.hu
  %i.hw = fsub <4 x float> %i.hp, %i.hv
  %i.hx = fsub <4 x float> %i.hi, %i.hw
  %i.hy = fadd <4 x float> %i.gx, %i.hx
  %i.hz = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ia = insertelement <4 x float> %i.hz, float %.sroa.5.0.i, i64 2
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !152
  %i.id = insertelement <4 x float> %i.ia, float %i.ic, i64 3
  %i.ie = fmul <4 x float> %i.hy, %i.id           ; 4 uses
  %shift1712 = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift1709 = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1710 = fadd <4 x float> %i.ie, %shift1709
  %foldExtExtBinop1713 = fadd <4 x float> %shift1712, %foldExtExtBinop1710
  %shift1715 = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1716 = fadd <4 x float> %foldExtExtBinop1713, %shift1715
  %i.if = extractelement <4 x float> %foldExtExtBinop1716, i64 0
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !153
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !124
  %i.ik = fneg float %i.ij
  %i.il = fmul float %i.ih, %i.ik
  %i.im = fmul float %i.if, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !105 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !154
  %i.ir = fmul float %i.io, %i.iq
  %i.is = fsub float %i.im, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load float, ptr %i.it, align 8, !tbaa !125 ; 2 uses
  %i.iv = fadd float %i.io, %i.is                 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !155
  %i.iz = fmul float %i.iu, %i.iy                 ; 2 uses
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !156
  %i.jb = fmul float %i.iu, %i.ja                 ; 2 uses
  %i.jc = fcmp olt float %i.iv, %i.iz
  %i.jd = fcmp olt float %i.jb, %i.iv
  %i.je = select i1 %i.jd, float %i.jb, float %i.iv
  %i.jf = select i1 %i.jc, float %i.iz, float %i.je ; 2 uses
  store float %i.jf, ptr %i.in, align 4, !tbaa !105
  %i.jg = fsub float %i.jf, %i.io                 ; 2 uses
  %i.jh = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %.sroa.07.0.i, %i.ji   ; 4 uses
  %i.jk = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.jk, %i.jj
  %i.jm = fsub <2 x float> %.sroa.0882.0.copyload, %i.jl
  %4 = shufflevector <4 x float> %i.en, <4 x float> %i.hq, <2 x i32> <i32 2, i32 4> ; 2 uses
  %5 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %6 = fmul <2 x float> %4, %5
  %7 = shufflevector <4 x float> %i.en, <4 x float> %i.hq, <2 x i32> <i32 0, i32 5> ; 2 uses
  %8 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = fmul <2 x float> %7, %8
  %foldExtExtBinop1722 = fsub <2 x float> %6, %i.jn ; 3 uses
  %i.jo = insertelement <4 x float> poison, float %.sroa.5.0.i, i64 0
  %i.jp = insertelement <4 x float> %i.jo, float %.sroa.43.0.copyload, i64 2
  %i.jq = insertelement <4 x float> %i.jp, float %.sroa.431676.0.copyload, i64 3
  %9 = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %10 = insertelement <4 x float> poison, float %i.jg, i64 0
  %11 = shufflevector <2 x float> %foldExtExtBinop1722, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %13 = fmul <4 x float> %9, %12                  ; 3 uses
  %i.jr = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.js = fmul <2 x float> %7, %i.jr
  %i.jt = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ju = insertelement <2 x float> %i.jt, float %i.df, i64 1 ; 2 uses
  %i.jv = fmul <2 x float> %i.ju, %5
  %i.jw = fsub <2 x float> %i.js, %i.jv           ; 3 uses
  %i.jx = fmul <2 x float> %i.ju, %8
  %i.jy = fmul <2 x float> %4, %i.jr
  %i.jz = fsub <2 x float> %i.jx, %i.jy           ; 3 uses
  %i.ka = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %.sroa.131646.0.copyload, i64 1
  %i.kc = fmul <2 x float> %i.kb, %i.jw
  %i.kd = insertelement <2 x float> poison, float %.sroa.28.0.copyload, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %.sroa.281661.0.copyload, i64 1
  %i.kf = fmul <2 x float> %i.ke, %i.jz
  %i.kg = fadd <2 x float> %i.kc, %i.kf
  %i.kh = shufflevector <2 x float> %i.h, <2 x float> %i.kg, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ki = fadd <4 x float> %i.kh, %13
  %i.kj = fmul <4 x float> %i.kh, %13
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.kl = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.km = fmul <2 x float> %i.l, %i.kl
  %i.kn = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ko = fmul <2 x float> %i.k, %i.kn
  %i.kp = fadd <2 x float> %i.km, %i.ko
  %14 = shufflevector <2 x float> %foldExtExtBinop1722, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kq = fmul <2 x float> %i.m, %14
  %i.kr = fadd <2 x float> %i.kq, %i.kp
  %i.ks = fsub <2 x float> %.sroa.0868.0.copyload, %i.kr
  %i.kt = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.ku, %i.jj
  %i.kw = fadd <2 x float> %.sroa.0854.0.copyload, %i.kv
  %i.kx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x float> %i.o, %i.kx
  %i.kz = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.p, %i.kz
  %i.lb = fadd <2 x float> %i.ky, %i.la
  %i.lc = shufflevector <2 x float> %foldExtExtBinop1722, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x float> %i.q, %i.lc
  %i.le = fadd <2 x float> %i.ld, %i.lb
  %i.lf = fadd <2 x float> %.sroa.0841.0.copyload, %i.le
  %i.lg = fadd <4 x float> %i.gk, %i.kk
  %i.lh = fsub <4 x float> %i.gk, %i.kk
  %i.li = shufflevector <4 x float> %i.lg, <4 x float> %i.lh, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.sroa.0841.0 = phi <2 x float> [ %i.lf, %bb.z ], [ %.sroa.0841.0.copyload, %bb.w ] ; 4 uses
  %.sroa.0854.0 = phi <2 x float> [ %i.kw, %bb.z ], [ %.sroa.0854.0.copyload, %bb.w ] ; 4 uses
  %.sroa.0868.0 = phi <2 x float> [ %i.ks, %bb.z ], [ %.sroa.0868.0.copyload, %bb.w ] ; 5 uses
  %.sroa.0882.0 = phi <2 x float> [ %i.jm, %bb.z ], [ %.sroa.0882.0.copyload, %bb.w ] ; 4 uses
  %i.lj = phi <4 x float> [ %i.li, %bb.z ], [ %i.gk, %bb.w ] ; 8 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !84  ; 3 uses
  %i.lm = icmp ult i8 %i.ll, 2
  br i1 %i.lm, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.ln = zext i8 %i.ll to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @84, i64 %i.ln) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.lo = trunc nuw i8 %i.ll to i1
  br i1 %i.lo, label %bb.ad, label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  %i.lp = shufflevector <2 x float> %.sroa.0868.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1724.a = fsub <2 x float> %.sroa.0854.0, %.sroa.0882.0
  %i.lq = extractelement <2 x float> %foldExtExtBinop1724.a, i64 0
  %i.lr = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 5 uses
  %i.ls = shufflevector <4 x float> %i.en, <4 x float> %i.lr, <4 x i32> <i32 2, i32 0, i32 poison, i32 4>
  %i.lt = insertelement <4 x float> %i.ls, float %i.df, i64 2
  %i.lu = shufflevector <2 x float> %.sroa.0841.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lv = shufflevector <4 x float> %i.lj, <4 x float> %i.lu, <4 x i32> <i32 2, i32 4, i32 poison, i32 3>
  %i.lw = shufflevector <2 x float> %.sroa.0868.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ly = fmul <4 x float> %i.lt, %i.lx
  %i.lz = shufflevector <4 x float> %i.en, <4 x float> %i.lr, <4 x i32> <i32 1, i32 2, i32 5, i32 poison>
  %i.ma = insertelement <4 x float> %i.lz, float %i.df, i64 3
  %i.mb = shufflevector <4 x float> %i.lu, <4 x float> %i.lj, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> %i.lp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.md = fmul <4 x float> %i.ma, %i.mc
  %i.me = fsub <4 x float> %i.ly, %i.md           ; 3 uses
  %i.mf = shufflevector <4 x float> %i.en, <4 x float> %i.lr, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.mg = shufflevector <2 x float> %.sroa.0841.0, <2 x float> %.sroa.0868.0, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.lj, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.mi = fmul <4 x float> %i.mf, %i.mh           ; 4 uses
  %shift1726.a = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1727.a = fsub <4 x float> %i.mi, %shift1726.a
  %shift1729 = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop1730 = fsub <4 x float> %i.mi, %shift1729
  %shift1732 = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1733 = fsub <4 x float> %foldExtExtBinop1727.a, %shift1732
  %i.mj = extractelement <4 x float> %foldExtExtBinop1733, i64 0
  %i.mk = fadd float %i.lq, %i.mj
  %.sroa.03.0.vec.extract.i1200 = extractelement <2 x float> %.sroa.07.0.i, i64 0 ; 2 uses
  %i.ml = fmul float %.sroa.03.0.vec.extract.i1200, %i.mk
  %i.mm = shufflevector <2 x float> %.sroa.0854.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> %i.lj, <2 x i32> <i32 1, i32 4>
  %i.mo = shufflevector <2 x float> %.sroa.0882.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.lj, <2 x i32> <i32 1, i32 5>
  %i.mq = fsub <2 x float> %i.mn, %i.mp
  %i.mr = shufflevector <4 x float> %i.me, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ms = shufflevector <4 x float> %i.me, <4 x float> %foldExtExtBinop1730, <2 x i32> <i32 3, i32 6>
  %i.mt = fsub <2 x float> %i.mr, %i.ms
  %i.mu = fadd <2 x float> %i.mq, %i.mt
  %i.mv = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mw = insertelement <2 x float> %i.mv, float %.sroa.5.0.i, i64 1 ; 2 uses
  %i.mx = fmul <2 x float> %i.mw, %i.mu           ; 2 uses
  %i.my = extractelement <2 x float> %i.mx, i64 0
  %i.mz = fadd float %i.ml, %i.my
  %i.na = extractelement <2 x float> %i.mx, i64 1
  %i.nb = fadd float %i.na, %i.mz
  %i.nc = fsub float %sqrt.i, %i.fv               ; 3 uses
  %i.nd = fcmp ogt float %i.nc, 0.000000e+00
  br i1 %i.nd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ne = icmp ne ptr %1, null, !nosanitize !10
  %i.nf = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.ng = and i64 %i.nf, 7, !nosanitize !10
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !10
  %i.ni = and i1 %i.ne, %i.nh, !nosanitize !10
  br i1 %i.ni, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.nf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !157
  %i.nl = fmul float %i.nc, %i.nk
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  br i1 %2, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !158
  %i.no = fmul float %i.nc, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.nr = load float, ptr %i.np, align 4, !tbaa !159
  %i.ns = load float, ptr %i.nq, align 4, !tbaa !160
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah
  %.0991 = phi float [ 0.000000e+00, %bb.ag ], [ %i.ns, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %.0990 = phi float [ 1.000000e+00, %bb.ag ], [ %i.nr, %bb.ai ], [ 1.000000e+00, %bb.ah ]
  %.0 = phi float [ %i.nl, %bb.ag ], [ %i.no, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !124 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.nw = fneg float %.0990
  %i.nx = fmul float %i.nu, %i.nw
  %i.ny = fadd float %i.nb, %.0
  %i.nz = fmul float %i.ny, %i.nx
  %i.oa = load float, ptr %i.nv, align 4, !tbaa !104 ; 3 uses
  %i.ob = fmul float %.0991, %i.oa
  %i.oc = fsub float %i.nz, %i.ob
  %i.od = fadd float %i.oa, %i.oc                 ; 2 uses
  %i.oe = fcmp olt float %i.od, 0.000000e+00
  %i.of = select i1 %i.oe, float 0.000000e+00, float %i.od ; 2 uses
  store float %i.of, ptr %i.nv, align 4, !tbaa !104
  %i.og = extractelement <2 x float> %i.de, i64 0
  %i.oh = fsub float %i.of, %i.oa                 ; 2 uses
  %i.oi = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = fmul <2 x float> %.sroa.07.0.i, %i.oj   ; 5 uses
  %i.ol = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.om = fmul <2 x float> %i.ol, %i.ok
  %i.on = fsub <2 x float> %.sroa.0882.0, %i.om   ; 3 uses
  %i.oo = shufflevector <4 x float> %i.en, <4 x float> %i.lr, <2 x i32> <i32 2, i32 4> ; 4 uses
  %i.op = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oq = fmul <2 x float> %i.oo, %i.op
  %i.or = shufflevector <4 x float> %i.en, <4 x float> %i.lr, <2 x i32> <i32 0, i32 5> ; 4 uses
  %i.os = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ot = fmul <2 x float> %i.or, %i.os
  %i.ou = fsub <2 x float> %i.oq, %i.ot           ; 3 uses
  %i.ov = insertelement <4 x float> poison, float %.sroa.5.0.i, i64 0
  %i.ow = insertelement <4 x float> %i.ov, float %.sroa.43.0.copyload, i64 2
  %i.ox = insertelement <4 x float> %i.ow, float %.sroa.431676.0.copyload, i64 3
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.oz = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.pa = shufflevector <2 x float> %i.ou, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pb = shufflevector <4 x float> %i.oz, <4 x float> %i.pa, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.pc = fmul <4 x float> %i.oy, %i.pb           ; 3 uses
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pe = fmul <2 x float> %i.or, %i.pd
  %i.pf = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pg = insertelement <2 x float> %i.pf, float %i.df, i64 1 ; 2 uses
  %i.ph = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pi = fmul <2 x float> %i.pg, %i.ph
  %i.pj = fsub <2 x float> %i.pe, %i.pi           ; 3 uses
  %i.pk = fmul <2 x float> %i.pg, %i.os
  %i.pl = fmul <2 x float> %i.oo, %i.pd
  %i.pm = fsub <2 x float> %i.pk, %i.pl           ; 3 uses
  %i.pn = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.po = fmul <2 x float> %i.l, %i.pn
  %i.pp = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pq = fmul <2 x float> %i.k, %i.pp
  %i.pr = fadd <2 x float> %i.po, %i.pq
  %i.ps = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pt = fmul <2 x float> %i.m, %i.ps
  %i.pu = fadd <2 x float> %i.pt, %i.pr
  %i.pv = fsub <2 x float> %.sroa.0868.0, %i.pu   ; 3 uses
  %i.pw = insertelement <2 x float> poison, float %i.i, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.py = fmul <2 x float> %i.px, %i.ok
  %i.pz = fadd <2 x float> %.sroa.0854.0, %i.py   ; 3 uses
  %i.qa = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.qb = insertelement <2 x float> %i.qa, float %.sroa.131646.0.copyload, i64 1 ; 2 uses
  %i.qc = fmul <2 x float> %i.qb, %i.pj
  %i.qd = insertelement <2 x float> poison, float %.sroa.28.0.copyload, i64 0
  %i.qe = insertelement <2 x float> %i.qd, float %.sroa.281661.0.copyload, i64 1 ; 2 uses
  %i.qf = fmul <2 x float> %i.qe, %i.pm
  %i.qg = fadd <2 x float> %i.qc, %i.qf
  %i.qh = shufflevector <2 x float> %i.h, <2 x float> %i.qg, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.qi = fadd <4 x float> %i.qh, %i.pc
  %i.qj = fmul <4 x float> %i.qh, %i.pc
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> %i.qi, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ql = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qm = fmul <2 x float> %i.o, %i.ql
  %i.qn = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qo = fmul <2 x float> %i.p, %i.qn
  %i.qp = fadd <2 x float> %i.qm, %i.qo
  %i.qq = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qr = fmul <2 x float> %i.q, %i.qq
  %i.qs = fadd <2 x float> %i.qr, %i.qp
  %i.qt = fadd <2 x float> %.sroa.0841.0, %i.qs   ; 4 uses
  %i.qu = fadd <4 x float> %i.lj, %i.qk           ; 2 uses
  %i.qv = fsub <4 x float> %i.lj, %i.qk
  %i.qw = shufflevector <4 x float> %i.qu, <4 x float> %i.qv, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 6 uses
  %foldExtExtBinop1735 = fsub <2 x float> %i.on, %i.pz
  %i.qx = extractelement <2 x float> %foldExtExtBinop1735, i64 0
  %i.qy = extractelement <2 x float> %i.pv, i64 1 ; 2 uses
  %i.qz = fmul float %i.df, %i.qy
  %i.ra = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.rb = insertelement <4 x float> %i.ra, float %i.df, i64 2
  %i.rc = shufflevector <2 x float> %i.pv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rd = shufflevector <4 x float> %i.qw, <4 x float> %i.rc, <4 x i32> <i32 3, i32 3, i32 4, i32 4>
  %i.re = fmul <4 x float> %i.rb, %i.rd           ; 3 uses
  %i.rf = extractelement <4 x float> %i.re, i64 0
  %i.rg = fsub float %i.qz, %i.rf
  %i.rh = fmul float %i.og, %i.qy
  %i.ri = extractelement <2 x float> %i.qt, i64 1
  %i.rj = fmul float %i.ev, %i.ri
  %shift1737 = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1738 = fmul <4 x float> %i.en, %shift1737
  %i.rk = extractelement <4 x float> %foldExtExtBinop1738, i64 0
  %i.rl = fsub float %i.rj, %i.rk
  %i.rm = fsub float %i.rg, %i.rl
  %i.rn = fadd float %i.qx, %i.rm
  %i.ro = fmul float %.sroa.03.0.vec.extract.i1200, %i.rn
  %i.rp = shufflevector <2 x float> %i.on, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> %i.qw, <2 x i32> <i32 1, i32 5>
  %i.rr = shufflevector <2 x float> %i.pz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x float> %i.rr, <4 x float> %i.qw, <2 x i32> <i32 1, i32 4>
  %i.rt = fsub <2 x float> %i.rq, %i.rs
  %i.ru = shufflevector <4 x float> %i.re, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.rv = shufflevector <4 x float> %i.re, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.rw = insertelement <2 x float> %i.rv, float %i.rh, i64 1
  %i.rx = fsub <2 x float> %i.ru, %i.rw
  %i.ry = shufflevector <2 x float> %i.qt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rz = shufflevector <4 x float> %i.qw, <4 x float> %i.ry, <2 x i32> <i32 2, i32 4>
  %i.sa = fmul <2 x float> %i.fa, %i.rz
  %i.sb = fmul <2 x float> %i.pf, %i.qt
  %i.sc = fsub <2 x float> %i.sa, %i.sb
  %i.sd = fsub <2 x float> %i.rx, %i.sc
  %i.se = fadd <2 x float> %i.rt, %i.sd
  %i.sf = fmul <2 x float> %i.mw, %i.se           ; 2 uses
  %i.sg = extractelement <2 x float> %i.sf, i64 0
  %i.sh = fadd float %i.ro, %i.sg
  %i.si = extractelement <2 x float> %i.sf, i64 1
  %i.sj = fadd float %i.si, %i.sh
  %i.sk = fsub float %i.fx, %sqrt.i               ; 3 uses
  %i.sl = fcmp ogt float %i.sk, 0.000000e+00
  br i1 %i.sl, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.sm = icmp ne ptr %1, null, !nosanitize !10
  %i.sn = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.so = and i64 %i.sn, 7, !nosanitize !10
  %i.sp = icmp eq i64 %i.so, 0, !nosanitize !10
  %i.sq = and i1 %i.sm, %i.sp, !nosanitize !10
  br i1 %i.sq, label %bb.am, label %bb.al, !prof !11, !nosanitize !10

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @86, i64 %i.sn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.am:                                            ; preds = %bb.ak
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !157
  %i.st = fmul float %i.sk, %i.ss
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  br i1 %2, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.sv = load float, ptr %i.su, align 4, !tbaa !158
  %i.sw = fmul float %i.sk, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.sz = load float, ptr %i.sx, align 4, !tbaa !159
  %i.ta = load float, ptr %i.sy, align 4, !tbaa !160
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %.0994 = phi float [ 0.000000e+00, %bb.am ], [ %i.ta, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %.0993 = phi float [ 1.000000e+00, %bb.am ], [ %i.sz, %bb.ao ], [ 1.000000e+00, %bb.an ]
  %.0992 = phi float [ %i.st, %bb.am ], [ %i.sw, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.tc = fneg float %.0993
  %i.td = fmul float %i.nu, %i.tc
  %i.te = fadd float %i.sj, %.0992
  %i.tf = fmul float %i.td, %i.te
  %i.tg = load float, ptr %i.tb, align 4, !tbaa !79 ; 3 uses
  %i.th = fmul float %.0994, %i.tg
  %i.ti = fsub float %i.tf, %i.th
  %i.tj = fadd float %i.tg, %i.ti                 ; 2 uses
  %i.tk = fcmp olt float %i.tj, 0.000000e+00
  %i.tl = select i1 %i.tk, float 0.000000e+00, float %i.tj ; 2 uses
  %i.tm = fsub float %i.tl, %i.tg
  store float %i.tl, ptr %i.tb, align 4, !tbaa !79
  %i.tn = fneg float %i.tm                        ; 2 uses
  %i.to = insertelement <2 x float> poison, float %i.tn, i64 0
  %i.tp = shufflevector <2 x float> %i.to, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tq = fmul <2 x float> %.sroa.07.0.i, %i.tp   ; 4 uses
  %i.tr = fmul <2 x float> %i.ol, %i.tq
  %i.ts = fsub <2 x float> %i.on, %i.tr
  %i.tt = fmul <2 x float> %i.px, %i.tq
  %15 = fadd <2 x float> %i.pz, %i.tt
  %16 = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.tu = fmul <2 x float> %i.oo, %16
  %17 = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tv = fmul <2 x float> %i.or, %17
  %foldExtExtBinop1744 = fsub <2 x float> %i.tu, %i.tv ; 3 uses
  %i.tw = insertelement <4 x float> poison, float %i.tn, i64 0
  %18 = shufflevector <2 x float> %foldExtExtBinop1744, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %i.tw, <4 x float> %18, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.tx = fmul <4 x float> %i.oy, %19             ; 3 uses
  %i.ty = shufflevector <4 x float> %i.tx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.tz = fmul <2 x float> %i.or, %i.ty
  %i.ua = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ub = insertelement <2 x float> %i.ua, float %i.df, i64 1 ; 2 uses
  %i.uc = fmul <2 x float> %i.ub, %16
  %i.ud = fsub <2 x float> %i.tz, %i.uc           ; 3 uses
  %i.ue = fmul <2 x float> %i.ub, %17
  %i.uf = fmul <2 x float> %i.oo, %i.ty
  %i.ug = fsub <2 x float> %i.ue, %i.uf           ; 3 uses
  %i.uh = fmul <2 x float> %i.qb, %i.ud
  %i.ui = fmul <2 x float> %i.qe, %i.ug
  %i.uj = fadd <2 x float> %i.uh, %i.ui
  %i.uk = shufflevector <2 x float> %i.h, <2 x float> %i.uj, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ul = fadd <4 x float> %i.uk, %i.tx
  %i.um = fmul <4 x float> %i.uk, %i.tx
  %i.un = shufflevector <4 x float> %i.um, <4 x float> %i.ul, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %20 = shufflevector <2 x float> %foldExtExtBinop1744, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uo = fmul <2 x float> %i.m, %20
  %i.up = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uq = fmul <2 x float> %i.l, %i.up
  %i.ur = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.us = fmul <2 x float> %i.k, %i.ur
  %i.ut = fadd <2 x float> %i.uq, %i.us
  %i.uu = fadd <2 x float> %i.uo, %i.ut
  %i.uv = fsub <2 x float> %i.pv, %i.uu
  %i.uw = shufflevector <2 x float> %foldExtExtBinop1744, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = fmul <2 x float> %i.q, %i.uw
  %i.uy = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uz = fmul <2 x float> %i.o, %i.uy
  %i.va = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vb = fmul <2 x float> %i.p, %i.va
  %i.vc = fadd <2 x float> %i.uz, %i.vb
  %i.vd = fadd <2 x float> %i.ux, %i.vc
  %i.ve = fadd <2 x float> %i.qt, %i.vd
  %i.vf = fadd <4 x float> %i.qw, %i.un
  %i.vg = fsub <4 x float> %i.qw, %i.un
  %i.vh = shufflevector <4 x float> %i.vf, <4 x float> %i.vg, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ac
  %.sroa.0841.1 = phi <2 x float> [ %i.ve, %bb.ap ], [ %.sroa.0841.0, %bb.ac ] ; 5 uses
  %.sroa.0854.1 = phi <2 x float> [ %15, %bb.ap ], [ %.sroa.0854.0, %bb.ac ] ; 4 uses
  %.sroa.0868.1 = phi <2 x float> [ %i.uv, %bb.ap ], [ %.sroa.0868.0, %bb.ac ] ; 5 uses
  %.sroa.0882.1 = phi <2 x float> [ %i.ts, %bb.ap ], [ %.sroa.0882.0, %bb.ac ] ; 4 uses
  %i.vi = phi <4 x float> [ %i.vh, %bb.ap ], [ %i.lj, %bb.ac ] ; 7 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.vk = load i8, ptr %i.vj, align 2, !tbaa !161 ; 3 uses
  %i.vl = icmp ult i8 %i.vk, 2
  br i1 %i.vl, label %bb.as, label %bb.ar, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  %i.vm = zext i8 %i.vk to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @87, i64 %i.vm) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %bb.aq
  %i.vn = trunc nuw i8 %i.vk to i1
  %i.vo = extractelement <4 x float> %i.vi, i64 0 ; 3 uses
  %i.vp = extractelement <4 x float> %i.vi, i64 1 ; 3 uses
  %i.vq = extractelement <4 x float> %i.vi, i64 2 ; 2 uses
  %i.vr = extractelement <4 x float> %i.vi, i64 3 ; 2 uses
  br i1 %i.vn, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.vs = icmp ne ptr %1, null, !nosanitize !10
  %i.vt = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.vu = and i64 %i.vt, 7, !nosanitize !10
  %i.vv = icmp eq i64 %i.vu, 0, !nosanitize !10
  %i.vw = and i1 %i.vs, %i.vv, !nosanitize !10
  br i1 %i.vw, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.vt) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !103 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !124
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !162
  %i.wd = fsub float %i.vo, %i.vp
  %i.we = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.wf = shufflevector <4 x float> %i.en, <4 x float> %i.we, <4 x i32> <i32 2, i32 0, i32 poison, i32 4>
  %i.wg = insertelement <4 x float> %i.wf, float %i.df, i64 2
  %i.wh = shufflevector <2 x float> %.sroa.0841.1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %i.wi = shufflevector <4 x float> %i.vi, <4 x float> %i.wh, <4 x i32> <i32 2, i32 4, i32 poison, i32 3>
  %i.wj = shufflevector <2 x float> %.sroa.0868.1, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.wk = shufflevector <4 x float> %i.wi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.wl = fmul <4 x float> %i.wg, %i.wk
  %i.wm = shufflevector <4 x float> %i.en, <4 x float> %i.we, <4 x i32> <i32 1, i32 2, i32 5, i32 poison>
  %i.wn = insertelement <4 x float> %i.wm, float %i.df, i64 3
  %i.wo = shufflevector <4 x float> %i.wh, <4 x float> %i.vi, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.wp = shufflevector <2 x float> %.sroa.0868.1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.wq = shufflevector <4 x float> %i.wo, <4 x float> %i.wp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.wr = fmul <4 x float> %i.wn, %i.wq
  %i.ws = fsub <4 x float> %i.wl, %i.wr           ; 4 uses
  %i.wt = shufflevector <4 x float> %i.en, <4 x float> %i.we, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.wu = shufflevector <2 x float> %.sroa.0841.1, <2 x float> %.sroa.0868.1, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> %i.vi, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.ww = fmul <4 x float> %i.wt, %i.wv           ; 4 uses
  %shift1753 = shufflevector <4 x float> %i.ww, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop1754 = fsub <4 x float> %i.ww, %shift1753
  %shift1762 = shufflevector <4 x float> %foldExtExtBinop1754, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop1763 = fsub <4 x float> %i.ws, %shift1762
  %i.wx = extractelement <4 x float> %foldExtExtBinop1763, i64 1
  %i.wy = fadd float %i.wd, %i.wx
  %i.wz = fmul float %.sroa.5.0.i, %i.wy
  %.sroa.03.0.vec.extract.i1420 = extractelement <2 x float> %.sroa.07.0.i, i64 0
  %foldExtExtBinop1746 = fsub <2 x float> %.sroa.0854.1, %.sroa.0882.1
  %i.xa = extractelement <2 x float> %foldExtExtBinop1746, i64 0
  %shift1750 = shufflevector <4 x float> %i.ww, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1751 = fsub <4 x float> %i.ww, %shift1750
  %shift1756 = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1757 = fsub <4 x float> %foldExtExtBinop1751, %shift1756
  %i.xb = extractelement <4 x float> %foldExtExtBinop1757, i64 0
  %i.xc = fadd float %i.xa, %i.xb
  %i.xd = fmul float %.sroa.03.0.vec.extract.i1420, %i.xc
  %.sroa.03.4.vec.extract.i1422 = extractelement <2 x float> %.sroa.07.0.i, i64 1
  %foldExtExtBinop1748.a = fsub <2 x float> %.sroa.0854.1, %.sroa.0882.1
  %i.xe = extractelement <2 x float> %foldExtExtBinop1748.a, i64 1
  %shift1759 = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1760 = fsub <4 x float> %i.ws, %shift1759
  %i.xf = extractelement <4 x float> %foldExtExtBinop1760, i64 0
  %i.xg = fadd float %i.xe, %i.xf
  %i.xh = fmul float %.sroa.03.4.vec.extract.i1422, %i.xg
  %i.xi = fadd float %i.xd, %i.xh
  %i.xj = fadd float %i.wz, %i.xi
  %i.xk = fsub float %i.wc, %i.xj
  %i.xl = fmul float %i.wa, %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.xo = load float, ptr %i.xm, align 8, !tbaa !125
  %i.xp = load float, ptr %i.xn, align 4, !tbaa !163
  %i.xq = fmul float %i.xo, %i.xp                 ; 3 uses
  %i.xr = fadd float %i.xl, %i.vy                 ; 3 uses
  %i.xs = fneg float %i.xq                        ; 2 uses
  %i.xt = fcmp olt float %i.xr, %i.xs
  %i.xu = fcmp olt float %i.xq, %i.xr
  %i.xv = select i1 %i.xu, float %i.xq, float %i.xr
  %i.xw = select i1 %i.xt, float %i.xs, float %i.xv ; 2 uses
  store float %i.xw, ptr %i.vx, align 4, !tbaa !103
  %.scalar = fsub float %i.xw, %i.vy
  %i.xx = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.xz = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ya = insertelement <4 x float> %i.xz, float 1.000000e+00, i64 3
  %i.yb = insertelement <4 x float> %i.ya, float %.sroa.5.0.i, i64 0
  %i.yc = fmul <4 x float> %i.yb, %i.xy           ; 6 uses
  %i.yd = extractelement <4 x float> %i.yc, i64 1
  %i.ye = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yf = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.yg = fmul <2 x float> %i.ye, %i.yf
  %i.yh = fsub <2 x float> %.sroa.0882.1, %i.yg
  %i.yi = extractelement <4 x float> %i.yc, i64 0 ; 3 uses
  %i.yj = extractelement <2 x float> %i.h, i64 0
  %i.yk = fmul float %i.yj, %i.yi
  %i.yl = fsub float %i.vp, %i.yk
  %i.ym = fmul float %i.df, %i.yd
  %i.yn = extractelement <2 x float> %i.de, i64 0
  %i.yo = fmul float %i.yn, %i.yi
  %i.yp = fsub float %i.ym, %i.yo                 ; 2 uses
  %i.yq = fmul float %.sroa.281661.0.copyload, %i.yp
  %i.yr = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ys = fmul <2 x float> %i.de, %i.yr
  %i.yt = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yu = insertelement <2 x float> %i.yt, float %i.df, i64 1
  %i.yv = fmul <2 x float> %i.yu, %i.yf
  %i.yw = fsub <2 x float> %i.ys, %i.yv           ; 4 uses
  %i.yx = extractelement <2 x float> %i.yw, i64 1 ; 2 uses
  %i.yy = fmul float %.sroa.131646.0.copyload, %i.yx
  %i.yz = fadd float %i.yy, %i.yq
  %i.za = extractelement <2 x float> %i.l, i64 0
  %i.zb = fmul float %i.za, %i.yx
  %i.zc = extractelement <2 x float> %i.yw, i64 0
  %foldExtExtBinop1765 = fmul <2 x float> %i.m, %i.yw
  %i.zd = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.ze = fmul <2 x float> %i.zd, %i.yw           ; 2 uses
  %i.zf = fmul float %.sroa.431676.0.copyload, %i.zc
  %i.zg = fadd float %i.zf, %i.yz
  %i.zh = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fmul <2 x float> %i.k, %i.zi
  %i.zk = insertelement <2 x float> %i.ze, float %i.zb, i64 0
  %i.zl = fadd <2 x float> %i.zk, %i.zj
  %i.zm = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zn = shufflevector <2 x float> %foldExtExtBinop1765, <2 x float> %i.zm, <2 x i32> <i32 0, i32 3>
  %i.zo = fadd <2 x float> %i.zn, %i.zl
  %i.zp = fsub <2 x float> %.sroa.0868.1, %i.zo
  %i.zq = fsub float %i.vr, %i.zg
  %i.zr = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zs = fmul <2 x float> %i.zr, %i.yf
  %i.zt = fadd <2 x float> %.sroa.0854.1, %i.zs
  %i.zu = fmul float %i.i, %i.yi
  %i.zv = fadd float %i.vo, %i.zu
  %i.zw = fmul <4 x float> %i.en, %i.yc
  %i.zx = shufflevector <4 x float> %i.yc, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.zy = fmul <4 x float> %i.er, %i.zx
  %i.zz = fsub <4 x float> %i.zw, %i.zy           ; 4 uses
  %i.aaa = extractelement <4 x float> %i.zz, i64 0 ; 2 uses
  %i.aab = fmul float %.sroa.13.0.copyload, %i.aaa
  %i.aac = extractelement <4 x float> %i.zz, i64 1 ; 2 uses
  %i.aad = fmul float %.sroa.28.0.copyload, %i.aac
  %i.aae = fadd float %i.aab, %i.aad
  %i.aaf = extractelement <2 x float> %i.o, i64 0
  %i.aag = fmul float %i.aaf, %i.aaa
  %i.aah = extractelement <2 x float> %i.p, i64 0
  %i.aai = fmul float %i.aah, %i.aac
  %i.aaj = extractelement <4 x float> %i.zz, i64 2 ; 2 uses
  %i.aak = extractelement <2 x float> %i.q, i64 0
  %i.aal = fmul float %i.aak, %i.aaj
  %i.aam = shufflevector <2 x float> %.sroa.0841.1, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.aan = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aao = shufflevector <4 x float> %i.aam, <4 x float> %i.aan, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.aap = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aaq = shufflevector <4 x float> %i.aao, <4 x float> %i.aap, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.aar = fmul <4 x float> %i.aaq, %i.zz         ; 3 uses
  %i.aas = fmul float %.sroa.43.0.copyload, %i.aaj
  %i.aat = fadd float %i.aas, %i.aae
  %i.aau = shufflevector <4 x float> %i.aar, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aav = insertelement <2 x float> %i.aau, float %i.aag, i64 0
  %i.aaw = shufflevector <4 x float> %i.aar, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.aax = insertelement <2 x float> %i.aaw, float %i.aai, i64 0
  %i.aay = fadd <2 x float> %i.aav, %i.aax
  %i.aaz = shufflevector <4 x float> %i.aar, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aba = insertelement <2 x float> %i.aaz, float %i.aal, i64 0
  %i.abb = fadd <2 x float> %i.aba, %i.aay
  %i.abc = fadd <2 x float> %.sroa.0841.1, %i.abb
  %i.abd = fadd float %i.vq, %i.aat
  br label %bb.az

bb.aw:                                            ; preds = %bb.v, %bb.r
  %foldExtExtBinop1767 = fsub <2 x float> %.sroa.0854.0.copyload, %.sroa.0882.0.copyload
  %i.abe = extractelement <2 x float> %foldExtExtBinop1767, i64 0
  %.sroa.09.4.vec.extract13.i1498 = extractelement <2 x float> %.sroa.0841.0.copyload, i64 1
  %i.abf = fmul float %.sroa.09.4.vec.extract13.i1498, %i.ev
  %i.abg = extractelement <4 x float> %i.en, i64 0
  %i.abh = fmul float %.sroa.19.0.copyload, %i.abg
  %i.abi = fsub float %i.abf, %i.abh
  %.sroa.09.4.vec.extract13.i1506 = extractelement <2 x float> %.sroa.0868.0.copyload, i64 1
  %i.abj = fmul float %.sroa.09.4.vec.extract13.i1506, %i.df
end_hunk_0
