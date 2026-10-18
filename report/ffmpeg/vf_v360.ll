Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@tetrahedron_to_xyz:bb.a
  %i.m = fdiv nsz float %i.k, %i.l                ; 2 uses
  store float %i.i, ptr %5, align 4, !tbaa !29
  %i.n = fneg nsz float %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %.pre-phi, float 2.000000e+00, float 1.000000e+00)
  %i.q = fadd nsz float %i.p, %i.m
  %i.r = tail call nsz float @llvm.fabs.f32(float %i.q)
  %i.s = fsub nsz float 1.000000e+00, %i.r
  %i.t = tail call nsz float @llvm.fabs.f32(float %i.s)
  %i.u = insertelement <2 x float> poison, float %i.n, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float 2.000000e+00), <2 x float> <float 1.000000e+00, float -1.000000e+00>)
  store <2 x float> %i.w, ptr %i.o, align 4, !tbaa !29
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @barrelsplit_to_xyz(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) #4 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %2, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>     ; 5 uses
  %i.g = fadd nsz <2 x float> %i.c, splat (float 5.000000e-01)
  %i.h = fdiv nsz <2 x float> %i.g, %i.f          ; 4 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.j = fcmp nsz olt float %i.i, f0x3F2AAAAB
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load i32, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0                     ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = uitofp nneg i32 %i.l to float
  %i.o = extractelement <2 x float> %i.f, i64 0
  %i.p = fmul nnan nsz float %i.o, 2.000000e+00
  %i.q = fdiv nsz float %i.p, 3.000000e+00
  %i.r = extractelement <2 x float> %i.f, i64 1
  %i.s = fmul nnan nsz float %i.r, 5.000000e-01
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = insertelement <2 x float> poison, float %i.q, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.s, i64 1
  %i.x = fdiv nsz <2 x float> %i.u, %i.w
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = load float, ptr %i.y, align 8, !tbaa !78
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi <2 x float> [ %i.x, %bb.c ], [ %i.ab, %bb.d ]
  %i.ad = extractelement <2 x float> %i.h, i64 1  ; 2 uses
  %i.ae = fmul nsz float %i.ad, 2.000000e+00
  %i.af = tail call nsz float @llvm.floor.f32(float %i.ae) ; 2 uses
  %i.ag = fadd nsz float %i.ad, -2.500000e-01
  %i.ah = fsub nsz <2 x float> splat (float 1.000000e+00), %i.ac
  %i.ai = insertelement <2 x float> %i.h, float %i.af, i64 1
  %i.aj = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.ag, i64 1
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> <float 1.500000e+00, float -5.000000e-01>, <2 x float> %i.aj)
  %i.al = fdiv nsz <2 x float> %i.ak, %i.ah       ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fsub nsz float %i.am, %i.af
  %i.ao = fpext nsz float %i.an to double
  %i.ap = fmul nsz double %i.ao, f0x400921FB54442D18
  %i.aq = fptrunc nsz double %i.ap to float
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.aq) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ar = extractelement <2 x float> %i.al, i64 1
  %i.as = fpext nsz float %i.ar to double
  %i.at = fmul nsz double %i.as, f0x400921FB54442D18
  %i.au = fptrunc nsz double %i.at to float
  %sincos83 = tail call nsz { float, float } @llvm.sincos.f32(float %i.au) ; 2 uses
  %sin84 = extractvalue { float, float } %sincos83, 0
  %cos85 = extractvalue { float, float } %sincos83, 1
  %i.av = insertelement <2 x float> poison, float %cos85, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %cos, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %sin, i64 1
  %i.az = fmul nsz <2 x float> %i.aw, %i.ay
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = uitofp nneg i32 %i.l to float
  %i.bb = extractelement <2 x float> %i.f, i64 0
  %i.bc = fdiv nsz float %i.bb, 3.000000e+00
  %i.bd = extractelement <2 x float> %i.f, i64 1
  %i.be = fmul nnan nsz float %i.bd, 2.500000e-01
  %i.bf = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bc, i64 1
  %i.bj = fdiv nsz <2 x float> %i.bg, %i.bi
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !78
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = phi <2 x float> [ %i.bj, %bb.g ], [ %i.bn, %bb.h ]
  %i.bp = fsub nsz <2 x float> splat (float 1.000000e+00), %i.bo ; 7 uses
  %i.bq = extractelement <2 x float> %i.h, i64 1  ; 3 uses
  %i.br = fmul nsz float %i.bq, 4.000000e+00
  %i.bs = tail call nsz float @llvm.floor.f32(float %i.br) ; 3 uses
  %i.bt = fptosi float %i.bs to i32               ; 2 uses
  %i.bu = and i32 %i.bt, -3
  %i.bv = icmp eq i32 %i.bu, 1
  %i.bw = select nsz i1 %i.bv, float 1.000000e+00, float -1.000000e+00 ; 2 uses
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.i, float 3.000000e+00, float -2.000000e+00) ; 2 uses
  switch i32 %i.bt, label %bb.l [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.by = fsub nsz float 1.000000e+00, %i.bx
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float -2.000000e+00, float 5.000000e-01)
  %i.ca = extractelement <2 x float> %i.bp, i64 0
  %i.cb = fdiv nsz float %i.bz, %i.ca
  %i.cc = fadd nsz float %i.bs, %i.cb
  br label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float 2.000000e+00, float -1.500000e+00)
  %i.ce = extractelement <2 x float> %i.bp, i64 0
  %i.cf = fdiv nsz float %i.cd, %i.ce
  %i.cg = fadd nsz float %i.cf, 3.000000e+00
  %i.ch = fsub nsz float %i.cg, %i.bs
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 3806) #17
  tail call void @abort() #18
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.070 = phi nsz float [ %i.by, %bb.j ], [ %i.bx, %bb.k ]
  %.0 = phi nsz float [ %i.cc, %bb.j ], [ %i.ch, %bb.k ]
  %i.ci = fmul nnan nsz float %i.bw, 5.000000e-01
  %i.cj = fadd nsz float %.0, -5.000000e-01
  %i.ck = fsub nsz float 5.000000e-01, %.070
  %i.cl = fmul nsz float %i.bw, %i.cj
  %i.cm = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.ck, i64 1
  %i.co = fdiv nsz <2 x float> %i.cn, %i.bp       ; 5 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.co, %i.co
  %i.cp = extractelement <2 x float> %i.bp, i64 1
  %foldExtExtBinop94 = fmul nsz <2 x float> %i.bp, %foldExtExtBinop
  %i.cq = extractelement <2 x float> %foldExtExtBinop94, i64 1
  %foldExtExtBinop96 = fmul nsz <2 x float> %i.co, %i.co
  %foldExtExtBinop98 = fmul nsz <2 x float> %i.bp, %foldExtExtBinop96
  %foldExtExtBinop100 = fmul nsz <2 x float> %i.bp, %foldExtExtBinop98
  %i.cr = extractelement <2 x float> %foldExtExtBinop100, i64 0
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.cp, float %i.cr)
  %i.ct = fcmp nsz olt float %i.cs, 2.500000e-01
  %i.cu = zext i1 %i.ct to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.074 = phi i32 [ 1, %bb.e ], [ %i.cu, %bb.m ]
  %.072 = phi nsz float [ %sin84, %bb.e ], [ %i.ci, %bb.m ]
  %i.cv = phi <2 x float> [ %i.az, %bb.e ], [ %i.co, %bb.m ] ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 1
  store float %i.cw, ptr %5, align 4, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %.072, ptr %i.cx, align 4, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = extractelement <2 x float> %i.cv, i64 0
  store float %i.cz, ptr %i.cy, align 4, !tbaa !29
  ret i32 %.074
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tspyramid_to_xyz(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %5) #8 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %2, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = fadd nsz <2 x float> %i.c, splat (float 5.000000e-01)
  %i.h = fdiv nsz <2 x float> %i.g, %i.f          ; 5 uses
  %i.i = extractelement <2 x float> %i.h, i64 1   ; 27 uses
  %i.j = extractelement <2 x float> %i.h, i64 0   ; 20 uses
  %i.k = fcmp nsz olt float %i.j, 5.000000e-01
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> <float 4.000000e+00, float 2.000000e+00>, <2 x float> splat (float -1.000000e+00))
  store <2 x float> %i.l, ptr %5, align 4, !tbaa !29
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.m = fcmp nsz oge float %i.j, 6.875000e-01
  %i.n = fcmp nsz olt float %i.j, 8.125000e-01    ; 2 uses
  %or.cond = and i1 %i.m, %i.n                    ; 3 uses
  %i.o = fcmp nsz oge float %i.i, 3.750000e-01    ; 5 uses
  %or.cond3 = and i1 %or.cond, %i.o
  %i.p = fcmp nsz olt float %i.i, 6.250000e-01    ; 5 uses
  %or.cond5 = and i1 %i.p, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fsub nsz float 6.875000e-01, %i.j
  %i.r = fadd nsz float %i.i, -3.750000e-01
  %i.s = insertelement <2 x float> poison, float %i.q, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> <float 1.600000e+01, float 8.000000e+00>, <2 x float> <float 1.000000e+00, float -1.000000e+00>)
  store <2 x float> %i.u, ptr %5, align 4, !tbaa !29
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  %i.v = fcmp nsz oge float %i.j, 5.000000e-01    ; 2 uses
  %i.w = fcmp nsz olt float %i.j, 6.875000e-01
  %or.cond7 = and i1 %i.v, %i.w
  br i1 %or.cond7, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = fcmp nsz oge float %i.i, 0.000000e+00
  %i.y = fcmp nsz olt float %i.i, 3.750000e-01
  %or.cond9 = and i1 %i.x, %i.y
  br i1 %or.cond9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = fadd nnan nsz float %i.j, -5.000000e-01
  %i.aa = fmul nnan nsz float %i.z, 2.000000e+00
  %i.ab = fcmp nsz oge float %i.i, %i.aa
  %or.cond11 = and i1 %i.o, %i.p
  %or.cond112 = or i1 %i.ab, %or.cond11
  br i1 %or.cond112, label %bb.k, label %bb.i

