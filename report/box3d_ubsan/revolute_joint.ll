Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/revolute_joint?download=true
inline.NumInlined: 226
inline.NumDeleted: 34
begin_hunk_0_@b3RevoluteJoint_SetMaxMotorTorque:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 228
  store float %1, ptr %i.r, align 4, !tbaa !75
  ret void
}

declare void @b3RecWrite_RevoluteJointSetMaxMotorTorque(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3RevoluteJoint_GetMaxMotorTorque(i64 %0) local_unnamed_addr #0 !func_sanitize !77 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 5) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.h = load float, ptr %i.g, align 4, !tbaa !75
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define float @b3RevoluteJoint_GetMotorTorque(i64 %0) local_unnamed_addr #0 !func_sanitize !77 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 5) #7 ; 3 uses
  %i.e = icmp ne ptr %i.c, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %i.d, null, !nosanitize !10
  %i.k = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @39, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.p = load float, ptr %i.o, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.r = load float, ptr %i.q, align 4, !tbaa !75
  %i.s = fmul float %i.p, %i.r
  ret float %i.s
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetRevoluteJointForce(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !89 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null, !nosanitize !10
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !10
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !10
  %i.j = and i1 %i.f, %i.i, !nosanitize !10
  br i1 %i.j, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.g) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.l = load float, ptr %i.k, align 8, !tbaa !88 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.m, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.n = insertelement <2 x float> poison, float %i.l, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %.sroa.03.0.copyload
  %i.q = fmul float %i.l, %.sroa.24.0.copyload
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.p, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.q, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetRevoluteJointTorque(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !89 {
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @42, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.r = load <2 x float>, ptr %i.p, align 4      ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 6 uses
  %i.u = load <2 x float>, ptr %i.q, align 4      ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.w = load <2 x float>, ptr %i.v, align 4      ; 6 uses
  %i.x = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %shift = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.w
  %i.y = fmul <2 x float> %i.x, %i.u              ; 2 uses
  %shift299 = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop300 = fsub <2 x float> %shift299, %foldExtExtBinop
  %foldExtExtBinop302 = fadd <2 x float> %i.y, %foldExtExtBinop300
  %shift304 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop305 = fmul <2 x float> %i.r, %shift304
  %foldExtExtBinop307 = fsub <2 x float> %foldExtExtBinop302, %foldExtExtBinop305 ; 2 uses
  %i.z = extractelement <2 x float> %foldExtExtBinop307, i64 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.ab = fmul float %i.z, 0.000000e+00
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !92
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !93
  %i.aj = load float, ptr %i.af, align 4, !tbaa !94
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !95
  %i.al = insertelement <2 x float> poison, float %i.ab, i64 0 ; 2 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> %foldExtExtBinop307, <2 x i32> <i32 0, i32 2>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ap = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.aq = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ar = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.as = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = shufflevector <2 x float> %i.u, <2 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = fmul <4 x float> %i.as, %i.at           ; 4 uses
  %shift309 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop310 = fadd <4 x float> %i.au, %shift309
  %shift312 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop313 = fadd <4 x float> %shift312, %foldExtExtBinop310
  %shift315 = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop316 = fadd <4 x float> %shift315, %foldExtExtBinop313 ; 2 uses
  %i.av = extractelement <4 x float> %foldExtExtBinop316, i64 0 ; 2 uses
  %i.aw = fmul float %i.av, 0.000000e+00          ; 2 uses
  %i.ax = shufflevector <2 x float> %i.w, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ay = fmul <2 x float> %i.r, %i.ax
  %i.az = shufflevector <2 x float> %i.t, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ba = fmul <2 x float> %i.az, %i.u
  %i.bb = fsub <2 x float> %i.ay, %i.ba
  %i.bc = shufflevector <2 x float> %i.u, <2 x float> %i.w, <2 x i32> <i32 1, i32 2>
  %i.bd = fmul <2 x float> %i.aq, %i.bc
  %i.be = fadd <2 x float> %i.bd, %i.bb
  %i.bf = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = fmul <2 x float> %i.bf, %i.bg
  %i.bi = fsub <2 x float> %i.be, %i.bh           ; 4 uses
  %i.bj = fmul <2 x float> %i.bi, <float 0.000000e+00, float poison> ; 2 uses
  %3 = extractelement <2 x float> %i.bi, i64 1    ; 2 uses
  %4 = fmul float %3, 0.000000e+00                ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %5 = fsub float %i.bk, %4
  %i.bl = fadd float %i.av, %5
  %i.bm = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <2 x i32> <i32 2, i32 0>
  %i.bn = fsub <2 x float> %i.am, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.aw, i64 0 ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fadd <2 x float> %i.bp, %i.bn           ; 4 uses
  %6 = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %7 = insertelement <2 x float> %6, float %4, i64 1
  %i.br = fsub <2 x float> %7, %i.an
  %i.bs = shufflevector <4 x float> %foldExtExtBinop316, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bu = fadd <2 x float> %i.bt, %i.br           ; 4 uses
  %8 = fsub float %i.bk, %3
  %i.bv = fadd float %i.aw, %8
  %i.bw = fmul <2 x float> %i.ao, %i.bu
  %i.bx = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bv, i64 1 ; 4 uses
  %i.bz = fmul <2 x float> %i.ap, %i.by
  %i.ca = fsub <2 x float> %i.bw, %i.bz
  %i.cb = fmul <2 x float> %i.aq, %i.bq
  %i.cc = fadd <2 x float> %i.cb, %i.ca           ; 2 uses
  %i.cd = fmul <2 x float> %i.ar, %i.by
  %i.ce = fmul <2 x float> %i.ao, %i.bq
  %i.cf = fsub <2 x float> %i.cd, %i.ce
  %i.cg = fmul <2 x float> %i.aq, %i.bu
  %i.ch = fadd <2 x float> %i.cg, %i.cf           ; 2 uses
  %i.ci = fmul <2 x float> %i.ap, %i.bq
  %i.cj = fmul <2 x float> %i.ar, %i.bu
  %i.ck = fsub <2 x float> %i.ci, %i.cj
  %i.cl = fmul <2 x float> %i.aq, %i.by
  %i.cm = fadd <2 x float> %i.cl, %i.ck           ; 2 uses
  %i.cn = fmul <2 x float> %i.ap, %i.cc
  %i.co = fmul <2 x float> %i.ar, %i.ch
  %i.cp = fsub <2 x float> %i.cn, %i.co
  %i.cq = fmul <2 x float> %i.cp, splat (float 2.000000e+00)
  %i.cr = fadd <2 x float> %i.by, %i.cq
  %i.cs = fmul <2 x float> %i.cr, splat (float 5.000000e-01) ; 3 uses
  %i.ct = fmul <2 x float> %i.ar, %i.cm
  %i.cu = fmul <2 x float> %i.ao, %i.cc
  %i.cv = fsub <2 x float> %i.ct, %i.cu
  %i.cw = fmul <2 x float> %i.cv, splat (float 2.000000e+00)
  %i.cx = fadd <2 x float> %i.bu, %i.cw
  %i.cy = fmul <2 x float> %i.cx, splat (float 5.000000e-01) ; 3 uses
  %i.cz = shufflevector <2 x float> %i.cs, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.cz, ptr %i.aa, align 4, !tbaa !96
  %i.da = fmul <2 x float> %i.ao, %i.ch
  %i.db = fmul <2 x float> %i.ap, %i.cm
  %i.dc = fsub <2 x float> %i.da, %i.db
  %i.dd = fmul <2 x float> %i.dc, splat (float 2.000000e+00)
  %i.de = fadd <2 x float> %i.bq, %i.dd
  %i.df = fmul <2 x float> %i.de, splat (float 5.000000e-01) ; 3 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  store float %i.dg, ptr %.sroa.4137.0..sroa_idx, align 4, !tbaa !96
  %i.dh = shufflevector <2 x float> %i.cs, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.dh, ptr %i.ac, align 4, !tbaa !96
  %i.di = extractelement <2 x float> %i.df, i64 1
  store float %i.di, ptr %.sroa.493.0..sroa_idx, align 4, !tbaa !96
  %i.dj = icmp ne ptr %0, null, !nosanitize !10
  %i.dk = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.dl = and i64 %i.dk, 7, !nosanitize !10
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !10
  %i.dn = and i1 %i.dj, %i.dm, !nosanitize !10
  br i1 %i.dn, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.dk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.sroa.219.0.copyload = load float, ptr %.sroa.219.0..sroa_idx, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.do, align 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !97
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !96 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.du = insertelement <2 x float> %i.ds, float %i.dq, i64 1 ; 2 uses
  %i.dv = fmul <2 x float> %i.df, %i.du           ; 2 uses
  %shift318.a = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop319.a = fadd <2 x float> %i.dv, %shift318.a
  %i.dw = extractelement <2 x float> %foldExtExtBinop319.a, i64 0
  %i.dx = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.09.0.vec.extract.i.i185 = extractelement <2 x float> %i.m, i64 0 ; 3 uses
  %.sroa.2.12.vec.extract.i186 = extractelement <2 x float> %i.o, i64 1
  %.sroa.2.8.vec.extract65.i183 = extractelement <2 x float> %i.o, i64 0
  %i.dy = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x float> %i.dy, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ea = shufflevector <2 x float> %i.i, <2 x float> %i.k, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eb = fmul <2 x float> %i.ea, zeroinitializer ; 2 uses
  %shift321.a = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop322.a = fsub <2 x float> %shift321.a, %i.i
  %shift324 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop325 = fadd <2 x float> %shift324, %foldExtExtBinop322.a ; 2 uses
  %foldExtExtBinop327 = fmul <2 x float> %i.i, %foldExtExtBinop325
  %i.ec = fmul <2 x float> %i.i, <float 0.000000e+00, float 1.000000e+00>
  %i.ed = fsub <2 x float> %i.ec, %i.eb
  %i.ee = fadd <2 x float> %i.dz, %i.ed           ; 3 uses
  %foldExtExtBinop329 = fmul <2 x float> %i.i, %i.ee
  %shift331 = shufflevector <2 x float> %foldExtExtBinop329, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop332 = fsub <2 x float> %foldExtExtBinop327, %shift331
  %i.ef = extractelement <2 x float> %foldExtExtBinop332, i64 0
  %i.eg = fmul float %i.ef, 2.000000e+00
  %i.eh = fadd float %i.eg, 1.000000e+00          ; 4 uses
  %i.ei = fmul <2 x float> %i.ea, %i.ee
  %i.ej = shufflevector <2 x float> %i.k, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.ek = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.el = shufflevector <2 x float> %foldExtExtBinop325, <2 x float> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = fsub <2 x float> %i.ei, %i.em
  %i.eo = fmul <2 x float> %i.en, splat (float 2.000000e+00)
  %i.ep = fadd <2 x float> %i.eo, zeroinitializer ; 5 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %foldExtExtBinop334 = fmul <2 x float> %i.o, %i.ep
  %i.er = extractelement <2 x float> %foldExtExtBinop334, i64 0
  %i.es = fmul float %.sroa.09.0.vec.extract.i.i185, %i.eh
  %i.et = fsub float %i.er, %i.es
  %i.eu = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul <2 x float> %i.eu, %i.ep
  %i.ew = extractelement <2 x float> %i.m, i64 1  ; 3 uses
  %i.ex = fmul float %i.ew, %i.eh
  %i.ey = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.ez = fmul float %.sroa.2.8.vec.extract65.i183, %i.ey
  %i.fa = fsub float %i.ex, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.et, i64 1
  %i.fd = fadd <2 x float> %i.ev, %i.fc           ; 3 uses
  %i.fe = fmul <2 x float> %i.dx, %i.fd           ; 2 uses
  %shift336 = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop337 = fsub <2 x float> %shift336, %i.fe
  %i.ff = extractelement <2 x float> %foldExtExtBinop337, i64 0
  %i.fg = fmul float %i.ff, 2.000000e+00
  %i.fh = fadd float %i.eh, %i.fg
  %foldExtExtBinop339 = fmul <2 x float> %i.o, %i.fd
  %i.fi = extractelement <2 x float> %foldExtExtBinop339, i64 0
  %i.fj = fmul float %.sroa.2.12.vec.extract.i186, %i.eh
  %i.fk = fmul float %.sroa.09.0.vec.extract.i.i185, %i.ey
  %i.fl = fmul float %i.ew, %i.eq
  %i.fm = fsub float %i.fk, %i.fl
  %i.fn = fadd float %i.fj, %i.fm                 ; 2 uses
  %i.fo = fmul float %.sroa.09.0.vec.extract.i.i185, %i.fn
  %i.fp = fadd float %i.ah, %i.ai
  %i.fq = fsub float %i.fi, %i.fo
  %i.fr = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.fq, i64 1
  %i.ft = fmul <2 x float> %i.fs, <float 1.000000e+00, float 2.000000e+00>
  %i.fu = insertelement <2 x float> %i.ep, float %i.aj, i64 0
  %i.fv = fadd <2 x float> %i.ft, %i.fu
  %i.fw = shufflevector <2 x float> %i.cy, <2 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fx = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.ak, i64 2
  %i.fy = fsub <4 x float> %i.fw, %i.fx           ; 3 uses
  %i.fz = extractelement <4 x float> %i.fy, i64 2 ; 4 uses
  %i.ga = fmul float %i.fz, %.sroa.219.0.copyload
  %i.gb = fadd float %i.dw, %i.ga
  %i.gc = fmul float %i.fh, %i.fz
  %i.gd = fadd float %i.gc, %i.gb
  %9 = shufflevector <2 x float> %.sroa.018.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %10 = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %10, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 poison, i32 6>
  %12 = shufflevector <4 x float> %11, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ge = fmul <4 x float> %i.fy, %12             ; 4 uses
  %shift341 = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop342 = fadd <4 x float> %i.ge, %shift341
  %shift344 = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop345 = fadd <4 x float> %foldExtExtBinop342, %shift344
  %shift347 = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop348 = fadd <4 x float> %shift347, %foldExtExtBinop345
  %i.gf = extractelement <4 x float> %foldExtExtBinop348, i64 0
  %i.gg = fmul <2 x float> %i.cs, %i.du           ; 2 uses
  %shift350 = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop351 = fadd <2 x float> %i.gg, %shift350
  %i.gh = extractelement <2 x float> %foldExtExtBinop351, i64 0
  %.sroa.0.0.vec.extract.i274 = extractelement <2 x float> %.sroa.018.0.copyload, i64 0
  %i.gi = fmul float %i.fz, %.sroa.0.0.vec.extract.i274
  %i.gj = fadd float %i.gh, %i.gi
  %i.gk = fmul float %i.ew, %i.fn
  %shift353 = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop354 = fmul <2 x float> %i.o, %shift353
  %i.gl = extractelement <2 x float> %foldExtExtBinop354, i64 0
  %i.gm = fsub float %i.gk, %i.gl
  %i.gn = fmul float %i.gm, 2.000000e+00
  %i.go = fadd float %i.eq, %i.gn
  %i.gp = fmul float %i.go, %i.fz
  %i.gq = fadd float %i.gp, %i.gj
  %i.gr = load float, ptr %i.dt, align 8, !tbaa !88 ; 3 uses
  %i.gs = fmul float %i.gq, %i.gr
  %.sroa.05.0.vec.insert.i287 = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gt = fmul float %i.gf, %i.gr
  %.sroa.05.4.vec.insert.i289 = insertelement <2 x float> %.sroa.05.0.vec.insert.i287, float %i.gt, i64 1
  %i.gu = fmul float %i.gd, %i.gr
  %.fca.0.insert.i290 = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.05.4.vec.insert.i289, 0
  %.fca.1.insert.i291 = insertvalue { <2 x float>, float } %.fca.0.insert.i290, float %i.gu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i291
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareRevoluteJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !98 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 4 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @46, i64 %i.i) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 3880
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 4 uses
  %i.o = icmp ne ptr %0, null, !nosanitize !10
  %i.p = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.q = and i64 %i.p, 3, !nosanitize !10
  %i.r = icmp eq i64 %i.q, 0, !nosanitize !10
  %i.s = and i1 %i.o, %i.r, !nosanitize !10
  br i1 %i.s, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @47, i64 %i.p) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !83   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.v ; 3 uses
  %i.x = shl nsw i64 %i.v, 7
  %i.y = ptrtoint ptr %i.n to i64, !nosanitize !10 ; 6 uses
  %i.z = add i64 %i.x, %i.y, !nosanitize !10      ; 3 uses
  %i.aa = icmp ne ptr %i.n, null, !nosanitize !10 ; 3 uses
  %i.ab = icmp eq i64 %i.z, 0
  %i.ac = xor i1 %i.aa, %i.ab
  %i.ad = icmp uge i64 %i.z, %i.y, !nosanitize !10
  %i.ae = icmp slt i32 %i.u, 0
  %i.af = xor i1 %i.ae, %i.ad
  %i.ag = and i1 %i.ac, %i.af, !nosanitize !10
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @48, i64 %i.y, i64 %i.z) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !84 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.aj ; 3 uses
  %i.al = shl nsw i64 %i.aj, 7
  %i.am = add i64 %i.al, %i.y, !nosanitize !10    ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = xor i1 %i.aa, %i.an
  %i.ap = icmp uge i64 %i.am, %i.y, !nosanitize !10
  %i.aq = icmp slt i32 %i.ai, 0
  %i.ar = xor i1 %i.aq, %i.ap
  %i.as = and i1 %i.ao, %i.ar, !nosanitize !10
  br i1 %i.as, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.y, i64 %i.am) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 3920
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !131 ; 4 uses
  %i.av = ptrtoint ptr %i.w to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 7, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.aa, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @51, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !133 ; 2 uses
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [88 x i8], ptr %i.au, i64 %i.bb ; 2 uses
  %i.bd = mul nsw i64 %i.bb, 88
  %i.be = ptrtoint ptr %i.au to i64, !nosanitize !10 ; 6 uses
  %i.bf = add i64 %i.bd, %i.be, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne ptr %i.au, null, !nosanitize !10 ; 3 uses
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = xor i1 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bf, %i.be, !nosanitize !10
  %i.bk = icmp slt i32 %i.ba, 0
  %i.bl = xor i1 %i.bk, %i.bj
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !10
  br i1 %i.bm, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @52, i64 %i.be, i64 %i.bf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !10
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !10
  br i1 %i.bp, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.bn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !133 ; 2 uses
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [88 x i8], ptr %i.au, i64 %i.bs ; 2 uses
  %i.bu = mul nsw i64 %i.bs, 88
  %i.bv = add i64 %i.bu, %i.be, !nosanitize !10   ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = xor i1 %i.bg, %i.bw
  %i.by = icmp uge i64 %i.bv, %i.be, !nosanitize !10
  %i.bz = icmp slt i32 %i.br, 0
  %i.ca = xor i1 %i.bz, %i.by
  %i.cb = and i1 %i.bx, %i.ca, !nosanitize !10
  br i1 %i.cb, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @54, i64 %i.be, i64 %i.bv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !134 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !134 ; 3 uses
  %i.cg = ptrtoint ptr %i.bc to i64, !nosanitize !10 ; 2 uses
  %i.ch = and i64 %i.cg, 7, !nosanitize !10
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !10
  %i.cj = and i1 %i.bg, %i.ci
  br i1 %i.cj, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.cg) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !142 ; 3 uses
  %i.cl = sext i32 %i.cd to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [216 x i8], ptr %i.ck, i64 %i.cl ; 9 uses
  %i.cn = mul nsw i64 %i.cl, 216
