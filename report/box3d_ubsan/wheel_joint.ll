Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/wheel_joint?download=true
inline.NumInlined: 311
inline.NumDeleted: 26
begin_hunk_0_@b3WheelJoint_GetSpinSpeed:bb.a
bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.bu, i64 %i.bv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.cd = ptrtoint ptr %i.bs to i64, !nosanitize !10 ; 2 uses
  %i.ce = and i64 %i.cd, 3, !nosanitize !10
  %i.cf = icmp eq i64 %i.ce, 0, !nosanitize !10
  %i.cg = and i1 %i.bw, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @71, i64 %i.cd) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cj = load <2 x float>, ptr %i.ch, align 4    ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.cl = load <2 x float>, ptr %i.ck, align 4    ; 5 uses
  %i.cm = load <2 x float>, ptr %i.ci, align 4    ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.co = load <2 x float>, ptr %i.cn, align 4    ; 5 uses
  %i.cp = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef nonnull %i.v) #7 ; 4 uses
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = ptrtoint ptr %i.cp to i64, !nosanitize !10 ; 2 uses
  %i.cr = and i64 %i.cq, 3, !nosanitize !10
  %i.cs = icmp eq i64 %i.cr, 0, !nosanitize !10
  br i1 %i.cs, label %bb.v, label %bb.u, !prof !11, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @73, i64 %i.cq) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.v:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.ct, align 4, !tbaa !85
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %.sroa.517.0.copyload = load float, ptr %.sroa.517.0..sroa_idx, align 4, !tbaa !85
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.sroa.517.0 = phi float [ %.sroa.517.0.copyload, %bb.v ], [ 0.000000e+00, %bb.s ]
  %.sroa.016.0 = phi <2 x float> [ %.sroa.016.0.copyload, %bb.v ], [ zeroinitializer, %bb.s ] ; 2 uses
  %i.cu = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ah) #7 ; 4 uses
  %.not52 = icmp eq ptr %i.cu, null
  br i1 %.not52, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = ptrtoint ptr %i.cu to i64, !nosanitize !10 ; 2 uses
  %i.cw = and i64 %i.cv, 3, !nosanitize !10
  %i.cx = icmp eq i64 %i.cw, 0, !nosanitize !10
  br i1 %i.cx, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @74, i64 %i.cv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.cy, align 4, !tbaa !85
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !85
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.z ], [ 0.000000e+00, %bb.w ]
  %.sroa.013.0 = phi <2 x float> [ %.sroa.013.0.copyload, %bb.z ], [ zeroinitializer, %bb.w ] ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.013.0, %.sroa.016.0
  %i.cz = extractelement <2 x float> %foldExtExtBinop, i64 1
  %shift = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop63 = fmul <2 x float> %shift, %i.co
  %shift65 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop66 = fmul <2 x float> %i.cl, %shift65
  %i.da = fmul <2 x float> %i.cl, %i.co           ; 2 uses
  %i.db = fmul <2 x float> %i.cj, %i.cm           ; 2 uses
  %shift68 = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fadd <2 x float> %i.db, %shift68
  %foldExtExtBinop71 = fadd <2 x float> %i.da, %foldExtExtBinop69
  %shift73 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fsub <2 x float> %shift73, %foldExtExtBinop71
  %i.dc = extractelement <2 x float> %foldExtExtBinop74, i64 0 ; 2 uses
  %i.dd = fmul float %i.dc, 0.000000e+00          ; 2 uses
  %i.de = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = fmul <2 x float> %i.cj, %i.de
  %i.dg = shufflevector <2 x float> %i.cj, <2 x float> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.dh = fmul <2 x float> %i.dg, %i.de
  %i.di = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dj = fmul <2 x float> %i.di, %i.cm
  %i.dk = shufflevector <2 x float> %i.cm, <2 x float> %i.co, <2 x i32> <i32 1, i32 2>
  %i.dl = fmul <2 x float> %i.di, %i.dk
  %i.dm = shufflevector <2 x float> %i.cl, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.dn = fmul <2 x float> %i.dm, %i.cm           ; 2 uses
  %i.do = shufflevector <2 x float> %i.co, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.dp = fmul <2 x float> %i.cj, %i.do           ; 2 uses
  %i.dq = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = shufflevector <2 x float> %foldExtExtBinop63, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.ds = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dt = shufflevector <2 x float> %foldExtExtBinop66, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3>
  %i.du = fsub <2 x float> %i.dr, %i.dt
  %i.dv = fsub <2 x float> %i.dn, %i.dp
  %i.dw = fadd <2 x float> %i.dj, %i.du
  %i.dx = fadd <2 x float> %i.dl, %i.dv
  %i.dy = fadd <2 x float> %i.dh, %i.dx           ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.ea = fmul float %i.dz, 0.000000e+00          ; 2 uses
  %i.eb = fadd <2 x float> %i.df, %i.dw           ; 3 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0 ; 3 uses
  %i.ed = fsub float %i.ea, %i.ec
  %i.ee = fadd float %i.dd, %i.ed                 ; 2 uses
  %i.ef = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.eg = fsub float %i.ef, %i.ea
  %i.eh = fadd float %i.dd, %i.eg                 ; 2 uses
  %i.ei = fmul float %i.dz, %i.eh
  %i.ej = fmul float %i.ec, 0.000000e+00
  %i.ek = fmul float %i.ef, 0.000000e+00
  %i.el = fsub float %i.ej, %i.ek
  %i.em = fadd float %i.dc, %i.el                 ; 2 uses
  %i.en = fmul float %i.ec, %i.em
  %i.eo = fsub float %i.ei, %i.en
  %i.ep = fmul float %i.eo, 2.000000e+00
  %i.eq = fadd float %i.ep, 0.000000e+00
  %i.er = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.em, i64 1
  %i.et = fmul <2 x float> %i.eb, %i.es
  %i.eu = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.ee, i64 1
  %i.ew = fmul <2 x float> %i.dy, %i.ev
  %i.ex = fsub <2 x float> %i.et, %i.ew
  %i.ey = fmul <2 x float> %i.ex, splat (float 2.000000e+00)
  %i.ez = fadd <2 x float> %i.ey, <float 1.000000e+00, float 0.000000e+00>
  %foldExtExtBinop76 = fsub <2 x float> %.sroa.013.0, %.sroa.016.0
  %i.fa = fsub float %.sroa.5.0, %.sroa.517.0
  %i.fb = fmul float %i.eq, %i.cz
  %i.fc = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> %foldExtExtBinop76, <2 x i32> <i32 0, i32 2>
  %i.fe = fmul <2 x float> %i.ez, %i.fd           ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  %i.fg = fadd float %i.ff, %i.fb
  %i.fh = extractelement <2 x float> %i.fe, i64 0
  %i.fi = fadd float %i.fh, %i.fg
  ret float %i.fi
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