bb.h:                                             ; preds = %bb.f
  %or.cond11.old = and i1 %i.o, %i.p
  br i1 %or.cond11.old, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = fcmp nsz oge float %i.i, 6.250000e-01
  %i.ad = fcmp nsz olt float %i.i, 1.000000e+00
  %or.cond13 = and i1 %i.ac, %i.ad
  br i1 %or.cond13, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ae = fsub nnan nsz float 1.000000e+00, %i.j
  %i.af = fmul nnan nsz float %i.ae, 2.000000e+00
  %i.ag = fcmp nsz ugt float %i.i, %i.af
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.g
  store float 1.000000e+00, ptr %5, align 4, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.j, float -2.000000e+00, float %i.i)
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.j, float -4.000000e+00, float 3.000000e+00)
  %i.ak = insertelement <2 x float> %i.h, float %i.ai, i64 1
  %i.al = fadd nsz <2 x float> %i.ak, <float -5.000000e-01, float 1.000000e+00>
  %i.am = fmul nsz <2 x float> %i.al, splat (float 2.000000e+00)
  %i.an = insertelement <2 x float> <float 1.875000e-01, float poison>, float %i.aj, i64 1
  %i.ao = fdiv nsz <2 x float> %i.am, %i.an       ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = fadd nsz float %i.ap, -1.000000e+00
  store float %i.aq, ptr %i.ah, align 4, !tbaa !29
  %i.ar = extractelement <2 x float> %i.ao, i64 0
  %i.as = fsub nsz float 1.000000e+00, %i.ar
  br label %bb.y

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.e
  %i.at = fcmp nsz oge float %i.j, 8.125000e-01
  %i.au = fcmp nsz olt float %i.j, 1.000000e+00
  %or.cond15 = and i1 %i.at, %i.au                ; 2 uses
  br i1 %or.cond15, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.av = fcmp nsz oge float %i.i, 0.000000e+00
  %i.aw = fcmp nsz olt float %i.i, 3.750000e-01
  %or.cond17 = and i1 %i.av, %i.aw
  br i1 %or.cond17, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = fmul nnan nsz float %i.i, 5.000000e-01
  %i.ay = fsub nsz float 1.000000e+00, %i.ax
  %i.az = fcmp nsz oge float %i.j, %i.ay
  %or.cond19 = and i1 %i.o, %i.p
  %or.cond113 = or i1 %or.cond19, %i.az
  br i1 %or.cond113, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  %or.cond19.old = and i1 %i.o, %i.p
  br i1 %or.cond19.old, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ba = fcmp nsz ult float %i.i, 6.250000e-01
  %i.bb = fcmp nsz uge float %i.i, 1.000000e+00
  %or.cond21.not117 = or i1 %i.ba, %i.bb
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.j, float 2.000000e+00, float -1.000000e+00)
  %i.bd = fcmp nsz ugt float %i.i, %i.bc
  %or.cond115 = or i1 %i.bd, %or.cond21.not117
  br i1 %or.cond115, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  store float -1.000000e+00, ptr %5, align 4, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.j, float 2.000000e+00, float %i.i)
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.j, float 4.000000e+00, float -3.000000e+00)
  %i.bh = insertelement <2 x float> %i.h, float %i.bf, i64 1
  %i.bi = fadd nsz <2 x float> %i.bh, <float -8.125000e-01, float -2.000000e+00>
  %i.bj = fmul nsz <2 x float> %i.bi, splat (float 2.000000e+00)
  %i.bk = insertelement <2 x float> <float 1.875000e-01, float poison>, float %i.bg, i64 1
  %i.bl = fdiv nsz <2 x float> %i.bj, %i.bk
  %i.bm = fadd nsz <2 x float> %i.bl, splat (float -1.000000e+00) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 1
  store float %i.bn, ptr %i.be, align 4, !tbaa !29
  %i.bo = extractelement <2 x float> %i.bm, i64 0
  br label %bb.y

