Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/prismatic_joint?download=true
inline.NumInlined: 265
inline.NumDeleted: 34
begin_hunk_0_@b3PrismaticJoint_GetSpeed:bb.a
  %i.am = icmp slt i32 %i.af, 0
  %i.an = xor i1 %i.am, %i.al
  %i.ao = and i1 %i.ak, %i.an, !nosanitize !10
  br i1 %i.ao, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.v, i64 %i.ai) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.ag ; 2 uses
  %i.aq = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.c, ptr noundef %i.t) #7 ; 8 uses
  %i.ar = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.c, ptr noundef %i.ap) #7 ; 8 uses
  %i.as = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef %i.t) #7 ; 7 uses
  %i.at = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef %i.ap) #7 ; 7 uses
  %i.au = icmp ne ptr %i.aq, null, !nosanitize !10
  %i.av = ptrtoint ptr %i.aq to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 3, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !10
  br i1 %i.ay, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.sroa.0166.0.copyload = load <2 x float>, ptr %i.az, align 4, !tbaa !90 ; 8 uses
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %.sroa.5168.0.copyload = load <2 x float>, ptr %.sroa.5168.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.ba = icmp ne ptr %i.ar, null, !nosanitize !10
  %i.bb = ptrtoint ptr %i.ar to i64, !nosanitize !10 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !10
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !10
  %i.be = and i1 %i.ba, %i.bd, !nosanitize !10
  br i1 %i.be, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @46, i64 %i.bb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.0164.0.copyload = load <2 x float>, ptr %i.bf, align 4, !tbaa !90 ; 3 uses
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %.sroa.4165.0.copyload = load <2 x float>, ptr %.sroa.4165.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bi = load <2 x float>, ptr %i.bh, align 4    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bk = load <2 x float>, ptr %i.bj, align 4    ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.bg, align 4
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4
  %.sroa.0138.0.copyload = load <2 x float>, ptr %i.bl, align 4
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  %.sroa.2139.0.copyload = load float, ptr %.sroa.2139.0..sroa_idx, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.bm, align 4
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.sroa.2122.0.copyload = load float, ptr %.sroa.2122.0..sroa_idx, align 4
  %.sroa.0119.0.copyload = load <2 x float>, ptr %i.bn, align 4
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %.sroa.2120.0.copyload = load float, ptr %.sroa.2120.0..sroa_idx, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %.sroa.0103.0.copyload = load <2 x float>, ptr %i.bo, align 4 ; 2 uses
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 2 uses
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2102.0..sroa_idx, align 4
  %.not = icmp eq ptr %i.as, null                 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = ptrtoint ptr %i.as to i64, !nosanitize !10 ; 2 uses
  %i.br = and i64 %i.bq, 3, !nosanitize !10
  %i.bs = icmp eq i64 %i.br, 0, !nosanitize !10
  br i1 %i.bs, label %bb.p, label %bb.o, !prof !11, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @48, i64 %i.bq) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.as, align 4, !tbaa !90
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.577.0.copyload = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.sroa.075.0 = phi <2 x float> [ %.sroa.075.0.copyload, %bb.p ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.sroa.577.0 = phi float [ %.sroa.577.0.copyload, %bb.p ], [ 0.000000e+00, %bb.m ]
  %.not207 = icmp eq ptr %i.at, null              ; 2 uses
  br i1 %.not207, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.bu = and i64 %i.bt, 3, !nosanitize !10
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !10
  br i1 %i.bv, label %bb.t, label %bb.s, !prof !11, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @49, i64 %i.bt) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.r
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.at, align 4, !tbaa !90
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.573.0.copyload = load float, ptr %.sroa.573.0..sroa_idx, align 4, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.sroa.071.0 = phi <2 x float> [ %.sroa.071.0.copyload, %bb.t ], [ zeroinitializer, %bb.q ] ; 2 uses
  %.sroa.573.0 = phi float [ %.sroa.573.0.copyload, %bb.t ], [ 0.000000e+00, %bb.q ]
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = ptrtoint ptr %i.as to i64, !nosanitize !10 ; 2 uses
  %i.bx = and i64 %i.bw, 3, !nosanitize !10
  %i.by = icmp eq i64 %i.bx, 0, !nosanitize !10
  br i1 %i.by, label %bb.x, label %bb.w, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @50, i64 %i.bw) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.bz, align 4, !tbaa !90
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.sroa.067.0 = phi <2 x float> [ %.sroa.067.0.copyload, %bb.x ], [ zeroinitializer, %bb.u ] ; 5 uses
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload, %bb.x ], [ 0.000000e+00, %bb.u ] ; 4 uses
  br i1 %.not207, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.cb = and i64 %i.ca, 3, !nosanitize !10
  %i.cc = icmp eq i64 %i.cb, 0, !nosanitize !10
  br i1 %i.cc, label %bb.ab, label %bb.aa, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @51, i64 %i.ca) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ab:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.cd, align 4, !tbaa !90
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !90
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %.sroa.064.0 = phi <2 x float> [ %.sroa.064.0.copyload, %bb.ab ], [ zeroinitializer, %bb.y ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.ab ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %i.ce = shufflevector <2 x float> %.sroa.075.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cf = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.09.4.vec.extract13.i = extractelement <2 x float> %.sroa.064.0, i64 1
  %.sroa.09.4.vec.extract13.i279 = extractelement <2 x float> %.sroa.067.0, i64 1
  %i.cg = shufflevector <2 x float> %.sroa.0121.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float 0.000000e+00, i64 3
  %i.ci = insertelement <4 x float> %i.ch, float %.sroa.2122.0.copyload, i64 2
  %i.cj = shufflevector <2 x float> %.sroa.0119.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 3
  %i.cl = insertelement <4 x float> %i.ck, float %.sroa.2120.0.copyload, i64 2
  %i.cm = fsub <4 x float> %i.ci, %i.cl           ; 4 uses
  %i.cn = shufflevector <2 x float> %.sroa.0140.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float -1.000000e+00, i64 3
  %i.cp = insertelement <4 x float> %i.co, float %.sroa.2141.0.copyload, i64 1
  %i.cq = shufflevector <2 x float> %.sroa.0138.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float 0.000000e+00, i64 3
  %i.cs = insertelement <4 x float> %i.cr, float %.sroa.2139.0.copyload, i64 1
  %i.ct = fsub <4 x float> %i.cp, %i.cs           ; 4 uses
  %i.cu = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x float> %i.cu, float %.sroa.2104.0.copyload, i64 1
  %i.cw = shufflevector <2 x float> %.sroa.0101.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x float> %i.cw, float %.sroa.2102.0.copyload, i64 1
  %i.cy = fsub <2 x float> %i.cv, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.da = insertelement <4 x float> %i.cz, float 1.000000e+00, i64 3
  %i.db = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.dc = fmul <4 x float> %i.da, %i.db
  %i.dd = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.de = insertelement <4 x float> %i.dd, float -0.000000e+00, i64 3
  %i.df = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.dg = fmul <4 x float> %i.de, %i.df
  %i.dh = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> %.sroa.0166.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.di = insertelement <4 x float> %i.dh, float 0.000000e+00, i64 3
  %i.dj = insertelement <4 x float> %i.ct, float 1.000000e+00, i64 3
  %i.dk = fmul <4 x float> %i.di, %i.dj
  %i.dl = fsub <4 x float> %i.dg, %i.dk
  %i.dm = fadd <4 x float> %i.dc, %i.dl           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0103.0.copyload, %.sroa.0101.0.copyload
  %1 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dn = insertelement <4 x float> %i.dh, float 1.000000e+00, i64 3
  %i.do = fmul <4 x float> %i.dn, %i.dm
  %i.dp = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dq = insertelement <4 x float> %i.dp, float 0.000000e+00, i64 3
  %i.dr = shufflevector <4 x float> %i.dm, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ds = fmul <4 x float> %i.dq, %i.dr
  %i.dt = fsub <4 x float> %i.do, %i.ds
  %i.du = fmul <4 x float> %i.dt, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.dv = fadd <4 x float> %i.ct, %i.du           ; 5 uses
  %i.dw = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %i.bk, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dx = fmul <4 x float> %i.dw, %i.cm           ; 2 uses
  %i.dy = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.dz = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dy, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.eb = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ec = fmul <4 x float> %i.ea, %i.eb           ; 2 uses
  %i.ed = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %.sroa.0164.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.eg = fmul <4 x float> %i.ee, %i.ef
  %i.eh = fsub <4 x float> %i.ec, %i.eg
  %i.ei = fadd <4 x float> %i.dx, %i.eh           ; 3 uses
  %i.ej = fmul <4 x float> %i.ee, %i.ei
  %i.ek = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.el = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.em = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.en = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %2 = insertelement <4 x float> %i.en, float %1, i64 2
  %i.eo = extractelement <4 x float> %i.dv, i64 1
  %i.ep = fmul float %i.eo, %.sroa.09.4.vec.extract13.i279
  %i.eq = extractelement <4 x float> %i.dv, i64 0
  %i.er = fmul float %i.eq, %.sroa.6.0
  %i.es = fsub float %i.ep, %i.er
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %i.bk, i64 0
  %i.et = shufflevector <2 x float> %i.bi, <2 x float> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.eu = fmul <2 x float> %i.et, <float 0.000000e+00, float 1.000000e+00>
  %i.ev = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.ec, <2 x i32> <i32 0, i32 7>
  %i.ex = fmul <2 x float> %i.ew, <float 0.000000e+00, float 1.000000e+00>
  %i.ey = fsub <2 x float> %i.eu, %i.ex
  %i.ez = shufflevector <4 x float> %i.ev, <4 x float> %i.dx, <2 x i32> <i32 1, i32 7>
  %i.fa = fadd <2 x float> %i.ez, %i.ey           ; 3 uses
  %i.fb = shufflevector <2 x float> %i.bk, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.fc = fmul <2 x float> %i.fb, %i.fa
  %i.fd = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.ff = fmul <2 x float> %i.bi, %i.fe
  %i.fg = fsub <2 x float> %i.fc, %i.ff
  %i.fh = fmul <2 x float> %i.fg, splat (float 2.000000e+00)
  %i.fi = fadd <2 x float> %i.fh, zeroinitializer ; 5 uses
  %i.fj = insertelement <4 x float> %i.ek, float %.sroa.2.8.vec.extract65.i, i64 3
  %i.fk = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.el, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fm = fmul <4 x float> %i.fj, %i.fl
  %i.fn = fsub <4 x float> %i.ej, %i.fm
  %i.fo = fmul <4 x float> %i.fn, splat (float 2.000000e+00)
  %i.fp = fadd <4 x float> %i.fo, %i.em           ; 5 uses
  %i.fq = fsub <4 x float> %i.fp, %i.dv           ; 2 uses
  %i.fr = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fs = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fu = fmul <2 x float> %i.fr, %i.ft
  %i.fv = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> %i.fi, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.fx = fmul <2 x float> %i.fv, %i.fw
  %i.fy = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> %.sroa.0166.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fz = fmul <2 x float> %i.fy, %i.fi
  %i.ga = fmul <2 x float> %.sroa.0166.0.copyload, %i.fi
  %i.gb = fmul <2 x float> %i.fv, %i.ft
  %i.gc = fsub <2 x float> %i.fx, %i.fz
  %i.gd = fmul <2 x float> %i.fr, %i.fw
  %i.ge = fsub <2 x float> %i.ga, %i.gb
  %i.gf = fadd <2 x float> %i.fu, %i.gc           ; 2 uses
  %i.gg = fadd <2 x float> %i.gd, %i.ge           ; 2 uses
  %i.gh = fmul <2 x float> %i.fy, %i.gf
  %i.gi = fmul <2 x float> %.sroa.0166.0.copyload, %i.gg
  %i.gj = fsub <2 x float> %i.gh, %i.gi
  %i.gk = fmul <2 x float> %i.gj, splat (float 2.000000e+00)
  %i.gl = fadd <2 x float> %i.fi, %i.gk           ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fmul <2 x float> %shift, %i.gg
  %shift324 = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop325 = fmul <2 x float> %.sroa.5168.0.copyload, %shift324
  %foldExtExtBinop329 = fsub <2 x float> %foldExtExtBinop.a, %foldExtExtBinop325
  %3 = extractelement <2 x float> %foldExtExtBinop329, i64 0
  %4 = fmul float %3, 2.000000e+00
  %5 = insertelement <4 x float> %2, float %4, i64 3
  %i.gm = fadd <4 x float> %i.fq, %5              ; 3 uses
  %i.gn = extractelement <4 x float> %i.fp, i64 1
  %i.go = fmul float %i.gn, %.sroa.09.4.vec.extract13.i
  %i.gp = extractelement <4 x float> %i.fp, i64 0
  %i.gq = fmul float %i.gp, %.sroa.5.0
  %i.gr = shufflevector <4 x float> %i.fp, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gs = shufflevector <2 x float> %.sroa.064.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gt = insertelement <2 x float> %i.gs, float %.sroa.5.0, i64 0
  %i.gu = fmul <2 x float> %i.gr, %i.gt
  %i.gv = shufflevector <4 x float> %i.fp, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.gw = fmul <2 x float> %i.gv, %.sroa.064.0
  %i.gx = fsub <2 x float> %i.gu, %i.gw
  %i.gy = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x float> %i.gy, float %.sroa.573.0, i64 1
  %i.ha = fadd <2 x float> %i.gz, %i.gx
  %i.hb = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.hc = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hd = insertelement <2 x float> %i.hc, float %.sroa.6.0, i64 0
  %i.he = fmul <2 x float> %i.hb, %i.hd
  %i.hf = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.hg = fmul <2 x float> %i.hf, %.sroa.067.0
  %i.hh = fsub <2 x float> %i.he, %i.hg
  %i.hi = shufflevector <2 x float> %.sroa.075.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hj = insertelement <2 x float> %i.hi, float %.sroa.577.0, i64 1
  %i.hk = fadd <2 x float> %i.hj, %i.hh
  %i.hl = fsub <2 x float> %i.ha, %i.hk
  %i.hm = fsub float %i.go, %i.gq
  %i.hn = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ho = shufflevector <4 x float> %i.gm, <4 x float> %i.hn, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hq = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.hr = insertelement <4 x float> %i.hq, float %.sroa.6.0, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.hm, i64 3 ; 2 uses
  %i.ht = fmul <4 x float> %i.hp, %i.hs
  %i.hu = fadd <4 x float> %i.hp, %i.hs
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hw = shufflevector <4 x float> %i.hn, <4 x float> %i.gm, <4 x i32> <i32 1, i32 7, i32 0, i32 poison>
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hy = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hz = insertelement <4 x float> %i.hy, float %.sroa.6.0, i64 2
  %i.ia = insertelement <4 x float> %i.hz, float %i.es, i64 3 ; 2 uses
  %i.ib = fmul <4 x float> %i.hx, %i.ia
  %i.ic = fadd <4 x float> %i.hx, %i.ia
  %i.id = shufflevector <4 x float> %i.ib, <4 x float> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ie = fsub <4 x float> %i.hv, %i.id
  %i.if = fmul <4 x float> %i.gm, %i.ie           ; 4 uses
  %shift331 = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop332 = fadd <4 x float> %shift331, %i.if
  %shift334 = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop335 = fadd <4 x float> %shift334, %foldExtExtBinop332
  %i.ig = extractelement <4 x float> %foldExtExtBinop335, i64 0
  %i.ih = extractelement <4 x float> %i.if, i64 3
  %i.ii = fmul <2 x float> %i.gl, %i.hl           ; 2 uses
  %i.ij = extractelement <2 x float> %i.ii, i64 0
  %i.ik = fadd float %i.ih, %i.ij
  %i.il = extractelement <2 x float> %i.ii, i64 1
  %i.im = fadd float %i.il, %i.ik
  %i.in = fadd float %i.ig, %i.im
  ret float %i.in
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3GetBodyState(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetPrismaticJointForce(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !91 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @52, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
  %i.h = icmp ne ptr %0, null, !nosanitize !10
  %i.i = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.i) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.n = load float, ptr %i.m, align 4, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.p = load float, ptr %i.o, align 4, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.r = load float, ptr %i.q, align 4, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load float, ptr %i.s, align 4, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !90 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.x = load float, ptr %i.w, align 8, !tbaa !88
  %i.y = fadd float %i.t, %i.r
  %i.z = fadd float %i.y, %i.p
  %i.aa = fadd float %i.z, %i.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ae = load <2 x float>, ptr %i.ad, align 4    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load <2 x float>, ptr %i.ah, align 4    ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = fmul <2 x float> %i.v, %i.ak            ; 4 uses
  %i.am = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.an = insertelement <2 x float> %i.am, float %i.aa, i64 0
  %i.ao = fmul <2 x float> %i.an, %i.ak           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.al, %i.ae
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aq = fmul <2 x float> %i.ap, %i.ac           ; 2 uses
  %i.ar = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.as = fmul <2 x float> %i.al, %i.ar
  %i.at = fmul <2 x float> %i.ao, %i.ac
  %i.au = fsub <2 x float> %i.aq, %i.as
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = fsub <2 x float> %i.aw, %i.at
  %i.ay = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.az = fmul <2 x float> %i.ao, %i.ay
  %i.ba = fmul <2 x float> %i.ap, %i.ay
  %i.bb = fadd <2 x float> %i.az, %i.au           ; 2 uses
  %i.bc = fadd <2 x float> %i.ba, %i.ax           ; 3 uses
  %i.bd = fmul <2 x float> %i.ar, %i.bb
  %i.be = shufflevector <2 x float> %i.ae, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.bf = fmul <2 x float> %i.be, %i.bc
  %i.bg = fmul <2 x float> %i.ac, %i.bc
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <2 x i32> <i32 1, i32 2>
  %i.bi = fmul <2 x float> %i.ar, %i.bh
  %i.bj = fsub <2 x float> %i.bd, %i.bf
  %i.bk = fsub <2 x float> %i.bg, %i.bi
  %i.bl = fmul <2 x float> %i.bj, splat (float 2.000000e+00)
  %i.bm = fmul <2 x float> %i.bk, splat (float 2.000000e+00)
  %i.bn = fadd <2 x float> %i.al, %i.bl           ; 4 uses
  %i.bo = fadd <2 x float> %i.ao, %i.bm           ; 4 uses
  %foldExtExtBinop49 = fmul <2 x float> %i.ai, %i.bn
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.ag, %i.bo
  %foldExtExtBinop53 = fsub <2 x float> %foldExtExtBinop49, %foldExtExtBinop51
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.br = fmul <2 x float> %i.ag, %i.bq
  %i.bs = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bn
  %i.bu = fsub <2 x float> %i.br, %i.bt           ; 2 uses
  %i.bv = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bw = fmul <2 x float> %i.bv, %i.bo
  %i.bx = fmul <2 x float> %i.bv, %i.bq
  %i.by = fadd <2 x float> %i.bw, %i.bu           ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = shufflevector <2 x float> %foldExtExtBinop53, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = fmul <2 x float> %i.bs, %i.by
  %i.cd = shufflevector <2 x float> %i.ai, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fsub <2 x float> %i.cc, %i.ce
  %i.cg = shufflevector <2 x float> %i.cb, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ch = fmul <2 x float> %i.ag, %i.cg           ; 2 uses
  %shift = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop55 = fsub <2 x float> %i.ch, %shift
  %i.ci = extractelement <2 x float> %foldExtExtBinop55, i64 0
  %i.cj = fmul <2 x float> %i.cf, splat (float 2.000000e+00)
  %i.ck = fadd <2 x float> %i.bn, %i.cj
  %i.cl = fmul float %i.ci, 2.000000e+00
  %i.cm = fadd float %i.bp, %i.cl
  %.fca.0.insert.i62.i45 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ck, 0
  %.fca.1.insert.i63.i46 = insertvalue { <2 x float>, float } %.fca.0.insert.i62.i45, float %i.cm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i63.i46
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetPrismaticJointTorque(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !91 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
end_hunk_0
begin_hunk_1_@b3PreparePrismaticJoint:bb.a
  %i.im = fadd float %i.hl, %i.il
  store <2 x float> %i.ik, ptr %i.ft, align 4, !tbaa !90
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store float %i.im, ptr %.sroa.449.0..sroa_idx, align 4, !tbaa !90
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.is = load <2 x float>, ptr %i.iq, align 4    ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 2 uses
  %i.iu = load <2 x float>, ptr %i.it, align 4    ; 5 uses
  %i.iv = load <2 x float>, ptr %i.ir, align 4    ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ix = load <2 x float>, ptr %i.iw, align 4    ; 4 uses
  %i.iy = shufflevector <2 x float> %i.is, <2 x float> %i.iu, <2 x i32> <i32 1, i32 2>
  %i.iz = shufflevector <2 x float> %i.ix, <2 x float> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.ja = fmul <2 x float> %i.iy, %i.iz
  %i.jb = shufflevector <2 x float> %i.iu, <2 x float> %i.is, <2 x i32> <i32 0, i32 2>
  %i.jc = shufflevector <2 x float> %i.iv, <2 x float> %i.ix, <2 x i32> <i32 1, i32 2>
  %i.jd = fmul <2 x float> %i.jb, %i.jc
  %i.je = fsub <2 x float> %i.ja, %i.jd
  %i.jf = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jg = fmul <2 x float> %i.jf, %i.iv
  %i.jh = fadd <2 x float> %i.jg, %i.je
  %i.ji = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jj = fmul <2 x float> %i.is, %i.ji
  %i.jk = fadd <2 x float> %i.jj, %i.jh
  %i.jl = fmul <2 x float> %i.iu, %i.ji           ; 2 uses
  %i.jm = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jn = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x float> %i.jm, %i.jn           ; 2 uses
  %i.jp = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jq = fmul <2 x float> %i.is, %i.jp           ; 2 uses
  %i.jr = fsub <2 x float> %i.jq, %i.jo
  %i.js = fadd <2 x float> %i.jq, %i.jo
  %i.jt = shufflevector <2 x float> %i.jr, <2 x float> %i.js, <2 x i32> <i32 0, i32 3>
  %i.ju = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jv = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %i.ju, %i.jv
  %i.jx = fadd <2 x float> %i.jt, %i.jw           ; 2 uses
  %i.jy = fadd <2 x float> %i.jl, %i.jx
  %i.jz = fsub <2 x float> %i.jl, %i.jx
  %i.ka = shufflevector <2 x float> %i.jy, <2 x float> %i.jz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.jk, ptr %i.io, align 4, !tbaa !90
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x float> %i.ka, ptr %.sroa.431.0..sroa_idx, align 4, !tbaa !90
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dc, i64 68
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.ip, align 4
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.225.0.copyload = load float, ptr %.sroa.225.0..sroa_idx, align 4
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.kb, align 4
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 76
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4
  %i.kc = load <2 x float>, ptr %i.iq, align 4    ; 6 uses
  %i.kd = load <2 x float>, ptr %i.it, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i173 = extractelement <2 x float> %i.kc, i64 0
  %i.ke = fsub <2 x float> %.sroa.024.0.copyload, %.sroa.022.0.copyload ; 5 uses
  %i.kf = fsub float %.sroa.225.0.copyload, %.sroa.223.0.copyload ; 4 uses
  %foldExtExtBinop270 = fmul <2 x float> %i.ke, %i.kd
  %i.kg = extractelement <2 x float> %foldExtExtBinop270, i64 0
  %i.kh = fmul float %i.kf, %.sroa.09.0.vec.extract.i.i173
  %i.ki = fsub float %i.kg, %i.kh
  %i.kj = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kk = insertelement <2 x float> %i.kj, float %i.kf, i64 1 ; 2 uses
  %i.kl = fmul <2 x float> %i.kk, %i.kc
  %i.km = shufflevector <2 x float> %i.kc, <2 x float> %i.kd, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kn = fmul <2 x float> %i.ke, %i.km
  %i.ko = fsub <2 x float> %i.kl, %i.kn           ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.kr = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ks = fmul <2 x float> %i.kq, %i.kr
  %i.kt = fmul <2 x float> %i.kk, %i.kr
  %i.ku = fadd <2 x float> %i.ks, %i.ko           ; 2 uses
  %i.kv = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kw = insertelement <2 x float> %i.kv, float %i.ki, i64 0
  %i.kx = fadd <2 x float> %i.kt, %i.kw           ; 2 uses
  %i.ky = fmul <2 x float> %i.km, %i.ku
  %i.kz = shufflevector <2 x float> %i.kd, <2 x float> %i.kc, <2 x i32> <i32 0, i32 2>
  %i.la = fmul <2 x float> %i.kz, %i.kx
  %i.lb = fsub <2 x float> %i.ky, %i.la
  %foldExtExtBinop272 = fmul <2 x float> %i.kc, %i.kx
  %foldExtExtBinop274 = fmul <2 x float> %i.kc, %i.ku
  %shift276 = shufflevector <2 x float> %foldExtExtBinop274, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop277 = fsub <2 x float> %foldExtExtBinop272, %shift276
  %i.lc = extractelement <2 x float> %foldExtExtBinop277, i64 0
  %i.ld = fmul <2 x float> %i.lb, splat (float 2.000000e+00)
  %i.le = fadd <2 x float> %i.ke, %i.ld
  %i.lf = fmul float %i.lc, 2.000000e+00
  %i.lg = fadd float %i.kf, %i.lf
  store <2 x float> %i.le, ptr %i.in, align 4, !tbaa !90
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float %i.lg, ptr %.sroa.429.0..sroa_idx, align 4, !tbaa !90
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.li = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.lj = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.li, align 4
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  %.sroa.29.0.copyload = load float, ptr %.sroa.29.0..sroa_idx, align 4
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.lj, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 4
  %i.lk = fsub <2 x float> %.sroa.08.0.copyload, %.sroa.06.0.copyload
  %i.ll = fsub float %.sroa.29.0.copyload, %.sroa.27.0.copyload
  store <2 x float> %i.lk, ptr %i.lh, align 4, !tbaa !90
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store float %i.ll, ptr %.sroa.411.0..sroa_idx, align 4, !tbaa !90
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ln = tail call float @llvm.fabs.f32(float %i.fg)
  %i.lo = fcmp ogt float %i.ln, f0x057A0000
  br i1 %i.lo, label %bb.af, label %b3InvertMatrix.exit

bb.af:                                            ; preds = %bb.ae
  %i.lp = fdiv float 1.000000e+00, %i.fg          ; 2 uses
  %i.lq = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lr = extractelement <2 x float> %i.el, i64 1
  %i.ls = fmul <2 x float> %i.lq, %i.ep           ; 2 uses
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lu = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.lv = insertelement <4 x float> %i.lu, float 1.000000e+00, i64 3
  %i.lw = insertelement <4 x float> %i.lv, float %i.ef, i64 0 ; 2 uses
  %i.lx = shufflevector <2 x float> %i.ep, <2 x float> %i.ew, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> %i.lt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lz = fmul <4 x float> %i.lw, %i.ly
  %i.ma = shufflevector <2 x float> %i.ei, <2 x float> %i.ep, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.mb = insertelement <4 x float> %i.ma, float %i.lr, i64 2
  %i.mc = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.md = shufflevector <4 x float> %i.mb, <4 x float> %i.mc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.me = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> %i.lw, <4 x i32> <i32 0, i32 4, i32 4, i32 poison>
  %i.mg = insertelement <4 x float> %i.mf, float 1.000000e+00, i64 3
  %i.mh = fmul <4 x float> %i.md, %i.mg
  %i.mi = fsub <4 x float> %i.lz, %i.mh           ; 3 uses
  %i.mj = extractelement <4 x float> %i.mi, i64 1
  %i.mk = fmul float %i.mj, %i.lp
  %i.ml = extractelement <2 x float> %i.el, i64 0
  %i.mm = fmul float %i.ef, %i.ml
  %shift279 = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop280 = fmul <2 x float> %i.ei, %shift279
  %i.mn = extractelement <2 x float> %foldExtExtBinop280, i64 0
  %i.mo = fsub float %i.mm, %i.mn
  %i.mp = fmul <2 x float> %i.ei, %i.em           ; 2 uses
  %shift282 = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop283 = fsub <2 x float> %i.mp, %shift282
  %i.mq = shufflevector <2 x float> %foldExtExtBinop283, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mr = insertelement <4 x float> poison, float %i.lp, i64 0 ; 3 uses
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.mi, <4 x i32> <i32 0, i32 4, i32 6, i32 poison>
  %i.mt = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mu = shufflevector <4 x float> %i.ms, <4 x float> %i.mt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mv = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.mw = shufflevector <4 x float> %i.mt, <4 x float> %i.mv, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.mx = fmul <4 x float> %i.mu, %i.mw
  %i.my = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.na = insertelement <4 x float> %i.mz, float %i.er, i64 1
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> %i.mq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nd = fmul <4 x float> %i.nc, %i.my
  br label %b3InvertMatrix.exit

b3InvertMatrix.exit:                              ; preds = %bb.ae, %bb.af
  %.sroa.8197.0 = phi float [ %i.mk, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.ne = phi <4 x float> [ %i.mx, %bb.af ], [ zeroinitializer, %bb.ae ]
  %i.nf = phi <4 x float> [ %i.nd, %bb.af ], [ zeroinitializer, %bb.ae ]
  store <4 x float> %i.ne, ptr %i.lm, align 4, !tbaa !90
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 380
  store float %.sroa.8197.0, ptr %.sroa.8197.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <4 x float> %i.nf, ptr %.sroa.9198.0..sroa_idx, align 4, !tbaa !90
  %i.ng = fmul <2 x float> %i.he, %i.he           ; 3 uses
  %foldExtExtBinop285 = fmul <2 x float> %i.hc, %i.hc ; 2 uses
  %foldExtExtBinop287 = fadd <2 x float> %i.ng, %foldExtExtBinop285
  %shift289 = shufflevector <2 x float> %foldExtExtBinop285, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop290 = fadd <2 x float> %shift289, %i.ng
  %i.nh = extractelement <2 x float> %foldExtExtBinop290, i64 0
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.nj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ng)
  %i.nk = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nl = fmul <2 x float> %i.nk, %i.he           ; 3 uses
  %i.nm = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nn = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.no = fmul <2 x float> %i.nm, %i.nn           ; 3 uses
  %foldExtExtBinop292 = fadd <2 x float> %i.no, %i.nl
  %i.np = shufflevector <2 x float> %foldExtExtBinop292, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.8.12..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.nq = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.ns = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.nt = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.ns, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.nu = fmul <4 x float> %i.nr, %i.nt           ; 2 uses
  %i.nv = shufflevector <2 x float> %i.hb, <2 x float> %i.ha, <4 x i32> <i32 0, i32 3, i32 poison, i32 0> ; 2 uses
  %i.nw = insertelement <4 x float> %i.nv, float %i.nh, i64 0
  %i.nx = insertelement <4 x float> %i.nw, float %i.nj, i64 1
  %i.ny = shufflevector <2 x float> %foldExtExtBinop287, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nz = shufflevector <4 x float> %i.nx, <4 x float> %i.ny, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.oa = shufflevector <4 x float> %i.nv, <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.ob = fmul <4 x float> %i.nz, %i.oa           ; 2 uses
  %i.oc = fsub <4 x float> %i.nu, %i.ob           ; 3 uses
  %i.od = shufflevector <4 x float> %i.oc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> %i.np, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison> ; 2 uses
  %i.of = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.og = shufflevector <4 x float> %i.ob, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.oh = shufflevector <2 x float> %i.nl, <2 x float> %i.of, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.oi = shufflevector <2 x float> %i.no, <2 x float> %i.og, <4 x i32> <i32 2, i32 1, i32 poison, i32 poison>
  %i.oj = fadd <4 x float> %i.oh, %i.oi
  %i.ok = shufflevector <4 x float> %i.oc, <4 x float> %i.oj, <4 x i32> <i32 2, i32 4, i32 5, i32 3> ; 2 uses
  %i.ol = fmul <4 x float> %i.ok, <float poison, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %2 = shufflevector <4 x float> %i.ok, <4 x float> %i.ol, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.om = fsub <2 x float> %i.nl, %i.no
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %3 = shufflevector <4 x float> %i.oe, <4 x float> %i.on, <4 x i32> <i32 poison, i32 1, i32 4, i32 5>
  %i.oo = fmul <4 x float> %3, <float poison, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %4 = shufflevector <4 x float> %i.oe, <4 x float> %i.oo, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %4, ptr %i.ni, align 4, !tbaa !90
  store <4 x float> %2, ptr %.sroa.8.12..sroa_idx, align 4, !tbaa !90
  %.sroa.13.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.op = extractelement <4 x float> %i.oc, i64 0
  store float %i.op, ptr %.sroa.13.24..sroa_idx, align 4, !tbaa !90
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.os = load float, ptr %i.or, align 4, !tbaa !144 ; 2 uses
  %i.ot = fcmp oeq float %i.os, 0.000000e+00
  br i1 %i.ot, label %b3MakeSoft.exit, label %bb.ag

bb.ag:                                            ; preds = %b3InvertMatrix.exit
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !145
  %i.ox = load float, ptr %i.ou, align 8, !tbaa !117
  %i.oy = fmul float %i.os, f0x40C90FDB           ; 2 uses
  %i.oz = fmul float %i.ow, 2.000000e+00
  %i.pa = fmul float %i.oy, %i.ox                 ; 2 uses
  %i.pb = fadd float %i.oz, %i.pa                 ; 2 uses
  %i.pc = fmul float %i.pa, %i.pb                 ; 2 uses
  %i.pd = fadd float %i.pc, 1.000000e+00
  %i.pe = fdiv float 1.000000e+00, %i.pd          ; 2 uses
  %i.pf = fdiv float %i.oy, %i.pb
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pg = fmul float %i.pc, %i.pe
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.pg, i64 1
  br label %b3MakeSoft.exit

b3MakeSoft.exit:                                  ; preds = %b3InvertMatrix.exit, %bb.ag
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.ag ], [ zeroinitializer, %b3InvertMatrix.exit ]
  %.sroa.5.0.i = phi float [ %i.pe, %bb.ag ], [ 0.000000e+00, %b3InvertMatrix.exit ]
  store <2 x float> %.sroa.014.0.i, ptr %i.oq, align 4, !tbaa !90
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !90
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.pi = load i8, ptr %i.ph, align 4, !tbaa !146 ; 3 uses
  %i.pj = icmp ult i8 %i.pi, 2
  br i1 %i.pj, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %b3MakeSoft.exit
  %i.pk = zext i8 %i.pi to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @74, i64 %i.pk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %b3MakeSoft.exit
  %i.pl = icmp eq i8 %i.pi, 0
  br i1 %i.pl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fk, align 4, !tbaa !90
  %.sroa_idx189 = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %.sroa_idx189, align 4, !tbaa !90
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> zeroinitializer, ptr %i.pm, align 4, !tbaa !90
  store <2 x float> zeroinitializer, ptr %i.pn, align 4, !tbaa !90
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float 0.000000e+00, ptr %i.po, align 4, !tbaa !95
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3WarmStartPrismaticJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !98 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load float, ptr %i.f, align 4, !tbaa !112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load float, ptr %i.h, align 4, !tbaa !113 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5571.0.copyload = load float, ptr %.sroa.5571.0..sroa_idx, align 4, !tbaa !90
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.8574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.8574.0.copyload = load float, ptr %.sroa.8574.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !90
  %i.l = load <2 x float>, ptr %.sroa.6572.0..sroa_idx, align 4, !tbaa !90
  %i.m = load <2 x float>, ptr %.sroa.9575.0..sroa_idx, align 4, !tbaa !90
  %.sroa.11577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.11577.0.copyload = load float, ptr %.sroa.11577.0..sroa_idx, align 4, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.0566.0.copyload = load float, ptr %i.n, align 4, !tbaa !90
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !90
  %.sroa.5567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.5567.0.copyload = load float, ptr %.sroa.5567.0..sroa_idx, align 4, !tbaa !90
  %.sroa.6568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.6568.0.copyload = load float, ptr %.sroa.6568.0..sroa_idx, align 4, !tbaa !90
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !90
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !90
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !90
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !90
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load i32, ptr %i.q, align 4, !tbaa !115  ; 3 uses
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @76, i64 %i.u) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118  ; 3 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.ad, i64 %i.ae) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.am = phi ptr [ %2, %bb.c ], [ %i.ab, %bb.f ] ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !116 ; 3 uses
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @78, i64 %i.ar) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !118 ; 3 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.ba, i64 %i.bb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bj = phi ptr [ %2, %bb.h ], [ %i.ay, %bb.k ] ; 12 uses
  %i.bk = icmp ne ptr %i.am, null, !nosanitize !10
  %i.bl = ptrtoint ptr %i.am to i64, !nosanitize !10 ; 2 uses