end_hunk_0
begin_hunk_1_@b3SolveRevoluteJoint:bb.a
  %i.bh = xor i1 %i.bf, %i.bg
  %i.bi = icmp uge i64 %i.be, %i.bd, !nosanitize !10
  %i.bj = icmp slt i32 %i.ar, 0
  %i.bk = xor i1 %i.bj, %i.bi
  %i.bl = and i1 %i.bh, %i.bk, !nosanitize !10
  br i1 %i.bl, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @76, i64 %i.bd, i64 %i.be) #8, !nosanitize !10
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
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @77, i64 %i.bo) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %.sroa.0804.0.copyload = load <2 x float>, ptr %i.ap, align 4, !tbaa !96 ; 2 uses
  %.sroa.7807.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.sroa.7807.0.copyload = load float, ptr %.sroa.7807.0..sroa_idx, align 4, !tbaa !96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %.sroa.0788.0.copyload = load <2 x float>, ptr %i.bs, align 4, !tbaa !96 ; 3 uses
  %.sroa.22801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 20 ; 2 uses
  %.sroa.22801.0.copyload = load float, ptr %.sroa.22801.0..sroa_idx, align 4, !tbaa !96 ; 3 uses
  %i.bt = icmp ne ptr %i.bm, null, !nosanitize !10
  %i.bu = ptrtoint ptr %i.bm to i64, !nosanitize !10 ; 2 uses
  %i.bv = and i64 %i.bu, 3, !nosanitize !10
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !10
  %i.bx = and i1 %i.bt, %i.bw, !nosanitize !10
  br i1 %i.bx, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @78, i64 %i.bu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %.sroa.0782.0.copyload = load <2 x float>, ptr %i.bm, align 4, !tbaa !96 ; 2 uses
  %.sroa.7785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.sroa.7785.0.copyload = load float, ptr %.sroa.7785.0..sroa_idx, align 4, !tbaa !96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  %.sroa.0766.0.copyload = load <2 x float>, ptr %i.by, align 4, !tbaa !96 ; 3 uses
  %.sroa.22779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 20 ; 2 uses
  %.sroa.22779.0.copyload = load float, ptr %.sroa.22779.0..sroa_idx, align 4, !tbaa !96 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !116 ; 3 uses
  %i.cb = icmp ult i8 %i.ca, 2
  br i1 %i.cb, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.cc = zext i8 %i.ca to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @79, i64 %i.cc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.cg = load <2 x float>, ptr %i.cd, align 4    ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ap, i64 44 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.ch, align 4    ; 5 uses
  %i.cj = load <2 x float>, ptr %i.cf, align 4    ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cl = load <2 x float>, ptr %i.ck, align 4    ; 6 uses
  %shift = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.cl
  %shift2063 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2064 = fmul <2 x float> %i.ci, %shift2063
  %foldExtExtBinop2066 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop2064
  %i.cm = shufflevector <2 x float> %foldExtExtBinop2066, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %i.cj, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cr = fmul <2 x float> %i.cn, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.cg, %i.cj           ; 2 uses
  %shift2068 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2069 = fadd <2 x float> %i.cs, %shift2068
  %foldExtExtBinop2071 = fmul <2 x float> %i.ci, %i.cl
  %foldExtExtBinop2073 = fadd <2 x float> %foldExtExtBinop2071, %foldExtExtBinop2069
  %i.ct = shufflevector <2 x float> %i.ci, <2 x float> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.cu = fmul <2 x float> %i.ct, %i.cj
  %i.cv = fmul <2 x float> %i.cg, %i.co
  %i.cw = fsub <2 x float> %i.cu, %i.cv
  %i.cx = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cy = insertelement <4 x float> %i.cx, float -0.000000e+00, i64 3
  %i.cz = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.db = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 0, i32 7>
  %i.dc = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.de = fadd <4 x float> %i.da, %i.dd           ; 3 uses
  %i.df = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <4 x i32> <i32 1, i32 2, i32 0, i32 poison> ; 2 uses
  %i.dg = insertelement <4 x float> %i.df, float 0.000000e+00, i64 3
  %i.dh = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.di = insertelement <4 x float> %i.dh, float 1.000000e+00, i64 3
  %i.dj = fmul <4 x float> %i.dg, %i.di           ; 2 uses
  %i.dk = insertelement <4 x float> %i.df, float 1.000000e+00, i64 3
  %i.dl = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = fadd <4 x float> %i.dj, %i.de           ; 9 uses
  %i.do = fadd <4 x float> %i.dm, %i.de
  %i.dp = shufflevector <4 x float> %i.dj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.dq = shufflevector <4 x float> %i.de, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.dr = fadd <4 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.cr, <2 x i32> <i32 3, i32 1>
  %i.dt = insertelement <2 x float> %foldExtExtBinop2073, float 0.000000e+00, i64 1
  %i.du = fsub <2 x float> %i.ds, %i.dt           ; 3 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 36 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dz = load <2 x float>, ptr %i.dw, align 4    ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bm, i64 44 ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 4    ; 5 uses
  %i.ec = load <2 x float>, ptr %i.dy, align 4    ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ee = load <2 x float>, ptr %i.ed, align 4    ; 4 uses
  %i.ef = shufflevector <2 x float> %i.dz, <2 x float> %i.eb, <2 x i32> <i32 1, i32 2>
  %i.eg = shufflevector <2 x float> %i.ee, <2 x float> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.eh = fmul <2 x float> %i.ef, %i.eg
  %i.ei = shufflevector <2 x float> %i.eb, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.ej = shufflevector <2 x float> %i.ec, <2 x float> %i.ee, <2 x i32> <i32 1, i32 2>
  %i.ek = fmul <2 x float> %i.ei, %i.ej
  %i.el = fsub <2 x float> %i.eh, %i.ek
  %i.em = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = fmul <2 x float> %i.em, %i.ec
  %i.eo = fadd <2 x float> %i.en, %i.el
  %i.ep = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eq = fmul <2 x float> %i.dz, %i.ep
  %i.er = fadd <2 x float> %i.eq, %i.eo           ; 3 uses
  %i.es = fmul <2 x float> %i.eb, %i.ep           ; 2 uses
  %i.et = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.et, %i.eu           ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x float> %i.dz, %i.ew           ; 2 uses
  %i.ey = fsub <2 x float> %i.ex, %i.ev
  %i.ez = fadd <2 x float> %i.ex, %i.ev
  %i.fa = shufflevector <2 x float> %i.ey, <2 x float> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.fb = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = fadd <2 x float> %i.fa, %i.fd           ; 2 uses
  %i.ff = fadd <2 x float> %i.es, %i.fe
  %i.fg = fsub <2 x float> %i.es, %i.fe
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> %i.fg, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fi = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.dn, <4 x float> %i.fi, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.fk = shufflevector <2 x float> %i.er, <2 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fl = fmul <4 x float> %i.fj, %i.fk           ; 4 uses
  %shift2075 = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2076 = fadd <4 x float> %i.fl, %shift2075
  %shift2078 = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2079 = fadd <4 x float> %shift2078, %foldExtExtBinop2076
  %shift2081 = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2082 = fadd <4 x float> %shift2081, %foldExtExtBinop2079
  %i.fm = extractelement <4 x float> %foldExtExtBinop2082, i64 0
  %i.fn = fcmp olt float %i.fm, 0.000000e+00      ; 2 uses
  %i.fo = fneg <2 x float> %i.fh
  %i.fp = fneg <2 x float> %i.er
  %.sroa.0749.0 = select i1 %i.fn, <2 x float> %i.fp, <2 x float> %i.er ; 4 uses
  %.sroa.7752.0 = select i1 %i.fn, <2 x float> %i.fo, <2 x float> %i.fh ; 6 uses
  %.sroa.3.8.vec.extract51.i972 = extractelement <2 x float> %.sroa.7752.0, i64 0
  %.sroa.3.12.vec.extract53.i977 = extractelement <2 x float> %.sroa.7752.0, i64 1
  %i.fq = extractelement <2 x float> %i.du, i64 0
  %i.fr = fmul float %i.fq, %.sroa.3.12.vec.extract53.i977
  %i.fs = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ft = fmul <2 x float> %i.fs, %.sroa.0749.0   ; 2 uses
  %shift2084 = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2085 = fadd <2 x float> %i.ft, %shift2084
  %i.fu = extractelement <2 x float> %foldExtExtBinop2085, i64 0
  %i.fv = extractelement <4 x float> %i.dn, i64 1
  %i.fw = fmul float %i.fv, %.sroa.3.8.vec.extract51.i972
  %i.fx = fadd float %i.fw, %i.fu
  %i.fy = shufflevector <4 x float> %i.dn, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7> ; 2 uses
  %i.fz = shufflevector <2 x float> %.sroa.7752.0, <2 x float> %.sroa.0749.0, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float 1.000000e+00, i64 3
  %i.gb = fmul <4 x float> %i.fy, %i.ga
  %i.gc = shufflevector <4 x float> %i.dn, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 3 uses
  %i.gd = shufflevector <2 x float> %.sroa.0749.0, <2 x float> %.sroa.7752.0, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float 1.000000e+00, i64 3
  %i.gf = fmul <4 x float> %i.gc, %i.ge
  %i.gg = fsub <4 x float> %i.gb, %i.gf
  %i.gh = shufflevector <2 x float> %.sroa.0749.0, <2 x float> %.sroa.7752.0, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.gi = insertelement <4 x float> %i.gh, float 1.000000e+00, i64 3
  %i.gj = fmul <4 x float> %i.dv, %i.gi
  %i.gk = fadd <4 x float> %i.gj, %i.gg
  %i.gl = shufflevector <2 x float> %.sroa.7752.0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gm = insertelement <4 x float> %i.gl, float 1.000000e+00, i64 3
  %i.gn = fmul <4 x float> %i.dn, %i.gm
  %i.go = fsub <4 x float> %i.gk, %i.gn           ; 8 uses
  %.scalar = fadd float %i.fr, %i.fx              ; 7 uses
  %i.gp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.gs = load i8, ptr %i.gr, align 4, !tbaa !150 ; 3 uses
  %i.gt = icmp ult i8 %i.gs, 2
  br i1 %i.gt, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.gu = zext i8 %i.gs to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @80, i64 %i.gu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.gv = trunc nuw i8 %i.gs to i1
  %i.gw = icmp eq i8 %i.ca, 0                     ; 4 uses
  %or.cond = and i1 %i.gw, %i.gv
  br i1 %or.cond, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !151
  %i.gz = fcmp olt float %.scalar, 0.000000e+00
  br i1 %i.gz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ha = extractelement <4 x float> %i.go, i64 1
  %i.hb = fneg float %i.ha
  %i.hc = fneg float %.scalar
  %i.hd = call float @b3Atan2(float noundef %i.hb, float noundef %i.hc) #7
  br label %b3GetTwistAngle.exit