._crit_edge:                                      ; preds = %bb.l, %bb.p
  %i.bp = fcmp nsz oge float %i.i, 0.000000e+00
  %i.bq = fcmp nsz olt float %i.i, 3.750000e-01
  %or.cond23 = and i1 %i.bp, %i.bq
  br i1 %or.cond23, label %bb.r, label %bb.x

bb.r:                                             ; preds = %._crit_edge
  %or.cond25 = and i1 %i.v, %i.n
  br i1 %or.cond25, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = fadd nnan nsz float %i.j, -5.000000e-01
  %i.bs = fmul nnan nsz float %i.br, 2.000000e+00
  %i.bt = fcmp nsz olt float %i.i, %i.bs
  %brmerge = or i1 %or.cond, %i.bt
  br i1 %brmerge, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  br i1 %or.cond, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  br i1 %or.cond15, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bu = fmul nnan nsz float %i.i, 5.000000e-01
  %i.bv = fsub nsz float 1.000000e+00, %i.bu
  %i.bw = fcmp nsz olt float %i.j, %i.bv
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.t, %bb.v
  %6 = fsub nsz float 1.000000e+00, %i.j
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.i, float -5.000000e-01, float %6)
  %i.by = fsub nsz float 5.000000e-01, %i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float -1.000000e+00, ptr %i.bz, align 4, !tbaa !29
  %7 = fsub nnan nsz float 3.750000e-01, %i.i
  %8 = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ca = insertelement <2 x float> %8, float %7, i64 1
  %i.cb = fmul nsz <2 x float> %i.ca, splat (float 2.000000e+00)
  %i.cc = insertelement <2 x float> <float poison, float 3.750000e-01>, float %i.by, i64 0
  %i.cd = fdiv nsz <2 x float> %i.cb, %i.cc
  %i.ce = fadd nsz <2 x float> %i.cd, splat (float -1.000000e+00) ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0
  store float %i.cf, ptr %5, align 4, !tbaa !29
  %i.cg = extractelement <2 x float> %i.ce, i64 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge
  %i.ch = fsub nsz float 5.000000e-01, %i.j
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.i, float 5.000000e-01, float %i.ch)
  %i.cj = fadd nsz float %i.i, -5.000000e-01
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float 1.000000e+00, ptr %i.ck, align 4, !tbaa !29
  %i.cl = fsub nsz float 1.000000e+00, %i.i
  %i.cm = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 1
  %i.co = fmul nsz <2 x float> %i.cn, splat (float 2.000000e+00)
  %i.cp = insertelement <2 x float> <float poison, float 3.750000e-01>, float %i.cj, i64 0
  %i.cq = fdiv nsz <2 x float> %i.co, %i.cp       ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  %i.cs = fadd nsz float %i.cr, -1.000000e+00
  store float %i.cs, ptr %5, align 4, !tbaa !29
  %i.ct = extractelement <2 x float> %i.cq, i64 1
  %i.cu = fsub nsz float 1.000000e+00, %i.ct
  br label %bb.y