end_hunk_1
begin_hunk_2_@b3WarmStartPrismaticJoint:bb.a
  %i.ju = fadd float %i.jr, %i.jt
  %i.jv = fmul float %.sroa.0566.0.copyload, %i.jq
  %i.jw = fmul float %.sroa.6568.0.copyload, %i.js
  %i.jx = extractelement <4 x float> %i.ix, i64 2 ; 2 uses
  %i.jy = fmul float %.sroa.9.0.copyload, %i.jx
  %i.jz = shufflevector <2 x float> %.sroa.052.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ka = insertelement <4 x float> %i.jz, float %.sroa.4.0.copyload, i64 0
  %i.kb = insertelement <4 x float> %i.ka, float %.sroa.7.0.copyload, i64 1
  %i.kc = insertelement <4 x float> %i.kb, float %.sroa.10.0.copyload, i64 2
  %i.kd = fmul <4 x float> %i.kc, %i.ix           ; 3 uses
  %i.ke = fmul float %.sroa.11.0.copyload, %i.jx
  %i.kf = fadd float %i.ke, %i.ju
  %i.kg = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kh = insertelement <2 x float> %i.kg, float %i.jv, i64 0
  %i.ki = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.kj = insertelement <2 x float> %i.ki, float %i.jw, i64 0
  %i.kk = fadd <2 x float> %i.kh, %i.kj
  %i.kl = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.km = insertelement <2 x float> %i.kl, float %i.jy, i64 0
  %i.kn = fadd <2 x float> %i.km, %i.kk
  %i.ko = fadd <2 x float> %i.kn, %.sroa.052.0.copyload
  %i.kp = fadd float %i.kf, %.sroa.6.0.copyload
  %i.kq = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !120
  %i.ks = and i32 %i.kr, 4096
  %.not = icmp eq i32 %i.ks, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.am, align 4, !tbaa !90
  %i.kt = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.ku, %i.jj
  %i.kw = fsub <2 x float> %.sroa.066.0.copyload, %i.kv
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  %.sroa.663.0.copyload = load float, ptr %.sroa.663.0..sroa_idx, align 4, !tbaa !90
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.0291.0.copyload = load <2 x float>, ptr %i.kx, align 4 ; 3 uses
  %i.ky = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.2292.0.copyload = load float, ptr %.sroa.2292.0..sroa_idx, align 4 ; 3 uses
  %i.kz = insertelement <3 x float> %i.ky, float %.sroa.2292.0.copyload, i64 2 ; 2 uses
  %i.la = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <3 x i32> <i32 1, i32 2, i32 0> ; 2 uses
  %i.lb = shufflevector <2 x float> %i.bx, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.lc = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ld = insertelement <3 x float> %i.lc, float %.sroa.2292.0.copyload, i64 0
  %i.le = fmul <3 x float> %i.lb, %i.ld
  %i.lf = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <3 x i32> <i32 0, i32 1, i32 2> ; 2 uses
  %i.lg = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.lh = insertelement <3 x float> %i.lg, float %.sroa.2292.0.copyload, i64 1
  %i.li = fmul <3 x float> %i.lf, %i.lh
  %i.lj = fmul <3 x float> %i.la, %i.kz
  %i.lk = fsub <3 x float> %i.li, %i.lj
  %i.ll = fadd <3 x float> %i.le, %i.lk           ; 2 uses
  %i.lm = fmul <3 x float> %i.la, %i.ll
  %i.ln = fmul <3 x float> %i.lf, %i.ll
  %i.lo = shufflevector <3 x float> %i.ln, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lp = fsub <3 x float> %i.lm, %i.lo
  %i.lq = fmul <3 x float> %i.lp, splat (float 2.000000e+00)
  %i.lr = fadd <3 x float> %i.kz, %i.lq           ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0267.0.copyload = load <2 x float>, ptr %i.ls, align 4
  %i.lt = shufflevector <2 x float> %.sroa.0267.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.2268.0.copyload = load float, ptr %.sroa.2268.0..sroa_idx, align 4
  %i.lu = insertelement <3 x float> %i.lt, float %.sroa.2268.0.copyload, i64 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0265.0.copyload = load <2 x float>, ptr %i.lv, align 4
  %i.lw = shufflevector <2 x float> %.sroa.0265.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.2266.0.copyload = load float, ptr %.sroa.2266.0..sroa_idx, align 4
  %i.lx = insertelement <3 x float> %i.lw, float %.sroa.2266.0.copyload, i64 2
  %i.ly = fsub <3 x float> %i.lu, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.sroa.0257.0.copyload = load <2 x float>, ptr %i.lz, align 4
  %i.ma = shufflevector <2 x float> %.sroa.0257.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.sroa.2258.0.copyload = load float, ptr %.sroa.2258.0..sroa_idx, align 4
  %i.mb = insertelement <3 x float> %i.ma, float %.sroa.2258.0.copyload, i64 2
  %i.mc = fadd <3 x float> %i.ly, %i.mb
  %i.md = shufflevector <4 x float> %i.et, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.me = fsub <3 x float> %i.md, %i.lr
  %i.mf = fadd <3 x float> %i.mc, %i.me
  %i.mg = fadd <3 x float> %i.lr, %i.mf           ; 6 uses
  %i.mh = shufflevector <4 x float> %i.fv, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mi = fmul <3 x float> %i.mg, %i.mh
  %i.mj = shufflevector <4 x float> %i.fv, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.mk = fmul <3 x float> %i.mg, %i.mj
  %i.ml = shufflevector <3 x float> %i.mk, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.mm = fsub <3 x float> %i.mi, %i.ml
  %i.mn = shufflevector <2 x float> %i.id, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mo = fmul <3 x float> %i.mm, %i.mn
  %i.mp = shufflevector <4 x float> %i.gs, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mq = fmul <3 x float> %i.mg, %i.mp
  %i.mr = shufflevector <4 x float> %i.gs, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ms = fmul <3 x float> %i.mg, %i.mr
  %i.mt = shufflevector <3 x float> %i.ms, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.mu = fsub <3 x float> %i.mq, %i.mt
  %i.mv = shufflevector <2 x float> %i.if, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mw = fmul <3 x float> %i.mu, %i.mv
  %i.mx = fadd <3 x float> %i.mo, %i.mw
  %i.my = shufflevector <3 x float> %i.mg, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mz = shufflevector <4 x float> %i.hr, <4 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.na = fmul <3 x float> %i.my, %i.mz
  %i.nb = shufflevector <4 x float> %i.hr, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.nc = fmul <3 x float> %i.mg, %i.nb
  %i.nd = fsub <3 x float> %i.na, %i.nc
  %i.ne = shufflevector <3 x float> %i.nd, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.nf = insertelement <3 x float> poison, float %i.ig, i64 0
  %i.ng = shufflevector <3 x float> %i.nf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.nh = fmul <3 x float> %i.ne, %i.ng
  %i.ni = fadd <3 x float> %i.mx, %i.nh
  %i.nj = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.nk = insertelement <3 x float> %i.nj, float %.sroa.296.0.copyload, i64 0
  %i.nl = fadd <3 x float> %i.ni, %i.nk           ; 6 uses
  %i.nm = extractelement <3 x float> %i.nl, i64 0
  %i.nn = fmul float %.sroa.11577.0.copyload, %i.nm
  %i.no = extractelement <3 x float> %i.nl, i64 1
  %i.np = fmul float %.sroa.5571.0.copyload, %i.no
  %i.nq = extractelement <3 x float> %i.nl, i64 2
  %i.nr = fmul float %.sroa.8574.0.copyload, %i.nq
  %i.ns = fadd float %i.np, %i.nr
  %i.nt = fadd float %i.nn, %i.ns
  %i.nu = fsub float %.sroa.663.0.copyload, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %.sroa.061.0.copyload = load <2 x float>, ptr %i.nv, align 4, !tbaa !90
  %i.nw = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.nx = fmul <2 x float> %i.m, %i.nw
  %i.ny = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = fmul <2 x float> %i.k, %i.ny
  %i.oa = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ob = fmul <2 x float> %i.l, %i.oa
  %i.oc = fadd <2 x float> %i.nz, %i.ob
  %i.od = fadd <2 x float> %i.nx, %i.oc
  %i.oe = fsub <2 x float> %.sroa.061.0.copyload, %i.od
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.668.0.copyload = load float, ptr %.sroa.668.0..sroa_idx, align 4, !tbaa !90
  %i.of = fmul float %i.g, %i.im
  %i.og = fsub float %.sroa.668.0.copyload, %i.of
  store <2 x float> %i.kw, ptr %i.am, align 4, !tbaa !90
  store float %i.og, ptr %.sroa.668.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.oe, ptr %i.nv, align 4, !tbaa !90
  store float %i.nu, ptr %.sroa.663.0..sroa_idx, align 4, !tbaa !90
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !120
  %i.oj = and i32 %i.oi, 4096
  %.not349 = icmp eq i32 %i.oj, 0
  br i1 %.not349, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store <2 x float> %i.jn, ptr %i.bj, align 4, !tbaa !90
  store float %i.jp, ptr %.sroa.658.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.ko, ptr %i.dx, align 4, !tbaa !90
  store float %i.kp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3SolvePrismaticJoint(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 !func_sanitize !147 {
bb.a:
  %3 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.132557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.232567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.332577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.532597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.632607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.j = load <16 x float>, ptr %i.h, align 4, !tbaa !90 ; 35 uses
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.k = load <2 x float>, ptr %i.i, align 4, !tbaa !90 ; 9 uses
  %i.l = load <2 x float>, ptr %.sroa.632607.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.532597.0.copyload = load float, ptr %.sroa.532597.0..sroa_idx, align 4, !tbaa !90 ; 7 uses
  %.sroa.332577.0.copyload = load float, ptr %.sroa.332577.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.m = load <2 x float>, ptr %i.f, align 4, !tbaa !90 ; 6 uses
  %i.n = load float, ptr %i.g, align 4, !tbaa !113 ; 11 uses
  %i.o = load <2 x float>, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.p = load <2 x float>, ptr %.sroa.53.0..sroa_idx, align 4, !tbaa !90 ; 13 uses
  %i.q = load <2 x float>, ptr %.sroa.132557.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %.sroa.232567.0.copyload = load float, ptr %.sroa.232567.0..sroa_idx, align 4, !tbaa !90 ; 6 uses
  %i.r = load <2 x float>, ptr %.sroa.73.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.83.0.copyload = load float, ptr %.sroa.83.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float 1.000000e+00, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load i32, ptr %i.u, align 4, !tbaa !115  ; 3 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ne ptr %1, null, !nosanitize !10
  %i.y = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.z = and i64 %i.y, 7, !nosanitize !10
  %i.aa = icmp eq i64 %i.z, 0, !nosanitize !10
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.y) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118 ; 3 uses
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = mul nsw i64 %i.ae, 56
  %i.ah = ptrtoint ptr %i.ad to i64, !nosanitize !10 ; 3 uses
  %i.ai = add i64 %i.ag, %i.ah, !nosanitize !10   ; 3 uses
  %i.aj = icmp ne ptr %i.ad, null, !nosanitize !10
  %i.ak = icmp eq i64 %i.ai, 0
  %i.al = xor i1 %i.aj, %i.ak
  %i.am = icmp uge i64 %i.ai, %i.ah, !nosanitize !10
  %i.an = icmp slt i32 %i.v, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !10
  br i1 %i.ap, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.ah, i64 %i.ai) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.aq = phi ptr [ %3, %bb.c ], [ %i.af, %bb.f ] ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !116 ; 3 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp ne ptr %1, null, !nosanitize !10
  %i.av = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 7, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !10
  br i1 %i.ay, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !118 ; 3 uses
  %i.bb = sext i32 %i.as to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [56 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = mul nsw i64 %i.bb, 56
  %i.be = ptrtoint ptr %i.ba to i64, !nosanitize !10 ; 3 uses
  %i.bf = add i64 %i.bd, %i.be, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne ptr %i.ba, null, !nosanitize !10
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = xor i1 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bf, %i.be, !nosanitize !10
  %i.bk = icmp slt i32 %i.as, 0
  %i.bl = xor i1 %i.bk, %i.bj
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !10
  br i1 %i.bm, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.be, i64 %i.bf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bn = phi ptr [ %3, %bb.h ], [ %i.bc, %bb.k ] ; 12 uses
  %i.bo = icmp ne ptr %i.aq, null, !nosanitize !10
  %i.bp = ptrtoint ptr %i.aq to i64, !nosanitize !10 ; 2 uses
  %i.bq = and i64 %i.bp, 3, !nosanitize !10
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !10
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !10
  br i1 %i.bs, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %i.bp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %.sroa.01350.0.copyload = load <2 x float>, ptr %i.aq, align 4, !tbaa !90 ; 3 uses
  %.sroa.191361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.191361.0.copyload = load float, ptr %.sroa.191361.0..sroa_idx, align 4, !tbaa !90 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %.sroa.01334.0.copyload = load <2 x float>, ptr %i.bt, align 4, !tbaa !90 ; 3 uses
  %.sroa.221347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 20 ; 2 uses
  %.sroa.221347.0.copyload = load float, ptr %.sroa.221347.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.bu = icmp ne ptr %i.bn, null, !nosanitize !10
  %i.bv = ptrtoint ptr %i.bn to i64, !nosanitize !10 ; 2 uses
  %i.bw = and i64 %i.bv, 3, !nosanitize !10
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !10
  %i.by = and i1 %i.bu, %i.bx, !nosanitize !10
  br i1 %i.by, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.bv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %.sroa.01321.0.copyload = load <2 x float>, ptr %i.bn, align 4, !tbaa !90 ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !90 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %.sroa.01305.0.copyload = load <2 x float>, ptr %i.bz, align 4, !tbaa !90 ; 4 uses
  %.sroa.221318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 20 ; 2 uses
  %.sroa.221318.0.copyload = load float, ptr %.sroa.221318.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !114 ; 3 uses
  %i.cc = icmp ult i8 %i.cb, 2
  br i1 %i.cc, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.cd = zext i8 %i.cb to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @89, i64 %i.cd) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 36 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cg = load <2 x float>, ptr %i.ce, align 4    ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 44 ; 3 uses
  %i.ci = load <2 x float>, ptr %i.ch, align 4    ; 9 uses
  %.sroa.01290.0.copyload = load <2 x float>, ptr %i.cf, align 4 ; 3 uses
  %.sroa.21291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.21291.0.copyload = load float, ptr %.sroa.21291.0..sroa_idx, align 4 ; 4 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %i.ci, i64 0
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %i.cg, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 36 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.cl = load <2 x float>, ptr %i.cj, align 4    ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 44 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 4    ; 5 uses
  %.sroa.01275.0.copyload = load <2 x float>, ptr %i.ck, align 4 ; 5 uses
  %.sroa.21276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.21276.0.copyload = load float, ptr %.sroa.21276.0..sroa_idx, align 4 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.41270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.41270.0.copyload = load float, ptr %.sroa.41270.0..sroa_idx, align 4, !tbaa !90
  %.sroa.01269.0.copyload = load <2 x float>, ptr %i.co, align 4, !tbaa !90
  %.sroa.01267.0.copyload = load <2 x float>, ptr %i.cp, align 4, !tbaa !90
  %.sroa.41268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.41268.0.copyload = load float, ptr %.sroa.41268.0..sroa_idx, align 4, !tbaa !90
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.sroa.01239.0.copyload = load <2 x float>, ptr %i.cq, align 4
  %.sroa.21240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.sroa.21240.0.copyload = load float, ptr %.sroa.21240.0..sroa_idx, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01204.0.copyload = load <2 x float>, ptr %i.cr, align 4 ; 4 uses
  %.sroa.21205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.21205.0.copyload = load float, ptr %.sroa.21205.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0.4.vec.extract8.i.i1541 = extractelement <2 x float> %.sroa.01204.0.copyload, i64 1 ; 2 uses
  %i.cs = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.21205.0.copyload
  %i.ct = fmul float %.sroa.2.8.vec.extract65.i, %.sroa.0.4.vec.extract8.i.i1541
  %i.cu = shufflevector <2 x float> %i.ci, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x float> %i.cu, %.sroa.01204.0.copyload ; 2 uses
  %i.cw = shufflevector <2 x float> %.sroa.01204.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = insertelement <2 x float> %i.cw, float %.sroa.21205.0.copyload, i64 0 ; 2 uses
  %i.cy = fmul <2 x float> %i.cg, %i.cx           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.da = insertelement <2 x float> %i.cz, float %i.cs, i64 0
  %i.db = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dc = insertelement <2 x float> %i.db, float %i.ct, i64 0
  %i.dd = fsub <2 x float> %i.da, %i.dc
  %i.de = fsub <2 x float> %i.cv, %i.cy
  %i.df = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dg = fmul <2 x float> %i.df, %.sroa.01204.0.copyload
  %i.dh = insertelement <2 x float> %i.cw, float %.sroa.21205.0.copyload, i64 1
  %i.di = fmul <2 x float> %i.df, %i.dh
  %i.dj = fadd <2 x float> %i.dg, %i.dd           ; 2 uses
  %i.dk = fadd <2 x float> %i.di, %i.de           ; 2 uses
  %i.dl = fmul <2 x float> %i.cg, %i.dk
  %i.dm = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x float> %i.dm, %i.dj
  %i.do = fsub <2 x float> %i.dl, %i.dn
  %i.dp = fmul <2 x float> %i.do, splat (float 2.000000e+00)
  %i.dq = fadd <2 x float> %i.cx, %i.dp           ; 11 uses
  %i.dr = shufflevector <2 x float> %i.ci, <2 x float> %i.cg, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ds = insertelement <4 x float> %i.dr, float -0.000000e+00, i64 3
  %i.dt = shufflevector <2 x float> %.sroa.01290.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float 1.000000e+00, i64 3
  %i.dv = insertelement <4 x float> %i.du, float %.sroa.21291.0.copyload, i64 2
  %i.dw = fmul <4 x float> %i.ds, %i.dv
  %i.dx = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.dy = insertelement <4 x float> %i.dx, float 0.000000e+00, i64 3
  %i.dz = shufflevector <2 x float> %.sroa.01290.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.ea = insertelement <4 x float> %i.dz, float 1.000000e+00, i64 3
  %i.eb = insertelement <4 x float> %i.ea, float %.sroa.21291.0.copyload, i64 0
  %i.ec = fmul <4 x float> %i.dy, %i.eb
  %i.ed = fsub <4 x float> %i.dw, %i.ec
  %i.ee = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float 1.000000e+00, i64 3
  %i.eg = shufflevector <2 x float> %.sroa.01290.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float 1.000000e+00, i64 3
  %i.ei = insertelement <4 x float> %i.eh, float %.sroa.21291.0.copyload, i64 1
  %i.ej = fmul <4 x float> %i.ef, %i.ei
  %i.ek = fadd <4 x float> %i.ej, %i.ed           ; 2 uses
  %i.el = insertelement <4 x float> %i.dx, float 1.000000e+00, i64 3
  %i.em = fmul <4 x float> %i.el, %i.ek
  %i.en = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.eo = insertelement <4 x float> %i.en, float 0.000000e+00, i64 3
  %i.ep = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.eq = fmul <4 x float> %i.eo, %i.ep
  %i.er = fsub <4 x float> %i.em, %i.eq
  %i.es = fmul <4 x float> %i.er, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.et = insertelement <4 x float> %i.dz, float 0.000000e+00, i64 3
  %i.eu = insertelement <4 x float> %i.et, float %.sroa.21291.0.copyload, i64 0
  %i.ev = fadd <4 x float> %i.eu, %i.es           ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ci, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.ex = insertelement <2 x float> %i.dj, float %.sroa.21276.0.copyload, i64 1
  %i.ey = fmul <2 x float> %i.ew, %i.ex
  %i.ez = shufflevector <2 x float> %i.cg, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.fa = shufflevector <2 x float> %i.dk, <2 x float> %.sroa.01275.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = fsub <2 x float> %i.ey, %i.fb           ; 2 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  %i.fe = fmul float %i.fd, 2.000000e+00
  %i.ff = fadd float %.sroa.0.4.vec.extract8.i.i1541, %i.fe ; 13 uses
  %i.fg = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.fh = fmul <2 x float> %i.fg, %.sroa.01275.0.copyload
  %i.fi = shufflevector <2 x float> %.sroa.01275.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fj = insertelement <2 x float> %i.fi, float %.sroa.21276.0.copyload, i64 0
  %i.fk = fmul <2 x float> %i.cl, %i.fj
  %i.fl = fsub <2 x float> %i.fh, %i.fk
  %i.fm = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.fn = insertelement <4 x float> %i.fm, float 1.000000e+00, i64 3
  %i.fo = shufflevector <2 x float> %.sroa.01275.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fp = insertelement <4 x float> %i.fo, float 1.000000e+00, i64 3
  %i.fq = insertelement <4 x float> %i.fp, float %.sroa.21276.0.copyload, i64 2
  %i.fr = fmul <4 x float> %i.fn, %i.fq
  %i.fs = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.fu = shufflevector <2 x float> %i.fl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.ft, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fw = fadd <4 x float> %i.fr, %i.fv           ; 2 uses
  %i.fx = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fy = insertelement <4 x float> %i.fx, float 1.000000e+00, i64 3
  %i.fz = fmul <4 x float> %i.fy, %i.fw
  %i.ga = shufflevector <2 x float> %i.cl, <2 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.gb = insertelement <4 x float> %i.ga, float 0.000000e+00, i64 3
  %i.gc = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gd = fmul <4 x float> %i.gb, %i.gc
  %i.ge = fsub <4 x float> %i.fz, %i.gd
  %i.gf = fmul <4 x float> %i.ge, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.gg = shufflevector <2 x float> %.sroa.01275.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.gh = insertelement <4 x float> %i.gg, float 0.000000e+00, i64 3
  %i.gi = insertelement <4 x float> %i.gh, float %.sroa.21276.0.copyload, i64 1
  %i.gj = fadd <4 x float> %i.gi, %i.gf           ; 27 uses
  %i.gk = shufflevector <2 x float> %.sroa.01267.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gl = insertelement <4 x float> %i.gk, float -0.000000e+00, i64 3
  %i.gm = insertelement <4 x float> %i.gl, float %.sroa.41268.0.copyload, i64 0
  %i.gn = shufflevector <2 x float> %.sroa.01269.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.go = insertelement <4 x float> %i.gn, float 0.000000e+00, i64 3
  %i.gp = insertelement <4 x float> %i.go, float %.sroa.41270.0.copyload, i64 0
  %i.gq = fsub <4 x float> %i.gm, %i.gp
  %i.gr = shufflevector <2 x float> %.sroa.01239.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gs = insertelement <4 x float> %i.gr, float -0.000000e+00, i64 3
  %i.gt = insertelement <4 x float> %i.gs, float %.sroa.21240.0.copyload, i64 0
  %i.gu = fadd <4 x float> %i.gq, %i.gt
  %i.gv = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.gw = fsub <4 x float> %i.gv, %i.ev
  %i.gx = fadd <4 x float> %i.gw, %i.gu           ; 7 uses
  %i.gy = fadd <4 x float> %i.ev, %i.gx           ; 21 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 2 ; 3 uses
  %i.ha = extractelement <2 x float> %i.dq, i64 0 ; 6 uses
  %i.hb = extractelement <2 x float> %i.dq, i64 1 ; 5 uses
  %i.hc = extractelement <4 x float> %i.gy, i64 1 ; 5 uses
  %i.hd = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.he = fmul <2 x float> %i.hd, %i.dq
  %i.hf = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hg = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hh = insertelement <2 x float> %i.hg, float %i.ff, i64 0
  %i.hi = fmul <2 x float> %i.hf, %i.hh
  %i.hj = fsub <2 x float> %i.he, %i.hi           ; 6 uses
  %i.hk = fmul float %i.hc, %i.ff
  %i.hl = fmul float %i.gz, %i.hb
  %i.hm = fsub float %i.hk, %i.hl                 ; 6 uses
  %i.hn = shufflevector <4 x float> %i.gj, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2> ; 2 uses
  %i.ho = shufflevector <2 x float> %i.dq, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.hp = insertelement <3 x float> %i.ho, float %i.ff, i64 2
  %i.hq = fmul <3 x float> %i.hn, %i.hp
  %i.hr = shufflevector <3 x float> %i.hq, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.hs = shufflevector <2 x float> %i.dq, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.ht = insertelement <3 x float> %i.hs, float %i.ff, i64 1
  %i.hu = fmul <3 x float> %i.hn, %i.ht
  %i.hv = fsub <3 x float> %i.hr, %i.hu           ; 9 uses
  %i.hw = extractelement <4 x float> %i.gx, i64 1
  %i.hx = fmul float %i.hw, %i.hb
  %i.hy = extractelement <4 x float> %i.gx, i64 2
  %i.hz = fmul float %i.hy, %i.ff
  %i.ia = fadd float %i.hx, %i.hz
  %i.ib = extractelement <4 x float> %i.gx, i64 0
  %i.ic = fmul float %i.ib, %i.ha
  %i.id = fadd float %i.ic, %i.ia                 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.if = load float, ptr %i.ie, align 4, !tbaa !148
  %i.ig = extractelement <2 x float> %i.m, i64 0  ; 10 uses
  %i.ih = fadd float %i.ig, %i.n                  ; 3 uses
  %i.ii = shufflevector <2 x float> %i.k, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ij = shufflevector <16 x float> %i.ii, <16 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 poison, i32 16>
  %i.ik = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.il = shufflevector <4 x float> %i.ij, <4 x float> %i.ik, <8 x i32> <i32 0, i32 1, i32 poison, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.im = insertelement <8 x float> %i.il, float %.sroa.23.0.copyload, i64 2
  %i.in = shufflevector <2 x float> %i.hj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.io = shufflevector <3 x float> %i.hv, <3 x float> %i.in, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %i.iq = fmul <8 x float> %i.im, %i.ip
  %i.ir = shufflevector <16 x float> %i.j, <16 x float> poison, <8 x i32> <i32 12, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison>
  %i.is = shufflevector <2 x float> %i.o, <2 x float> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <8 x float> %i.ir, <8 x float> %i.is, <8 x i32> <i32 0, i32 9, i32 10, i32 poison, i32 4, i32 poison, i32 poison, i32 poison>
  %i.iu = insertelement <8 x float> %i.it, float %.sroa.332577.0.copyload, i64 3
  %i.iv = insertelement <8 x float> %i.iu, float %.sroa.532597.0.copyload, i64 5
  %i.iw = shufflevector <3 x float> %i.hv, <3 x float> %i.in, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 poison, i32 poison>
  %i.iy = fmul <8 x float> %i.iv, %i.ix
  %i.iz = fadd <8 x float> %i.iq, %i.iy
  %i.ja = shufflevector <2 x float> %i.r, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.jb = shufflevector <3 x float> %i.hv, <3 x float> %i.ja, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jd = insertelement <8 x float> %i.jc, float %.sroa.83.0.copyload, i64 2
  %i.je = insertelement <8 x float> %i.jd, float %i.hm, i64 3
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.jg = shufflevector <2 x float> %i.l, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.jh = shufflevector <3 x float> %i.hv, <3 x float> %i.jg, <4 x i32> <i32 poison, i32 0, i32 0, i32 3>
  %i.ji = shufflevector <2 x float> %i.l, <2 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jj = shufflevector <16 x float> %i.ji, <16 x float> %i.j, <4 x i32> <i32 1, i32 24, i32 poison, i32 poison>
  %i.jk = shufflevector <4 x float> %i.jh, <4 x float> %i.jj, <8 x i32> <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.jl = shufflevector <2 x float> %i.p, <2 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <8 x float> %i.jl, <8 x float> %i.jk, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison>
  %i.jn = fmul <8 x float> %i.jf, %i.jm
  %i.jo = fadd <8 x float> %i.jn, %i.iz
  %i.jp = shufflevector <2 x float> %i.hj, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.jq = insertelement <8 x float> %i.jp, float %i.hm, i64 5
  %i.jr = shufflevector <3 x float> %i.hv, <3 x float> %i.in, <8 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.js = shufflevector <8 x float> %i.jr, <8 x float> %i.jq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.jt = fmul <8 x float> %i.js, %i.jo           ; 6 uses
  %i.ju = extractelement <8 x float> %i.jt, i64 3
  %i.jv = extractelement <8 x float> %i.jt, i64 4
  %i.jw = fadd float %i.ju, %i.jv
  %i.jx = extractelement <8 x float> %i.jt, i64 5
  %i.jy = fadd float %i.jx, %i.jw
  %i.jz = fadd float %i.ih, %i.jy
  %i.ka = extractelement <8 x float> %i.jt, i64 0
  %i.kb = extractelement <8 x float> %i.jt, i64 1
  %i.kc = fadd float %i.ka, %i.kb
  %i.kd = extractelement <8 x float> %i.jt, i64 2
  %i.ke = fadd float %i.kd, %i.kc
  %i.kf = fadd float %i.ke, %i.jz                 ; 2 uses
  %i.kg = fcmp ogt float %i.kf, 0.000000e+00
  %i.kh = fdiv float 1.000000e+00, %i.kf
  %i.ki = select i1 %i.kg, float %i.kh, float 0.000000e+00 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.kk = load i8, ptr %i.kj, align 4, !tbaa !149 ; 3 uses
  %i.kl = icmp ult i8 %i.kk, 2
  br i1 %i.kl, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.km = zext i8 %i.kk to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @90, i64 %i.km) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.kn = trunc nuw i8 %i.kk to i1
  %i.ko = icmp eq i8 %i.cb, 0                     ; 4 uses
  %or.cond = and i1 %i.ko, %i.kn
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !150
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ku = load float, ptr %i.kr, align 4, !tbaa !151
  %i.kv = fneg float %i.ku
  %i.kw = fmul float %i.ki, %i.kv
  %i.kx = shufflevector <2 x float> %.sroa.01305.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ky = insertelement <4 x float> %i.kx, float 1.000000e+00, i64 3
  %i.kz = insertelement <4 x float> %i.ky, float %.sroa.221318.0.copyload, i64 2
  %i.la = insertelement <4 x float> %i.gj, float %i.id, i64 3
  %i.lb = fmul <4 x float> %i.kz, %i.la
  %i.lc = shufflevector <2 x float> %.sroa.01305.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ld = insertelement <4 x float> %i.lc, float 0.000000e+00, i64 3
  %i.le = insertelement <4 x float> %i.ld, float %.sroa.221318.0.copyload, i64 1
  %i.lf = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.lg = fmul <4 x float> %i.le, %i.lf
  %i.lh = fsub <4 x float> %i.lb, %i.lg
  %i.li = shufflevector <2 x float> %.sroa.01321.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.lj = insertelement <4 x float> %i.li, float -0.000000e+00, i64 3
  %i.lk = insertelement <4 x float> %i.lj, float %.sroa.19.0.copyload, i64 0
  %i.ll = fadd <4 x float> %i.lk, %i.lh
  %i.lm = shufflevector <2 x float> %.sroa.01350.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ln = insertelement <4 x float> %i.lm, float 0.000000e+00, i64 3
  %i.lo = insertelement <4 x float> %i.ln, float %.sroa.191361.0.copyload, i64 0
  %i.lp = fsub <4 x float> %i.ll, %i.lo
  %i.lq = shufflevector <2 x float> %.sroa.01334.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison> ; 2 uses
  %i.lr = insertelement <4 x float> %i.lq, float 1.000000e+00, i64 3
  %i.ls = insertelement <4 x float> %i.lr, float %.sroa.221347.0.copyload, i64 1
  %i.lt = insertelement <4 x float> %i.gy, float %i.if, i64 3
  %i.lu = fmul <4 x float> %i.ls, %i.lt
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.lw = insertelement <4 x float> %i.lq, float 0.000000e+00, i64 3
  %i.lx = insertelement <4 x float> %i.lw, float %.sroa.221347.0.copyload, i64 1
  %i.ly = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.lz = fmul <4 x float> %i.lx, %i.ly
  %i.ma = fsub <4 x float> %i.lv, %i.lz
  %i.mb = fsub <4 x float> %i.lp, %i.ma
  %i.mc = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.md = insertelement <4 x float> %i.mc, float %i.ff, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.kq, i64 3
  %i.mf = fmul <4 x float> %i.mb, %i.me           ; 4 uses
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift2675 = fadd <4 x float> %i.mg, %i.mh
  %foldExtExtBinop2676 = fadd <4 x float> %i.mf, %shift2675
  %shift2678 = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2679 = fadd <4 x float> %foldExtExtBinop2676, %shift2678
  %i.mi = extractelement <4 x float> %foldExtExtBinop2679, i64 0
  %i.mj = fmul float %i.mi, %i.kw
  %i.mk = load float, ptr %i.ks, align 4, !tbaa !152
  %i.ml = load float, ptr %i.kt, align 4, !tbaa !94 ; 2 uses
  %i.mm = fmul float %i.mk, %i.ml
  %i.mn = fsub float %i.mj, %i.mm                 ; 5 uses
  %i.mo = fadd float %i.ml, %i.mn
  store float %i.mo, ptr %i.kt, align 4, !tbaa !94
  %i.mp = fmul float %i.ha, %i.mn                 ; 2 uses
  %i.mq = fmul float %i.hm, %i.mn                 ; 2 uses
  %i.mr = fmul float %i.ig, %i.mp
  %i.ms = fsub float %.sroa.191361.0.copyload, %i.mr
  %i.mt = extractelement <16 x float> %i.j, i64 8
  %i.mu = fmul float %i.mt, %i.mq
  %i.mv = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mx = fmul <2 x float> %i.hj, %i.mw           ; 4 uses
  %i.my = extractelement <2 x float> %i.mx, i64 0
  %i.mz = fmul float %.sroa.232567.0.copyload, %i.my
  %i.na = extractelement <2 x float> %i.mx, i64 1
  %i.nb = fmul float %.sroa.532597.0.copyload, %i.na
  %i.nc = fadd float %i.mz, %i.nb
  %i.nd = insertelement <2 x float> %i.q, float %.sroa.332577.0.copyload, i64 1
  %i.ne = fmul <2 x float> %i.nd, %i.mx
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ng = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.nh = fmul <2 x float> %i.ng, %i.mx
  %i.ni = fadd <2 x float> %i.nf, %i.nh
  %i.nj = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = fmul <2 x float> %i.l, %i.nk
  %i.nm = fadd <2 x float> %i.nl, %i.ni
  %i.nn = fadd float %i.mu, %i.nc
  %i.no = fsub <2 x float> %.sroa.01334.0.copyload, %i.nm
  %i.np = fsub float %.sroa.221347.0.copyload, %i.nn
  %i.nq = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nr = insertelement <2 x float> %i.nq, float %i.ff, i64 1
  %i.ns = fmul <2 x float> %i.nr, %i.mw           ; 2 uses
  %i.nt = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x float> %i.nt, %i.ns
  %i.nv = fsub <2 x float> %.sroa.01350.0.copyload, %i.nu
  %i.nw = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nx = fmul <2 x float> %i.nw, %i.ns
  %i.ny = fadd <2 x float> %.sroa.01321.0.copyload, %i.nx
  %i.nz = fmul float %i.n, %i.mp
  %i.oa = fadd float %.sroa.19.0.copyload, %i.nz
  %i.ob = insertelement <3 x float> poison, float %i.mn, i64 0
  %i.oc = shufflevector <3 x float> %i.ob, <3 x float> poison, <3 x i32> zeroinitializer
  %i.od = fmul <3 x float> %i.hv, %i.oc           ; 6 uses
  %i.oe = extractelement <3 x float> %i.od, i64 1
  %i.of = fmul float %.sroa.23.0.copyload, %i.oe
  %i.og = extractelement <3 x float> %i.od, i64 2
  %i.oh = extractelement <2 x float> %i.p, i64 0
  %i.oi = fmul float %i.oh, %i.og
  %i.oj = fadd float %i.of, %i.oi
  %i.ok = shufflevector <3 x float> %i.od, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = fmul <2 x float> %i.k, %i.ok
  %i.om = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 poison>
  %i.on = shufflevector <2 x float> %i.om, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.oo = shufflevector <3 x float> %i.od, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.op = fmul <2 x float> %i.on, %i.oo
  %i.oq = fadd <2 x float> %i.ol, %i.op
  %i.or = shufflevector <2 x float> %i.p, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.os = shufflevector <3 x float> %i.od, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %i.or, %i.os
  %i.ou = fadd <2 x float> %i.ot, %i.oq
  %i.ov = extractelement <3 x float> %i.od, i64 0
  %i.ow = fmul float %.sroa.83.0.copyload, %i.ov
  %i.ox = fadd float %i.ow, %i.oj
  %i.oy = fadd <2 x float> %.sroa.01305.0.copyload, %i.ou
  %i.oz = fadd float %.sroa.221318.0.copyload, %i.ox
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.01305.0 = phi <2 x float> [ %i.oy, %bb.v ], [ %.sroa.01305.0.copyload, %bb.u ] ; 5 uses
  %.sroa.221318.0 = phi float [ %i.oz, %bb.v ], [ %.sroa.221318.0.copyload, %bb.u ] ; 4 uses
  %.sroa.01321.0 = phi <2 x float> [ %i.ny, %bb.v ], [ %.sroa.01321.0.copyload, %bb.u ] ; 3 uses
  %.sroa.19.0 = phi float [ %i.oa, %bb.v ], [ %.sroa.19.0.copyload, %bb.u ] ; 3 uses
  %.sroa.01334.0 = phi <2 x float> [ %i.no, %bb.v ], [ %.sroa.01334.0.copyload, %bb.u ] ; 5 uses
  %.sroa.221347.0 = phi float [ %i.np, %bb.v ], [ %.sroa.221347.0.copyload, %bb.u ] ; 4 uses
  %.sroa.01350.0 = phi <2 x float> [ %i.nv, %bb.v ], [ %.sroa.01350.0.copyload, %bb.u ] ; 3 uses
  %.sroa.191361.0 = phi float [ %i.ms, %bb.v ], [ %.sroa.191361.0.copyload, %bb.u ] ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 414
  %i.pb = load i8, ptr %i.pa, align 2, !tbaa !153 ; 3 uses
  %i.pc = icmp ult i8 %i.pb, 2
  br i1 %i.pc, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.pd = zext i8 %i.pb to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @91, i64 %i.pd) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.pe = trunc nuw i8 %i.pb to i1
  %or.cond1503 = and i1 %i.ko, %i.pe
  br i1 %or.cond1503, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.pf = icmp ne ptr %1, null, !nosanitize !10
  %i.pg = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.ph = and i64 %i.pg, 7, !nosanitize !10
  %i.pi = icmp eq i64 %i.ph, 0, !nosanitize !10
  %i.pj = and i1 %i.pf, %i.pi, !nosanitize !10
  br i1 %i.pj, label %bb.ab, label %bb.aa, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @92, i64 %i.pg) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ab:                                            ; preds = %bb.z
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !154
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !97 ; 2 uses
  %i.po = shufflevector <4 x float> %i.gj, <4 x float> %i.gy, <4 x i32> <i32 0, i32 2, i32 6, i32 5>
  %i.pp = shufflevector <2 x float> %.sroa.01305.0, <2 x float> %.sroa.01334.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pq = fmul <4 x float> %i.po, %i.pp           ; 4 uses
  %shift2681 = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2682 = fsub <4 x float> %i.pq, %shift2681
  %i.pr = extractelement <4 x float> %foldExtExtBinop2682, i64 0
  %i.ps = fadd float %.sroa.19.0, %i.pr
  %i.pt = fsub float %i.ps, %.sroa.191361.0
  %shift2684 = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop2685 = fsub <4 x float> %i.pq, %shift2684
  %i.pu = extractelement <4 x float> %foldExtExtBinop2685, i64 2
  %i.pv = fsub float %i.pt, %i.pu
  %i.pw = fmul float %i.ha, %i.pv
  %.sroa.07.0.vec.extract.i1707 = extractelement <2 x float> %.sroa.01321.0, i64 0 ; 2 uses
  %i.px = extractelement <4 x float> %i.gj, i64 1 ; 2 uses
  %.sroa.09.4.vec.extract13.i1699 = extractelement <2 x float> %.sroa.01305.0, i64 1
  %i.py = fmul float %i.px, %.sroa.09.4.vec.extract13.i1699
  %i.pz = extractelement <4 x float> %i.gj, i64 0
  %i.qa = fmul float %i.pz, %.sroa.221318.0
  %i.qb = fsub float %i.py, %i.qa
  %i.qc = fadd float %.sroa.07.0.vec.extract.i1707, %i.qb
  %.sroa.0.0.vec.extract.i1716 = extractelement <2 x float> %.sroa.01350.0, i64 0 ; 2 uses
  %i.qd = fsub float %i.qc, %.sroa.0.0.vec.extract.i1716
  %i.qe = extractelement <4 x float> %i.gy, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i1731 = extractelement <2 x float> %.sroa.01334.0, i64 1
  %i.qf = fmul float %i.qe, %.sroa.09.4.vec.extract13.i1731
  %i.qg = fmul float %i.gz, %.sroa.221347.0
  %i.qh = fsub float %i.qf, %i.qg
  %i.qi = fsub float %i.qd, %i.qh
  %i.qj = fmul float %i.hb, %i.qi
  %.sroa.07.4.vec.extract.i1709 = extractelement <2 x float> %.sroa.01321.0, i64 1 ; 2 uses
  %i.qk = extractelement <4 x float> %i.gj, i64 2
  %i.ql = fmul float %i.qk, %.sroa.221318.0
  %.sroa.09.0.vec.extract.i1703 = extractelement <2 x float> %.sroa.01305.0, i64 0
  %i.qm = fmul float %i.px, %.sroa.09.0.vec.extract.i1703
  %i.qn = fsub float %i.ql, %i.qm
  %i.qo = fadd float %.sroa.07.4.vec.extract.i1709, %i.qn
  %.sroa.0.4.vec.extract.i1718 = extractelement <2 x float> %.sroa.01350.0, i64 1 ; 2 uses
  %i.qp = fsub float %i.qo, %.sroa.0.4.vec.extract.i1718
  %i.qq = fmul float %i.hc, %.sroa.221347.0
  %.sroa.09.0.vec.extract.i1735 = extractelement <2 x float> %.sroa.01334.0, i64 0
  %i.qr = fmul float %i.qe, %.sroa.09.0.vec.extract.i1735
  %i.qs = fsub float %i.qq, %i.qr
  %i.qt = fsub float %i.qp, %i.qs
  %i.qu = fmul float %i.ff, %i.qt
  %i.qv = fadd float %i.qj, %i.qu
  %i.qw = fadd float %i.pw, %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !155
  %i.qz = fsub float %i.qw, %i.qy
  %i.ra = fmul float %i.ki, %i.qz
  %i.rb = fsub float %i.pn, %i.ra                 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rd = load float, ptr %i.rc, align 8, !tbaa !117
  %i.re = fmul float %i.pl, %i.rd                 ; 3 uses
  %i.rf = fneg float %i.re                        ; 2 uses
  %i.rg = fcmp olt float %i.rb, %i.rf
  %i.rh = fcmp olt float %i.re, %i.rb
  %i.ri = select i1 %i.rh, float %i.re, float %i.rb
  %i.rj = select i1 %i.rg, float %i.rf, float %i.ri ; 2 uses
  %i.rk = fsub float %i.rj, %i.pn                 ; 6 uses
  store float %i.rj, ptr %i.pm, align 4, !tbaa !97
  %i.rl = fmul float %i.hb, %i.rk                 ; 2 uses
  %i.rm = fmul float %i.ff, %i.rk                 ; 2 uses
  %i.rn = fmul float %i.ha, %i.rk                 ; 2 uses
  %i.ro = fmul float %i.hm, %i.rk                 ; 2 uses
  %i.rp = fmul float %i.ig, %i.rl
  %i.rq = fsub float %.sroa.0.0.vec.extract.i1716, %i.rp
  %.sroa.07.0.vec.insert.i1773 = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.rr = fmul float %i.ig, %i.rm
  %i.rs = fsub float %.sroa.0.4.vec.extract.i1718, %i.rr
  %.sroa.07.4.vec.insert.i1774 = insertelement <2 x float> %.sroa.07.0.vec.insert.i1773, float %i.rs, i64 1
  %i.rt = fmul float %i.ig, %i.rn
  %i.ru = fsub float %.sroa.191361.0, %i.rt
  %i.rv = extractelement <16 x float> %i.j, i64 8
  %i.rw = fmul float %i.rv, %i.ro
  %i.rx = insertelement <2 x float> poison, float %i.rk, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rz = fmul <2 x float> %i.hj, %i.ry           ; 4 uses
  %i.sa = extractelement <2 x float> %i.rz, i64 0
  %i.sb = fmul float %.sroa.232567.0.copyload, %i.sa
  %i.sc = extractelement <2 x float> %i.rz, i64 1
  %i.sd = fmul float %.sroa.532597.0.copyload, %i.sc
  %i.se = fadd float %i.sb, %i.sd
  %i.sf = insertelement <2 x float> %i.q, float %.sroa.332577.0.copyload, i64 1
  %i.sg = fmul <2 x float> %i.sf, %i.rz
  %i.sh = shufflevector <2 x float> %i.sg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.si = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.sj = fmul <2 x float> %i.si, %i.rz
  %i.sk = fadd <2 x float> %i.sh, %i.sj
  %i.sl = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sn = fmul <2 x float> %i.l, %i.sm
  %i.so = fadd <2 x float> %i.sn, %i.sk
  %i.sp = fadd float %i.rw, %i.se
  %i.sq = fsub <2 x float> %.sroa.01334.0, %i.so
  %i.sr = fsub float %.sroa.221347.0, %i.sp
  %i.ss = fmul float %i.n, %i.rl
  %i.st = fadd float %.sroa.07.0.vec.extract.i1707, %i.ss
  %.sroa.07.0.vec.insert.i1795 = insertelement <2 x float> poison, float %i.st, i64 0
  %i.su = fmul float %i.n, %i.rm
  %i.sv = fadd float %.sroa.07.4.vec.extract.i1709, %i.su
  %.sroa.07.4.vec.insert.i1796 = insertelement <2 x float> %.sroa.07.0.vec.insert.i1795, float %i.sv, i64 1
  %i.sw = fmul float %i.n, %i.rn
  %i.sx = fadd float %.sroa.19.0, %i.sw
  %i.sy = insertelement <3 x float> poison, float %i.rk, i64 0
  %i.sz = shufflevector <3 x float> %i.sy, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ta = fmul <3 x float> %i.hv, %i.sz           ; 6 uses
  %i.tb = extractelement <3 x float> %i.ta, i64 1
  %i.tc = fmul float %.sroa.23.0.copyload, %i.tb
  %i.td = extractelement <3 x float> %i.ta, i64 2
  %i.te = extractelement <2 x float> %i.p, i64 0
  %i.tf = fmul float %i.te, %i.td
  %i.tg = fadd float %i.tc, %i.tf
  %i.th = shufflevector <3 x float> %i.ta, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ti = fmul <2 x float> %i.k, %i.th
  %i.tj = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 poison>
  %i.tk = shufflevector <2 x float> %i.tj, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.tl = shufflevector <3 x float> %i.ta, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.tm = fmul <2 x float> %i.tk, %i.tl
  %i.tn = fadd <2 x float> %i.ti, %i.tm
  %i.to = shufflevector <2 x float> %i.p, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.tp = shufflevector <3 x float> %i.ta, <3 x float> poison, <2 x i32> zeroinitializer
  %i.tq = fmul <2 x float> %i.to, %i.tp
  %i.tr = fadd <2 x float> %i.tq, %i.tn
  %i.ts = extractelement <3 x float> %i.ta, i64 0
  %i.tt = fmul float %.sroa.83.0.copyload, %i.ts
  %i.tu = fadd float %i.tt, %i.tg
  %i.tv = fadd <2 x float> %.sroa.01305.0, %i.tr
  %i.tw = fadd float %.sroa.221318.0, %i.tu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.sroa.01305.1 = phi <2 x float> [ %i.tv, %bb.ab ], [ %.sroa.01305.0, %bb.y ] ; 7 uses
  %.sroa.221318.1 = phi float [ %i.tw, %bb.ab ], [ %.sroa.221318.0, %bb.y ] ; 6 uses
  %.sroa.01321.1 = phi <2 x float> [ %.sroa.07.4.vec.insert.i1796, %bb.ab ], [ %.sroa.01321.0, %bb.y ] ; 6 uses
  %.sroa.19.1 = phi float [ %i.sx, %bb.ab ], [ %.sroa.19.0, %bb.y ] ; 5 uses
  %.sroa.01334.1 = phi <2 x float> [ %i.sq, %bb.ab ], [ %.sroa.01334.0, %bb.y ] ; 7 uses
  %.sroa.221347.1 = phi float [ %i.sr, %bb.ab ], [ %.sroa.221347.0, %bb.y ] ; 6 uses
  %.sroa.01350.1 = phi <2 x float> [ %.sroa.07.4.vec.insert.i1774, %bb.ab ], [ %.sroa.01350.0, %bb.y ] ; 6 uses
  %.sroa.191361.1 = phi float [ %i.ru, %bb.ab ], [ %.sroa.191361.0, %bb.y ] ; 5 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 413
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !121 ; 3 uses
  %i.tz = icmp ult i8 %i.ty, 2
  br i1 %i.tz, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  %i.ua = zext i8 %i.ty to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @93, i64 %i.ua) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.ub = trunc nuw i8 %i.ty to i1
  %or.cond1504 = and i1 %i.ko, %i.ub
  br i1 %or.cond1504, label %bb.af, label %bb.ax