bb.x:                                             ; preds = %bb.v
  %i.he = extractelement <4 x float> %i.go, i64 1
  %i.hf = call float @b3Atan2(float noundef %i.he, float noundef %.scalar) #7
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.x, %bb.w
  %i.hg = phi float [ %i.hd, %bb.w ], [ %i.hf, %bb.x ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hi = fmul float %i.hg, 2.000000e+00
  %i.hj = fsub float %i.hi, %i.gy
  %i.hk = load float, ptr %i.hh, align 4, !tbaa !152
  %i.hl = fmul float %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !153
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.0726.0.copyload = load <2 x float>, ptr %i.hp, align 4 ; 5 uses
  %.sroa.2727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.2727.0.copyload = load float, ptr %.sroa.2727.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i988 = extractelement <2 x float> %.sroa.0726.0.copyload, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i989 = extractelement <2 x float> %.sroa.0726.0.copyload, i64 1 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.hs = load float, ptr %i.hq, align 4, !tbaa !117
  %i.ht = load float, ptr %i.hm, align 4, !tbaa !154
  %i.hu = fneg float %i.ht
  %i.hv = fmul float %i.hs, %i.hu
  %i.hw = fsub float %.sroa.22779.0.copyload, %.sroa.22801.0.copyload
  %i.hx = fmul float %i.hw, %.sroa.2727.0.copyload
  %i.hy = fsub <2 x float> %.sroa.0766.0.copyload, %.sroa.0788.0.copyload
  %i.hz = fmul <2 x float> %i.hy, %.sroa.0726.0.copyload ; 2 uses
  %shift2087 = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2088 = fadd <2 x float> %i.hz, %shift2087
  %i.ia = extractelement <2 x float> %foldExtExtBinop2088, i64 0
  %i.ib = fadd float %i.hx, %i.ia
  %i.ic = fadd float %i.hl, %i.ib
  %i.id = fmul float %i.ic, %i.hv
  %i.ie = load float, ptr %i.hr, align 4, !tbaa !92 ; 2 uses
  %i.if = fmul float %i.ho, %i.ie
  %i.ig = fsub float %i.id, %i.if                 ; 4 uses
  %i.ih = fadd float %i.ie, %i.ig
  store float %i.ih, ptr %i.hr, align 4, !tbaa !92
  %i.ii = fmul float %.sroa.161833.0.copyload, %.sroa.0.0.vec.extract.i988
  %i.ij = fmul float %.sroa.341857.0.copyload, %.sroa.0.4.vec.extract.i989
  %i.ik = fadd float %i.ii, %i.ij
  %i.il = fmul float %.sroa.521881.0.copyload, %.sroa.2727.0.copyload
  %i.im = fadd float %i.il, %i.ik
  %i.in = shufflevector <2 x float> %.sroa.0726.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.io = fmul <2 x float> %i.l, %i.in
  %i.ip = shufflevector <2 x float> %.sroa.0726.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.iq = fmul <2 x float> %i.m, %i.ip
  %i.ir = fadd <2 x float> %i.io, %i.iq
  %i.is = insertelement <2 x float> poison, float %.sroa.2727.0.copyload, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = fmul <2 x float> %i.n, %i.it
  %i.iv = fadd <2 x float> %i.iu, %i.ir
  %i.iw = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iy = fmul <2 x float> %i.iv, %i.ix
  %i.iz = fsub <2 x float> %.sroa.0788.0.copyload, %i.iy
  %i.ja = fmul float %i.im, %i.ig
  %i.jb = fsub float %.sroa.22801.0.copyload, %i.ja
  %i.jc = fmul float %.sroa.16.0.copyload, %.sroa.0.0.vec.extract.i988
  %i.jd = fmul float %.sroa.341789.0.copyload, %.sroa.0.4.vec.extract.i989
  %i.je = fadd float %i.jc, %i.jd
  %i.jf = fmul float %.sroa.52.0.copyload, %.sroa.2727.0.copyload
  %i.jg = fadd float %i.jf, %i.je
  %i.jh = fmul <2 x float> %i.o, %i.in
  %i.ji = fmul <2 x float> %i.p, %i.ip
  %i.jj = fadd <2 x float> %i.jh, %i.ji
  %i.jk = fmul <2 x float> %i.q, %i.it
  %i.jl = fadd <2 x float> %i.jk, %i.jj
  %i.jm = fmul <2 x float> %i.jl, %i.ix
  %i.jn = fadd <2 x float> %.sroa.0766.0.copyload, %i.jm
  %i.jo = fmul float %i.jg, %i.ig
  %i.jp = fadd float %.sroa.22779.0.copyload, %i.jo
  br label %bb.y

bb.y:                                             ; preds = %b3GetTwistAngle.exit, %bb.u
  %.sroa.0766.0 = phi <2 x float> [ %i.jn, %b3GetTwistAngle.exit ], [ %.sroa.0766.0.copyload, %bb.u ] ; 4 uses
  %.sroa.22779.0 = phi float [ %i.jp, %b3GetTwistAngle.exit ], [ %.sroa.22779.0.copyload, %bb.u ] ; 3 uses
  %.sroa.0788.0 = phi <2 x float> [ %i.iz, %b3GetTwistAngle.exit ], [ %.sroa.0788.0.copyload, %bb.u ] ; 4 uses
  %.sroa.22801.0 = phi float [ %i.jb, %b3GetTwistAngle.exit ], [ %.sroa.22801.0.copyload, %bb.u ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 381
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !155 ; 3 uses
  %i.js = icmp ult i8 %i.jr, 2
  br i1 %i.js, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.jt = zext i8 %i.jr to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @81, i64 %i.jt) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.ju = trunc nuw i8 %i.jr to i1
  %or.cond948 = and i1 %i.gw, %i.ju
  br i1 %or.cond948, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.jv = icmp ne ptr %1, null, !nosanitize !10
  %i.jw = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.jx = and i64 %i.jw, 7, !nosanitize !10
  %i.jy = icmp eq i64 %i.jx, 0, !nosanitize !10
  %i.jz = and i1 %i.jv, %i.jy, !nosanitize !10
  br i1 %i.jz, label %bb.ad, label %bb.ac, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.jw) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !156
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !93 ; 2 uses
  %i.ke = fsub float %.sroa.22779.0, %.sroa.22801.0
  %.sroa.2673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.2673.0.copyload = load float, ptr %.sroa.2673.0..sroa_idx, align 4 ; 4 uses
  %i.kf = fmul float %i.ke, %.sroa.2673.0.copyload
  %foldExtExtBinop2090 = fsub <2 x float> %.sroa.0766.0, %.sroa.0788.0
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.0672.0.copyload = load <2 x float>, ptr %i.kg, align 4 ; 6 uses
  %foldExtExtBinop2092 = fmul <2 x float> %foldExtExtBinop2090, %.sroa.0672.0.copyload
  %foldExtExtBinop2094 = fsub <2 x float> %.sroa.0766.0, %.sroa.0788.0
  %foldExtExtBinop2096 = fmul <2 x float> %foldExtExtBinop2094, %.sroa.0672.0.copyload
  %shift2098 = shufflevector <2 x float> %foldExtExtBinop2096, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2099 = fadd <2 x float> %foldExtExtBinop2092, %shift2098
  %i.kh = extractelement <2 x float> %foldExtExtBinop2099, i64 0
  %i.ki = fadd float %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !157
  %i.kl = fsub float %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.kn = load float, ptr %i.km, align 4, !tbaa !117
  %i.ko = fmul float %i.kl, %i.kn
  %i.kp = fsub float %i.kd, %i.ko                 ; 3 uses
  %.sroa.0.4.vec.extract.i1023 = extractelement <2 x float> %.sroa.0672.0.copyload, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i1021 = extractelement <2 x float> %.sroa.0672.0.copyload, i64 0 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !118
  %i.ks = fmul float %i.kb, %i.kr                 ; 3 uses
  %i.kt = fneg float %i.ks                        ; 2 uses
  %i.ku = fcmp olt float %i.kp, %i.kt
  %i.kv = fcmp olt float %i.ks, %i.kp
  %i.kw = select i1 %i.kv, float %i.ks, float %i.kp
  %i.kx = select i1 %i.ku, float %i.kt, float %i.kw ; 2 uses
  %i.ky = fsub float %i.kx, %i.kd                 ; 3 uses
  store float %i.kx, ptr %i.kc, align 4, !tbaa !93
  %i.kz = fmul float %.sroa.161833.0.copyload, %.sroa.0.0.vec.extract.i1021
  %i.la = fmul float %.sroa.341857.0.copyload, %.sroa.0.4.vec.extract.i1023
  %i.lb = fadd float %i.kz, %i.la
  %i.lc = fmul float %.sroa.521881.0.copyload, %.sroa.2673.0.copyload
  %i.ld = fadd float %i.lc, %i.lb
  %i.le = shufflevector <2 x float> %.sroa.0672.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lf = fmul <2 x float> %i.l, %i.le
  %i.lg = shufflevector <2 x float> %.sroa.0672.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lh = fmul <2 x float> %i.m, %i.lg
  %i.li = fadd <2 x float> %i.lf, %i.lh
  %i.lj = insertelement <2 x float> poison, float %.sroa.2673.0.copyload, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ll = fmul <2 x float> %i.n, %i.lk
  %i.lm = fadd <2 x float> %i.ll, %i.li
  %i.ln = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = fmul <2 x float> %i.lm, %i.lo
  %i.lq = fsub <2 x float> %.sroa.0788.0, %i.lp
  %i.lr = fmul float %i.ld, %i.ky
  %i.ls = fsub float %.sroa.22801.0, %i.lr
  %i.lt = fmul float %.sroa.16.0.copyload, %.sroa.0.0.vec.extract.i1021
  %i.lu = fmul float %.sroa.341789.0.copyload, %.sroa.0.4.vec.extract.i1023