declare ptr @b3GetBodyState(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSpinTorque(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #7 ; 3 uses
  %i.e = icmp ne ptr %i.c, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %i.d, null, !nosanitize !10
  %i.k = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @76, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.p = load float, ptr %i.o, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.r = load float, ptr %i.q, align 4, !tbaa !75
  %i.s = fmul float %i.p, %i.r
  ret float %i.s
}

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSteeringAngle(i64 %0) local_unnamed_addr #5 !func_sanitize !80 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 4 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #7 ; 8 uses
  %i.e = icmp ne ptr %i.d, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 3, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @77, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !91   ; 2 uses
  %i.l = icmp ne ptr %i.c, null, !nosanitize !10
  %i.m = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  %i.p = and i1 %i.l, %i.o, !nosanitize !10
  br i1 %i.p, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @78, i64 %i.m) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !92   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93   ; 4 uses
  %i.u = sext i32 %i.r to i64                     ; 2 uses
  %i.v = getelementptr inbounds [128 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = shl nsw i64 %i.u, 7
  %i.x = ptrtoint ptr %i.t to i64, !nosanitize !10 ; 6 uses
  %i.y = add i64 %i.w, %i.x, !nosanitize !10      ; 3 uses
  %i.z = icmp ne ptr %i.t, null, !nosanitize !10  ; 3 uses
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = xor i1 %i.z, %i.aa
  %i.ac = icmp uge i64 %i.y, %i.x, !nosanitize !10
  %i.ad = icmp slt i32 %i.r, 0
  %i.ae = xor i1 %i.ad, %i.ac
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !10
  br i1 %i.af, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %i.x, i64 %i.y) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ag = sext i32 %i.k to i64                    ; 2 uses
  %i.ah = getelementptr inbounds [128 x i8], ptr %i.t, i64 %i.ag ; 3 uses
  %i.ai = shl nsw i64 %i.ag, 7
  %i.aj = add i64 %i.ai, %i.x, !nosanitize !10    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.z, %i.ak
  %i.am = icmp uge i64 %i.aj, %i.x, !nosanitize !10
  %i.an = icmp slt i32 %i.k, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !10
  br i1 %i.ap, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.x, i64 %i.aj) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !94 ; 4 uses
  %i.as = ptrtoint ptr %i.v to i64, !nosanitize !10 ; 2 uses
  %i.at = and i64 %i.as, 7, !nosanitize !10
  %i.au = icmp eq i64 %i.at, 0, !nosanitize !10
  %i.av = and i1 %i.z, %i.au
  br i1 %i.av, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @81, i64 %i.as) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !96 ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds [88 x i8], ptr %i.ar, i64 %i.ay ; 2 uses
  %i.ba = mul nsw i64 %i.ay, 88
  %i.bb = ptrtoint ptr %i.ar to i64, !nosanitize !10 ; 6 uses
  %i.bc = add i64 %i.ba, %i.bb, !nosanitize !10   ; 3 uses
  %i.bd = icmp ne ptr %i.ar, null, !nosanitize !10 ; 3 uses
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = xor i1 %i.bd, %i.be
  %i.bg = icmp uge i64 %i.bc, %i.bb, !nosanitize !10
  %i.bh = icmp slt i32 %i.ax, 0
  %i.bi = xor i1 %i.bh, %i.bg
  %i.bj = and i1 %i.bf, %i.bi, !nosanitize !10
  br i1 %i.bj, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %i.bb, i64 %i.bc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bk = ptrtoint ptr %i.ah to i64, !nosanitize !10 ; 2 uses
  %i.bl = and i64 %i.bk, 7, !nosanitize !10
  %i.bm = icmp eq i64 %i.bl, 0, !nosanitize !10
  br i1 %i.bm, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.bk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !96 ; 2 uses
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [88 x i8], ptr %i.ar, i64 %i.bp ; 2 uses
  %i.br = mul nsw i64 %i.bp, 88
  %i.bs = add i64 %i.br, %i.bb, !nosanitize !10   ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = xor i1 %i.bd, %i.bt
  %i.bv = icmp uge i64 %i.bs, %i.bb, !nosanitize !10
  %i.bw = icmp slt i32 %i.bo, 0
  %i.bx = xor i1 %i.bw, %i.bv
  %i.by = and i1 %i.bu, %i.bx, !nosanitize !10
  br i1 %i.by, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.bb, i64 %i.bs) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !97 ; 2 uses
  %i.cb = ptrtoint ptr %i.az to i64, !nosanitize !10 ; 2 uses
  %i.cc = and i64 %i.cb, 7, !nosanitize !10
  %i.cd = icmp eq i64 %i.cc, 0, !nosanitize !10
  %i.ce = and i1 %i.bd, %i.cd
  br i1 %i.ce, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.cb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !97 ; 2 uses
  %i.ch = load ptr, ptr %i.az, align 8, !tbaa !107 ; 3 uses
  %i.ci = sext i32 %i.cg to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [216 x i8], ptr %i.ch, i64 %i.ci ; 3 uses
  %i.ck = mul nsw i64 %i.ci, 216
  %i.cl = ptrtoint ptr %i.ch to i64, !nosanitize !10 ; 3 uses
  %i.cm = add i64 %i.ck, %i.cl, !nosanitize !10   ; 3 uses
  %i.cn = icmp ne ptr %i.ch, null, !nosanitize !10 ; 2 uses
  %i.co = icmp eq i64 %i.cm, 0
  %i.cp = xor i1 %i.cn, %i.co
  %i.cq = icmp uge i64 %i.cm, %i.cl, !nosanitize !10
  %i.cr = icmp slt i32 %i.cg, 0
  %i.cs = xor i1 %i.cr, %i.cq
  %i.ct = and i1 %i.cp, %i.cs, !nosanitize !10
  br i1 %i.ct, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.cl, i64 %i.cm) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.cu = ptrtoint ptr %i.bq to i64, !nosanitize !10 ; 2 uses
  %i.cv = and i64 %i.cu, 7, !nosanitize !10
  %i.cw = icmp eq i64 %i.cv, 0, !nosanitize !10
  br i1 %i.cw, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %i.cu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.bq, align 8, !tbaa !107 ; 3 uses
  %i.cy = sext i32 %i.ca to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [216 x i8], ptr %i.cx, i64 %i.cy ; 3 uses
  %i.da = mul nsw i64 %i.cy, 216
  %i.db = ptrtoint ptr %i.cx to i64, !nosanitize !10 ; 3 uses
  %i.dc = add i64 %i.da, %i.db, !nosanitize !10   ; 3 uses
  %i.dd = icmp ne ptr %i.cx, null, !nosanitize !10 ; 2 uses
  %i.de = icmp eq i64 %i.dc, 0
  %i.df = xor i1 %i.dd, %i.de
  %i.dg = icmp uge i64 %i.dc, %i.db, !nosanitize !10
  %i.dh = icmp slt i32 %i.ca, 0
  %i.di = xor i1 %i.dh, %i.dg
  %i.dj = and i1 %i.df, %i.di, !nosanitize !10
  br i1 %i.dj, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.db, i64 %i.dc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.dk = ptrtoint ptr %i.cj to i64, !nosanitize !10 ; 2 uses
  %i.dl = and i64 %i.dk, 3, !nosanitize !10
  %i.dm = icmp eq i64 %i.dl, 0, !nosanitize !10
  %i.dn = and i1 %i.cn, %i.dm
  br i1 %i.dn, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @89, i64 %i.dk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.do = ptrtoint ptr %i.cz to i64, !nosanitize !10 ; 2 uses
  %i.dp = and i64 %i.do, 3, !nosanitize !10
  %i.dq = icmp eq i64 %i.dp, 0, !nosanitize !10
  %i.dr = and i1 %i.dd, %i.dq
  br i1 %i.dr, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @90, i64 %i.do) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %2 = load <2 x float>, ptr %1, align 4          ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %3 = load <2 x float>, ptr %i.ds, align 4       ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %5 = load <2 x float>, ptr %4, align 4          ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %6 = load <2 x float>, ptr %i.dt, align 4       ; 4 uses
  %7 = shufflevector <2 x float> %5, <2 x float> %6, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %8 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %9 = fmul <4 x float> %7, %8                    ; 4 uses
  %shift = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %9, %shift
  %shift78 = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop79 = fadd <4 x float> %9, %shift78
  %shift81 = shufflevector <4 x float> %foldExtExtBinop79, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop82 = fsub <4 x float> %9, %shift81 ; 3 uses
  %10 = shufflevector <2 x float> %5, <2 x float> %6, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %11 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 1, i32 3, i32 2, i32 0> ; 2 uses
  %i.du = fmul <4 x float> %10, %11               ; 4 uses
  %shift84 = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop85 = fsub <4 x float> %i.du, %shift84
  %shift87 = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop88 = fadd <4 x float> %foldExtExtBinop85, %shift87
  %shift90 = shufflevector <4 x float> %foldExtExtBinop88, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop91 = fadd <4 x float> %i.du, %shift90 ; 5 uses
  %i.dv = shufflevector <2 x float> %6, <2 x float> %5, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.dw = fmul <4 x float> %i.dv, %11             ; 4 uses
  %shift93 = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop94 = fsub <4 x float> %i.dw, %shift93
  %shift96 = shufflevector <4 x float> %foldExtExtBinop94, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop97 = fadd <4 x float> %i.dw, %shift96
  %shift99 = shufflevector <4 x float> %foldExtExtBinop97, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop100 = fadd <4 x float> %i.dw, %shift99 ; 5 uses
  %i.dx = shufflevector <2 x float> %6, <2 x float> %5, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  %12 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.dy = fmul <4 x float> %i.dx, %12             ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %13 = load <2 x float>, ptr %i.dz, align 4      ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %15 = load <2 x float>, ptr %14, align 4        ; 3 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 4    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ed = load <2 x float>, ptr %i.ec, align 4    ; 3 uses
  %i.ee = shufflevector <2 x float> %13, <2 x float> %15, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.eb, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.eg = fmul <4 x float> %i.ee, %i.ef           ; 2 uses
  %i.eh = shufflevector <2 x float> %13, <2 x float> %15, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.ei = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ej = fmul <4 x float> %i.eh, %i.ei           ; 3 uses
  %16 = shufflevector <2 x float> %15, <2 x float> %13, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.el = fmul <4 x float> %16, %i.ek             ; 4 uses
  %i.em = shufflevector <4 x float> %i.dy, <4 x float> %i.eg, <4 x i32> <i32 2, i32 4, i32 6, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.eo = shufflevector <4 x float> %i.dy, <4 x float> %i.eg, <4 x i32> <i32 3, i32 5, i32 7, i32 poison>
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eq = fsub <4 x float> %i.en, %i.ep
  %i.er = shufflevector <4 x float> %i.dy, <4 x float> %i.ej, <4 x i32> <i32 1, i32 6, i32 7, i32 poison>
  %i.es = shufflevector <4 x float> %i.er, <4 x float> %i.el, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.et = fadd <4 x float> %i.eq, %i.es           ; 4 uses
  %foldExtExtBinop102 = fadd <4 x float> %i.dy, %i.et ; 5 uses
  %foldExtExtBinop104 = fadd <4 x float> %i.el, %i.et
  %i.eu = extractelement <4 x float> %foldExtExtBinop104, i64 1 ; 4 uses
  %foldExtExtBinop106 = fadd <4 x float> %i.el, %i.et
  %i.ev = extractelement <4 x float> %foldExtExtBinop106, i64 2 ; 4 uses
  %foldExtExtBinop108 = fadd <4 x float> %i.el, %i.et
  %i.ew = extractelement <4 x float> %foldExtExtBinop108, i64 3 ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ed, <2 x float> %i.eb, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ey = fmul <4 x float> %16, %i.ex             ; 4 uses
  %shift110 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop111 = fadd <4 x float> %i.ey, %shift110
  %shift113 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop114 = fadd <4 x float> %shift113, %foldExtExtBinop111
  %shift116 = shufflevector <4 x float> %foldExtExtBinop114, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop117 = fsub <4 x float> %i.ey, %shift116
  %i.ez = extractelement <4 x float> %foldExtExtBinop117, i64 0 ; 2 uses
  %foldExtExtBinop119 = fmul <4 x float> %foldExtExtBinop82, %foldExtExtBinop100
  %foldExtExtBinop121 = fmul <4 x float> %foldExtExtBinop91, %foldExtExtBinop100 ; 2 uses
  %foldExtExtBinop123 = fmul <4 x float> %foldExtExtBinop82, %foldExtExtBinop102 ; 2 uses
  %foldExtExtBinop125 = fmul <4 x float> %foldExtExtBinop91, %foldExtExtBinop102
  %foldExtExtBinop127 = fmul <4 x float> %foldExtExtBinop102, %foldExtExtBinop100
  %foldExtExtBinop129 = fmul <4 x float> %foldExtExtBinop91, %foldExtExtBinop91
  %foldExtExtBinop131 = fmul <4 x float> %foldExtExtBinop100, %foldExtExtBinop100
  %foldExtExtBinop133 = fmul <4 x float> %foldExtExtBinop102, %foldExtExtBinop102 ; 2 uses
  %foldExtExtBinop135 = fmul <4 x float> %foldExtExtBinop91, %foldExtExtBinop82
  %foldExtExtBinop137 = fsub <4 x float> %foldExtExtBinop127, %foldExtExtBinop135
  %i.fa = extractelement <4 x float> %foldExtExtBinop137, i64 0
  %i.fb = fmul float %i.fa, 2.000000e+00
  %foldExtExtBinop139 = fadd <4 x float> %foldExtExtBinop129, %foldExtExtBinop133
  %i.fc = extractelement <4 x float> %foldExtExtBinop139, i64 0
  %i.fd = fmul float %i.fc, 2.000000e+00
  %i.fe = fsub float 1.000000e+00, %i.fd
  %foldExtExtBinop141 = fadd <4 x float> %foldExtExtBinop121, %foldExtExtBinop123
  %i.ff = extractelement <4 x float> %foldExtExtBinop141, i64 0
  %i.fg = fmul float %i.ff, 2.000000e+00
  %foldExtExtBinop143 = fadd <4 x float> %foldExtExtBinop125, %foldExtExtBinop119
  %i.fh = extractelement <4 x float> %foldExtExtBinop143, i64 0
  %i.fi = fmul float %i.fh, 2.000000e+00
  %foldExtExtBinop145 = fsub <4 x float> %foldExtExtBinop121, %foldExtExtBinop123
  %i.fj = extractelement <4 x float> %foldExtExtBinop145, i64 0
  %i.fk = fmul float %i.fj, 2.000000e+00
  %foldExtExtBinop147 = fadd <4 x float> %foldExtExtBinop133, %foldExtExtBinop131
  %i.fl = extractelement <4 x float> %foldExtExtBinop147, i64 0
  %i.fm = fmul float %i.fl, 2.000000e+00
  %i.fn = fsub float 1.000000e+00, %i.fm
  %i.fo = fmul float %i.ez, %i.ev
  %i.fp = fmul float %i.ew, %i.ev
  %i.fq = fmul float %i.ez, %i.eu
  %i.fr = fmul float %i.ew, %i.eu
  %i.fs = fmul float %i.ev, %i.ev
  %i.ft = fmul float %i.eu, %i.eu
  %i.fu = fadd float %i.fr, %i.fo
  %i.fv = fmul float %i.fu, 2.000000e+00          ; 2 uses
  %i.fw = fsub float %i.fp, %i.fq
  %i.fx = fmul float %i.fw, 2.000000e+00          ; 2 uses
  %i.fy = fadd float %i.ft, %i.fs
  %i.fz = fmul float %i.fy, 2.000000e+00
  %i.ga = fsub float 1.000000e+00, %i.fz          ; 2 uses
  %i.gb = fmul float %i.fi, %i.fv
  %i.gc = fmul float %i.fk, %i.fx
  %i.gd = fadd float %i.gb, %i.gc
  %i.ge = fmul float %i.fn, %i.ga
  %i.gf = fadd float %i.ge, %i.gd
  %i.gg = fmul float %i.fb, %i.fv
  %i.gh = fmul float %i.fe, %i.fx
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = fmul float %i.fg, %i.ga
  %i.gk = fadd float %i.gj, %i.gi
  %i.gl = fneg float %i.gk
  %i.gm = tail call float @b3Atan2(float noundef %i.gl, float noundef %i.gf) #7
  ret float %i.gm
}