bb.af:                                            ; preds = %bb.ae
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !122 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !123 ; 2 uses
  %i.ug = fsub float %i.ud, %i.uf
  %i.uh = fmul float %i.ug, 2.500000e-01          ; 2 uses
  %i.ui = fsub float %i.id, %i.uf                 ; 4 uses
  %i.uj = fcmp olt float %i.ui, %i.uh
  br i1 %i.uj, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.uk = fcmp ogt float %i.ui, 0.000000e+00
  br i1 %i.uk, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ul = icmp ne ptr %1, null, !nosanitize !10
  %i.um = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.un = and i64 %i.um, 7, !nosanitize !10
  %i.uo = icmp eq i64 %i.un, 0, !nosanitize !10
  %i.up = and i1 %i.ul, %i.uo, !nosanitize !10
  br i1 %i.up, label %bb.aj, label %bb.ai, !prof !11, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @94, i64 %i.um) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.aj:                                            ; preds = %bb.ah
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !156
  %i.us = fmul float %i.ui, %i.ur
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  br i1 %2, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !157
  %i.uv = fmul float %i.ui, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.uy = load float, ptr %i.uw, align 4, !tbaa !158
  %i.uz = load float, ptr %i.ux, align 4, !tbaa !159
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.al, %bb.ak
  %.01471 = phi float [ 0.000000e+00, %bb.aj ], [ %i.uz, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %.01470 = phi float [ 1.000000e+00, %bb.aj ], [ %i.uy, %bb.al ], [ 1.000000e+00, %bb.ak ]
  %.0 = phi float [ %i.us, %bb.aj ], [ %i.uv, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %.sroa.09.0.vec.extract.i1817 = extractelement <2 x float> %.sroa.01305.1, i64 0
  %4 = extractelement <4 x float> %i.gj, i64 0
  %.sroa.09.4.vec.extract13.i1813 = extractelement <2 x float> %.sroa.01305.1, i64 1
  %5 = extractelement <4 x float> %i.gj, i64 2    ; 2 uses
  %.sroa.09.0.vec.extract.i1849 = extractelement <2 x float> %.sroa.01334.1, i64 0
  %.sroa.09.4.vec.extract13.i1845 = extractelement <2 x float> %.sroa.01334.1, i64 1
  %.sroa.07.0.vec.extract.i1821 = extractelement <2 x float> %.sroa.01321.1, i64 0
  %6 = extractelement <4 x float> %i.gj, i64 1
  %.sroa.0.0.vec.extract.i1830 = extractelement <2 x float> %.sroa.01350.1, i64 0
  %7 = extractelement <4 x float> %i.gy, i64 0
  %8 = fmul float %5, %.sroa.09.4.vec.extract13.i1813
  %9 = fmul float %i.hc, %.sroa.09.4.vec.extract13.i1845
  %10 = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %11 = fmul <2 x float> %10, %.sroa.01305.1
  %12 = fmul float %4, %.sroa.221318.1
  %13 = insertelement <2 x float> poison, float %8, i64 0
  %14 = insertelement <2 x float> %13, float %12, i64 1
  %15 = fsub <2 x float> %11, %14
  %16 = shufflevector <2 x float> %.sroa.01321.1, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %17 = insertelement <2 x float> %16, float %.sroa.19.1, i64 0
  %18 = fadd <2 x float> %17, %15
  %19 = shufflevector <2 x float> %.sroa.01350.1, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x float> %19, float %.sroa.191361.1, i64 0
  %21 = fsub <2 x float> %18, %20
  %22 = fmul <2 x float> %i.hd, %.sroa.01334.1
  %23 = fmul float %i.gz, %.sroa.221347.1
  %24 = insertelement <2 x float> poison, float %9, i64 0
  %25 = insertelement <2 x float> %24, float %23, i64 1
  %26 = fsub <2 x float> %22, %25
  %27 = fsub <2 x float> %21, %26
  %28 = fmul <2 x float> %i.dq, %27               ; 2 uses
  %.sroa.07.4.vec.extract.i1823 = extractelement <2 x float> %.sroa.01321.1, i64 1 ; 2 uses
  %29 = fmul float %5, %.sroa.221318.1
  %30 = fmul float %6, %.sroa.09.0.vec.extract.i1817
  %31 = fsub float %29, %30
  %32 = fadd float %.sroa.07.4.vec.extract.i1823, %31
  %.sroa.0.4.vec.extract.i1832 = extractelement <2 x float> %.sroa.01350.1, i64 1 ; 2 uses
  %33 = fsub float %32, %.sroa.0.4.vec.extract.i1832
  %34 = fmul float %i.hc, %.sroa.221347.1
  %35 = fmul float %7, %.sroa.09.0.vec.extract.i1849
  %36 = fsub float %34, %35
  %37 = fsub float %33, %36
  %38 = fmul float %i.ff, %37
  %39 = extractelement <2 x float> %28, i64 1
  %40 = fadd float %39, %38
  %i.vb = extractelement <2 x float> %28, i64 0
  %41 = fadd float %i.vb, %40
  %i.vc = load float, ptr %i.va, align 4, !tbaa !96 ; 3 uses
  %i.vd = fneg float %.01470
  %i.ve = fmul float %i.ki, %i.vd
  %i.vf = fadd float %41, %.0
  %i.vg = fmul float %i.ve, %i.vf
  %i.vh = fmul float %.01471, %i.vc
  %i.vi = fsub float %i.vg, %i.vh
  %i.vj = fadd float %i.vc, %i.vi                 ; 2 uses
  %i.vk = fcmp ogt float %i.vj, 0.000000e+00
  %i.vl = select i1 %i.vk, float %i.vj, float 0.000000e+00 ; 2 uses
  store float %i.vl, ptr %i.va, align 4, !tbaa !96
  %i.vm = fsub float %i.vl, %i.vc                 ; 6 uses
  %42 = fmul float %i.hb, %i.vm                   ; 2 uses
  %43 = fmul float %i.ff, %i.vm                   ; 2 uses
  %44 = fmul float %i.ha, %i.vm                   ; 2 uses
  %45 = fmul float %i.hm, %i.vm                   ; 2 uses
  %i.vn = fmul float %i.ig, %42
  %46 = fsub float %.sroa.0.0.vec.extract.i1830, %i.vn
  %.sroa.07.0.vec.insert.i1887 = insertelement <2 x float> poison, float %46, i64 0
  %i.vo = fmul float %i.ig, %43
  %47 = fsub float %.sroa.0.4.vec.extract.i1832, %i.vo
  %.sroa.07.4.vec.insert.i1888 = insertelement <2 x float> %.sroa.07.0.vec.insert.i1887, float %47, i64 1
  %i.vp = fmul float %i.ig, %44
  %i.vq = fsub float %.sroa.191361.1, %i.vp
  %i.vr = extractelement <16 x float> %i.j, i64 8
  %i.vs = fmul float %i.vr, %45
  %i.vt = insertelement <2 x float> poison, float %i.vm, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vv = fmul <2 x float> %i.hj, %i.vu           ; 4 uses
  %i.vw = extractelement <2 x float> %i.vv, i64 0
  %i.vx = fmul float %.sroa.232567.0.copyload, %i.vw
  %i.vy = extractelement <2 x float> %i.vv, i64 1
  %i.vz = fmul float %.sroa.532597.0.copyload, %i.vy
  %i.wa = fadd float %i.vx, %i.vz
  %i.wb = insertelement <2 x float> %i.q, float %.sroa.332577.0.copyload, i64 1
  %i.wc = fmul <2 x float> %i.wb, %i.vv
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.we = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.wf = fmul <2 x float> %i.we, %i.vv
  %i.wg = fadd <2 x float> %i.wd, %i.wf
  %i.wh = insertelement <2 x float> poison, float %45, i64 0
  %i.wi = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wj = fmul <2 x float> %i.l, %i.wi
  %i.wk = fadd <2 x float> %i.wj, %i.wg
  %i.wl = fadd float %i.vs, %i.wa
  %i.wm = fsub <2 x float> %.sroa.01334.1, %i.wk
  %i.wn = fsub float %.sroa.221347.1, %i.wl
  %48 = fmul float %i.n, %42
  %49 = fadd float %.sroa.07.0.vec.extract.i1821, %48
  %.sroa.07.0.vec.insert.i1909 = insertelement <2 x float> poison, float %49, i64 0
  %50 = fmul float %i.n, %43
  %51 = fadd float %.sroa.07.4.vec.extract.i1823, %50
  %.sroa.07.4.vec.insert.i1910 = insertelement <2 x float> %.sroa.07.0.vec.insert.i1909, float %51, i64 1
  %i.wo = fmul float %i.n, %44
  %i.wp = fadd float %.sroa.19.1, %i.wo
  %i.wq = insertelement <3 x float> poison, float %i.vm, i64 0
  %i.wr = shufflevector <3 x float> %i.wq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ws = fmul <3 x float> %i.hv, %i.wr           ; 6 uses
  %i.wt = extractelement <3 x float> %i.ws, i64 1
  %i.wu = fmul float %.sroa.23.0.copyload, %i.wt
  %i.wv = extractelement <3 x float> %i.ws, i64 2
  %i.ww = extractelement <2 x float> %i.p, i64 0
  %i.wx = fmul float %i.ww, %i.wv
  %i.wy = fadd float %i.wu, %i.wx
  %i.wz = shufflevector <3 x float> %i.ws, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xa = fmul <2 x float> %i.k, %i.wz
  %i.xb = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 poison>
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.xd = shufflevector <3 x float> %i.ws, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xe = fmul <2 x float> %i.xc, %i.xd
  %i.xf = fadd <2 x float> %i.xa, %i.xe
  %i.xg = shufflevector <2 x float> %i.p, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.xh = shufflevector <3 x float> %i.ws, <3 x float> poison, <2 x i32> zeroinitializer
  %i.xi = fmul <2 x float> %i.xg, %i.xh
  %i.xj = fadd <2 x float> %i.xi, %i.xf
  %i.xk = extractelement <3 x float> %i.ws, i64 0
  %i.xl = fmul float %.sroa.83.0.copyload, %i.xk
  %i.xm = fadd float %i.xl, %i.wy
  %i.xn = fadd <2 x float> %.sroa.01305.1, %i.xj
  %i.xo = fadd float %.sroa.221318.1, %i.xm
  br label %bb.ao

bb.an:                                            ; preds = %bb.af
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float 0.000000e+00, ptr %i.xp, align 4, !tbaa !96
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.01305.2 = phi <2 x float> [ %i.xn, %bb.am ], [ %.sroa.01305.1, %bb.an ] ; 5 uses
  %.sroa.221318.2 = phi float [ %i.xo, %bb.am ], [ %.sroa.221318.1, %bb.an ] ; 4 uses
  %.sroa.01321.2 = phi <2 x float> [ %.sroa.07.4.vec.insert.i1910, %bb.am ], [ %.sroa.01321.1, %bb.an ] ; 4 uses
  %.sroa.19.2 = phi float [ %i.wp, %bb.am ], [ %.sroa.19.1, %bb.an ] ; 3 uses
  %.sroa.01334.2 = phi <2 x float> [ %i.wm, %bb.am ], [ %.sroa.01334.1, %bb.an ] ; 5 uses
  %.sroa.221347.2 = phi float [ %i.wn, %bb.am ], [ %.sroa.221347.1, %bb.an ] ; 4 uses
  %.sroa.01350.2 = phi <2 x float> [ %.sroa.07.4.vec.insert.i1888, %bb.am ], [ %.sroa.01350.1, %bb.an ] ; 4 uses
  %.sroa.191361.2 = phi float [ %i.vq, %bb.am ], [ %.sroa.191361.1, %bb.an ] ; 3 uses
  %i.xq = fsub float %i.ud, %i.id                 ; 4 uses
  %i.xr = fcmp olt float %i.xq, %i.uh
  br i1 %i.xr, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.xs = fcmp ogt float %i.xq, 0.000000e+00
  br i1 %i.xs, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.xt = icmp ne ptr %1, null, !nosanitize !10
  %i.xu = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.xv = and i64 %i.xu, 7, !nosanitize !10
  %i.xw = icmp eq i64 %i.xv, 0, !nosanitize !10
  %i.xx = and i1 %i.xt, %i.xw, !nosanitize !10
  br i1 %i.xx, label %bb.as, label %bb.ar, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.xu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %bb.aq
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !156
  %i.ya = fmul float %i.xq, %i.xz
  br label %bb.av

bb.at:                                            ; preds = %bb.ap
  br i1 %2, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !157
  %i.yd = fmul float %i.xq, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.yg = load float, ptr %i.ye, align 4, !tbaa !158
  %i.yh = load float, ptr %i.yf, align 4, !tbaa !159
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.at
  %.01474 = phi float [ 0.000000e+00, %bb.as ], [ %i.yh, %bb.au ], [ 0.000000e+00, %bb.at ]
  %.01473 = phi float [ 1.000000e+00, %bb.as ], [ %i.yg, %bb.au ], [ 1.000000e+00, %bb.at ]
  %.01472 = phi float [ %i.ya, %bb.as ], [ %i.yd, %bb.au ], [ 0.000000e+00, %bb.at ]
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.sroa.09.0.vec.extract.i1931 = extractelement <2 x float> %.sroa.01305.2, i64 0
  %i.yj = extractelement <4 x float> %i.gj, i64 2
  %.sroa.09.0.vec.extract.i1963 = extractelement <2 x float> %.sroa.01334.2, i64 0
  %i.yk = extractelement <4 x float> %i.gj, i64 1
  %i.yl = extractelement <4 x float> %i.gy, i64 0
  %i.ym = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.yn = fmul <2 x float> %i.ym, %.sroa.01305.2
  %i.yo = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.yp = shufflevector <2 x float> %.sroa.01305.2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yq = insertelement <2 x float> %i.yp, float %.sroa.221318.2, i64 1
  %i.yr = fmul <2 x float> %i.yo, %i.yq
  %i.ys = fsub <2 x float> %i.yn, %i.yr
  %i.yt = shufflevector <2 x float> %.sroa.01321.2, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yu = insertelement <2 x float> %i.yt, float %.sroa.19.2, i64 0
  %i.yv = fadd <2 x float> %i.yu, %i.ys
  %i.yw = shufflevector <2 x float> %.sroa.01350.2, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yx = insertelement <2 x float> %i.yw, float %.sroa.191361.2, i64 0
  %i.yy = fsub <2 x float> %i.yv, %i.yx
  %i.yz = fmul <2 x float> %i.hd, %.sroa.01334.2
  %i.za = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.zb = shufflevector <2 x float> %.sroa.01334.2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zc = insertelement <2 x float> %i.zb, float %.sroa.221347.2, i64 1
  %i.zd = fmul <2 x float> %i.za, %i.zc
  %i.ze = fsub <2 x float> %i.yz, %i.zd
  %i.zf = fsub <2 x float> %i.yy, %i.ze
  %i.zg = fmul <2 x float> %i.dq, %i.zf           ; 2 uses
  %.sroa.07.4.vec.extract.i1937 = extractelement <2 x float> %.sroa.01321.2, i64 1
  %i.zh = fmul float %i.yj, %.sroa.221318.2
  %i.zi = fmul float %i.yk, %.sroa.09.0.vec.extract.i1931
  %i.zj = fsub float %i.zh, %i.zi
  %i.zk = fadd float %.sroa.07.4.vec.extract.i1937, %i.zj
  %.sroa.0.4.vec.extract.i1946 = extractelement <2 x float> %.sroa.01350.2, i64 1
  %i.zl = fsub float %i.zk, %.sroa.0.4.vec.extract.i1946
  %i.zm = fmul float %i.hc, %.sroa.221347.2
  %i.zn = fmul float %i.yl, %.sroa.09.0.vec.extract.i1963
  %i.zo = fsub float %i.zm, %i.zn
  %i.zp = fsub float %i.zl, %i.zo
  %i.zq = fmul float %i.ff, %i.zp
  %i.zr = extractelement <2 x float> %i.zg, i64 1
  %i.zs = fadd float %i.zr, %i.zq
  %i.zt = extractelement <2 x float> %i.zg, i64 0
  %i.zu = fadd float %i.zt, %i.zs
  %i.zv = load float, ptr %i.yi, align 4, !tbaa !95 ; 3 uses
  %i.zw = fneg float %.01473
  %i.zx = fmul float %i.ki, %i.zw
  %i.zy = fsub float %.01472, %i.zu
  %i.zz = fmul float %i.zx, %i.zy
  %i.aaa = fmul float %.01474, %i.zv
  %i.aab = fsub float %i.zz, %i.aaa
  %i.aac = fadd float %i.zv, %i.aab               ; 2 uses
  %i.aad = fcmp ogt float %i.aac, 0.000000e+00
  %i.aae = select i1 %i.aad, float %i.aac, float 0.000000e+00 ; 2 uses
  store float %i.aae, ptr %i.yi, align 4, !tbaa !95
  %i.aaf = fsub float %i.zv, %i.aae               ; 4 uses
  %i.aag = fmul float %i.ha, %i.aaf               ; 2 uses
  %i.aah = fmul float %i.hm, %i.aaf               ; 2 uses
  %i.aai = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aaj = insertelement <2 x float> %i.aai, float %i.ff, i64 1
  %i.aak = insertelement <2 x float> poison, float %i.aaf, i64 0
  %i.aal = shufflevector <2 x float> %i.aak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aam = fmul <2 x float> %i.aaj, %i.aal        ; 2 uses
  %i.aan = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aao = fmul <2 x float> %i.aan, %i.aam
  %i.aap = fsub <2 x float> %.sroa.01350.2, %i.aao
  %i.aaq = fmul float %i.ig, %i.aag
  %i.aar = fsub float %.sroa.191361.2, %i.aaq
  %i.aas = extractelement <16 x float> %i.j, i64 8
  %i.aat = fmul float %i.aas, %i.aah
  %i.aau = fmul <2 x float> %i.hj, %i.aal         ; 4 uses
  %i.aav = extractelement <2 x float> %i.aau, i64 0
  %i.aaw = fmul float %.sroa.232567.0.copyload, %i.aav
  %i.aax = extractelement <2 x float> %i.aau, i64 1
  %i.aay = fmul float %.sroa.532597.0.copyload, %i.aax
  %i.aaz = fadd float %i.aaw, %i.aay
  %i.aba = insertelement <2 x float> %i.q, float %.sroa.332577.0.copyload, i64 1
  %i.abb = fmul <2 x float> %i.aba, %i.aau
  %i.abc = shufflevector <2 x float> %i.abb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abd = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.abe = fmul <2 x float> %i.abd, %i.aau
  %i.abf = fadd <2 x float> %i.abc, %i.abe
  %i.abg = insertelement <2 x float> poison, float %i.aah, i64 0
  %i.abh = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abi = fmul <2 x float> %i.l, %i.abh
  %i.abj = fadd <2 x float> %i.abi, %i.abf
  %i.abk = fadd float %i.aat, %i.aaz
  %i.abl = fsub <2 x float> %.sroa.01334.2, %i.abj
  %i.abm = fsub float %.sroa.221347.2, %i.abk
  %i.abn = insertelement <2 x float> poison, float %i.n, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = fmul <2 x float> %i.abo, %i.aam
  %i.abq = fadd <2 x float> %.sroa.01321.2, %i.abp
  %i.abr = fmul float %i.n, %i.aag
  %i.abs = fadd float %.sroa.19.2, %i.abr
  %i.abt = insertelement <3 x float> poison, float %i.aaf, i64 0
  %i.abu = shufflevector <3 x float> %i.abt, <3 x float> poison, <3 x i32> zeroinitializer
  %i.abv = fmul <3 x float> %i.hv, %i.abu         ; 6 uses
  %i.abw = extractelement <3 x float> %i.abv, i64 1
  %i.abx = fmul float %.sroa.23.0.copyload, %i.abw
  %i.aby = extractelement <3 x float> %i.abv, i64 2
  %i.abz = extractelement <2 x float> %i.p, i64 0
  %i.aca = fmul float %i.abz, %i.aby
  %i.acb = fadd float %i.abx, %i.aca
  %i.acc = shufflevector <3 x float> %i.abv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acd = fmul <2 x float> %i.k, %i.acc
  %i.ace = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 poison>
  %i.acf = shufflevector <2 x float> %i.ace, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.acg = shufflevector <3 x float> %i.abv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ach = fmul <2 x float> %i.acf, %i.acg
  %i.aci = fadd <2 x float> %i.acd, %i.ach
  %i.acj = shufflevector <2 x float> %i.p, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.ack = shufflevector <3 x float> %i.abv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.acl = fmul <2 x float> %i.acj, %i.ack
  %i.acm = fadd <2 x float> %i.acl, %i.aci
  %i.acn = extractelement <3 x float> %i.abv, i64 0
  %i.aco = fmul float %.sroa.83.0.copyload, %i.acn
  %i.acp = fadd float %i.aco, %i.acb
  %i.acq = fadd <2 x float> %.sroa.01305.2, %i.acm
  %i.acr = fadd float %.sroa.221318.2, %i.acp
  br label %.thread

bb.aw:                                            ; preds = %bb.ao
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 216
  store float 0.000000e+00, ptr %i.acs, align 4, !tbaa !95
  br label %.thread

bb.ax:                                            ; preds = %bb.ae
  br i1 %i.ko, label %.thread, label %bb.az

.thread:                                          ; preds = %bb.av, %bb.aw, %bb.ax
  %.sroa.191361.42656 = phi float [ %.sroa.191361.1, %bb.ax ], [ %.sroa.191361.2, %bb.aw ], [ %i.aar, %bb.av ]
  %.sroa.01350.42654 = phi <2 x float> [ %.sroa.01350.1, %bb.ax ], [ %.sroa.01350.2, %bb.aw ], [ %i.aap, %bb.av ]
  %.sroa.221347.42652 = phi float [ %.sroa.221347.1, %bb.ax ], [ %.sroa.221347.2, %bb.aw ], [ %i.abm, %bb.av ] ; 2 uses
  %.sroa.01334.42651 = phi <2 x float> [ %.sroa.01334.1, %bb.ax ], [ %.sroa.01334.2, %bb.aw ], [ %i.abl, %bb.av ] ; 3 uses
  %.sroa.19.42650 = phi float [ %.sroa.19.1, %bb.ax ], [ %.sroa.19.2, %bb.aw ], [ %i.abs, %bb.av ]
  %.sroa.01321.42648 = phi <2 x float> [ %.sroa.01321.1, %bb.ax ], [ %.sroa.01321.2, %bb.aw ], [ %i.abq, %bb.av ]
  %.sroa.221318.42646 = phi float [ %.sroa.221318.1, %bb.ax ], [ %.sroa.221318.2, %bb.aw ], [ %i.acr, %bb.av ] ; 2 uses
  %.sroa.01305.42645 = phi <2 x float> [ %.sroa.01305.1, %bb.ax ], [ %.sroa.01305.2, %bb.aw ], [ %i.acq, %bb.av ] ; 4 uses
  br i1 %2, label %b3DeltaQuatToRotation.exit, label %bb.ay

b3DeltaQuatToRotation.exit:                       ; preds = %.thread
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.acu = load <2 x float>, ptr %i.ce, align 4   ; 7 uses
  %i.acv = load <2 x float>, ptr %i.ch, align 4   ; 6 uses
  %i.acw = load <2 x float>, ptr %i.act, align 4  ; 7 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.acy = load <2 x float>, ptr %i.acx, align 4  ; 6 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ada = load <2 x float>, ptr %i.cj, align 4   ; 6 uses
  %i.adb = load <2 x float>, ptr %i.cm, align 4   ; 7 uses
  %i.adc = load <2 x float>, ptr %i.acz, align 4  ; 7 uses
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ade = load <2 x float>, ptr %i.add, align 4  ; 6 uses
  %shift2693 = shufflevector <2 x float> %i.ada, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2694 = fmul <2 x float> %shift2693, %i.ade
  %shift2696 = shufflevector <2 x float> %i.adc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_2
begin_hunk_3_@b3SolvePrismaticJoint:bb.a
  %i.afx = fmul <2 x float> %i.afw, %i.aeq
  %i.afy = fadd <2 x float> %i.afx, %i.afv        ; 2 uses
  %i.afz = fsub <2 x float> %i.afy, %i.afo
  %i.aga = fadd <2 x float> %i.afy, %i.afo        ; 2 uses
  %i.agb = shufflevector <2 x float> %i.aga, <2 x float> %i.afz, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.agc = extractelement <2 x float> %i.aga, i64 0
  %i.agd = shufflevector <2 x float> %i.agb, <2 x float> %i.afm, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.age = fmul <4 x float> %i.agd, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %shift2716 = shufflevector <4 x float> %i.age, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2717 = fadd <4 x float> %i.age, %shift2716
  %shift2719 = shufflevector <4 x float> %i.age, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2720.a = fadd <4 x float> %shift2719, %foldExtExtBinop2717
  %i.agf = extractelement <4 x float> %foldExtExtBinop2720.a, i64 0
  %i.agg = fadd float %i.agc, %i.agf
  %i.agh = fcmp olt float %i.agg, 0.000000e+00    ; 2 uses
  %i.agi = fneg <2 x float> %i.afm
  %i.agj = fneg <2 x float> %i.agb
  %i.agk = select i1 %i.agh, <2 x float> %i.agi, <2 x float> %i.afm ; 5 uses
  %i.agl = select i1 %i.agh, <2 x float> %i.agj, <2 x float> %i.agb ; 6 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.agn = fsub <2 x float> <float 1.000000e+00, float 0.000000e+00>, %i.agl ; 4 uses
  %i.ago = fmul <2 x float> %i.agk, %i.agn        ; 2 uses
  %i.agp = fsub <2 x float> zeroinitializer, %i.agk ; 5 uses
  %foldExtExtBinop2722 = fmul <2 x float> %i.agl, %i.agp
  %foldExtExtBinop2724 = fmul <2 x float> %i.agl, %i.agp
  %foldExtExtBinop2726 = fsub <2 x float> %i.ago, %foldExtExtBinop2724
  %shift2728 = shufflevector <2 x float> %foldExtExtBinop2726, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2729.a = fsub <2 x float> %shift2728, %i.ago
  %foldExtExtBinop2731 = fadd <2 x float> %foldExtExtBinop2722, %foldExtExtBinop2729.a
  %i.agq = extractelement <2 x float> %foldExtExtBinop2731, i64 0
  %i.agr = fmul float %i.agq, 2.000000e+00        ; 2 uses
  %i.ags = shufflevector <2 x float> %i.agl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agt = shufflevector <2 x float> %i.agn, <2 x float> %i.agp, <2 x i32> <i32 3, i32 1>
  %i.agu = fmul <2 x float> %i.ags, %i.agt
  %i.agv = shufflevector <2 x float> %i.agl, <2 x float> %i.agk, <2 x i32> <i32 1, i32 2>
  %i.agw = fmul <2 x float> %i.agv, %i.agp
  %i.agx = shufflevector <2 x float> %i.agn, <2 x float> %i.agp, <2 x i32> <i32 1, i32 2>
  %i.agy = fmul <2 x float> %i.agx, %i.agk
  %i.agz = fsub <2 x float> %i.agw, %i.agy
  %i.aha = shufflevector <2 x float> %i.agn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahb = shufflevector <2 x float> %i.agk, <2 x float> %i.agl, <2 x i32> <i32 1, i32 3>
  %i.ahc = fmul <2 x float> %i.aha, %i.ahb
  %i.ahd = fsub <2 x float> %i.agz, %i.ahc
  %i.ahe = fadd <2 x float> %i.agu, %i.ahd
  %i.ahf = fmul <2 x float> %i.ahe, splat (float 2.000000e+00) ; 4 uses
  %i.ahg = extractelement <2 x float> %i.ahf, i64 0
  %i.ahh = shufflevector <2 x float> %i.adx, <2 x float> %i.afb, <2 x i32> <i32 1, i32 2>
  %i.ahi = fmul <2 x float> %i.ahh, %i.ahf        ; 2 uses
  %i.ahj = load float, ptr %i.agm, align 4, !tbaa !157 ; 2 uses
  %i.ahk = shufflevector <2 x float> %i.ahf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ahl = insertelement <2 x float> %i.ahk, float %i.agr, i64 0
  %i.ahm = fmul <2 x float> %i.afg, %i.ahl        ; 2 uses
  %i.ahn = shufflevector <2 x float> %i.ady, <2 x float> %i.adx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aho = insertelement <2 x float> %i.ahk, float %i.agr, i64 1 ; 3 uses
  %i.ahp = fmul <2 x float> %i.ahn, %i.aho        ; 2 uses
  %i.ahq = fmul <2 x float> %i.afj, %i.aho
  %i.ahr = fmul <2 x float> %i.adx, %i.ahf
  %i.ahs = shufflevector <2 x float> %i.ahp, <2 x float> %i.ahi, <2 x i32> <i32 1, i32 2>
  %i.aht = fsub <2 x float> %i.ahs, %i.ahq
  %i.ahu = fsub <2 x float> %i.ahp, %i.ahr
  %i.ahv = fadd <2 x float> %i.ahm, %i.ahu        ; 2 uses
  %foldExtExtBinop2733 = fmul <2 x float> %i.adx, %i.ahv
  %i.ahw = shufflevector <2 x float> %i.ahi, <2 x float> %i.ahm, <2 x i32> <i32 3, i32 1>
  %i.ahx = fadd <2 x float> %i.ahw, %i.aht        ; 2 uses
  %foldExtExtBinop2735 = fmul <2 x float> %i.adx, %i.ahx
  %shift2737 = shufflevector <2 x float> %foldExtExtBinop2735, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2738.a = fsub <2 x float> %foldExtExtBinop2733, %shift2737
  %i.ahy = extractelement <2 x float> %foldExtExtBinop2738.a, i64 0
  %i.ahz = fmul float %i.ahy, 2.000000e+00
  %i.aia = fadd float %i.ahg, %i.ahz
  %i.aib = fneg float %i.aia
  %i.aic = fmul <2 x float> %i.afj, %i.ahx
  %i.aid = fmul <2 x float> %i.ahn, %i.ahv
  %i.aie = fsub <2 x float> %i.aic, %i.aid
  %i.aif = fmul <2 x float> %i.aie, splat (float 2.000000e+00)
  %i.aig = fadd <2 x float> %i.aho, %i.aif
  %i.aih = fneg <2 x float> %i.aig
  %i.aii = insertelement <2 x float> poison, float %i.ahj, i64 0
  %i.aij = shufflevector <2 x float> %i.aii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aik = fmul <2 x float> %i.aij, %i.aih
  %i.ail = fmul float %i.ahj, %i.aib
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ain = load <2 x float>, ptr %i.aim, align 4, !tbaa !90
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %b3DeltaQuatToRotation.exit
  %.sroa.0490.0 = phi <2 x float> [ %i.aik, %b3DeltaQuatToRotation.exit ], [ zeroinitializer, %.thread ] ; 2 uses
  %.sroa.5491.0 = phi float [ %i.ail, %b3DeltaQuatToRotation.exit ], [ 0.000000e+00, %.thread ]
  %i.aio = phi <2 x float> [ %i.ain, %b3DeltaQuatToRotation.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %.thread ] ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %foldExtExtBinop2740.a = fsub <2 x float> %.sroa.01305.42645, %.sroa.01334.42651
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 372
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !90
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !90
  %i.aiq = fsub float %.sroa.221318.42646, %.sroa.221347.42652
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 396
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !90
  %i.air = extractelement <2 x float> %i.aio, i64 0
  %i.ais = fneg float %i.air
  %.sroa.2406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sroa.2406.0.copyload = load float, ptr %.sroa.2406.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0405.0.copyload = load <2 x float>, ptr %i.aip, align 4 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.aiu = extractelement <16 x float> %i.j, i64 8
  %i.aiv = insertelement <2 x float> %foldExtExtBinop2740.a, float -0.000000e+00, i64 1
  %i.aiw = shufflevector <2 x float> %i.aiv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aix = shufflevector <2 x float> %.sroa.0490.0, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aiy = fadd <4 x float> %i.aiw, %i.aix
  %foldExtExtBinop2742 = fsub <2 x float> %.sroa.01305.42645, %.sroa.01334.42651
  %i.aiz = shufflevector <2 x float> %foldExtExtBinop2742, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aja = shufflevector <2 x float> %.sroa.0490.0, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ajb = fadd <4 x float> %i.aiz, %i.aja
  %.scalar = fadd float %i.aiq, %.sroa.5491.0
  %i.ajc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %i.ajd = shufflevector <2 x float> %i.ajc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aje = load <2 x float>, ptr %i.ait, align 4, !tbaa !90
  %i.ajf = shufflevector <2 x float> %.sroa.01305.42645, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ajg = insertelement <4 x float> poison, float %.sroa.5.0.copyload, i64 2
  %i.ajh = shufflevector <4 x float> %i.ajf, <4 x float> %i.ajg, <4 x i32> <i32 poison, i32 poison, i32 6, i32 1>
  %i.aji = shufflevector <2 x float> %i.aje, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajj = shufflevector <4 x float> %i.aji, <4 x float> %i.ajh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ajk = fmul <4 x float> %i.ajj, %i.aiy
  %i.ajl = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  %i.ajm = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.8.0.copyload, i64 2
  %i.ajn = shufflevector <2 x float> %i.ajl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajo = shufflevector <4 x float> %i.ajn, <4 x float> %i.ajm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ajp = fmul <4 x float> %i.ajo, %i.ajb
  %i.ajq = fadd <4 x float> %i.ajk, %i.ajp
  %i.ajr = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !90
  %i.ajs = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.11.0.copyload, i64 2
  %i.ajt = shufflevector <2 x float> %i.ajr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aju = shufflevector <4 x float> %i.ajt, <4 x float> %i.ajs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ajv = fmul <4 x float> %i.aju, %i.ajd
  %i.ajw = fadd <4 x float> %i.ajq, %i.ajv
  %i.ajx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ais, i64 0
  %i.ajy = shufflevector <4 x float> %i.ajx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ajz = fmul <4 x float> %i.ajw, %i.ajy
  %i.aka = shufflevector <2 x float> %i.aio, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.akb = shufflevector <4 x float> %i.aka, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.akc = shufflevector <2 x float> %.sroa.0405.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akd = insertelement <4 x float> %i.akc, float 1.000000e+00, i64 3
  %i.ake = insertelement <4 x float> %i.akd, float %.sroa.2406.0.copyload, i64 2
  %i.akf = fmul <4 x float> %i.akb, %i.ake
  %i.akg = fsub <4 x float> %i.ajz, %i.akf        ; 8 uses
  %i.akh = extractelement <4 x float> %i.akg, i64 0
  %i.aki = extractelement <4 x float> %i.akg, i64 1
  %i.akj = shufflevector <4 x float> %i.akg, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.akk = fadd <2 x float> %.sroa.0405.0.copyload, %i.akj
  %i.akl = extractelement <4 x float> %i.akg, i64 2 ; 2 uses
  %i.akm = fadd float %.sroa.2406.0.copyload, %i.akl
  store <2 x float> %i.akk, ptr %i.aip, align 4, !tbaa !90
  store float %i.akm, ptr %.sroa.2406.0..sroa_idx, align 4, !tbaa !90
  %i.akn = fmul float %.sroa.232567.0.copyload, %i.akh
  %i.ako = fmul float %.sroa.532597.0.copyload, %i.aki
  %i.akp = fadd float %i.ako, %i.akn
  %i.akq = fmul float %i.aiu, %i.akl
  %i.akr = fadd float %i.akq, %i.akp
  %i.aks = insertelement <2 x float> %i.q, float %.sroa.332577.0.copyload, i64 1
  %i.akt = fmul <2 x float> %i.aks, %i.akj
  %i.aku = shufflevector <2 x float> %i.akt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.akv = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.akw = fmul <2 x float> %i.akv, %i.akj
  %i.akx = fadd <2 x float> %i.akw, %i.aku
  %i.aky = shufflevector <4 x float> %i.akg, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.akz = fmul <2 x float> %i.l, %i.aky
  %i.ala = fadd <2 x float> %i.akz, %i.akx
  %i.alb = fsub <2 x float> %.sroa.01334.42651, %i.ala
  %i.alc = fsub float %.sroa.221347.42652, %i.akr
  %i.ald = shufflevector <2 x float> %i.k, <2 x float> %i.r, <4 x i32> <i32 1, i32 poison, i32 2, i32 poison>
  %i.ale = insertelement <4 x float> %i.ald, float 1.000000e+00, i64 3
  %i.alf = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.alg = shufflevector <4 x float> %i.ale, <4 x float> %i.alf, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.alh = fmul <4 x float> %i.alg, %i.akg
  %i.ali = call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %i.alh)
  %i.alj = insertelement <2 x float> %i.k, float %.sroa.23.0.copyload, i64 1
  %i.alk = shufflevector <4 x float> %i.akg, <4 x float> poison, <2 x i32> zeroinitializer
  %i.all = fmul <2 x float> %i.alj, %i.alk
  %i.alm = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 poison>
  %i.aln = shufflevector <2 x float> %i.alm, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.alo = shufflevector <4 x float> %i.akg, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.alp = fmul <2 x float> %i.aln, %i.alo
  %i.alq = fadd <2 x float> %i.alp, %i.all
  %i.alr = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.als = insertelement <2 x float> %i.alr, float %.sroa.83.0.copyload, i64 1
  %i.alt = fmul <2 x float> %i.als, %i.aky
  %i.alu = fadd <2 x float> %i.alt, %i.alq
  %i.alv = insertelement <2 x float> %.sroa.01305.42645, float %.sroa.221318.42646, i64 1
  %i.alw = fadd <2 x float> %i.alv, %i.alu        ; 2 uses
  %.sroa.05.4.vec.insert.i2170 = insertelement <2 x float> %i.alw, float %i.ali, i64 1
  %i.alx = extractelement <2 x float> %i.alw, i64 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.191361.42655 = phi float [ %.sroa.191361.42656, %bb.ay ], [ %.sroa.191361.1, %bb.ax ] ; 2 uses
  %.sroa.01350.42653 = phi <2 x float> [ %.sroa.01350.42654, %bb.ay ], [ %.sroa.01350.1, %bb.ax ] ; 2 uses
  %.sroa.19.42649 = phi float [ %.sroa.19.42650, %bb.ay ], [ %.sroa.19.1, %bb.ax ] ; 2 uses
  %.sroa.01321.42647 = phi <2 x float> [ %.sroa.01321.42648, %bb.ay ], [ %.sroa.01321.1, %bb.ax ] ; 2 uses
  %.sroa.01305.5 = phi <2 x float> [ %.sroa.05.4.vec.insert.i2170, %bb.ay ], [ %.sroa.01305.1, %bb.ax ] ; 4 uses
  %.sroa.221318.5 = phi float [ %i.alx, %bb.ay ], [ %.sroa.221318.1, %bb.ax ] ; 3 uses
  %.sroa.01334.5 = phi <2 x float> [ %i.alb, %bb.ay ], [ %.sroa.01334.1, %bb.ax ] ; 3 uses
  %.sroa.221347.5 = phi float [ %i.alc, %bb.ay ], [ %.sroa.221347.1, %bb.ax ] ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.alz = load <2 x float>, ptr %i.ce, align 4   ; 3 uses
  %i.ama = load <2 x float>, ptr %i.ch, align 4   ; 4 uses
  %.sroa.0339.0.copyload = load <2 x float>, ptr %i.aly, align 4 ; 3 uses
  %.sroa.2340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 332
  %.sroa.2340.0.copyload = load float, ptr %.sroa.2340.0..sroa_idx, align 4 ; 3 uses
  %i.amb = shufflevector <2 x float> %i.alz, <2 x float> %i.ama, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.amc = insertelement <4 x float> %i.amb, float -0.000000e+00, i64 3 ; 2 uses
  %i.amd = shufflevector <2 x float> %.sroa.0339.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ame = insertelement <4 x float> %i.amd, float 1.000000e+00, i64 3
  %i.amf = insertelement <4 x float> %i.ame, float %.sroa.2340.0.copyload, i64 1
  %i.amg = fmul <4 x float> %i.amc, %i.amf
  %i.amh = shufflevector <2 x float> %i.alz, <2 x float> %i.ama, <4 x i32> <i32 1, i32 2, i32 0, i32 poison> ; 2 uses
  %i.ami = insertelement <4 x float> %i.amh, float 0.000000e+00, i64 3 ; 2 uses
  %i.amj = shufflevector <2 x float> %.sroa.0339.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amk = insertelement <4 x float> %i.amj, float 1.000000e+00, i64 3
  %i.aml = insertelement <4 x float> %i.amk, float %.sroa.2340.0.copyload, i64 2 ; 2 uses
  %i.amm = fmul <4 x float> %i.ami, %i.aml
  %i.amn = fsub <4 x float> %i.amg, %i.amm
  %i.amo = shufflevector <2 x float> %i.ama, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.amp = insertelement <4 x float> %i.amo, float 1.000000e+00, i64 3 ; 2 uses
  %i.amq = shufflevector <2 x float> %.sroa.0339.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.amr = insertelement <4 x float> %i.amq, float 1.000000e+00, i64 3
  %i.ams = insertelement <4 x float> %i.amr, float %.sroa.2340.0.copyload, i64 0
  %i.amt = fmul <4 x float> %i.amp, %i.ams
  %i.amu = fadd <4 x float> %i.amt, %i.amn        ; 2 uses
  %i.amv = insertelement <4 x float> %i.amh, float 1.000000e+00, i64 3 ; 2 uses
  %i.amw = fmul <4 x float> %i.amv, %i.amu
  %i.amx = shufflevector <2 x float> %i.ama, <2 x float> %i.alz, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.amy = insertelement <4 x float> %i.amx, float 0.000000e+00, i64 3 ; 2 uses
  %i.amz = shufflevector <4 x float> %i.amu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ana = fmul <4 x float> %i.amy, %i.amz
  %i.anb = fsub <4 x float> %i.amw, %i.ana
  %i.anc = fmul <4 x float> %i.anb, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.and = fadd <4 x float> %i.aml, %i.anc        ; 12 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0328.0.copyload = load <2 x float>, ptr %i.ane, align 4 ; 3 uses
  %.sroa.2329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.2329.0.copyload = load float, ptr %.sroa.2329.0..sroa_idx, align 4 ; 3 uses
  %i.anf = shufflevector <2 x float> %.sroa.0328.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ang = insertelement <4 x float> %i.anf, float 1.000000e+00, i64 3
  %i.anh = insertelement <4 x float> %i.ang, float %.sroa.2329.0.copyload, i64 1
  %i.ani = fmul <4 x float> %i.amc, %i.anh
  %i.anj = shufflevector <2 x float> %.sroa.0328.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ank = insertelement <4 x float> %i.anj, float 1.000000e+00, i64 3
  %i.anl = insertelement <4 x float> %i.ank, float %.sroa.2329.0.copyload, i64 2 ; 2 uses
  %i.anm = fmul <4 x float> %i.ami, %i.anl
  %i.ann = fsub <4 x float> %i.ani, %i.anm
  %i.ano = shufflevector <2 x float> %.sroa.0328.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.anp = insertelement <4 x float> %i.ano, float 1.000000e+00, i64 3
  %i.anq = insertelement <4 x float> %i.anp, float %.sroa.2329.0.copyload, i64 0
  %i.anr = fmul <4 x float> %i.amp, %i.anq
  %i.ans = fadd <4 x float> %i.anr, %i.ann        ; 2 uses
  %i.ant = fmul <4 x float> %i.amv, %i.ans
  %i.anu = shufflevector <4 x float> %i.ans, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.anv = fmul <4 x float> %i.amy, %i.anu
  %i.anw = fsub <4 x float> %i.ant, %i.anv
  %i.anx = fmul <4 x float> %i.anw, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.any = fadd <4 x float> %i.anl, %i.anx        ; 8 uses
  br i1 %2, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aoa = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aob = shufflevector <4 x float> %i.any, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.aoc = fmul <2 x float> %i.aoa, %i.aob        ; 2 uses
  %i.aod = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.aoe = shufflevector <4 x float> %i.and, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aof = fmul <2 x float> %i.aod, %i.aoe        ; 2 uses
  %i.aog = load float, ptr %i.anz, align 4, !tbaa !157
  %i.aoh = shufflevector <4 x float> %i.gx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aoi = shufflevector <4 x float> %i.and, <4 x float> %i.any, <2 x i32> <i32 0, i32 5>
  %i.aoj = fmul <2 x float> %i.aoh, %i.aoi
  %i.aok = shufflevector <2 x float> %i.aof, <2 x float> %i.aoc, <2 x i32> <i32 0, i32 3>
  %i.aol = fadd <2 x float> %i.aok, %i.aoj
  %i.aom = shufflevector <2 x float> %i.aof, <2 x float> %i.aoc, <2 x i32> <i32 1, i32 2>
  %i.aon = fadd <2 x float> %i.aom, %i.aol
  %i.aoo = insertelement <2 x float> poison, float %i.aog, i64 0
  %i.aop = shufflevector <2 x float> %i.aoo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoq = fmul <2 x float> %i.aon, %i.aop
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.aos = load <2 x float>, ptr %i.aor, align 4, !tbaa !90
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.0323.0 = phi <2 x float> [ %i.aoq, %bb.ba ], [ zeroinitializer, %bb.az ] ; 2 uses
  %i.aot = phi <2 x float> [ %i.aos, %bb.ba ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.az ] ; 2 uses
  %i.aou = shufflevector <4 x float> %i.gj, <4 x float> %i.gy, <2 x i32> <i32 0, i32 6> ; 4 uses
  %i.aov = shufflevector <4 x float> %i.and, <4 x float> %i.any, <2 x i32> <i32 2, i32 6> ; 4 uses
  %i.aow = fmul <2 x float> %i.aou, %i.aov
  %i.aox = shufflevector <4 x float> %i.and, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.aoy = fmul <2 x float> %i.aou, %i.aox
  %i.aoz = shufflevector <4 x float> %i.gj, <4 x float> %i.gy, <2 x i32> <i32 1, i32 4> ; 4 uses
  %i.apa = shufflevector <4 x float> %i.and, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.apb = fmul <2 x float> %i.aoz, %i.apa
  %i.apc = shufflevector <4 x float> %i.gy, <4 x float> %i.gj, <2 x i32> <i32 1, i32 4>
  %i.apd = shufflevector <4 x float> %i.and, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ape = fmul <2 x float> %i.apc, %i.apd
  %i.apf = shufflevector <4 x float> %i.gy, <4 x float> %i.gj, <2 x i32> <i32 2, i32 5>
  %i.apg = shufflevector <4 x float> %i.and, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.aph = fmul <2 x float> %i.apf, %i.apg
  %i.api = shufflevector <4 x float> %i.and, <4 x float> %i.any, <2 x i32> <i32 1, i32 5> ; 4 uses
  %i.apj = fmul <2 x float> %i.aoz, %i.api
  %i.apk = shufflevector <4 x float> %i.gy, <4 x float> %i.gj, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.apl = fmul <2 x float> %i.apk, %i.aov
  %i.apm = shufflevector <4 x float> %i.gy, <4 x float> %i.gj, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.apn = fmul <2 x float> %i.apm, %i.api
  %i.apo = shufflevector <4 x float> %i.gj, <4 x float> %i.gy, <2 x i32> <i32 2, i32 5> ; 4 uses
  %i.app = fmul <2 x float> %i.apo, %i.apa
  %i.apq = shufflevector <4 x float> %i.and, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apr = fmul <2 x float> %i.aou, %i.apq
  %i.aps = fsub <2 x float> %i.aoy, %i.apb        ; 3 uses
  %i.apt = shufflevector <4 x float> %i.gy, <4 x float> %i.gj, <2 x i32> <i32 1, i32 6> ; 2 uses
  %i.apu = fmul <2 x float> %i.apt, %i.api
  %i.apv = shufflevector <4 x float> %i.and, <4 x float> %i.any, <2 x i32> <i32 0, i32 4> ; 4 uses
  %i.apw = fmul <2 x float> %i.apk, %i.apv
  %i.apx = fmul <2 x float> %i.aoz, %i.apv
  %i.apy = fmul <2 x float> %i.aoz, %i.apq
  %i.apz = fmul <2 x float> %i.apo, %i.aox
  %i.aqa = fsub <2 x float> %i.ape, %i.aph
  %i.aqb = fmul <2 x float> %i.apo, %i.aov
  %i.aqc = fmul <2 x float> %i.apm, %i.apv
  %i.aqd = fmul <2 x float> %i.apt, %i.aov
  %i.aqe = fmul <2 x float> %i.apo, %i.api
  %i.aqf = fsub <2 x float> %i.apy, %i.apz        ; 4 uses
  %i.aqg = fmul <2 x float> %i.aou, %i.apv
  %i.aqh = fsub <2 x float> %i.app, %i.apr        ; 5 uses
  %i.aqi = fsub <2 x float> %i.aow, %i.apj        ; 6 uses
  %i.aqj = fsub <2 x float> %i.apx, %i.aqb        ; 7 uses
  %i.aqk = fsub <2 x float> %i.aqe, %i.aqg        ; 5 uses
  %i.aql = fsub <2 x float> %i.apl, %i.apn        ; 5 uses
  %i.aqm = fsub <2 x float> %i.aqc, %i.aqd        ; 3 uses
  %i.aqn = fsub <2 x float> %i.apu, %i.apw        ; 5 uses
  %i.aqo = extractelement <2 x float> %i.aps, i64 1 ; 3 uses
  %i.aqp = extractelement <16 x float> %i.j, i64 0
  %i.aqq = fmul float %i.aqp, %i.aqo
  %i.aqr = extractelement <2 x float> %i.aqf, i64 1 ; 2 uses
  %i.aqs = fmul float %.sroa.332577.0.copyload, %i.aqr
  %i.aqt = fadd float %i.aqq, %i.aqs
  %i.aqu = extractelement <2 x float> %i.aqh, i64 1 ; 2 uses
  %i.aqv = extractelement <2 x float> %i.l, i64 0
  %i.aqw = fmul float %i.aqv, %i.aqu
  %i.aqx = fadd float %i.aqw, %i.aqt
  %i.aqy = extractelement <2 x float> %i.q, i64 0
  %i.aqz = fmul float %i.aqy, %i.aqo
  %i.ara = extractelement <16 x float> %i.j, i64 4
  %i.arb = fmul float %i.ara, %i.aqr
  %i.arc = fadd float %i.aqz, %i.arb
  %foldExtExtBinop2744 = fmul <2 x float> %i.l, %i.aqh
  %i.ard = fmul float %i.aqo, %i.aqx
  %i.are = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 11, i32 2>
  %i.arf = fmul <2 x float> %i.are, %i.aqi
  %i.arg = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 14, i32 5>
  %i.arh = fmul <2 x float> %i.arg, %i.aqj
  %i.ari = fadd <2 x float> %i.arf, %i.arh
  %i.arj = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 9, i32 0>
  %i.ark = fmul <2 x float> %i.arj, %i.aqi
  %i.arl = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 3>
  %i.arm = fmul <2 x float> %i.arl, %i.aqj
  %i.arn = fadd <2 x float> %i.ark, %i.arm
  %i.aro = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 15, i32 6>
  %i.arp = fmul <2 x float> %i.aro, %i.aqk
  %i.arq = fadd <2 x float> %i.arp, %i.arn        ; 2 uses
  %i.arr = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 10, i32 1>
  %i.ars = fmul <2 x float> %i.arr, %i.aqi
  %i.art = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 13, i32 4>
  %i.aru = fmul <2 x float> %i.art, %i.aqj
  %i.arv = fadd <2 x float> %i.ars, %i.aru
  %i.arw = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 poison, i32 7>
  %i.arx = shufflevector <2 x float> %i.r, <2 x float> %i.arw, <2 x i32> <i32 0, i32 3>
  %i.ary = fmul <2 x float> %i.arx, %i.aqk
  %i.arz = fadd <2 x float> %i.ary, %i.arv        ; 2 uses
  %i.asa = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 poison, i32 8>
  %i.asb = shufflevector <2 x float> %i.r, <2 x float> %i.asa, <2 x i32> <i32 1, i32 3>
  %i.asc = fmul <2 x float> %i.asb, %i.aqk
  %i.asd = fadd <2 x float> %i.asc, %i.ari        ; 2 uses
  %i.ase = fmul <2 x float> %i.aps, %i.arq
  %i.asf = fmul <2 x float> %i.aqf, %i.arz
  %i.asg = fadd <2 x float> %i.ase, %i.asf
  %i.ash = fmul <2 x float> %i.aqh, %i.asd
  %i.asi = fadd <2 x float> %i.ash, %i.asg
  %i.asj = extractelement <2 x float> %i.aql, i64 1
  %i.ask = fmul float %.sroa.23.0.copyload, %i.asj
  %i.asl = extractelement <2 x float> %i.aqm, i64 1 ; 3 uses
  %i.asm = extractelement <2 x float> %i.p, i64 0 ; 2 uses
  %i.asn = fmul float %i.asm, %i.asl
  %i.aso = fadd float %i.ask, %i.asn
  %i.asp = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 2, i32 9>
  %i.asq = fmul <2 x float> %i.asp, %i.aql
  %i.asr = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 5, i32 12>
  %i.ass = fmul <2 x float> %i.asr, %i.aqm
  %i.ast = fadd <2 x float> %i.asq, %i.ass
  %i.asu = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 8, i32 15>
  %i.asv = fmul <2 x float> %i.asu, %i.aqn
  %i.asw = fadd <2 x float> %i.asv, %i.ast        ; 2 uses
  %foldExtExtBinop2746.a = fmul <2 x float> %i.k, %i.aql
  %i.asx = extractelement <2 x float> %foldExtExtBinop2746.a, i64 1
  %i.asy = extractelement <2 x float> %i.o, i64 0
  %i.asz = fmul float %i.asy, %i.asl
  %i.ata = fadd float %i.asx, %i.asz
  %i.atb = shufflevector <2 x float> %foldExtExtBinop2744, <2 x float> %i.r, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.atc = insertelement <2 x float> %i.aqn, float %i.arc, i64 0 ; 2 uses
  %i.atd = fmul <2 x float> %i.atb, %i.atc
  %i.ate = fadd <2 x float> %i.atb, %i.atc
  %i.atf = shufflevector <2 x float> %i.ate, <2 x float> %i.atd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.atg = shufflevector <2 x float> %i.aqf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ath = insertelement <2 x float> %i.atg, float %i.ata, i64 1 ; 2 uses
  %i.ati = fadd <2 x float> %i.atf, %i.ath        ; 2 uses
  %i.atj = fmul <2 x float> %i.atf, %i.ath
  %i.atk = shufflevector <2 x float> %i.atj, <2 x float> %i.ati, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.atl = extractelement <2 x float> %i.aqn, i64 1
  %i.atm = fmul float %.sroa.83.0.copyload, %i.atl
  %i.atn = fadd float %i.atm, %i.aso              ; 2 uses
  %i.ato = fmul <2 x float> %i.aqa, %i.asw
  %i.atp = shufflevector <2 x float> %i.aqj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.atq = insertelement <2 x float> %i.atp, float %i.ard, i64 0 ; 2 uses
  %i.atr = fmul <2 x float> %i.atq, %i.atk
  %i.ats = fadd <2 x float> %i.atq, %i.atk
  %i.att = shufflevector <2 x float> %i.ats, <2 x float> %i.atr, <2 x i32> <i32 0, i32 3>
  %i.atu = fadd <2 x float> %i.ato, %i.att
  %i.atv = extractelement <2 x float> %i.aqh, i64 0
  %i.atw = fmul float %i.atv, %i.atn
  %i.atx = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.aty = insertelement <2 x float> %i.atx, float %i.atw, i64 1
  %i.atz = fadd <2 x float> %i.aty, %i.atu
  %i.aua = fadd <2 x float> %i.asi, %i.atz        ; 4 uses
  %i.aub = shufflevector <2 x float> %i.aql, <2 x float> %i.aqi, <2 x i32> <i32 1, i32 3>
  %i.auc = shufflevector <2 x float> %i.asw, <2 x float> %i.arq, <2 x i32> <i32 1, i32 3>
  %i.aud = fmul <2 x float> %i.aub, %i.auc
  %i.aue = shufflevector <2 x float> %i.aqm, <2 x float> %i.aqj, <2 x i32> <i32 1, i32 3>
  %i.auf = shufflevector <2 x float> %i.ati, <2 x float> %i.arz, <2 x i32> <i32 1, i32 3>
  %i.aug = fmul <2 x float> %i.aue, %i.auf
  %i.auh = fadd <2 x float> %i.aud, %i.aug
  %i.aui = shufflevector <2 x float> %i.aqn, <2 x float> %i.aqk, <2 x i32> <i32 1, i32 3>
  %i.auj = insertelement <2 x float> %i.asd, float %i.atn, i64 0
  %i.auk = fmul <2 x float> %i.aui, %i.auj
  %i.aul = fadd <2 x float> %i.auk, %i.auh        ; 2 uses
  %i.aum = extractelement <2 x float> %i.aul, i64 1
  %i.aun = fadd float %i.ih, %i.aum
  %i.auo = extractelement <2 x float> %i.aul, i64 0
  %i.aup = fadd float %i.auo, %i.aun              ; 2 uses
  %.sroa.087.0.copyload = load <2 x float>, ptr %i.t, align 4, !tbaa !90 ; 2 uses
  %i.auq = insertelement <2 x float> %i.aua, float %i.aup, i64 0
  %i.aur = fmul <2 x float> %i.aua, %i.auq        ; 2 uses
  %shift2748 = shufflevector <2 x float> %i.aur, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2749 = fsub <2 x float> %i.aur, %shift2748
  %i.aus = extractelement <2 x float> %foldExtExtBinop2749, i64 0 ; 2 uses
  %i.aut = fcmp ogt float %i.aus, f0x057A0000
  br i1 %i.aut, label %bb.bc, label %b3Solve2.exit

bb.bc:                                            ; preds = %bb.bb
  %.sroa.09.4.vec.extract13.i2203 = extractelement <2 x float> %.sroa.01305.5, i64 1
  %52 = extractelement <4 x float> %i.gj, i64 1
  %53 = fmul float %52, %.sroa.09.4.vec.extract13.i2203
  %54 = shufflevector <2 x float> %.sroa.01305.5, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %55 = insertelement <2 x float> %54, float %.sroa.221318.5, i64 0
  %56 = shufflevector <2 x float> %.sroa.01305.5, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.auu = insertelement <4 x float> %56, float %.sroa.221318.5, i64 0
  %i.auv = fmul <4 x float> %i.gj, %i.auu
  %i.auw = shufflevector <2 x float> %.sroa.0323.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aux = shufflevector <2 x float> %.sroa.0323.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %57 = insertelement <4 x float> poison, float %53, i64 0
  %58 = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %59 = shufflevector <2 x float> %55, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %60 = fmul <4 x float> %58, %59
  %61 = shufflevector <4 x float> %57, <4 x float> %60, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.auy = fsub <4 x float> %61, %i.auv
  %i.auz = shufflevector <2 x float> %.sroa.01321.42647, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ava = insertelement <4 x float> %i.auz, float %.sroa.19.42649, i64 2
  %i.avb = fadd <4 x float> %i.ava, %i.auy
  %i.avc = shufflevector <2 x float> %.sroa.01350.42653, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avd = insertelement <4 x float> %i.avc, float %.sroa.191361.42655, i64 2
  %i.ave = fsub <4 x float> %i.avb, %i.avd
  %i.avf = shufflevector <2 x float> %.sroa.01334.5, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.avg = insertelement <4 x float> %i.avf, float %.sroa.221347.5, i64 1
  %i.avh = fmul <4 x float> %i.gy, %i.avg
  %62 = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.avi = shufflevector <2 x float> %.sroa.01334.5, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.avj = insertelement <4 x float> %i.avi, float %.sroa.221347.5, i64 0
  %63 = fmul <4 x float> %62, %i.avj
  %64 = fsub <4 x float> %i.avh, %63
  %i.avk = fsub <4 x float> %i.ave, %64
  %65 = shufflevector <4 x float> %i.avk, <4 x float> %i.aux, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.avl = shufflevector <4 x float> %65, <4 x float> %i.aux, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.avm = fmul <4 x float> %i.avl, %i.any        ; 3 uses
  %i.avn = fmul <4 x float> %65, %i.and           ; 3 uses
  %i.avo = fdiv float 1.000000e+00, %i.aus        ; 4 uses
  %i.avp = fmul float %i.aup, %i.avo
  %i.avq = extractelement <2 x float> %i.aua, i64 1
  %i.avr = fmul float %i.avq, %i.avo
  %i.avs = fneg float %i.avo
  %i.avt = shufflevector <4 x float> %i.avm, <4 x float> %i.avn, <2 x i32> <i32 0, i32 4>
  %i.avu = shufflevector <4 x float> %i.avm, <4 x float> %i.avn, <2 x i32> <i32 1, i32 5>
  %i.avv = fadd <2 x float> %i.avt, %i.avu
  %i.avw = shufflevector <4 x float> %i.avm, <4 x float> %i.avn, <2 x i32> <i32 2, i32 6>
  %i.avx = fadd <2 x float> %i.avw, %i.avv
  %i.avy = fadd <2 x float> %i.avx, %i.auw        ; 3 uses
  %i.avz = extractelement <2 x float> %i.avy, i64 1
  %i.awa = fmul float %i.avp, %i.avz
  %i.awb = extractelement <2 x float> %i.avy, i64 0
  %i.awc = fmul float %i.avr, %i.awb
  %i.awd = fsub float %i.awa, %i.awc
  %.sroa.0.0.vec.insert.i2374 = insertelement <2 x float> poison, float %i.awd, i64 0
  %i.awe = insertelement <2 x float> poison, float %i.avo, i64 0
  %i.awf = insertelement <2 x float> %i.awe, float %i.avs, i64 1
  %i.awg = fmul <2 x float> %i.aua, %i.awf
  %i.awh = fmul <2 x float> %i.awg, %i.avy        ; 2 uses
  %shift2751 = shufflevector <2 x float> %i.awh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2752 = fadd <2 x float> %shift2751, %i.awh
  %.sroa.0.4.vec.insert.i2375 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i2374, <2 x float> %foldExtExtBinop2752, <2 x i32> <i32 0, i32 2>
  br label %b3Solve2.exit

b3Solve2.exit:                                    ; preds = %bb.bb, %bb.bc
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i2375, %bb.bc ], [ zeroinitializer, %bb.bb ]
  %i.awi = extractelement <2 x float> %i.aot, i64 0
  %i.awj = fneg float %i.awi
  %i.awk = insertelement <2 x float> poison, float %i.awj, i64 0
  %i.awl = shufflevector <2 x float> %i.awk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awm = fmul <2 x float> %.sroa.0.0.i, %i.awl
  %i.awn = shufflevector <2 x float> %i.aot, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.awo = fmul <2 x float> %i.awn, %.sroa.087.0.copyload
  %i.awp = fsub <2 x float> %i.awm, %i.awo        ; 10 uses
  %i.awq = fadd <2 x float> %.sroa.087.0.copyload, %i.awp
  store <2 x float> %i.awq, ptr %i.t, align 4, !tbaa !90
  %i.awr = extractelement <4 x float> %i.and, i64 2
  %i.aws = extractelement <2 x float> %i.awp, i64 0 ; 2 uses
  %i.awt = fmul float %i.awr, %i.aws
  %i.awu = extractelement <2 x float> %i.awp, i64 1
  %i.awv = extractelement <4 x float> %i.any, i64 2
  %i.aww = fmul float %i.awv, %i.awu
  %i.awx = fadd float %i.awt, %i.aww              ; 2 uses
  %i.awy = shufflevector <2 x float> %i.awp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awz = fmul <2 x float> %i.apg, %i.awy
  %i.axa = shufflevector <4 x float> %i.any, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.axb = shufflevector <2 x float> %i.awp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.axc = fmul <2 x float> %i.axa, %i.axb
  %i.axd = fadd <2 x float> %i.awz, %i.axc        ; 2 uses
  %i.axe = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.axf = fmul <2 x float> %i.axe, %i.axd
  %i.axg = fadd <2 x float> %.sroa.01321.42647, %i.axf
  %i.axh = fmul float %i.n, %i.awx
  %i.axi = fadd float %.sroa.19.42649, %i.axh
  %i.axj = extractelement <2 x float> %i.aqj, i64 0
  %i.axk = shufflevector <2 x float> %i.aqh, <2 x float> %i.aql, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.axl = insertelement <3 x float> %i.axk, float %i.axj, i64 2
  %i.axm = shufflevector <2 x float> %i.awp, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.axn = fmul <3 x float> %i.axl, %i.axm
  %i.axo = shufflevector <2 x float> %i.aqn, <2 x float> %i.aqi, <3 x i32> <i32 1, i32 2, i32 poison>
  %i.axp = insertelement <3 x float> %i.axo, float %i.asl, i64 2
  %i.axq = shufflevector <2 x float> %i.awp, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.axr = fmul <3 x float> %i.axp, %i.axq
  %i.axs = fadd <3 x float> %i.axn, %i.axr        ; 6 uses
  %i.axt = extractelement <3 x float> %i.axs, i64 1
  %i.axu = fmul float %.sroa.23.0.copyload, %i.axt
  %i.axv = extractelement <3 x float> %i.axs, i64 2
  %i.axw = fmul float %i.asm, %i.axv
  %i.axx = fadd float %i.axu, %i.axw
  %i.axy = shufflevector <3 x float> %i.axs, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.axz = fmul <2 x float> %i.k, %i.axy
  %i.aya = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 12, i32 poison>
  %i.ayb = shufflevector <2 x float> %i.aya, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.ayc = shufflevector <3 x float> %i.axs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ayd = fmul <2 x float> %i.ayb, %i.ayc
  %i.aye = fadd <2 x float> %i.axz, %i.ayd
  %i.ayf = shufflevector <2 x float> %i.p, <2 x float> %i.r, <2 x i32> <i32 1, i32 2>
  %i.ayg = shufflevector <3 x float> %i.axs, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ayh = fmul <2 x float> %i.ayf, %i.ayg
  %i.ayi = fadd <2 x float> %i.ayh, %i.aye
  %i.ayj = extractelement <3 x float> %i.axs, i64 0
  %i.ayk = fmul float %.sroa.83.0.copyload, %i.ayj
  %i.ayl = fadd float %i.ayk, %i.axx
  %i.aym = fadd <2 x float> %.sroa.01305.5, %i.ayi
  %i.ayn = fadd float %.sroa.221318.5, %i.ayl
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !120
  %i.ayq = and i32 %i.ayp, 4096
  %.not1501 = icmp eq i32 %i.ayq, 0
  br i1 %.not1501, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %b3Solve2.exit
  %i.ayr = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ays = fmul <2 x float> %i.ayr, %i.axd
  %i.ayt = fsub <2 x float> %.sroa.01350.42653, %i.ays
  %i.ayu = extractelement <16 x float> %i.j, i64 8
  %i.ayv = fmul float %i.aqu, %i.aws
  %foldExtExtBinop2754 = fmul <2 x float> %i.aqk, %i.awp
  %i.ayw = extractelement <2 x float> %foldExtExtBinop2754, i64 1
  %i.ayx = fadd float %i.ayv, %i.ayw              ; 2 uses
  %i.ayy = fmul float %i.ayu, %i.ayx
  %i.ayz = shufflevector <2 x float> %i.aps, <2 x float> %i.aqj, <2 x i32> <i32 3, i32 1>
  %i.aza = shufflevector <2 x float> %i.awp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.azb = fmul <2 x float> %i.ayz, %i.aza
  %i.azc = shufflevector <2 x float> %i.aqf, <2 x float> %i.aqi, <2 x i32> <i32 1, i32 3>
  %i.azd = fmul <2 x float> %i.azc, %i.awp
  %i.aze = fadd <2 x float> %i.azb, %i.azd        ; 4 uses
  %i.azf = extractelement <2 x float> %i.aze, i64 1
  %i.azg = fmul float %.sroa.232567.0.copyload, %i.azf
  %i.azh = extractelement <2 x float> %i.aze, i64 0
  %i.azi = fmul float %.sroa.532597.0.copyload, %i.azh
  %i.azj = fadd float %i.azg, %i.azi
  %i.azk = fadd float %i.ayy, %i.azj
  %i.azl = fsub float %.sroa.221347.5, %i.azk
  %i.azm = insertelement <2 x float> poison, float %i.ayx, i64 0
  %i.azn = shufflevector <2 x float> %i.azm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azo = fmul <2 x float> %i.l, %i.azn
  %i.azp = insertelement <2 x float> poison, float %.sroa.332577.0.copyload, i64 0
  %i.azq = shufflevector <2 x float> %i.azp, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.azr = fmul <2 x float> %i.azq, %i.aze
  %i.azs = shufflevector <16 x float> %i.j, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.azt = shufflevector <2 x float> %i.aze, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.azu = fmul <2 x float> %i.azs, %i.azt
  %i.azv = fadd <2 x float> %i.azr, %i.azu
  %i.azw = fadd <2 x float> %i.azo, %i.azv
  %i.azx = fsub <2 x float> %.sroa.01334.5, %i.azw
  %i.azy = fmul float %i.ig, %i.awx
  %i.azz = fsub float %.sroa.191361.42655, %i.azy
  store <2 x float> %i.ayt, ptr %i.aq, align 4, !tbaa !90
  store float %i.azz, ptr %.sroa.191361.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.azx, ptr %i.bt, align 4, !tbaa !90
  store float %i.azl, ptr %.sroa.221347.0..sroa_idx, align 4, !tbaa !90
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %b3Solve2.exit
  %i.baa = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !120
  %i.bac = and i32 %i.bab, 4096
  %.not1502 = icmp eq i32 %i.bac, 0
  br i1 %.not1502, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store <2 x float> %i.axg, ptr %i.bn, align 4, !tbaa !90
  store float %i.axi, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.aym, ptr %i.bz, align 4, !tbaa !90
  store float %i.ayn, ptr %.sroa.221318.0..sroa_idx, align 4, !tbaa !90
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawPrismaticJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, float noundef %4) local_unnamed_addr #5 !func_sanitize !160 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @96, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0320.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !90 ; 4 uses
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4321.0.copyload = load float, ptr %.sroa.4321.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5322.0.copyload = load <2 x float>, ptr %.sroa.5322.0..sroa_idx, align 4, !tbaa !90 ; 5 uses
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6323.0.copyload = load <2 x float>, ptr %.sroa.6323.0..sroa_idx, align 4, !tbaa !90 ; 5 uses
  %.sroa.5311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5311.0.copyload = load float, ptr %.sroa.5311.0..sroa_idx, align 8
  %.sroa.6312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6312.0.copyload = load <2 x float>, ptr %.sroa.6312.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8314.0.copyload = load <2 x float>, ptr %.sroa.8314.0..sroa_idx, align 4 ; 8 uses
  %.sroa.356.8.vec.extract60.i = extractelement <2 x float> %.sroa.8314.0.copyload, i64 0 ; 2 uses
  %.sroa.3.8.vec.extract51.i = extractelement <2 x float> %.sroa.6323.0.copyload, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.6312.0.copyload, i64 1 ; 3 uses
  %.sroa.0.4.vec.extract8.i.i = extractelement <2 x float> %.sroa.5322.0.copyload, i64 1 ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5322.0.copyload, i64 0
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6312.0.copyload, i64 0 ; 2 uses
  %i.g = fmul float %.sroa.0.4.vec.extract8.i.i, %.sroa.09.0.vec.extract.i.i
  %i.h = fmul float %.sroa.0.0.vec.extract.i.i, %.sroa.09.4.vec.extract13.i.i
  %i.i = fsub float %i.g, %i.h
  %.sroa.356.12.vec.extract62.i = extractelement <2 x float> %.sroa.8314.0.copyload, i64 1 ; 2 uses
  %i.j = fmul float %.sroa.3.8.vec.extract51.i, %.sroa.356.12.vec.extract62.i
  %i.k = fadd float %i.i, %i.j
  %.sroa.3.12.vec.extract53.i = extractelement <2 x float> %.sroa.6323.0.copyload, i64 1 ; 2 uses
  %i.l = fmul float %.sroa.3.12.vec.extract53.i, %.sroa.356.8.vec.extract60.i
  %i.m = fadd float %i.l, %i.k                    ; 4 uses
  %i.n = fmul float %.sroa.3.12.vec.extract53.i, %.sroa.356.12.vec.extract62.i
end_hunk_3