end_hunk_1
begin_hunk_2_@b3SolveRevoluteJoint:bb.a
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.mi = load i8, ptr %i.mh, align 2, !tbaa !122 ; 3 uses
  %i.mj = icmp ult i8 %i.mi, 2
  br i1 %i.mj, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.mk = zext i8 %i.mi to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @83, i64 %i.mk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.ml = trunc nuw i8 %i.mi to i1
  %or.cond949 = and i1 %i.gw, %i.ml
  br i1 %or.cond949, label %bb.ah, label %bb.av

bb.ah:                                            ; preds = %bb.ag
  %i.mm = fcmp olt float %.scalar, 0.000000e+00
  br i1 %i.mm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mn = extractelement <4 x float> %i.go, i64 1
  %i.mo = fneg float %i.mn
  %i.mp = fneg float %.scalar
  %i.mq = call float @b3Atan2(float noundef %i.mo, float noundef %i.mp) #7
  br label %b3GetTwistAngle.exit1054

bb.aj:                                            ; preds = %bb.ah
  %i.mr = extractelement <4 x float> %i.go, i64 1
  %i.ms = call float @b3Atan2(float noundef %i.mr, float noundef %.scalar) #7
  br label %b3GetTwistAngle.exit1054

b3GetTwistAngle.exit1054:                         ; preds = %bb.ai, %bb.aj
  %i.mt = phi float [ %i.mq, %bb.ai ], [ %i.ms, %bb.aj ]
  %i.mu = fmul float %i.mt, 2.000000e+00          ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.0619.0.copyload = load <2 x float>, ptr %i.mv, align 4, !tbaa !96 ; 8 uses
  %.sroa.9625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.9625.0.copyload = load float, ptr %.sroa.9625.0..sroa_idx, align 4, !tbaa !96 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !123
  %i.my = fsub float %i.mu, %i.mx                 ; 3 uses
  %i.mz = fcmp ogt float %i.my, 0.000000e+00
  br i1 %i.mz, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %b3GetTwistAngle.exit1054
  %i.na = icmp ne ptr %1, null, !nosanitize !10
  %i.nb = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.nc = and i64 %i.nb, 7, !nosanitize !10
  %i.nd = icmp eq i64 %i.nc, 0, !nosanitize !10
  %i.ne = and i1 %i.na, %i.nd, !nosanitize !10
  br i1 %i.ne, label %bb.am, label %bb.al, !prof !11, !nosanitize !10

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @84, i64 %i.nb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.am:                                            ; preds = %bb.ak
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !158
  %i.nh = fmul float %i.my, %i.ng
  br label %bb.ap

