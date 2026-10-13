Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/prismatic_joint?download=true
inline.NumInlined: 265
inline.NumDeleted: 34
begin_hunk_0_@b3PrismaticJoint_GetSpeed:bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.m) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83   ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.u = shl nsw i64 %i.s, 7
  %i.v = ptrtoint ptr %i.k to i64, !nosanitize !10 ; 6 uses
  %i.w = add i64 %i.u, %i.v, !nosanitize !10      ; 3 uses
  %i.x = icmp ne ptr %i.k, null, !nosanitize !10  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  %i.z = xor i1 %i.x, %i.y
  %i.aa = icmp uge i64 %i.w, %i.v, !nosanitize !10
  %i.ab = icmp slt i32 %i.r, 0
  %i.ac = xor i1 %i.ab, %i.aa
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !10
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @42, i64 %i.v, i64 %i.w) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nsw i64 %i.ag, 7
  %i.ai = add i64 %i.ah, %i.v, !nosanitize !10    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = xor i1 %i.x, %i.aj
  %i.al = icmp uge i64 %i.ai, %i.v, !nosanitize !10
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
  %.sroa.0166.0.copyload = load <2 x float>, ptr %i.az, align 4, !tbaa !90 ; 3 uses
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %.sroa.5168.0.copyload = load <2 x float>, ptr %.sroa.5168.0..sroa_idx, align 4, !tbaa !90 ; 5 uses
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
  %i.ce = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.bi, i64 0
  %.sroa.09.4.vec.extract13.i = extractelement <2 x float> %.sroa.064.0, i64 1
  %.sroa.09.4.vec.extract13.i279 = extractelement <2 x float> %.sroa.067.0, i64 1
  %i.cf = shufflevector <2 x float> %.sroa.0121.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.2122.0.copyload, i64 2
  %i.ci = shufflevector <2 x float> %.sroa.0119.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 3
  %i.ck = insertelement <4 x float> %i.cj, float %.sroa.2120.0.copyload, i64 2
  %i.cl = fsub <4 x float> %i.ch, %i.ck           ; 4 uses
  %i.cm = shufflevector <2 x float> %.sroa.0140.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float -1.000000e+00, i64 3
  %i.co = insertelement <4 x float> %i.cn, float %.sroa.2141.0.copyload, i64 1
  %i.cp = shufflevector <2 x float> %.sroa.0138.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.cq = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.cr = insertelement <4 x float> %i.cq, float %.sroa.2139.0.copyload, i64 1
  %i.cs = fsub <4 x float> %i.co, %i.cr           ; 4 uses
  %i.ct = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x float> %i.ct, float %.sroa.2104.0.copyload, i64 1
  %i.cv = shufflevector <2 x float> %.sroa.0101.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %.sroa.2102.0.copyload, i64 1
  %i.cx = fsub <2 x float> %i.cu, %i.cw
  %i.cy = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cz = insertelement <4 x float> %i.cy, float 1.000000e+00, i64 3
  %i.da = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.db = fmul <4 x float> %i.cz, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison> ; 3 uses
  %i.dd = insertelement <4 x float> %i.dc, float -0.000000e+00, i64 3
  %i.de = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.df = fmul <4 x float> %i.dd, %i.de
  %i.dg = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> %.sroa.0166.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3 ; 2 uses
  %i.di = insertelement <4 x float> %i.cs, float 1.000000e+00, i64 3
  %i.dj = fmul <4 x float> %i.dh, %i.di
  %i.dk = fsub <4 x float> %i.df, %i.dj
  %i.dl = fadd <4 x float> %i.db, %i.dk           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0103.0.copyload, %.sroa.0101.0.copyload
  %i.dm = insertelement <4 x float> %i.dg, float 1.000000e+00, i64 3
  %i.dn = fmul <4 x float> %i.dm, %i.dl
  %i.do = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.dp = insertelement <4 x float> %i.do, float 0.000000e+00, i64 3
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.dr = fmul <4 x float> %i.dp, %i.dq
  %i.ds = fsub <4 x float> %i.dn, %i.dr
  %i.dt = fmul <4 x float> %i.ds, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.du = fadd <4 x float> %i.cs, %i.dt           ; 5 uses
  %i.dv = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %i.bk, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dw = fmul <4 x float> %i.dv, %i.cl           ; 2 uses
  %i.dx = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.dy = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ea = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.eb = fmul <4 x float> %i.dz, %i.ea           ; 2 uses
  %i.ec = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %.sroa.0164.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ef = fmul <4 x float> %i.ed, %i.ee
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %i.bk, i64 0
  %i.eg = shufflevector <2 x float> %i.bk, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.eh = fmul <2 x float> %i.eg, <float 1.000000e+00, float 0.000000e+00>
  %i.ei = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.eb, <4 x float> %i.ei, <2 x i32> <i32 3, i32 4>
  %i.ek = fmul <2 x float> %i.ej, <float 1.000000e+00, float 0.000000e+00>
  %i.el = fsub <2 x float> %i.eh, %i.ek
  %i.em = shufflevector <4 x float> %i.dw, <4 x float> %i.ei, <2 x i32> <i32 3, i32 5>
  %i.en = fadd <2 x float> %i.em, %i.el           ; 3 uses
  %i.eo = fmul <2 x float> %i.bi, %i.en           ; 2 uses
  %shift = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop324 = fsub <2 x float> %i.eo, %shift
  %i.ep = shufflevector <2 x float> %foldExtExtBinop324, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %shift326 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327 = fmul <2 x float> %i.bk, %shift326
  %i.eq = extractelement <2 x float> %foldExtExtBinop327, i64 0
  %i.er = fsub <4 x float> %i.eb, %i.ef
  %i.es = fadd <4 x float> %i.dw, %i.er           ; 3 uses
  %i.et = extractelement <4 x float> %i.es, i64 3
  %i.eu = fmul float %.sroa.09.0.vec.extract.i.i, %i.et
  %i.ev = fsub float %i.eq, %i.eu
  %i.ew = fmul <4 x float> %i.ed, %i.es
  %i.ex = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ey = insertelement <4 x float> %i.ex, float %.sroa.2.8.vec.extract65.i, i64 3
  %i.ez = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.fa = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fc = fmul <4 x float> %i.ey, %i.fb
  %i.fd = fsub <4 x float> %i.ew, %i.fc           ; 2 uses
  %i.fe = fmul <4 x float> %i.fd, splat (float 2.000000e+00) ; 2 uses
  %i.ff = insertelement <4 x float> %i.ep, float 1.000000e+00, i64 3
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.fd, <4 x i32> <i32 0, i32 7, i32 poison, i32 3>
  %i.fh = insertelement <4 x float> %i.fg, float %i.ev, i64 2
  %i.fi = fmul <4 x float> %i.fh, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 2 uses
  %i.fj = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fk = fadd <4 x float> %i.fe, %i.fj           ; 5 uses
  %i.fl = fsub <4 x float> %i.fk, %i.du
  %i.fm = extractelement <4 x float> %i.fk, i64 1
  %i.fn = fmul float %i.fm, %.sroa.09.4.vec.extract13.i
  %i.fo = fadd <4 x float> %i.fi, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.fp = extractelement <4 x float> %i.fk, i64 0
  %i.fq = fmul float %i.fp, %.sroa.5.0
  %i.fr = fsub float %i.fn, %i.fq
  %i.fs = shufflevector <4 x float> %i.fe, <4 x float> %i.fi, <4 x i32> <i32 3, i32 6, i32 4, i32 poison>
  %i.ft = insertelement <4 x float> %i.fs, float %i.fr, i64 3
  %i.fu = fadd <4 x float> %i.ft, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.fv = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.fw = fmul <4 x float> %i.fv, %i.fo
  %i.fx = insertelement <4 x float> %i.do, float -0.000000e+00, i64 3
  %i.fy = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fz = fmul <4 x float> %i.fx, %i.fy
  %i.ga = insertelement <4 x float> %i.dc, float 0.000000e+00, i64 3
  %i.gb = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.gc = fmul <4 x float> %i.ga, %i.gb
  %i.gd = fsub <4 x float> %i.fz, %i.gc
  %i.ge = fadd <4 x float> %i.fw, %i.gd           ; 2 uses
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gg = fmul <4 x float> %i.dh, %i.gf
  %i.gh = shufflevector <4 x float> %i.dc, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gi = fmul <4 x float> %i.gh, %i.ge
  %i.gj = fsub <4 x float> %i.gi, %i.gg
  %i.gk = fmul <4 x float> %i.gj, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.gl = shufflevector <2 x float> %i.cx, <2 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gn = fadd <4 x float> %i.fl, %i.gm
  %i.go = fadd <4 x float> %i.gk, %i.fu           ; 3 uses
  %i.gp = extractelement <4 x float> %i.du, i64 1
  %i.gq = fmul float %i.gp, %.sroa.09.4.vec.extract13.i279
  %i.gr = extractelement <4 x float> %i.du, i64 0
  %i.gs = fmul float %i.gr, %.sroa.6.0
  %i.gt = fsub float %i.gq, %i.gs
  %.sroa.07.0.vec.extract.i287 = extractelement <2 x float> %.sroa.075.0, i64 0
  %i.gu = fadd float %.sroa.07.0.vec.extract.i287, %i.gt
  %i.gv = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gw = insertelement <4 x float> %i.gv, float 1.000000e+00, i64 3
  %i.gx = insertelement <4 x float> %i.gw, float %.sroa.6.0, i64 0
  %i.gy = fmul <4 x float> %i.go, %i.gx
  %i.gz = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.ha = insertelement <4 x float> %i.gz, float %i.gu, i64 3
  %i.hb = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float 1.000000e+00, i64 3
  %i.hd = insertelement <4 x float> %i.hc, float %.sroa.6.0, i64 2
  %i.he = fmul <4 x float> %i.ha, %i.hd
  %i.hf = fsub <4 x float> %i.gy, %i.he
  %i.hg = fmul <4 x float> %i.gn, %i.hf           ; 4 uses
  %shift329 = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop330 = fadd <4 x float> %shift329, %i.hg
  %shift332 = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop333 = fadd <4 x float> %shift332, %foldExtExtBinop330
  %i.hh = extractelement <4 x float> %foldExtExtBinop333, i64 0
  %i.hi = extractelement <4 x float> %i.hg, i64 3
  %i.hj = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.hk = shufflevector <2 x float> %.sroa.064.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hl = insertelement <2 x float> %i.hk, float %.sroa.5.0, i64 0
  %i.hm = fmul <2 x float> %i.hj, %i.hl
  %i.hn = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ho = fmul <2 x float> %i.hn, %.sroa.064.0
  %i.hp = fsub <2 x float> %i.hm, %i.ho
  %i.hq = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hr = insertelement <2 x float> %i.hq, float %.sroa.573.0, i64 1
  %i.hs = fadd <2 x float> %i.hr, %i.hp
  %i.ht = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.hu = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hv = insertelement <2 x float> %i.hu, float %.sroa.6.0, i64 0
  %i.hw = fmul <2 x float> %i.ht, %i.hv
  %i.hx = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.hy = fmul <2 x float> %i.hx, %.sroa.067.0
  %i.hz = fsub <2 x float> %i.hw, %i.hy
  %i.ia = shufflevector <2 x float> %.sroa.075.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ib = insertelement <2 x float> %i.ia, float %.sroa.577.0, i64 1
  %i.ic = fadd <2 x float> %i.ib, %i.hz
  %i.id = fsub <2 x float> %i.hs, %i.ic
  %i.ie = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.if = fmul <2 x float> %i.ie, %i.id           ; 2 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0
  %i.ih = fadd float %i.hi, %i.ig
  %i.ii = extractelement <2 x float> %i.if, i64 1
  %i.ij = fadd float %i.ii, %i.ih
  %i.ik = fadd float %i.hh, %i.ij
  ret float %i.ik
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
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
end_hunk_0
begin_hunk_1_@b3SolvePrismaticJoint:bb.a
  %.not1501 = icmp eq i32 %i.bbl, 0
  br i1 %.not1501, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %b3Solve2.exit
  %i.bbm = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbn = fmul <2 x float> %i.bbm, %i.azy
  %i.bbo = fsub <2 x float> %.sroa.01350.42653, %i.bbn
  %i.bbp = extractelement <16 x float> %i.l, i64 8
  %i.bbq = fmul float %i.atb, %i.azn
  %foldExtExtBinop2764 = fmul <2 x float> %i.asr, %i.azk
  %i.bbr = extractelement <2 x float> %foldExtExtBinop2764, i64 1
  %i.bbs = fadd float %i.bbq, %i.bbr              ; 2 uses
  %i.bbt = fmul float %i.bbp, %i.bbs
  %i.bbu = shufflevector <2 x float> %i.arz, <2 x float> %i.asq, <2 x i32> <i32 3, i32 1>
  %i.bbv = shufflevector <2 x float> %i.azk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bbw = fmul <2 x float> %i.bbu, %i.bbv
  %i.bbx = shufflevector <2 x float> %i.asm, <2 x float> %i.asp, <2 x i32> <i32 1, i32 3>
  %i.bby = fmul <2 x float> %i.bbx, %i.azk
  %i.bbz = fadd <2 x float> %i.bbw, %i.bby        ; 4 uses
  %i.bca = extractelement <2 x float> %i.bbz, i64 1
  %i.bcb = fmul float %.sroa.232567.0.copyload, %i.bca
  %i.bcc = extractelement <2 x float> %i.bbz, i64 0
  %i.bcd = fmul float %.sroa.532597.0.copyload, %i.bcc
  %i.bce = fadd float %i.bcb, %i.bcd
  %i.bcf = fadd float %i.bbt, %i.bce
  %i.bcg = fsub float %.sroa.221347.5, %i.bcf
  %i.bch = insertelement <2 x float> poison, float %i.bbs, i64 0
  %i.bci = shufflevector <2 x float> %i.bch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcj = fmul <2 x float> %i.n, %i.bci
  %i.bck = insertelement <2 x float> poison, float %.sroa.332577.0.copyload, i64 0
  %i.bcl = shufflevector <2 x float> %i.bck, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.bcm = fmul <2 x float> %i.bcl, %i.bbz
  %i.bcn = shufflevector <16 x float> %i.l, <16 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bco = shufflevector <2 x float> %i.bbz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bcp = fmul <2 x float> %i.bcn, %i.bco
  %i.bcq = fadd <2 x float> %i.bcm, %i.bcp
  %i.bcr = fadd <2 x float> %i.bcj, %i.bcq
  %i.bcs = fsub <2 x float> %.sroa.01334.5, %i.bcr
  %i.bct = fmul float %i.ig, %i.azs
  %i.bcu = fsub float %.sroa.191361.42655, %i.bct
  store <2 x float> %i.bbo, ptr %i.aq, align 4, !tbaa !90
  store float %i.bcu, ptr %.sroa.191361.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.bcs, ptr %i.bt, align 4, !tbaa !90
  store float %i.bcg, ptr %.sroa.221347.0..sroa_idx, align 4, !tbaa !90
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %b3Solve2.exit
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %i.bcw = load i32, ptr %i.bcv, align 4, !tbaa !120
  %i.bcx = and i32 %i.bcw, 4096
  %.not1502 = icmp eq i32 %i.bcx, 0
  br i1 %.not1502, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store <2 x float> %i.bab, ptr %i.bn, align 4, !tbaa !90
  store float %i.bad, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.bbh, ptr %i.bz, align 4, !tbaa !90
  store float %i.bbi, ptr %.sroa.221318.0..sroa_idx, align 4, !tbaa !90
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
  %foldExtExtBinop = fmul <2 x float> %.sroa.5322.0.copyload, %.sroa.6312.0.copyload
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = fmul float %.sroa.0.4.vec.extract8.i.i, %.sroa.09.4.vec.extract13.i.i
  %i.q = fadd float %i.o, %i.p
  %foldExtExtBinop332 = fmul <2 x float> %.sroa.6323.0.copyload, %.sroa.8314.0.copyload
  %i.r = extractelement <2 x float> %foldExtExtBinop332, i64 0
  %i.s = fadd float %i.r, %i.q
  %i.t = fsub float %i.n, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %2, align 8
  %foldExtExtBinop334 = fmul <2 x float> %.sroa.0320.0.copyload, %.sroa.8314.0.copyload
  %i.v = extractelement <2 x float> %foldExtExtBinop334, i64 0
  %i.w = fmul float %.sroa.4321.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.x = fsub float %i.v, %i.w
  %i.y = shufflevector <2 x float> %.sroa.0320.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %.sroa.4321.0.copyload, i64 1 ; 2 uses
  %i.aa = fmul <2 x float> %i.z, %.sroa.6312.0.copyload
  %i.ab = shufflevector <2 x float> %.sroa.6312.0.copyload, <2 x float> %.sroa.8314.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ac = fmul <2 x float> %.sroa.0320.0.copyload, %i.ab
  %i.ad = fsub <2 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = insertelement <2 x float> %i.y, float %.sroa.4321.0.copyload, i64 0
  %i.af = shufflevector <2 x float> %.sroa.8314.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ag = fmul <2 x float> %i.ae, %i.af
  %i.ah = fmul <2 x float> %i.z, %i.af
  %i.ai = fadd <2 x float> %i.ag, %i.ad           ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = insertelement <2 x float> %i.aj, float %i.x, i64 0
  %i.al = fadd <2 x float> %i.ah, %i.ak           ; 2 uses
  %i.am = fmul <2 x float> %i.ab, %i.ai
  %i.an = shufflevector <2 x float> %.sroa.8314.0.copyload, <2 x float> %.sroa.6312.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ao = fmul <2 x float> %i.an, %i.al
  %i.ap = fsub <2 x float> %i.am, %i.ao
  %foldExtExtBinop336 = fmul <2 x float> %.sroa.6312.0.copyload, %i.al
  %foldExtExtBinop338 = fmul <2 x float> %.sroa.6312.0.copyload, %i.ai
  %shift = shufflevector <2 x float> %foldExtExtBinop338, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop340 = fsub <2 x float> %foldExtExtBinop336, %shift
  %i.aq = extractelement <2 x float> %foldExtExtBinop340, i64 0
  %i.ar = fmul <2 x float> %i.ap, splat (float 2.000000e+00)
  %i.as = fadd <2 x float> %.sroa.0320.0.copyload, %i.ar
  %i.at = fmul float %i.aq, 2.000000e+00
  %i.au = fadd float %.sroa.4321.0.copyload, %i.at
  %i.av = fadd <2 x float> %i.u, %i.as            ; 8 uses
  %i.aw = fadd float %.sroa.5311.0.copyload, %i.au ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0300.0.copyload = load <2 x float>, ptr %i.ax, align 4, !tbaa !90 ; 4 uses
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.4301.0.copyload = load float, ptr %.sroa.4301.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.ay = load <2 x float>, ptr %3, align 8
  %.sroa.5292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5292.0.copyload = load float, ptr %.sroa.5292.0..sroa_idx, align 8
  %.sroa.6293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6293.0.copyload = load <2 x float>, ptr %.sroa.6293.0..sroa_idx, align 4 ; 6 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 4 uses
  %i.az = fmul float %i.m, %i.m                   ; 2 uses
  %i.ba = fmul float %i.m, %i.t                   ; 2 uses
  %i.bb = fmul float %.sroa.3.8.vec.extract51.i, %.sroa.09.4.vec.extract13.i.i
  %i.bc = fmul float %.sroa.0.4.vec.extract8.i.i, %.sroa.356.8.vec.extract60.i
  %foldExtExtBinop342 = fmul <2 x float> %.sroa.5322.0.copyload, %.sroa.8314.0.copyload
  %foldExtExtBinop344 = fmul <2 x float> %.sroa.6323.0.copyload, %.sroa.6312.0.copyload
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> %foldExtExtBinop342, <2 x i32> <i32 0, i32 2>
  %i.bf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> %foldExtExtBinop344, <2 x i32> <i32 0, i32 2>
  %i.bh = fsub <2 x float> %i.be, %i.bg
  %i.bi = fmul <2 x float> %.sroa.5322.0.copyload, %i.af
  %i.bj = fadd <2 x float> %i.bi, %i.bh
  %i.bk = shufflevector <2 x float> %.sroa.6323.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x float> %i.bk, %.sroa.6312.0.copyload
  %i.bm = fadd <2 x float> %i.bl, %i.bj           ; 6 uses
  %i.bn = insertelement <2 x float> poison, float %i.t, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = fmul <2 x float> %i.bo, %i.bp           ; 4 uses
  %i.br = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bm           ; 4 uses
  %i.bu = extractelement <2 x float> %i.bm, i64 0
  %i.bv = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  %i.bw = fmul float %i.bu, %i.bv                 ; 2 uses
  %i.bx = fmul float %i.bv, %i.bv                 ; 2 uses
  %foldExtExtBinop346 = fmul <2 x float> %i.bm, %i.bm
  %i.by = extractelement <2 x float> %foldExtExtBinop346, i64 0 ; 2 uses
  %i.bz = fadd float %i.az, %i.bx
  %i.ca = fmul float %i.bz, 2.000000e+00
  %i.cb = fsub float 1.000000e+00, %i.ca          ; 2 uses
  %i.cc = fadd float %i.ba, %i.bw
  %i.cd = fmul float %i.cc, 2.000000e+00          ; 2 uses
  %foldExtExtBinop348 = fsub <2 x float> %i.bt, %i.bq
  %i.ce = extractelement <2 x float> %foldExtExtBinop348, i64 0
  %i.cf = fmul float %i.ce, 2.000000e+00          ; 4 uses
  %i.cg = fadd <2 x float> %i.bt, %i.bq
  %i.ch = fsub <2 x float> %i.bt, %i.bq
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cj = fmul <2 x float> %i.ci, splat (float 2.000000e+00)
  %5 = fsub float %i.bw, %i.ba
  %i.ck = fadd float %i.az, %i.by
  %foldExtExtBinop350 = fadd <2 x float> %i.bt, %i.bq
  %i.cl = fadd float %i.by, %i.bx
  %i.cm = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %5, i64 1
  %i.co = shufflevector <2 x float> %foldExtExtBinop350, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cq = insertelement <4 x float> %i.cp, float %i.cl, i64 3
  %i.cr = fmul <4 x float> %i.cq, splat (float 2.000000e+00) ; 4 uses
  %i.cs = extractelement <4 x float> %i.cr, i64 0
  %i.ct = fsub float 1.000000e+00, %i.cs
  %i.cu = extractelement <4 x float> %i.cr, i64 3
  %i.cv = fsub float 1.000000e+00, %i.cu
  %i.cw = fmul float %4, 2.000000e-01             ; 3 uses
  %i.cx = icmp ne ptr %0, null, !nosanitize !10
  %i.cy = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.cz = and i64 %i.cy, 7, !nosanitize !10
  %i.da = icmp eq i64 %i.cz, 0, !nosanitize !10
  %i.db = and i1 %i.cx, %i.da, !nosanitize !10
  br i1 %i.db, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %i.cy) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !163 ; 4 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -8
  %i.df = load i32, ptr %i.de, align 4, !nosanitize !10
  %i.dg = icmp eq i32 %i.df, -1056584962, !nosanitize !10
  br i1 %i.dg, label %bb.f, label %bb.h, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.dh = getelementptr i8, ptr %i.dd, i64 -4
  %i.di = load i32, ptr %i.dh, align 8, !nosanitize !10
  %i.dj = icmp eq i32 %i.di, -341714709, !nosanitize !10
  br i1 %i.dj, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.dk = ptrtoint ptr %i.dd to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @100, i64 %i.dk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.dm = extractelement <4 x float> %i.cr, i64 2
  %i.dn = fmul float %i.cw, %i.dm
  %i.do = fadd float %i.aw, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.ct, i64 1
  %i.dt = fmul <2 x float> %i.dq, %i.ds
  %i.du = fadd <2 x float> %i.av, %i.dt
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !164
  tail call void %i.dd(<2 x float> %i.av, float %i.aw, <2 x float> %i.du, float %i.do, i32 noundef 32768, ptr noundef %i.dv) #7
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !163 ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8
  %i.dy = load i32, ptr %i.dx, align 4, !nosanitize !10
  %i.dz = icmp eq i32 %i.dy, -1056584962, !nosanitize !10
  br i1 %i.dz, label %bb.i, label %bb.k, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.ea = getelementptr i8, ptr %i.dw, i64 -4
  %i.eb = load i32, ptr %i.ea, align 8, !nosanitize !10
  %i.ec = icmp eq i32 %i.eb, -341714709, !nosanitize !10
  br i1 %i.ec, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.ed = ptrtoint ptr %i.dw to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @101, i64 %i.ed) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ee = fmul <2 x float> %i.dq, %i.cj
  %i.ef = fmul float %i.cw, %i.cv
  %i.eg = fadd <2 x float> %i.av, %i.ee
  %i.eh = fadd float %i.aw, %i.ef
  %i.ei = load ptr, ptr %i.dl, align 8, !tbaa !164
  tail call void %i.dw(<2 x float> %i.av, float %i.aw, <2 x float> %i.eg, float %i.eh, i32 noundef 255, ptr noundef %i.ei) #7
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 413
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !121 ; 3 uses
  %i.el = icmp ult i8 %i.ek, 2
  br i1 %i.el, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.em = zext i8 %i.ek to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @102, i64 %i.em) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.en = trunc nuw i8 %i.ek to i1
  br i1 %i.en, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !123 ; 2 uses
  %i.eq = fmul float %i.cf, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.cd, i64 1 ; 2 uses
  %i.et = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.es, %i.eu
  %i.ew = fadd <2 x float> %i.av, %i.ev           ; 2 uses
  %i.ex = fadd float %i.aw, %i.eq                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !122 ; 2 uses
  %i.fa = fmul float %i.cf, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.es, %i.fc
  %i.fe = fadd <2 x float> %i.av, %i.fd           ; 2 uses
  %i.ff = fadd float %i.aw, %i.fa                 ; 2 uses
  %i.fg = load ptr, ptr %i.dc, align 8, !tbaa !163 ; 4 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = load i32, ptr %i.fh, align 4, !nosanitize !10
  %i.fj = icmp eq i32 %i.fi, -1056584962, !nosanitize !10
  br i1 %i.fj, label %bb.o, label %bb.q, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.fk = getelementptr i8, ptr %i.fg, i64 -4
  %i.fl = load i32, ptr %i.fk, align 8, !nosanitize !10
  %i.fm = icmp eq i32 %i.fl, -341714709, !nosanitize !10
  br i1 %i.fm, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.fn = ptrtoint ptr %i.fg to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @103, i64 %i.fn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.fo = load ptr, ptr %i.dl, align 8, !tbaa !164
  tail call void %i.fg(<2 x float> %i.ew, float %i.ex, <2 x float> %i.fe, float %i.ff, i32 noundef 16753920, ptr noundef %i.fo) #7
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !165 ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 -8
  %i.fs = load i32, ptr %i.fr, align 4, !nosanitize !10
  %i.ft = icmp eq i32 %i.fs, -1056584962, !nosanitize !10
  br i1 %i.ft, label %bb.r, label %bb.t, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.fu = getelementptr i8, ptr %i.fq, i64 -4
  %i.fv = load i32, ptr %i.fu, align 8, !nosanitize !10
  %i.fw = icmp eq i32 %i.fv, -127790077, !nosanitize !10
  br i1 %i.fw, label %bb.t, label %bb.s, !prof !11, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  %i.fx = ptrtoint ptr %i.fq to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @105, i64 %i.fx) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.fy = load ptr, ptr %i.dl, align 8, !tbaa !164
  tail call void %i.fq(<2 x float> %i.ew, float %i.ex, float noundef 1.000000e+01, i32 noundef 32768, ptr noundef %i.fy) #7
  %i.fz = load ptr, ptr %i.fp, align 8, !tbaa !165 ; 4 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -8
  %i.gb = load i32, ptr %i.ga, align 4, !nosanitize !10
  %i.gc = icmp eq i32 %i.gb, -1056584962, !nosanitize !10
  br i1 %i.gc, label %bb.u, label %bb.w, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  %i.gd = getelementptr i8, ptr %i.fz, i64 -4
  %i.ge = load i32, ptr %i.gd, align 8, !nosanitize !10
  %i.gf = icmp eq i32 %i.ge, -127790077, !nosanitize !10
  br i1 %i.gf, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.gg = ptrtoint ptr %i.fz to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @106, i64 %i.gg) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.gh = load ptr, ptr %i.dl, align 8, !tbaa !164
  tail call void %i.fz(<2 x float> %i.fe, float %i.ff, float noundef 1.000000e+01, i32 noundef 16711680, ptr noundef %i.gh) #7
  br label %bb.ab

bb.x:                                             ; preds = %bb.m
  %i.gi = fmul float %4, -5.000000e-01            ; 2 uses
  %i.gj = fmul float %i.gi, %i.cf
  %i.gk = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.cd, i64 1 ; 2 uses
  %i.go = fmul <2 x float> %i.gl, %i.gn
  %i.gp = fadd <2 x float> %i.av, %i.go
  %i.gq = fadd float %i.aw, %i.gj
  %i.gr = fmul float %4, 5.000000e-01             ; 2 uses
  %i.gs = fmul float %i.gr, %i.cf
  %i.gt = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x float> %i.gu, %i.gn
  %i.gw = fadd <2 x float> %i.av, %i.gv
  %i.gx = fadd float %i.aw, %i.gs
  %i.gy = load ptr, ptr %i.dc, align 8, !tbaa !163 ; 4 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 -8
  %i.ha = load i32, ptr %i.gz, align 4, !nosanitize !10
  %i.hb = icmp eq i32 %i.ha, -1056584962, !nosanitize !10
  br i1 %i.hb, label %bb.y, label %bb.aa, !nosanitize !10

end_hunk_1