declare float @b3Atan2(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSteeringTorque(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #7 ; 3 uses
  %i.e = icmp ne ptr %i.c, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @91, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %i.d, null, !nosanitize !10
  %i.k = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @92, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.p = load float, ptr %i.o, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.r = load float, ptr %i.q, align 4, !tbaa !75
  %i.s = fmul float %i.p, %i.r
  ret float %i.s
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetWheelJointForce(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !109 {
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @93, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
  %i.h = icmp ne ptr %0, null, !nosanitize !10
  %i.i = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @94, i64 %i.i) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.n = load float, ptr %i.m, align 4, !tbaa !112
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.p = load float, ptr %i.o, align 4, !tbaa !113
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load float, ptr %i.q, align 4, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !85 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.v = load float, ptr %i.u, align 8, !tbaa !108
  %i.w = fadd float %i.r, %i.p
  %i.x = fadd float %i.w, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load <2 x float>, ptr %i.y, align 4      ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ab = load <2 x float>, ptr %i.aa, align 4    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = load <2 x float>, ptr %i.ac, align 4    ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.af = load <2 x float>, ptr %i.ae, align 4    ; 4 uses
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fmul <2 x float> %i.t, %i.ah            ; 4 uses
  %i.aj = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = insertelement <2 x float> %i.aj, float %i.x, i64 0
  %i.al = fmul <2 x float> %i.ak, %i.ah           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ab
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
end_hunk_0