bb.y:                                             ; preds = %bb.d, %bb.q, %bb.x, %bb.w, %bb.k, %bb.b
  %.sink = phi float [ -1.000000e+00, %bb.d ], [ %i.bo, %bb.q ], [ %i.cu, %bb.x ], [ %i.cg, %bb.w ], [ %i.as, %bb.k ], [ 1.000000e+00, %bb.b ]
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink, ptr %i.cv, align 4, !tbaa !29
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @hequirect_to_xyz(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %5) #8 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %4, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %2, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.h = fdiv nsz <2 x float> %i.g, %i.c
  %i.i = fadd nsz <2 x float> %i.h, splat (float -1.000000e+00)
  %i.j = fpext <2 x float> %i.i to <2 x double>
  %i.k = fmul nsz <2 x double> %i.j, splat (double f0x3FF921FB54442D18)
  %i.l = fptrunc <2 x double> %i.k to <2 x float>
  %i.m = tail call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.l) ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0 ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.m, 1 ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = extractelement <2 x float> %i.n, i64 1
  %i.s = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.t = fmul nsz float %i.o, %i.s
  store float %i.t, ptr %5, align 4, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.r, ptr %i.u, align 4, !tbaa !29
  %i.v = fmul nsz float %i.q, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.v, ptr %i.w, align 4, !tbaa !29
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @equisolid_to_xyz(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %5) #0 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %4, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %2, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.h = tail call nnan nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.i = fdiv nsz <2 x float> %i.h, %i.c
  %i.j = fadd nsz <2 x float> %i.i, splat (float -1.000000e+00)
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !29
  %i.l = fmul nsz <2 x float> %i.j, %i.k          ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = extractelement <2 x float> %i.l, i64 1
  %i.o = tail call nsz float @hypotf(float noundef %i.m, float noundef %i.n) #20 ; 3 uses
  %i.p = fcmp nsz ogt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call nsz float @llvm.asin.f32(float %i.o)
  %i.r = fmul nsz float %i.q, 2.000000e+00
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.r) ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %sin = extractvalue { float, float } %sincos, 0
  %i.s = insertelement <2 x float> poison, float %i.o, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fdiv nsz <2 x float> %i.l, %i.t
  %i.v = insertelement <2 x float> poison, float %sin, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul nsz <2 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %cos, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.y = phi <2 x float> [ %i.x, %bb.b ], [ zeroinitializer, %bb.a ]
  store <2 x float> %i.y, ptr %5, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink, ptr %i.z, align 4, !tbaa !29
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @prepare_equisolid_out(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !29
  %i.f = fpext <2 x float> %i.e to <2 x double>
  %i.g = fmul nsz <2 x double> %i.f, splat (double f0x400921FB54442D18)
  %i.h = fdiv nsz <2 x double> %i.g, splat (double 7.200000e+02)
  %i.i = fptrunc <2 x double> %i.h to <2 x float>
  %i.j = tail call nsz <2 x float> @llvm.sin.v2f32(<2 x float> %i.i)
  store <2 x float> %i.j, ptr %i.d, align 4, !tbaa !29
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @orthographic_to_xyz(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %5) #0 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %4, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %2, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.h = tail call nnan nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.i = fdiv nsz <2 x float> %i.h, %i.c
  %i.j = fadd nsz <2 x float> %i.i, splat (float -1.000000e+00)
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !29
  %i.l = fmul nsz <2 x float> %i.j, %i.k          ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = extractelement <2 x float> %i.l, i64 1
  %i.o = tail call nsz float @hypotf(float noundef %i.m, float noundef %i.n) #20
  %i.p = tail call nsz float @llvm.asin.f32(float %i.o)
  %i.q = tail call nsz float @llvm.cos.f32(float %i.p) ; 2 uses
  %i.r = fcmp nsz ogt float %i.q, 0.000000e+00    ; 3 uses
  %storemerge = select i1 %i.r, float %i.q, float 1.000000e+00
  %.0 = select i1 %i.r, i32 1, i32 0
  %i.s = select i1 %i.r, <2 x float> %i.l, <2 x float> zeroinitializer
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %storemerge, ptr %i.t, align 4, !tbaa !29
  store <2 x float> %i.s, ptr %5, align 4, !tbaa !29
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @prepare_orthographic_out(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !29 ; 2 uses
  %i.f = fcmp nsz ogt <2 x float> %i.e, splat (float 1.800000e+02)
  %i.g = fpext <2 x float> %i.e to <2 x double>
  %i.h = fmul nsz <2 x double> %i.g, splat (double f0x400921FB54442D18)
  %i.i = fdiv nsz <2 x double> %i.h, splat (double 3.600000e+02)
  %i.j = fptrunc <2 x double> %i.i to <2 x float>
  %i.k = tail call nsz <2 x float> @llvm.sin.v2f32(<2 x float> %i.j)
  %i.l = select <2 x i1> %i.f, <2 x float> splat (float 1.000000e+00), <2 x float> %i.k
  store <2 x float> %i.l, ptr %i.d, align 4, !tbaa !29
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @octahedron_to_xyz(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %5) #8 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %4, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %2, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float 1.000000e+00))
  %i.h = fdiv nsz <2 x float> %i.g, %i.c
  %i.i = fadd nsz <2 x float> %i.h, splat (float -1.000000e+00) ; 3 uses
  %i.j = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.i) ; 2 uses
  %i.k = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.j) ; 2 uses
  %i.l = fsub nsz float 1.000000e+00, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.l, ptr %i.m, align 4, !tbaa !29
  %i.n = fcmp nsz ogt float %i.k, 1.000000e+00
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = fsub nsz <2 x float> splat (float 1.000000e+00), %i.j
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
end_hunk_0
