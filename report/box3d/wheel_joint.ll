Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/wheel_joint?download=true
inline.NumInlined: 311
inline.NumDeleted: 26
begin_hunk_0_@b3WheelJoint_GetTargetSteeringAngle:bb.a
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSpinSpeed(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.244.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.244.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8 ; 4 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.k
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !90
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [88 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !91
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [216 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ab = load <2 x float>, ptr %i.z, align 4     ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ad = load <2 x float>, ptr %i.ac, align 4    ; 5 uses
  %i.ae = load <2 x float>, ptr %i.aa, align 4    ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 5 uses
  %i.ah = tail call ptr @b3GetBodyState(ptr noundef %i.c, ptr noundef %i.l) #8 ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.ai, align 4, !tbaa !79
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %.sroa.517.0.copyload = load float, ptr %.sroa.517.0..sroa_idx, align 4, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.517.0 = phi float [ %.sroa.517.0.copyload, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.016.0 = phi <2 x float> [ %.sroa.016.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.aj = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef nonnull %i.n) #8 ; 3 uses
  %.not46 = icmp eq ptr %i.aj, null
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.ak, align 4, !tbaa !79
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.sroa.013.0 = phi <2 x float> [ %.sroa.013.0.copyload, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.013.0, %.sroa.016.0
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 1
  %shift = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fmul <2 x float> %shift, %i.ag
  %shift55 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fmul <2 x float> %i.ad, %shift55
  %i.am = fmul <2 x float> %i.ad, %i.ag           ; 2 uses
  %i.an = fmul <2 x float> %i.ab, %i.ae           ; 2 uses
  %shift58 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fadd <2 x float> %i.an, %shift58
  %foldExtExtBinop61 = fadd <2 x float> %i.am, %foldExtExtBinop59
  %shift63 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fsub <2 x float> %shift63, %foldExtExtBinop61
  %i.ao = extractelement <2 x float> %foldExtExtBinop64, i64 0 ; 2 uses
  %i.ap = fmul float %i.ao, 0.000000e+00          ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ar = fmul <2 x float> %i.ab, %i.aq
  %i.as = shufflevector <2 x float> %i.ab, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.av = fmul <2 x float> %i.au, %i.ae
  %i.aw = shufflevector <2 x float> %i.ae, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.ax = fmul <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <2 x float> %i.ad, <2 x float> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.az = fmul <2 x float> %i.ay, %i.ae           ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ag, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.bb = fmul <2 x float> %i.ab, %i.ba           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bd = shufflevector <2 x float> %foldExtExtBinop53, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3>
  %i.be = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = shufflevector <2 x float> %foldExtExtBinop56, <2 x float> %i.be, <2 x i32> <i32 0, i32 3>
  %i.bg = fsub <2 x float> %i.bd, %i.bf
  %i.bh = fsub <2 x float> %i.az, %i.bb
  %i.bi = fadd <2 x float> %i.av, %i.bg
  %i.bj = fadd <2 x float> %i.ax, %i.bh
  %i.bk = fadd <2 x float> %i.at, %i.bj           ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bm = fmul float %i.bl, 0.000000e+00          ; 2 uses
  %i.bn = fadd <2 x float> %i.ar, %i.bi           ; 3 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0 ; 3 uses
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = fadd float %i.ap, %i.bp                 ; 2 uses
  %i.br = extractelement <2 x float> %i.bn, i64 1 ; 2 uses
  %i.bs = fsub float %i.br, %i.bm
  %i.bt = fadd float %i.ap, %i.bs                 ; 2 uses
  %i.bu = fmul float %i.bl, %i.bt
  %i.bv = fmul float %i.bo, 0.000000e+00
  %i.bw = fmul float %i.br, 0.000000e+00
  %i.bx = fsub float %i.bv, %i.bw
  %i.by = fadd float %i.ao, %i.bx                 ; 2 uses
  %i.bz = fmul float %i.bo, %i.by
  %i.ca = fsub float %i.bu, %i.bz
  %i.cb = fmul float %i.ca, 2.000000e+00
  %i.cc = fadd float %i.cb, 0.000000e+00
  %i.cd = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 1
  %i.cf = fmul <2 x float> %i.bn, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.bq, i64 1
  %i.ci = fmul <2 x float> %i.bk, %i.ch
  %i.cj = fsub <2 x float> %i.cf, %i.ci
  %i.ck = fmul <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %i.ck, <float 1.000000e+00, float 0.000000e+00>
  %foldExtExtBinop66 = fsub <2 x float> %.sroa.013.0, %.sroa.016.0
  %i.cm = fsub float %.sroa.5.0, %.sroa.517.0
  %i.cn = fmul float %i.cc, %i.al
  %i.co = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> %foldExtExtBinop66, <2 x i32> <i32 0, i32 2>
  %i.cq = fmul <2 x float> %i.cl, %i.cp           ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1
  %i.cs = fadd float %i.cr, %i.cn
  %i.ct = extractelement <2 x float> %i.cq, i64 0
  %i.cu = fadd float %i.ct, %i.cs
  ret float %i.cu
}

declare ptr @b3GetBodyState(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSpinTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.f = load float, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.h = load float, ptr %i.g, align 4, !tbaa !71
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSteeringAngle(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.231.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.231.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8 ; 2 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [128 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !90
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [88 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !90
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [88 x i8], ptr %i.p, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds [216 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.ag = sext i32 %i.ab to i64
  %i.ah = getelementptr inbounds [216 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %1 = load <4 x float>, ptr %i.ai, align 4       ; 3 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.am = load <2 x float>, ptr %i.al, align 4    ; 3 uses
  %i.an = shufflevector <4 x float> %1, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.ak, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.ap = fmul <4 x float> %i.an, %i.ao           ; 2 uses
  %i.aq = shufflevector <4 x float> %1, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.ar = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.as = fmul <4 x float> %i.aq, %i.ar           ; 3 uses
  %2 = shufflevector <4 x float> %1, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.at = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.au = fmul <4 x float> %2, %i.at              ; 2 uses
  %i.av = shufflevector <2 x float> %i.am, <2 x float> %i.ak, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aw = fmul <4 x float> %2, %i.av              ; 4 uses
  %shift = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.aw, %shift
  %shift64 = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop65 = fadd <4 x float> %shift64, %foldExtExtBinop
  %shift67 = shufflevector <4 x float> %foldExtExtBinop65, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop68 = fsub <4 x float> %i.aw, %shift67 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %3 = load <4 x float>, ptr %i.ax, align 4       ; 3 uses
  %i.az = load <2 x float>, ptr %i.ay, align 4    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bb = load <2 x float>, ptr %i.ba, align 4    ; 3 uses
  %i.bc = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.bd = shufflevector <2 x float> %i.bb, <2 x float> %i.az, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.be = fmul <4 x float> %i.bc, %i.bd           ; 2 uses
  %i.bf = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 3>
  %i.bg = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.bh = fmul <4 x float> %i.bf, %i.bg           ; 3 uses
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bj = fmul <4 x float> %4, %i.bi              ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bb, <2 x float> %i.az, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bl = fmul <4 x float> %4, %i.bk              ; 4 uses
  %i.bm = shufflevector <4 x float> %i.as, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 6, i32 0>
  %i.bn = shufflevector <4 x float> %i.as, <4 x float> %i.ap, <4 x i32> <i32 1, i32 5, i32 7, i32 1>
  %i.bo = fsub <4 x float> %i.bm, %i.bn
  %i.bp = shufflevector <4 x float> %i.au, <4 x float> %i.as, <4 x i32> <i32 0, i32 6, i32 7, i32 0>
  %i.bq = fadd <4 x float> %i.bp, %i.bo
  %i.br = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.bs = fadd <4 x float> %i.br, %i.bq           ; 5 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.bu = fmul <4 x float> %i.bs, %i.bt           ; 3 uses
  %foldExtExtBinop70 = fmul <4 x float> %i.bs, %foldExtExtBinop68
  %shift72 = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop73 = fsub <4 x float> %shift72, %foldExtExtBinop70
  %i.bv = extractelement <4 x float> %foldExtExtBinop73, i64 0
  %i.bw = fmul float %i.bv, 2.000000e+00
  %i.bx = shufflevector <4 x float> %i.bs, <4 x float> %foldExtExtBinop68, <4 x i32> <i32 2, i32 4, i32 4, i32 1>
  %i.by = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bz = fmul <4 x float> %i.bx, %i.by           ; 4 uses
  %foldExtExtBinop75 = fadd <4 x float> %i.bu, %i.bz
  %i.ca = extractelement <4 x float> %foldExtExtBinop75, i64 3
  %i.cb = fmul float %i.ca, 2.000000e+00
  %i.cc = fsub float 1.000000e+00, %i.cb
  %i.cd = shufflevector <4 x float> %i.bu, <4 x float> %i.bz, <4 x i32> <i32 5, i32 4, i32 0, i32 2> ; 2 uses
  %i.ce = fadd <4 x float> %i.bz, %i.cd
  %i.cf = fsub <4 x float> %i.bz, %i.cd
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> %i.ce, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ch = fmul <4 x float> %i.cg, splat (float 2.000000e+00) ; 4 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 3
  %i.cj = fsub float 1.000000e+00, %i.ci
  %i.ck = shufflevector <4 x float> %i.be, <4 x float> %i.bh, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.cm = shufflevector <4 x float> %i.be, <4 x float> %i.bh, <4 x i32> <i32 1, i32 3, i32 5, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 2 uses
  %i.co = fsub <4 x float> %i.cl, %i.cn
  %i.cp = fadd <4 x float> %i.cl, %i.cn
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cr = shufflevector <4 x float> %i.bh, <4 x float> %i.bj, <4 x i32> <i32 2, i32 3, i32 4, i32 poison>
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ct = fadd <4 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = shufflevector <4 x float> %i.bj, <4 x float> %i.bl, <4 x i32> <i32 1, i32 2, i32 3, i32 4> ; 2 uses
  %i.cv = fadd <4 x float> %i.cu, %i.ct           ; 4 uses
  %i.cw = fsub <4 x float> %i.cu, %i.ct           ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cv, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cy = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.cz = fmul <4 x float> %i.cx, %i.cy           ; 4 uses
  %i.da = extractelement <4 x float> %i.cv, i64 1 ; 2 uses
  %i.db = extractelement <4 x float> %i.cv, i64 2
  %i.dc = fmul float %i.db, %i.da
  %i.dd = extractelement <4 x float> %i.cw, i64 3
  %i.de = fmul float %i.dd, %i.da
  %i.df = extractelement <4 x float> %i.cz, i64 2
  %i.dg = fadd float %i.df, %i.de
  %i.dh = fmul float %i.dg, 2.000000e+00          ; 2 uses
  %i.di = extractelement <4 x float> %i.cz, i64 3
  %i.dj = fsub float %i.dc, %i.di
  %i.dk = fmul float %i.dj, 2.000000e+00          ; 2 uses
  %shift77 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop78 = fadd <4 x float> %i.cz, %shift77
  %i.dl = extractelement <4 x float> %foldExtExtBinop78, i64 0
  %i.dm = fmul float %i.dl, 2.000000e+00
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = extractelement <4 x float> %i.ch, i64 2
  %i.dp = fmul float %i.do, %i.dh
  %i.dq = extractelement <4 x float> %i.ch, i64 0
  %i.dr = fmul float %i.dq, %i.dk
  %i.ds = fadd float %i.dp, %i.dr
  %i.dt = fmul float %i.cj, %i.dn
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = fmul float %i.bw, %i.dh
  %i.dw = fmul float %i.cc, %i.dk
  %i.dx = fadd float %i.dv, %i.dw
  %i.dy = extractelement <4 x float> %i.ch, i64 1
  %i.dz = fmul float %i.dy, %i.dn
  %i.ea = fadd float %i.dz, %i.dx
  %i.eb = fneg float %i.ea
  %i.ec = tail call float @b3Atan2(float noundef %i.eb, float noundef %i.du) #8
  ret float %i.ec
}

declare float @b3Atan2(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3WheelJoint_GetSteeringTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 8) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.f = load float, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.h = load float, ptr %i.g, align 4, !tbaa !71
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetWheelJointForce(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.e = load float, ptr %i.d, align 4, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.g = load float, ptr %i.f, align 4, !tbaa !106
  %i.h = fadd float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.j = load float, ptr %i.i, align 4, !tbaa !107
  %i.k = fadd float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.m = load float, ptr %i.l, align 8, !tbaa !102 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load <2 x float>, ptr %i.t, align 4      ; 4 uses
  %i.v = load <2 x float>, ptr %i.c, align 4, !tbaa !79
  %i.w = insertelement <2 x float> poison, float %i.m, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.v, %i.x              ; 4 uses
  %i.z = fmul float %i.m, %i.k                    ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.q
  %i.aa = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1 ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.o            ; 2 uses
  %i.ad = shufflevector <2 x float> %i.o, <2 x float> %i.q, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ae = fmul <2 x float> %i.y, %i.ad
  %i.af = insertelement <2 x float> %i.aa, float %i.z, i64 0 ; 3 uses
  %i.ag = fmul <2 x float> %i.af, %i.o
  %i.ah = fsub <2 x float> %i.ac, %i.ae
  %i.ai = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aj = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.ak = fsub <2 x float> %i.aj, %i.ag
  %i.al = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.am = fmul <2 x float> %i.af, %i.al
  %i.an = fmul <2 x float> %i.ab, %i.al
  %i.ao = fadd <2 x float> %i.am, %i.ah           ; 2 uses
  %i.ap = fadd <2 x float> %i.an, %i.ak           ; 3 uses
  %i.aq = fmul <2 x float> %i.ad, %i.ao
  %i.ar = shufflevector <2 x float> %i.q, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.as = fmul <2 x float> %i.ar, %i.ap
  %i.at = fmul <2 x float> %i.o, %i.ap
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.av = fmul <2 x float> %i.ad, %i.au
  %i.aw = fsub <2 x float> %i.aq, %i.as
  %i.ax = fsub <2 x float> %i.at, %i.av
  %i.ay = fmul <2 x float> %i.aw, splat (float 2.000000e+00)
  %i.az = fmul <2 x float> %i.ax, splat (float 2.000000e+00)
  %i.ba = fadd <2 x float> %i.y, %i.ay            ; 4 uses
  %i.bb = fadd <2 x float> %i.af, %i.az           ; 4 uses
  %foldExtExtBinop45 = fmul <2 x float> %i.u, %i.ba
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %foldExtExtBinop47 = fmul <2 x float> %i.s, %i.bb
  %foldExtExtBinop49 = fsub <2 x float> %foldExtExtBinop45, %foldExtExtBinop47
  %i.bd = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.be = fmul <2 x float> %i.s, %i.bd
  %i.bf = shufflevector <2 x float> %i.s, <2 x float> %i.u, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.ba
  %i.bh = fsub <2 x float> %i.be, %i.bg           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bb
  %i.bk = fmul <2 x float> %i.bi, %i.bd
  %i.bl = fadd <2 x float> %i.bj, %i.bh           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bn = shufflevector <2 x float> %foldExtExtBinop49, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.bo = fadd <2 x float> %i.bk, %i.bn           ; 2 uses
  %i.bp = fmul <2 x float> %i.bf, %i.bl
  %i.bq = shufflevector <2 x float> %i.u, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.br = fmul <2 x float> %i.bq, %i.bo
  %i.bs = fsub <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bu = fmul <2 x float> %i.s, %i.bt            ; 2 uses
  %shift = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fsub <2 x float> %i.bu, %shift
  %i.bv = extractelement <2 x float> %foldExtExtBinop51, i64 0
  %i.bw = fmul <2 x float> %i.bs, splat (float 2.000000e+00)
  %i.bx = fadd <2 x float> %i.ba, %i.bw
  %i.by = fmul float %i.bv, 2.000000e+00
  %i.bz = fadd float %i.bc, %i.by
  %.fca.0.insert.i64.i42 = insertvalue { <2 x float>, float } poison, <2 x float> %i.bx, 0
  %.fca.1.insert.i65.i43 = insertvalue { <2 x float>, float } %.fca.0.insert.i64.i42, float %i.bz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret { <2 x float>, float } %.fca.1.insert.i65.i43
}

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, float } @b3GetWheelJointTorque(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3880
end_hunk_0