bb.an:                                            ; preds = %b3GetTwistAngle.exit1054
  br i1 %2, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !159
  %i.nk = fmul float %i.my, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.nn = load float, ptr %i.nl, align 4, !tbaa !160
  %i.no = load float, ptr %i.nm, align 4, !tbaa !161
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %.0914 = phi float [ 0.000000e+00, %bb.am ], [ %i.no, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %.0913 = phi float [ 1.000000e+00, %bb.am ], [ %i.nn, %bb.ao ], [ 1.000000e+00, %bb.an ]
  %.0 = phi float [ %i.nh, %bb.am ], [ %i.nk, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %.sroa.0.0.vec.extract.i1056 = extractelement <2 x float> %.sroa.0788.1, i64 0
  %i.np = fsub float %.sroa.22779.1, %.sroa.22801.1
  %i.nq = fsub <2 x float> %.sroa.0766.1, %.sroa.0788.1
  %i.nr = fmul <2 x float> %i.nq, %.sroa.0619.0.copyload ; 2 uses
  %shift2101 = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2102 = fadd <2 x float> %i.nr, %shift2101
  %i.ns = extractelement <2 x float> %foldExtExtBinop2102, i64 0
  %i.nt = fmul float %i.np, %.sroa.9625.0.copyload
  %i.nu = fadd float %i.nt, %i.ns
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.nx = fneg float %.0913
  %i.ny = load float, ptr %i.nv, align 4, !tbaa !94 ; 3 uses
  %i.nz = load float, ptr %i.nw, align 4, !tbaa !117 ; 2 uses
  %i.oa = fmul float %i.nz, %i.nx
  %i.ob = fadd float %i.nu, %.0
  %i.oc = fmul float %i.ob, %i.oa
  %i.od = fmul float %.0914, %i.ny
  %i.oe = fsub float %i.oc, %i.od
  %i.of = fadd float %i.ny, %i.oe                 ; 2 uses
  %i.og = fcmp ogt float %i.of, 0.000000e+00
  %i.oh = select i1 %i.og, float %i.of, float 0.000000e+00 ; 2 uses
  store float %i.oh, ptr %i.nv, align 4, !tbaa !94
  %foldExtExtBinop2104 = fmul <2 x float> %i.l, %.sroa.0619.0.copyload
  %shift2106 = shufflevector <2 x float> %.sroa.0619.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2107 = fmul <2 x float> %i.m, %shift2106
  %foldExtExtBinop2109 = fadd <2 x float> %foldExtExtBinop2104, %foldExtExtBinop2107
  %i.oi = extractelement <2 x float> %foldExtExtBinop2109, i64 0
  %i.oj = extractelement <2 x float> %i.n, i64 0
  %i.ok = fmul float %i.oj, %.sroa.9625.0.copyload
  %i.ol = fadd float %i.ok, %i.oi                 ; 2 uses
  %.scalar2111 = fsub float %i.oh, %i.ny          ; 2 uses
  %i.om = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar2111, i64 0 ; 2 uses
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oo = fmul float %i.ol, %.scalar2111
  %i.op = fsub float %.sroa.0.0.vec.extract.i1056, %i.oo ; 2 uses
  %i.oq = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.or = insertelement <2 x float> %i.oq, float %.sroa.161833.0.copyload, i64 1
  %i.os = shufflevector <2 x float> %.sroa.0619.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %i.or, %i.os
  %i.ou = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ov = insertelement <2 x float> %i.ou, float %.sroa.341857.0.copyload, i64 1
  %i.ow = shufflevector <2 x float> %.sroa.0619.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ox = fmul <2 x float> %i.ov, %i.ow
  %i.oy = fadd <2 x float> %i.ot, %i.ox
  %i.oz = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pa = insertelement <2 x float> %i.oz, float %.sroa.521881.0.copyload, i64 1
  %i.pb = insertelement <2 x float> poison, float %.sroa.9625.0.copyload, i64 0
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = fmul <2 x float> %i.pa, %i.pc
  %i.pe = fadd <2 x float> %i.pd, %i.oy           ; 3 uses
  %i.pf = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pg = fmul <2 x float> %i.pe, %i.pf
  %i.ph = shufflevector <2 x float> %.sroa.0788.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pi = insertelement <2 x float> %i.ph, float %.sroa.22801.1, i64 1
  %i.pj = fsub <2 x float> %i.pi, %i.pg           ; 3 uses
  %i.pk = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pl = insertelement <4 x float> %i.pk, float -0.000000e+00, i64 3
  %i.pm = insertelement <4 x float> %i.pl, float %.sroa.16.0.copyload, i64 2
  %i.pn = shufflevector <2 x float> %.sroa.0619.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.po = insertelement <4 x float> %i.pn, float 1.000000e+00, i64 3
  %i.pp = fmul <4 x float> %i.pm, %i.po
  %i.pq = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pr = insertelement <4 x float> %i.pq, float -0.000000e+00, i64 3
  %i.ps = insertelement <4 x float> %i.pr, float %.sroa.341789.0.copyload, i64 2
  %i.pt = shufflevector <2 x float> %.sroa.0619.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.pu = insertelement <4 x float> %i.pt, float 1.000000e+00, i64 3
  %i.pv = fmul <4 x float> %i.ps, %i.pu
  %i.pw = fadd <4 x float> %i.pp, %i.pv
  %i.px = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.py = insertelement <4 x float> %i.px, float -0.000000e+00, i64 3
  %i.pz = insertelement <4 x float> %i.py, float %.sroa.52.0.copyload, i64 2
  %i.qa = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.9625.0.copyload, i64 0
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.qc = fmul <4 x float> %i.pz, %i.qb
  %i.qd = fadd <4 x float> %i.qc, %i.pw           ; 3 uses
  %i.qe = fmul <4 x float> %i.qd, %i.on
  %i.qf = shufflevector <2 x float> %.sroa.0766.1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qg = insertelement <4 x float> %i.qf, float 0.000000e+00, i64 3
  %i.qh = insertelement <4 x float> %i.qg, float %.sroa.22779.1, i64 2
  %i.qi = fadd <4 x float> %i.qh, %i.qe           ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !124
  %i.ql = fsub float %i.qk, %i.mu                 ; 3 uses
  %i.qm = fcmp ogt float %i.ql, 0.000000e+00
  br i1 %i.qm, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.qn = icmp ne ptr %1, null, !nosanitize !10
  %i.qo = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.qp = and i64 %i.qo, 7, !nosanitize !10
  %i.qq = icmp eq i64 %i.qp, 0, !nosanitize !10
  %i.qr = and i1 %i.qn, %i.qq, !nosanitize !10
  br i1 %i.qr, label %bb.as, label %bb.ar, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.qo) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %bb.aq
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !158
  %i.qu = fmul float %i.ql, %i.qt
  br label %.thread

bb.at:                                            ; preds = %bb.ap
  br i1 %2, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !159
  %i.qx = fmul float %i.ql, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ra = load float, ptr %i.qy, align 4, !tbaa !160
  %i.rb = load float, ptr %i.qz, align 4, !tbaa !161
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.au, %bb.at
  %.0917 = phi float [ 0.000000e+00, %bb.as ], [ %i.rb, %bb.au ], [ 0.000000e+00, %bb.at ]
  %.0916 = phi float [ 1.000000e+00, %bb.as ], [ %i.ra, %bb.au ], [ 1.000000e+00, %bb.at ]
  %.0915 = phi float [ %i.qu, %bb.as ], [ %i.qx, %bb.au ], [ 0.000000e+00, %bb.at ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.rd = insertelement <4 x float> poison, float %i.op, i64 0
  %i.re = shufflevector <2 x float> %i.pj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rf = shufflevector <4 x float> %i.rd, <4 x float> %i.re, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %4 = insertelement <4 x float> %i.rf, float %.0915, i64 3
  %i.rg = fsub <4 x float> %4, %i.qi
  %i.rh = shufflevector <2 x float> %.sroa.0619.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %5 = shufflevector <4 x float> %i.rh, <4 x float> %i.qb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ri = fmul <4 x float> %5, %i.rg              ; 3 uses
  %shift2112 = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2113 = fadd <4 x float> %i.ri, %shift2112
  %shift2115 = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2116 = fadd <4 x float> %shift2115, %foldExtExtBinop2113
  %6 = extractelement <4 x float> %foldExtExtBinop2116, i64 0
  %i.rj = load float, ptr %i.rc, align 4, !tbaa !95 ; 3 uses
  %i.rk = fneg float %.0916
  %i.rl = fmul float %i.nz, %i.rk
  %i.rm = fadd float %6, %.0915
  %i.rn = fmul float %i.rl, %i.rm
  %i.ro = fmul float %.0917, %i.rj
  %i.rp = fsub float %i.rn, %i.ro
  %i.rq = fadd float %i.rj, %i.rp                 ; 2 uses
  %i.rr = fcmp ogt float %i.rq, 0.000000e+00
  %i.rs = select i1 %i.rr, float %i.rq, float 0.000000e+00 ; 2 uses
  store float %i.rs, ptr %i.rc, align 4, !tbaa !95
  %i.rt = fsub float %i.rs, %i.rj                 ; 5 uses
  %i.ru = fmul float %i.ol, %i.rt
  %i.rv = fadd float %i.op, %i.ru
  %.sroa.07.0.vec.insert.i1117 = insertelement <2 x float> poison, float %i.rv, i64 0
  %i.rw = extractelement <2 x float> %i.pe, i64 0
  %i.rx = fmul float %i.rw, %i.rt
  %i.ry = extractelement <2 x float> %i.pj, i64 0
  %i.rz = fadd float %i.ry, %i.rx
  %.sroa.07.4.vec.insert.i1118 = insertelement <2 x float> %.sroa.07.0.vec.insert.i1117, float %i.rz, i64 1
  %i.sa = extractelement <2 x float> %i.pe, i64 1
  %i.sb = fmul float %i.sa, %i.rt
  %i.sc = extractelement <2 x float> %i.pj, i64 1
  %i.sd = fadd float %i.sc, %i.sb
  %i.se = shufflevector <4 x float> %i.qd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.sf = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sh = fmul <2 x float> %i.se, %i.sg
  %i.si = shufflevector <4 x float> %i.qi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.sj = fsub <2 x float> %i.si, %i.sh
  %i.sk = extractelement <4 x float> %i.qd, i64 2
  %i.sl = fmul float %i.sk, %i.rt
  %i.sm = extractelement <4 x float> %i.qi, i64 2
  %i.sn = fsub float %i.sm, %i.sl
  br label %bb.aw

bb.av:                                            ; preds = %bb.ag
  br i1 %i.gw, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %.thread, %bb.av
  %.sroa.22801.22038 = phi float [ %i.sd, %.thread ], [ %.sroa.22801.1, %bb.av ] ; 2 uses
  %.sroa.0788.22037 = phi <2 x float> [ %.sroa.07.4.vec.insert.i1118, %.thread ], [ %.sroa.0788.1, %bb.av ] ; 2 uses
  %.sroa.22779.22036 = phi float [ %i.sn, %.thread ], [ %.sroa.22779.1, %bb.av ] ; 2 uses
  %.sroa.0766.22035 = phi <2 x float> [ %i.sj, %.thread ], [ %.sroa.0766.1, %bb.av ] ; 3 uses
  br i1 %2, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.sp = load float, ptr %i.so, align 4, !tbaa !159
  %i.sq = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.sr = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x float> %i.sq, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.sw = load float, ptr %i.su, align 4, !tbaa !160
  %i.sx = load float, ptr %i.sv, align 4, !tbaa !161
  %i.sy = shufflevector <2 x float> %i.st, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0919 = phi float [ %i.sx, %bb.ax ], [ 0.000000e+00, %bb.aw ] ; 2 uses
  %.0918 = phi float [ %i.sw, %bb.ax ], [ 1.000000e+00, %bb.aw ]
  %.sroa.0492.0 = phi <2 x float> [ %i.sy, %bb.ax ], [ zeroinitializer, %bb.aw ]
  %i.sz = fmul <4 x float> %i.gq, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ta = fmul <4 x float> %i.go, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.tb = shufflevector <4 x float> %i.go, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.tc = fmul <4 x float> %i.tb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.td = fmul <4 x float> %i.go, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.te = fmul <4 x float> %i.tb, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.tf = fsub <4 x float> %i.ta, %i.tc
  %i.tg = fadd <4 x float> %i.sz, %i.tf           ; 4 uses
  %i.th = shufflevector <4 x float> %i.tg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ti = fmul <4 x float> %i.dr, %i.th
  %i.tj = fmul <4 x float> %i.dn, %i.tg
  %i.tk = fsub <4 x float> %i.ti, %i.tj
  %i.tl = shufflevector <4 x float> %i.tg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.tm = fmul <4 x float> %i.dv, %i.tl
  %i.tn = fadd <4 x float> %i.tm, %i.tk           ; 2 uses
  %i.to = fmul <4 x float> %i.do, %i.tn
  %i.tp = shufflevector <4 x float> %i.tn, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.tq = fmul <4 x float> %i.gc, %i.tp
  %i.tr = fsub <4 x float> %i.to, %i.tq
  %i.ts = fmul <4 x float> %i.tr, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.tt = fadd <4 x float> %i.tg, %i.ts
  %i.tu = fmul <4 x float> %i.tt, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00> ; 12 uses
  %i.tv = fsub <4 x float> %i.td, %i.te
  %7 = shufflevector <4 x float> %i.sz, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.tw = fadd <4 x float> %7, %i.tv              ; 4 uses
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ty = fmul <4 x float> %i.fy, %i.tx
  %i.tz = fmul <4 x float> %i.dn, %i.tw
  %i.ua = fsub <4 x float> %i.ty, %i.tz
  %i.ub = shufflevector <4 x float> %i.tw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.uc = fmul <4 x float> %i.dv, %i.ub
  %i.ud = fadd <4 x float> %i.uc, %i.ua           ; 2 uses
  %i.ue = insertelement <4 x float> %i.dn, float 1.000000e+00, i64 3
  %i.uf = fmul <4 x float> %i.ue, %i.ud
  %i.ug = shufflevector <4 x float> %i.ud, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.uh = fmul <4 x float> %i.gc, %i.ug
  %i.ui = fsub <4 x float> %i.uf, %i.uh
  %i.uj = fmul <4 x float> %i.ui, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.uk = fadd <4 x float> %i.tw, %i.uj
  %i.ul = fmul <4 x float> %i.uk, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -0.000000e+00> ; 13 uses
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.uo = shufflevector <4 x float> %i.tu, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  store <2 x float> %i.uo, ptr %i.un, align 4, !tbaa !96
  %.sroa.9486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.up = extractelement <4 x float> %i.tu, i64 2
  store float %i.up, ptr %.sroa.9486.0..sroa_idx, align 4, !tbaa !96
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x float> %i.um, ptr %i.uq, align 4, !tbaa !96
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ur = extractelement <4 x float> %i.ul, i64 2
  store float %i.ur, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !96
  %i.us = fadd <2 x float> %i.l, %i.o             ; 2 uses
  %i.ut = insertelement <2 x float> poison, float %.sroa.161833.0.copyload, i64 0
  %i.uu = insertelement <2 x float> %i.ut, float %.sroa.341857.0.copyload, i64 1
  %i.uv = insertelement <2 x float> poison, float %.sroa.16.0.copyload, i64 0
  %i.uw = insertelement <2 x float> %i.uv, float %.sroa.341789.0.copyload, i64 1
  %i.ux = fadd <2 x float> %i.uu, %i.uw           ; 2 uses
  %i.uy = fadd <2 x float> %i.m, %i.p             ; 2 uses
  %i.uz = fadd <2 x float> %i.n, %i.q             ; 2 uses
  %i.va = fadd float %.sroa.521881.0.copyload, %.sroa.52.0.copyload
  %i.vb = extractelement <4 x float> %i.ul, i64 0
  %i.vc = shufflevector <4 x float> %i.ul, <4 x float> %i.tu, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.vd = fmul <2 x float> %i.ux, %i.vc
  %i.ve = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vf = shufflevector <4 x float> %i.tu, <4 x float> %i.ul, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.vg = fmul <2 x float> %i.ux, %i.vf
  %i.vh = fadd <2 x float> %i.vg, %i.ve
  %i.vi = shufflevector <4 x float> %i.ul, <4 x float> %i.tu, <2 x i32> <i32 0, i32 4>
  %i.vj = fmul <2 x float> %i.us, %i.vi
  %i.vk = shufflevector <4 x float> %i.ul, <4 x float> %i.tu, <2 x i32> <i32 1, i32 5>
  %i.vl = fmul <2 x float> %i.uy, %i.vk
  %i.vm = fadd <2 x float> %i.vj, %i.vl
  %i.vn = shufflevector <4 x float> %i.ul, <4 x float> %i.tu, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.vo = fmul <2 x float> %i.uz, %i.vn
  %i.vp = fadd <2 x float> %i.vo, %i.vm           ; 2 uses
  %i.vq = shufflevector <4 x float> %i.tu, <4 x float> %i.ul, <2 x i32> <i32 0, i32 4>
  %i.vr = fmul <2 x float> %i.us, %i.vq
  %i.vs = shufflevector <4 x float> %i.tu, <4 x float> %i.ul, <2 x i32> <i32 1, i32 5>
  %i.vt = fmul <2 x float> %i.uy, %i.vs
  %i.vu = fadd <2 x float> %i.vr, %i.vt
  %i.vv = shufflevector <4 x float> %i.tu, <4 x float> %i.ul, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.vw = fmul <2 x float> %i.uz, %i.vv
  %i.vx = fadd <2 x float> %i.vw, %i.vu           ; 2 uses
  %i.vy = insertelement <2 x float> poison, float %i.va, i64 0
  %i.vz = shufflevector <2 x float> %i.vy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wa = fmul <2 x float> %i.vz, %i.vv
  %i.wb = fadd <2 x float> %i.wa, %i.vh           ; 2 uses
  %i.wc = extractelement <2 x float> %i.vp, i64 0
  %i.wd = fmul float %i.vb, %i.wc
  %i.we = shufflevector <4 x float> %i.ul, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.wf = shufflevector <2 x float> %i.vx, <2 x float> %i.wb, <2 x i32> <i32 1, i32 3>
  %i.wg = fmul <2 x float> %i.we, %i.wf           ; 2 uses
  %i.wh = extractelement <2 x float> %i.wg, i64 0
  %i.wi = fadd float %i.wd, %i.wh
  %i.wj = extractelement <2 x float> %i.wg, i64 1
  %i.wk = fadd float %i.wj, %i.wi                 ; 2 uses
  %i.wl = fmul <2 x float> %i.uo, %i.vp
  %i.wm = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wn = fmul <2 x float> %i.uo, %i.vx
  %i.wo = fadd <2 x float> %i.wn, %i.wm
  %i.wp = shufflevector <4 x float> %i.tu, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.wq = fmul <2 x float> %i.wp, %i.wb
  %i.wr = fadd <2 x float> %i.wq, %i.wo           ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %.sroa.0326.0.copyload = load <2 x float>, ptr %i.ws, align 4, !tbaa !96 ; 3 uses
  %i.wt = insertelement <2 x float> %i.wr, float %i.wk, i64 0
  %i.wu = fmul <2 x float> %i.wr, %i.wt           ; 2 uses
  %shift2118 = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2119 = fsub <2 x float> %i.wu, %shift2118
  %i.wv = extractelement <2 x float> %foldExtExtBinop2119, i64 0 ; 2 uses
  %i.ww = fcmp ogt float %i.wv, f0x057A0000
  br i1 %i.ww, label %bb.az, label %b3Solve2.exit

bb.az:                                            ; preds = %bb.ay
  %i.wx = fsub float %.sroa.22779.22036, %.sroa.22801.22038
  %i.wy = fsub <2 x float> %.sroa.0766.22035, %.sroa.0788.22037 ; 2 uses
  %i.wz = fdiv float 1.000000e+00, %i.wv          ; 4 uses
  %i.xa = fmul float %i.wk, %i.wz
  %i.xb = extractelement <2 x float> %i.wr, i64 1
  %i.xc = fmul float %i.xb, %i.wz
  %i.xd = fneg float %i.wz
  %i.xe = insertelement <2 x float> poison, float %i.wx, i64 0
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xg = fmul <2 x float> %i.vn, %i.xf
  %i.xh = fmul <2 x float> %i.vf, %i.wy
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xj = fmul <2 x float> %i.vc, %i.wy
  %i.xk = fadd <2 x float> %i.xj, %i.xi
  %i.xl = fadd <2 x float> %i.xg, %i.xk
  %i.xm = fadd <2 x float> %i.xl, %.sroa.0492.0   ; 3 uses
  %i.xn = extractelement <2 x float> %i.xm, i64 1
  %i.xo = fmul float %i.xa, %i.xn
  %i.xp = extractelement <2 x float> %i.xm, i64 0
  %i.xq = fmul float %i.xc, %i.xp
  %i.xr = fsub float %i.xo, %i.xq
  %.sroa.0.0.vec.insert.i1251 = insertelement <2 x float> poison, float %i.xr, i64 0
  %i.xs = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.xt = insertelement <2 x float> %i.xs, float %i.xd, i64 1
  %i.xu = fmul <2 x float> %i.wr, %i.xt
  %i.xv = fmul <2 x float> %i.xu, %i.xm           ; 2 uses
  %shift2121 = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2122 = fadd <2 x float> %shift2121, %i.xv
  %.sroa.0.4.vec.insert.i1252 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i1251, <2 x float> %foldExtExtBinop2122, <2 x i32> <i32 0, i32 2>
  br label %b3Solve2.exit

b3Solve2.exit:                                    ; preds = %bb.ay, %bb.az
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i1252, %bb.az ], [ zeroinitializer, %bb.ay ] ; 2 uses
  %i.xw = fneg float %.0918                       ; 2 uses
  %.sroa.0.0.vec.extract.i1253 = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.xx = fmul float %.sroa.0.0.vec.extract.i1253, %i.xw
  %.sroa.0.4.vec.extract.i1255 = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.xy = fmul float %.sroa.0.4.vec.extract.i1255, %i.xw
  %.sroa.0.0.vec.extract.i1257 = extractelement <2 x float> %.sroa.0326.0.copyload, i64 0
  %i.xz = fmul float %.0919, %.sroa.0.0.vec.extract.i1257
  %.sroa.0.4.vec.extract.i1259 = extractelement <2 x float> %.sroa.0326.0.copyload, i64 1
  %i.ya = fmul float %.0919, %.sroa.0.4.vec.extract.i1259
  %.scalar2124 = fsub float %i.xx, %i.xz
  %i.yb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar2124, i64 0 ; 2 uses
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar2125 = fsub float %i.xy, %i.ya          ; 2 uses
  %i.yd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar2125, i64 0
  %i.ye = shufflevector <2 x float> %i.yd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yf = insertelement <2 x float> %i.yb, float %.scalar2125, i64 1
  %i.yg = fadd <2 x float> %.sroa.0326.0.copyload, %i.yf
  store <2 x float> %i.yg, ptr %i.ws, align 4, !tbaa !96
  %i.yh = fmul <4 x float> %i.tu, %i.yc
  %i.yi = fmul <4 x float> %i.ul, %i.ye
  %i.yj = fadd <4 x float> %i.yh, %i.yi           ; 7 uses
  %i.yk = extractelement <4 x float> %i.yj, i64 0 ; 3 uses
  %i.yl = fmul float %.sroa.161833.0.copyload, %i.yk
  %i.ym = extractelement <4 x float> %i.yj, i64 1 ; 3 uses
  %i.yn = fmul float %.sroa.341857.0.copyload, %i.ym
  %i.yo = fadd float %i.yl, %i.yn
  %i.yp = extractelement <4 x float> %i.yj, i64 2 ; 3 uses
  %i.yq = fmul float %.sroa.521881.0.copyload, %i.yp
  %i.yr = fadd float %i.yq, %i.yo
  %i.ys = shufflevector <4 x float> %i.yj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.yt = fmul <2 x float> %i.l, %i.ys
  %i.yu = shufflevector <4 x float> %i.yj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yv = fmul <2 x float> %i.m, %i.yu
  %i.yw = fadd <2 x float> %i.yt, %i.yv
  %i.yx = shufflevector <4 x float> %i.yj, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.yy = fmul <2 x float> %i.n, %i.yx
  %i.yz = fadd <2 x float> %i.yy, %i.yw
  %i.za = fsub <2 x float> %.sroa.0788.22037, %i.yz
  %i.zb = fsub float %.sroa.22801.22038, %i.yr
  %i.zc = fmul float %.sroa.16.0.copyload, %i.yk
  %i.zd = fmul float %.sroa.341789.0.copyload, %i.ym
  %i.ze = fadd float %i.zc, %i.zd
  %i.zf = extractelement <2 x float> %i.o, i64 0
  %i.zg = fmul float %i.zf, %i.yk
  %i.zh = extractelement <2 x float> %i.p, i64 0
  %i.zi = fmul float %i.zh, %i.ym
  %i.zj = fadd float %i.zg, %i.zi
  %i.zk = extractelement <2 x float> %i.q, i64 0
  %i.zl = shufflevector <2 x float> %.sroa.0766.22035, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.zm = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zn = shufflevector <4 x float> %i.zl, <4 x float> %i.zm, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.zo = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zp = shufflevector <4 x float> %i.zn, <4 x float> %i.zo, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.zq = fmul <4 x float> %i.zp, %i.yj           ; 3 uses
  %i.zr = fmul float %.sroa.52.0.copyload, %i.yp
  %i.zs = fadd float %i.zr, %i.ze
  %i.zt = fmul float %i.zk, %i.yp
  %i.zu = shufflevector <4 x float> %i.zq, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.zv = insertelement <2 x float> %i.zu, float %i.zj, i64 0
  %i.zw = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.zx = shufflevector <4 x float> %i.zq, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.zy = shufflevector <4 x float> %i.zq, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zz = fadd <2 x float> %i.zx, %i.zy
  %i.aaa = shufflevector <2 x float> %i.zw, <2 x float> %i.zz, <2 x i32> <i32 0, i32 2>
  %i.aab = fadd <2 x float> %i.zv, %i.aaa
  %i.aac = fadd <2 x float> %.sroa.0766.22035, %i.aab
  %i.aad = fadd float %.sroa.22779.22036, %i.zs
  br label %bb.ba

bb.ba:                                            ; preds = %bb.av, %b3Solve2.exit
  %.sroa.0766.3 = phi <2 x float> [ %i.aac, %b3Solve2.exit ], [ %.sroa.0766.1, %bb.av ] ; 4 uses
  %.sroa.22779.3 = phi float [ %i.aad, %b3Solve2.exit ], [ %.sroa.22779.1, %bb.av ] ; 3 uses
  %.sroa.0788.3 = phi <2 x float> [ %i.za, %b3Solve2.exit ], [ %.sroa.0788.1, %bb.av ] ; 5 uses
  %.sroa.22801.3 = phi float [ %i.zb, %b3Solve2.exit ], [ %.sroa.22801.1, %bb.av ] ; 3 uses
  %i.aae = load <2 x float>, ptr %i.cd, align 4   ; 6 uses
  %i.aaf = load <2 x float>, ptr %i.ch, align 4   ; 5 uses
  %.sroa.0251.0.copyload = load <2 x float>, ptr %i.ce, align 4 ; 5 uses
end_hunk_2
