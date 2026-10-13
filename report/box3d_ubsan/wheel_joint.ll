Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/wheel_joint?download=true
inline.NumInlined: 311
inline.NumDeleted: 26
begin_hunk_0_@b3GetWheelJointForce:bb.a
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> %i.al, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.an = fmul <2 x float> %i.am, %i.z            ; 2 uses
  %i.ao = shufflevector <2 x float> %i.z, <2 x float> %i.ab, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ap = fmul <2 x float> %i.ai, %i.ao
  %i.aq = fmul <2 x float> %i.al, %i.z
  %i.ar = fsub <2 x float> %i.an, %i.ap
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.au = fsub <2 x float> %i.at, %i.aq
  %i.av = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aw = fmul <2 x float> %i.al, %i.av
  %i.ax = fmul <2 x float> %i.am, %i.av
  %i.ay = fadd <2 x float> %i.aw, %i.ar           ; 2 uses
  %i.az = fadd <2 x float> %i.ax, %i.au           ; 3 uses
  %i.ba = fmul <2 x float> %i.ao, %i.ay
  %i.bb = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.bc = fmul <2 x float> %i.bb, %i.az
  %i.bd = fmul <2 x float> %i.z, %i.az
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bf = fmul <2 x float> %i.ao, %i.be
  %i.bg = fsub <2 x float> %i.ba, %i.bc
  %i.bh = fsub <2 x float> %i.bd, %i.bf
  %i.bi = fmul <2 x float> %i.bg, splat (float 2.000000e+00)
  %i.bj = fmul <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bk = fadd <2 x float> %i.ai, %i.bi           ; 4 uses
  %i.bl = fadd <2 x float> %i.al, %i.bj           ; 4 uses
  %foldExtExtBinop48 = fmul <2 x float> %i.af, %i.bk
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %foldExtExtBinop50 = fmul <2 x float> %i.ad, %i.bl
  %foldExtExtBinop52 = fsub <2 x float> %foldExtExtBinop48, %foldExtExtBinop50
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bo = fmul <2 x float> %i.ad, %i.bn
  %i.bp = shufflevector <2 x float> %i.ad, <2 x float> %i.af, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bq = fmul <2 x float> %i.bp, %i.bk
  %i.br = fsub <2 x float> %i.bo, %i.bq           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bl
  %i.bu = fmul <2 x float> %i.bs, %i.bn
  %i.bv = fadd <2 x float> %i.bt, %i.br           ; 2 uses
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bx = shufflevector <2 x float> %foldExtExtBinop52, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.by = fadd <2 x float> %i.bu, %i.bx           ; 2 uses
  %i.bz = fmul <2 x float> %i.bp, %i.bv
  %i.ca = shufflevector <2 x float> %i.af, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.cb = fmul <2 x float> %i.ca, %i.by
  %i.cc = fsub <2 x float> %i.bz, %i.cb
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.ce = fmul <2 x float> %i.ad, %i.cd           ; 2 uses
  %shift = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub <2 x float> %i.ce, %shift
  %i.cf = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.cg = fmul <2 x float> %i.cc, splat (float 2.000000e+00)
  %i.ch = fadd <2 x float> %i.bk, %i.cg
  %i.ci = fmul float %i.cf, 2.000000e+00
  %i.cj = fadd float %i.bm, %i.ci
  %.fca.0.insert.i62.i44 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ch, 0
  %.fca.1.insert.i63.i45 = insertvalue { <2 x float>, float } %.fca.0.insert.i62.i44, float %i.cj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i63.i45
}

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetWheelJointTorque(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !109 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %0, null, !nosanitize !10
  %i.g = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !10
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !10
  %i.j = and i1 %i.f, %i.i, !nosanitize !10
  br i1 %i.j, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @96, i64 %i.g) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 3 uses
  %i.o = sext i32 %i.l to i64                     ; 2 uses
  %i.p = getelementptr inbounds [128 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = shl nsw i64 %i.o, 7
  %i.r = ptrtoint ptr %i.n to i64, !nosanitize !10 ; 3 uses
  %i.s = add i64 %i.q, %i.r, !nosanitize !10      ; 3 uses
  %i.t = icmp ne ptr %i.n, null, !nosanitize !10  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  %i.v = xor i1 %i.t, %i.u
  %i.w = icmp uge i64 %i.s, %i.r, !nosanitize !10
  %i.x = icmp slt i32 %i.l, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !10
  br i1 %i.z, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @97, i64 %i.r, i64 %i.s) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !10
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !10
  %i.ad = and i1 %i.t, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %i.aa) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [88 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = mul nsw i64 %i.ai, 88
  %i.al = ptrtoint ptr %i.af to i64, !nosanitize !10 ; 3 uses
  %i.am = add i64 %i.ak, %i.al, !nosanitize !10   ; 3 uses
  %i.an = icmp ne ptr %i.af, null, !nosanitize !10 ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  %i.ap = xor i1 %i.an, %i.ao
  %i.aq = icmp uge i64 %i.am, %i.al, !nosanitize !10
  %i.ar = icmp slt i32 %i.ah, 0
  %i.as = xor i1 %i.ar, %i.aq
  %i.at = and i1 %i.ap, %i.as, !nosanitize !10
  br i1 %i.at, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @99, i64 %i.al, i64 %i.am) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.au = ptrtoint ptr %i.aj to i64, !nosanitize !10 ; 2 uses
  %i.av = and i64 %i.au, 7, !nosanitize !10
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !10
  %i.ax = and i1 %i.an, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @100, i64 %i.au) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !97 ; 2 uses
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !107 ; 3 uses
  %i.bb = sext i32 %i.az to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [216 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.bd = mul nsw i64 %i.bb, 216
  %i.be = ptrtoint ptr %i.ba to i64, !nosanitize !10 ; 3 uses
  %i.bf = add i64 %i.bd, %i.be, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne ptr %i.ba, null, !nosanitize !10 ; 2 uses
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = xor i1 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bf, %i.be, !nosanitize !10
  %i.bk = icmp slt i32 %i.az, 0
  %i.bl = xor i1 %i.bk, %i.bj
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !10
  br i1 %i.bm, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @101, i64 %i.be, i64 %i.bf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.bc to i64, !nosanitize !10 ; 2 uses
  %i.bo = and i64 %i.bn, 3, !nosanitize !10
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !10
  %i.bq = and i1 %i.bg, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 %i.bn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bt = load <2 x float>, ptr %i.br, align 4    ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bv = load <2 x float>, ptr %i.bu, align 4    ; 5 uses
  %i.bw = load <2 x float>, ptr %i.bs, align 4    ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.by = load <2 x float>, ptr %i.bx, align 4    ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %2 = load float, ptr %i.bz, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.bt, i64 0
  %.sroa.3.12.vec.extract53.i.a = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %.sroa.356.12.vec.extract62.i.a = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.bw, i64 0
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %.sroa.3.8.vec.extract51.i = extractelement <2 x float> %i.by, i64 0
  %.sroa.356.8.vec.extract60.i = extractelement <2 x float> %i.bv, i64 0
  %.sroa.0.4.vec.extract8.i.i = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cb = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.0.4.vec.extract8.i.i
  %i.cc = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.0.0.vec.extract.i.i
  %i.cd = fsub float %i.cb, %i.cc
  %3 = fmul float %.sroa.356.12.vec.extract62.i.a, %.sroa.3.8.vec.extract51.i
  %4 = fadd float %i.cd, %3
  %foldExtExtBinop = fmul <2 x float> %i.bv, %i.by
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop30 = fmul <2 x float> %i.bt, %i.bw
  %i.cf = extractelement <2 x float> %foldExtExtBinop30, i64 0
  %i.cg = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.0.4.vec.extract8.i.i
  %i.ch = fadd float %i.cf, %i.cg
  %i.ci = fadd float %i.ce, %i.ch
  %i.cj = load float, ptr %i.ca, align 4, !tbaa !75
  %i.ck = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x float> %i.bt, %i.ck
  %i.cm = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x float> %i.cm, %i.bw
  %i.co = shufflevector <2 x float> %i.bt, <2 x float> %i.bv, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.cp = shufflevector <2 x float> %i.by, <2 x float> %i.bw, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.cq = fmul <4 x float> %i.co, %i.cp           ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ct = fsub <2 x float> %i.cr, %i.cs
  %i.cu = fadd <2 x float> %i.cn, %i.ct
  %i.cv = fadd <2 x float> %i.cl, %i.cu           ; 4 uses
  %i.cw = fmul <2 x float> %i.cv, %i.cv
  %i.cx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cw)
  %i.cy = fmul float %i.cx, 2.000000e+00
  %i.cz = fsub float 1.000000e+00, %i.cy
  %i.da = fmul float %.sroa.356.8.vec.extract60.i, %.sroa.3.12.vec.extract53.i.a
  %i.db = fadd float %i.da, %4
  %i.dc = fmul float %.sroa.356.12.vec.extract62.i.a, %.sroa.3.12.vec.extract53.i.a
  %i.dd = fsub float %i.dc, %i.ci
  %i.de = insertelement <2 x float> poison, float %i.db, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.cv           ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dk = fmul <2 x float> %i.di, %i.dj           ; 2 uses
  %i.dl = fadd <2 x float> %i.dg, %i.dk
  %i.dm = fsub <2 x float> %i.dg, %i.dk
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3>
  %i.do = fmul <2 x float> %i.dn, splat (float 2.000000e+00)
  %i.dp = fmul float %2, %i.cj                    ; 2 uses
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.do, %i.dr
  %i.dt = fmul float %i.cz, %i.dp
  %.fca.0.insert.i23 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ds, 0
  %.fca.1.insert.i24 = insertvalue { <2 x float>, float } %.fca.0.insert.i23, float %i.dt, 1
  ret { <2 x float>, float } %.fca.1.insert.i24
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareWheelJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !115 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @103, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !91   ; 2 uses
  %i.j = icmp ne ptr %1, null, !nosanitize !10
  %i.k = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148  ; 4 uses
  %i.q = icmp ne ptr %i.p, null, !nosanitize !10
  %i.r = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 2 uses
  %i.s = and i64 %i.r, 7, !nosanitize !10
  %i.t = icmp eq i64 %i.s, 0, !nosanitize !10
  %i.u = and i1 %i.q, %i.t, !nosanitize !10
  br i1 %i.u, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %i.r) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 3880
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 4 uses
  %i.x = sext i32 %i.g to i64                     ; 2 uses
  %i.y = getelementptr inbounds [128 x i8], ptr %i.w, i64 %i.x ; 3 uses
  %i.z = shl nsw i64 %i.x, 7
  %i.aa = ptrtoint ptr %i.w to i64, !nosanitize !10 ; 6 uses
  %i.ab = add i64 %i.z, %i.aa, !nosanitize !10    ; 3 uses
  %i.ac = icmp ne ptr %i.w, null, !nosanitize !10 ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = xor i1 %i.ac, %i.ad
  %i.af = icmp uge i64 %i.ab, %i.aa, !nosanitize !10
  %i.ag = icmp slt i32 %i.g, 0
  %i.ah = xor i1 %i.ag, %i.af
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !10
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.aa, i64 %i.ab) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.aj = sext i32 %i.i to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [128 x i8], ptr %i.w, i64 %i.aj ; 3 uses
  %i.al = shl nsw i64 %i.aj, 7
  %i.am = add i64 %i.al, %i.aa, !nosanitize !10   ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = xor i1 %i.ac, %i.an
  %i.ap = icmp uge i64 %i.am, %i.aa, !nosanitize !10
  %i.aq = icmp slt i32 %i.i, 0
  %i.ar = xor i1 %i.aq, %i.ap
  %i.as = and i1 %i.ao, %i.ar, !nosanitize !10
  br i1 %i.as, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.aa, i64 %i.am) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 3920
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94 ; 4 uses
  %i.av = ptrtoint ptr %i.y to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 7, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.ac, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !96 ; 2 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.be, i64 %i.bf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !10
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !10
  br i1 %i.bp, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @111, i64 %i.bn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.be, i64 %i.bv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !97 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !97 ; 3 uses
  %i.cg = ptrtoint ptr %i.bc to i64, !nosanitize !10 ; 2 uses
  %i.ch = and i64 %i.cg, 7, !nosanitize !10
  %i.ci = icmp eq i64 %i.ch, 0, !nosanitize !10
  %i.cj = and i1 %i.bg, %i.ci
  br i1 %i.cj, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.cg) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !107 ; 3 uses
  %i.cl = sext i32 %i.cd to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [216 x i8], ptr %i.ck, i64 %i.cl ; 9 uses
  %i.cn = mul nsw i64 %i.cl, 216
  %i.co = ptrtoint ptr %i.ck to i64, !nosanitize !10 ; 3 uses
  %i.cp = add i64 %i.cn, %i.co, !nosanitize !10   ; 3 uses
  %i.cq = icmp ne ptr %i.ck, null, !nosanitize !10 ; 2 uses
  %i.cr = icmp eq i64 %i.cp, 0
  %i.cs = xor i1 %i.cq, %i.cr
  %i.ct = icmp uge i64 %i.cp, %i.co, !nosanitize !10
  %i.cu = icmp slt i32 %i.cd, 0
  %i.cv = xor i1 %i.cu, %i.ct
  %i.cw = and i1 %i.cs, %i.cv, !nosanitize !10
  br i1 %i.cw, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 %i.co, i64 %i.cp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.cx = ptrtoint ptr %i.bt to i64, !nosanitize !10 ; 2 uses
  %i.cy = and i64 %i.cx, 7, !nosanitize !10
  %i.cz = icmp eq i64 %i.cy, 0, !nosanitize !10
  br i1 %i.cz, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @115, i64 %i.cx) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
end_hunk_0
