Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rho?download=true
inline.NumInlined: 221
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv13RHO_HEST_REFC15getPROSACSampleEv:bb.a
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef double %i.dp(ptr noundef nonnull align 8 dereferenceable(452) %0), !inline_history !128
  %i.dr = fmul double %i.dq, %i.cm
  %i.ds = fptoui double %i.dr to i32
  br label %.lr.ph.us.i5.2

_ZN2cv13RHO_HEST_REFC7rndSmplEjPjj.exit18:        ; preds = %bb.k, %bb.j
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !75
  %i.du = add i32 %i.dt, -1
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !59
  br label %_ZN2cv13RHO_HEST_REFC7rndSmplEjPjj.exit

_ZN2cv13RHO_HEST_REFC7rndSmplEjPjj.exit:          ; preds = %bb.g, %bb.d, %_ZN2cv13RHO_HEST_REFC7rndSmplEjPjj.exit18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv13RHO_HEST_REFC18isSampleDegenerateEv(ptr noundef nonnull align 8 dereferenceable(452) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !130  ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63   ; 4 uses
  %i.p = zext i32 %i.c to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 4              ; 3 uses
  store i64 %i.r, ptr %i.k, align 4
  %i.s = zext i32 %i.e to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.v = load i64, ptr %i.t, align 4              ; 2 uses
  store i64 %i.v, ptr %i.u, align 4
  %i.w = zext i32 %i.g to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.z = load i64, ptr %i.x, align 4              ; 2 uses
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = zext i32 %i.i to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ad = load i64, ptr %i.ab, align 4            ; 2 uses
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ag = load i64, ptr %i.ae, align 4            ; 3 uses
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aj = load i64, ptr %i.ah, align 4            ; 2 uses
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.am = load i64, ptr %i.ak, align 4            ; 2 uses
  store i64 %i.am, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ap = load i64, ptr %i.an, align 4            ; 2 uses
  store i64 %i.ap, ptr %i.ao, align 4
  %i.aq = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.r, i64 1
  %i.as = lshr <2 x i64> %i.ar, splat (i64 32)
  %i.at = trunc nuw <2 x i64> %i.as to <2 x i32>
  %i.au = bitcast <2 x i32> %i.at to <2 x float>  ; 5 uses
  %i.av = trunc i64 %i.r to i32                   ; 2 uses
  %i.aw = trunc i64 %i.ag to i32
  %i.ax = insertelement <2 x i32> poison, i32 %i.aw, i64 0
  %i.ay = insertelement <2 x i32> %i.ax, i32 %i.av, i64 1
  %i.az = bitcast <2 x i32> %i.ay to <2 x float>  ; 4 uses
  %i.ba = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %i.bb = insertelement <2 x i64> %i.ba, i64 %i.v, i64 1 ; 2 uses
  %i.bc = trunc <2 x i64> %i.bb to <2 x i32>
  %i.bd = bitcast <2 x i32> %i.bc to <2 x float>  ; 4 uses
  %i.be = extractelement <2 x float> %i.bd, i64 1 ; 3 uses
  %i.bf = bitcast i32 %i.av to float
  %i.bg = fcmp oeq float %i.be, %i.bf
  %i.bh = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %i.bi = insertelement <2 x i64> %i.bh, i64 %i.ad, i64 1 ; 2 uses
  %i.bj = trunc <2 x i64> %i.bi to <2 x i32>
  %i.bk = lshr <2 x i64> %i.bb, splat (i64 32)
  %i.bl = trunc nuw <2 x i64> %i.bk to <2 x i32>
  %i.bm = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.bn = insertelement <2 x i64> %i.bm, i64 %i.z, i64 1 ; 2 uses
  %i.bo = lshr <2 x i64> %i.bn, splat (i64 32)
  %i.bp = trunc nuw <2 x i64> %i.bo to <2 x i32>
  %i.bq = lshr <2 x i64> %i.bi, splat (i64 32)
  %i.br = trunc nuw <2 x i64> %i.bq to <2 x i32>
  %i.bs = bitcast <2 x i32> %i.bl to <2 x float>  ; 4 uses
  %i.bt = trunc <2 x i64> %i.bn to <2 x i32>
  %i.bu = bitcast <2 x i32> %i.bt to <2 x float>  ; 6 uses
  %i.bv = bitcast <2 x i32> %i.bp to <2 x float>  ; 6 uses
  %i.bw = bitcast <2 x i32> %i.bj to <2 x float>  ; 4 uses
  %i.bx = bitcast <2 x i32> %i.br to <2 x float>  ; 4 uses
  %i.by = extractelement <2 x float> %i.bu, i64 1
  %i.bz = fcmp oeq float %i.be, %i.by
  %or.cond161 = select i1 %i.bg, i1 true, i1 %i.bz
  br i1 %or.cond161, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ca = shufflevector <2 x float> %i.az, <2 x float> %i.bu, <4 x i32> <i32 1, i32 3, i32 poison, i32 1>
  %i.cb = insertelement <4 x float> %i.ca, float %i.be, i64 2
  %i.cc = shufflevector <2 x float> %i.bu, <2 x float> %i.bw, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.cd = fcmp oeq <4 x float> %i.cb, %i.cc
  %i.ce = extractelement <2 x float> %i.bs, i64 1 ; 3 uses
  %i.cf = extractelement <2 x float> %i.au, i64 1
  %i.cg = fcmp oeq float %i.cf, %i.ce
  %i.ch = extractelement <2 x float> %i.bv, i64 1
  %i.ci = fcmp oeq float %i.ce, %i.ch
  %i.cj = freeze <4 x i1> %i.cd
  %i.ck = bitcast <4 x i1> %i.cj to i4
  %i.cl = icmp ne i4 %i.ck, 0
  %.fr = freeze i1 %i.cg
  %op.rdx = or i1 %i.cl, %.fr
  %op.rdx164 = select i1 %op.rdx, i1 true, i1 %i.ci
  br i1 %op.rdx164, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cm = shufflevector <2 x float> %i.au, <2 x float> %i.bv, <4 x i32> <i32 1, i32 3, i32 poison, i32 1>
  %i.cn = insertelement <4 x float> %i.cm, float %i.ce, i64 2
  %i.co = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.cp = fcmp oeq <4 x float> %i.cn, %i.co
  %i.cq = bitcast <4 x i1> %i.cp to i4
  %.not = icmp eq i4 %i.cq, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.cr = fsub <2 x float> %i.bd, %i.az           ; 2 uses
  %i.cs = fsub <2 x float> %i.au, %i.bs           ; 2 uses
  %i.ct = fneg <2 x float> %i.bd
  %i.cu = fmul <2 x float> %i.au, %i.ct
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bs, <2 x float> %i.cu) ; 2 uses
  %i.cw = fmul <2 x float> %i.cr, %i.bv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.bu, <2 x float> %i.cw)
  %i.cy = fadd <2 x float> %i.cv, %i.cx
  %i.cz = fptosi <2 x float> %i.cy to <2 x i32>   ; 2 uses
  %shift = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i32> %shift, %i.cz
  %i.da = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = fmul <2 x float> %i.cr, %i.bx
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.bw, <2 x float> %i.dc)
  %i.de = fadd <2 x float> %i.cv, %i.dd
  %i.df = fptosi <2 x float> %i.de to <2 x i32>   ; 2 uses
  %shift166 = shufflevector <2 x i32> %i.df, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop167 = xor <2 x i32> %shift166, %i.df
  %i.dg = extractelement <2 x i32> %foldExtExtBinop167, i64 0
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = fsub <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.dj = fsub <2 x float> %i.bw, %i.bu           ; 2 uses
  %i.dk = fneg <2 x float> %i.bw
  %i.dl = fmul <2 x float> %i.bv, %i.dk
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bx, <2 x float> %i.dl) ; 2 uses
  %i.dn = fmul <2 x float> %i.dj, %i.au
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.az, <2 x float> %i.dn)
  %i.dp = fadd <2 x float> %i.dm, %i.do
  %i.dq = fptosi <2 x float> %i.dp to <2 x i32>   ; 2 uses
  %shift169 = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop170 = xor <2 x i32> %shift169, %i.dq
  %i.dr = extractelement <2 x i32> %foldExtExtBinop170, i64 0
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = fmul <2 x float> %i.dj, %i.bs
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.bd, <2 x float> %i.dt)
  %i.dv = fadd <2 x float> %i.dm, %i.du
  %i.dw = fptosi <2 x float> %i.dv to <2 x i32>   ; 2 uses
  %shift172 = shufflevector <2 x i32> %i.dw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop173 = xor <2 x i32> %shift172, %i.dw
  %i.dx = extractelement <2 x i32> %foldExtExtBinop173, i64 0
  %.lobit = lshr i32 %i.dx, 31
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.e, %bb.a, %bb.b, %bb.c
  %.4 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.e ], [ %.lobit, %bb.g ], [ 1, %bb.b ], [ 1, %bb.f ], [ 1, %bb.d ]
  ret i32 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv13RHO_HEST_REFC13generateModelEv(ptr noundef nonnull align 8 dereferenceable(452) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.e, align 4, !tbaa !78 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.f, align 4, !tbaa !78 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load float, ptr %i.h, align 4, !tbaa !78 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %2 = load float, ptr %1, align 4, !tbaa !78     ; 3 uses
  %i.t = load float, ptr %i.m, align 4, !tbaa !78 ; 3 uses
  %i.u = load float, ptr %i.n, align 4, !tbaa !78 ; 3 uses
  %i.v = load float, ptr %i.o, align 4, !tbaa !78 ; 3 uses
  %3 = fmul float %i.i, %i.u
  %4 = fmul float %i.i, %i.v
  %i.w = fmul float %i.g, %2
  %i.x = fmul float %i.k, %i.u
  %i.y = fmul float %i.g, %i.t
  %i.z = fmul float %i.k, %i.v
  %i.aa = insertelement <2 x float> poison, float %2, i64 0
  %5 = load float, ptr %i.b, align 4, !tbaa !78   ; 3 uses
  %6 = load float, ptr %i.q, align 4, !tbaa !78   ; 3 uses
  %i.ab = load float, ptr %i.p, align 4, !tbaa !78 ; 4 uses
  %7 = fmul float %5, %i.t
  %8 = fmul float %5, %2
  %i.ac = load <2 x float>, ptr %i.l, align 4, !tbaa !78 ; 3 uses
  %9 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %10 = load <2 x float>, ptr %i.r, align 4, !tbaa !78 ; 2 uses
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1> ; 2 uses
  %12 = fmul <4 x float> %9, %11                  ; 4 uses
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %14 = insertelement <2 x float> poison, float %i.ab, i64 0 ; 2 uses
  %15 = insertelement <2 x float> %14, float %i.w, i64 1 ; 2 uses
  %16 = insertelement <2 x float> %15, float %i.x, i64 1
  %17 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %17, <4 x float> %12, <2 x i32> <i32 0, i32 5>
  %19 = insertelement <2 x float> poison, float %6, i64 0 ; 2 uses
  %20 = insertelement <2 x float> %19, float %i.y, i64 1 ; 2 uses
  %21 = insertelement <2 x float> %20, float %i.z, i64 1
  %22 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %23 = insertelement <2 x float> %22, float %6, i64 0
  %24 = load <2 x float>, ptr %i.j, align 4, !tbaa !78 ; 6 uses
  %i.ad = extractelement <2 x float> %24, i64 1   ; 6 uses
  %25 = fsub float %i.k, %i.ad
  %26 = extractelement <2 x float> %i.ac, i64 1
  %27 = fsub float %26, %i.ad
  %28 = extractelement <2 x float> %24, i64 0     ; 5 uses
  %29 = fsub float %i.i, %28
  %30 = extractelement <2 x float> %i.ac, i64 0
  %31 = fsub float %30, %28
  %32 = fsub float %i.g, %i.ad                    ; 3 uses
  %33 = fneg float %32                            ; 3 uses
  %i.ae = fmul float %28, %i.ab                   ; 3 uses
  %i.af = fmul float %i.ad, %i.ab                 ; 3 uses
  %i.ag = fsub float %i.ae, %3
  %i.ah = fneg float %i.ae
  %34 = insertelement <4 x float> poison, float %i.ae, i64 0
  %35 = insertelement <4 x float> %34, float %5, i64 1
  %36 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %13, <4 x float> %36, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %38 = shufflevector <4 x float> %37, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %39 = insertelement <4 x float> %38, float %8, i64 3
  %40 = fneg float %i.af
  %41 = insertelement <2 x float> %i.aa, float %i.af, i64 1 ; 2 uses
  %42 = fsub <2 x float> %41, %15                 ; 4 uses
  %i.ai = insertelement <2 x float> %41, float %i.u, i64 0
  %43 = fsub <2 x float> %i.ai, %16
  %i.aj = insertelement <2 x float> %10, float %i.af, i64 1
  %i.ak = fsub <2 x float> %i.aj, %18
  %44 = fneg float %29                            ; 4 uses
  %45 = fneg float %31                            ; 3 uses
  %46 = insertelement <4 x float> poison, float %45, i64 0
  %47 = insertelement <4 x float> %46, float %44, i64 1
  %48 = insertelement <4 x float> %47, float %33, i64 3
  %49 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.al = insertelement <2 x float> poison, float %44, i64 0
  %50 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %51 = fmul <2 x float> %42, %50
  %52 = fmul float %32, %45
  %i.am = insertelement <2 x float> poison, float %45, i64 0
  %53 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %54 = fmul <2 x float> %42, %53
  %55 = insertelement <4 x float> poison, float %33, i64 0
  %56 = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> zeroinitializer
  %57 = extractelement <2 x float> %42, i64 0
  %58 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %59 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> zeroinitializer
  %60 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = fmul <2 x float> %24, %60                 ; 5 uses
  %i.an = extractelement <2 x float> %61, i64 0   ; 2 uses
  %62 = fsub float %i.an, %7                      ; 3 uses
  %63 = fsub float %i.an, %4
  %64 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %65 = shufflevector <4 x float> %35, <4 x float> %64, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %66 = fsub <4 x float> %65, %39                 ; 6 uses
  %67 = fneg <2 x float> %61
  %68 = insertelement <2 x float> %61, float %i.t, i64 0 ; 2 uses
  %69 = fsub <2 x float> %68, %20                 ; 3 uses
  %70 = insertelement <2 x float> %68, float %i.v, i64 0
  %71 = fsub <2 x float> %70, %21
  %72 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %73 = shufflevector <4 x float> %72, <4 x float> %11, <2 x i32> <i32 4, i32 1>
  %74 = fsub <2 x float> %73, %23
  %75 = extractelement <4 x float> %66, i64 3
  %i.ao = fmul float %75, %44
  %76 = extractelement <4 x float> %66, i64 1     ; 4 uses
  %77 = tail call float @llvm.fmuladd.f32(float %i.ag, float %76, float %i.ao) ; 3 uses
  %78 = shufflevector <4 x float> %66, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %79 = insertelement <4 x float> %78, float %32, i64 1
  %80 = insertelement <4 x float> %79, float %62, i64 2
  %81 = insertelement <4 x float> %80, float %77, i64 3
  %i.ap = fmul <4 x float> %81, %49               ; 2 uses
  %i.aq = extractelement <4 x float> %i.ap, i64 1
  %i.ar = tail call float @llvm.fmuladd.f32(float %25, float %76, float %i.aq) ; 7 uses
  %82 = fmul float %62, %44
  %83 = tail call float @llvm.fmuladd.f32(float %63, float %76, float %82) ; 3 uses
  %84 = fmul <2 x float> %69, %50
  %85 = shufflevector <4 x float> %66, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %86 = shufflevector <4 x float> %66, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %87 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %86, <2 x float> %84) ; 4 uses
  %88 = tail call float @llvm.fmuladd.f32(float %27, float %76, float %52)
  %89 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %86, <2 x float> %54)
  %90 = fmul <2 x float> %69, %53
  %91 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %86, <2 x float> %90)
  %92 = fneg float %88                            ; 3 uses
  %93 = fmul float %77, %92
  %i.as = insertelement <2 x float> %85, float %i.ar, i64 1
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %i.at, <4 x float> %i.ap) ; 4 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ar, float %93)
  %i.ax = fmul float %83, %92
  %i.ay = extractelement <4 x float> %i.au, i64 2
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ar, float %i.ax)
  %i.ba = insertelement <2 x float> poison, float %92, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x float> %87, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %91, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %86, <2 x float> %51) ; 5 uses
  %i.bh = extractelement <2 x float> %87, i64 0
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %87, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.bj = insertelement <4 x float> %i.bi, float %83, i64 1
  %i.bk = fmul <4 x float> %i.bj, %56
  %i.bl = shufflevector <2 x float> %42, <2 x float> %69, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.bm = insertelement <4 x float> %i.bl, float %62, i64 1
  %i.bn = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bo, <4 x float> %i.bk) ; 2 uses
  %i.bq = fneg float %i.aw
  %i.br = fmul <2 x float> %i.bg, %i.bb
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %89, <2 x float> %i.be, <2 x float> %i.br)
  %i.bt = extractelement <2 x float> %i.bg, i64 0
  %i.bu = fmul float %i.bt, %33
  %i.bv = tail call float @llvm.fmuladd.f32(float %57, float %i.ar, float %i.bu)
  %i.bw = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %i.ar, i64 1
  %i.by = fdiv <2 x float> splat (float 1.000000e+00), %i.bx ; 5 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.ca = extractelement <4 x float> %i.au, i64 3
  %i.cb = fmul float %i.bz, %i.ca                 ; 2 uses
  %i.cc = extractelement <4 x float> %i.bp, i64 3
  %i.cd = fmul float %i.bz, %i.cc                 ; 2 uses
  %i.ce = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.cf = fmul float %i.ce, %77                   ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.ci = fmul <2 x float> %i.by, %i.ch           ; 3 uses
  %i.cj = fmul float %i.ad, %i.cf
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cb, float %28, float %i.cj)
  %i.cl = fsub float %i.ah, %i.ck
  %94 = shufflevector <2 x float> %i.by, <2 x float> %i.ci, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %95 = shufflevector <4 x float> %i.bp, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 1, i32 2>
  %96 = fmul <4 x float> %94, %95                 ; 3 uses
  %i.cm = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 1>
  %i.cn = insertelement <4 x float> %i.cm, float 1.000000e+00, i64 1
  %i.co = shufflevector <2 x float> %i.bg, <2 x float> %i.ci, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %83, i64 2
  %i.cq = shufflevector <2 x float> %87, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cs = fmul <4 x float> %i.cn, %i.cr           ; 4 uses
  %i.ct = fmul <4 x float> %58, %i.cs
  %97 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %96, <4 x float> %59, <4 x float> %i.ct)
  %98 = insertelement <4 x float> poison, float %i.cb, i64 0
  %99 = insertelement <4 x float> %98, float %i.cf, i64 1
  %i.cu = insertelement <4 x float> %99, float %i.cl, i64 2
  %100 = shufflevector <4 x float> %i.cu, <4 x float> %96, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %101 = fneg <4 x float> %100                    ; 2 uses
  %102 = shufflevector <4 x float> %96, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %103 = insertelement <4 x float> poison, float %40, i64 0
  %104 = insertelement <4 x float> %103, float %i.ab, i64 1
  %105 = shufflevector <2 x float> %67, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %106 = shufflevector <4 x float> %104, <4 x float> %105, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %107 = fsub <4 x float> %106, %97               ; 4 uses
  %108 = shufflevector <4 x float> %102, <4 x float> %107, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %109 = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %110 = shufflevector <4 x float> %109, <4 x float> %107, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cv = insertelement <4 x float> %110, float %i.cd, i64 3
  %111 = fmul float %i.ce, %i.bh                  ; 2 uses
  %112 = fmul float %i.ad, %111
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cd, float %28, float %112)
  %i.cx = fsub float %6, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.az, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x float> %i.bf, %i.cz           ; 7 uses
  %i.db = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.da, <2 x float> %i.bs) ; 2 uses
  %i.de = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %101, <4 x float> %i.de, <4 x float> %108)
  %i.dg = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %101, <4 x float> %i.dg, <4 x float> %i.cv)
  %113 = shufflevector <4 x float> %i.cs, <4 x float> %107, <2 x i32> <i32 2, i32 6>
  %i.di = fneg <2 x float> %113                   ; 2 uses
  %i.dj = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %114 = shufflevector <4 x float> %i.cs, <4 x float> %107, <2 x i32> <i32 3, i32 7>
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dj, <2 x float> %114)
  %i.dl = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x float> poison, float %111, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cx, i64 1
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dl, <2 x float> %i.dn)
  %i.dp = extractelement <2 x float> %i.dd, i64 0
  %i.dq = extractelement <2 x float> %i.dd, i64 1
  %i.dr = fdiv float %i.dp, %i.dq                 ; 4 uses
  %i.ds = fneg <4 x float> %i.df
  %i.dt = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.du, <4 x float> %i.dh)
  %i.dw = fneg <2 x float> %i.dk
  %i.dx = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dy, <2 x float> %i.do)
  %i.ea = extractelement <2 x float> %i.da, i64 1
  %i.eb = fneg float %i.ea
  %i.ec = extractelement <2 x float> %i.da, i64 0
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.dr, float %i.ec)
  store <4 x float> %i.dv, ptr %i.d, align 4, !tbaa !78
  store <2 x float> %i.dz, ptr %i.s, align 4, !tbaa !78
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store float %i.ed, ptr %i.ee, align 4, !tbaa !78
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.eg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dr, i64 0
  store <2 x float> %i.eg, ptr %i.ef, align 4, !tbaa !78
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv13RHO_HEST_REFC10updateSPRTEv(ptr noundef nonnull align 8 dereferenceable(452) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !88   ; 3 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load i32, ptr %i.e, align 8, !tbaa !81
  %.not10 = icmp ugt i32 %i.d, %i.f
  br i1 %.not10, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i32 %i.d to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65
  %i.j = uitofp i32 %i.i to double
  %i.k = fdiv double %i.g, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %i.k, ptr %i.l, align 8, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = load double, ptr %i.n, align 8, !tbaa !132 ; 3 uses
  %i.p = load double, ptr %i.m, align 8, !tbaa !133
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !134
  %i.s = fsub double 1.000000e+00, %i.o           ; 2 uses
  %i.t = fsub double 1.000000e+00, %i.k
  %i.u = insertelement <2 x double> poison, double %i.o, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1
  %i.w = insertelement <2 x double> poison, double %i.k, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.t, i64 1
  %i.y = fdiv <2 x double> %i.v, %i.x             ; 3 uses
  %i.z = extractelement <2 x double> %i.y, i64 1
  %i.aa = tail call double @log(double noundef %i.z) #20
  %i.ab = extractelement <2 x double> %i.y, i64 0
  %i.ac = tail call double @log(double noundef %i.ab) #20
  %i.ad = fmul double %i.o, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.s, double %i.aa, double %i.ad)
  %i.af = fmul double %i.p, %i.ae
  %i.ag = fdiv double %i.af, %i.r
  %i.ah = fadd double %i.ag, 1.000000e+00         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.016.i.i = phi double [ %i.ah, %bb.c ], [ %i.aj, %bb.d ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %bb.c ], [ %i.am, %bb.d ] ; 2 uses
  %i.ai = tail call double @log(double noundef %.016.i.i) #20
  %i.aj = fadd double %i.ah, %i.ai                ; 3 uses
  %i.ak = fsub double %i.aj, %.016.i.i
  %i.al = fcmp ogt double %i.ak, 1.500000e-08
  %i.am = add nuw nsw i32 %.0.i.i, 1
  %i.an = icmp samesign ult i32 %.0.i.i, 9
  %or.cond.i.i = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %.sink.split, !llvm.loop !93

bb.e:                                             ; preds = %bb.a
  %i.ao = uitofp i32 %i.d to double
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !89
  %i.ar = uitofp i32 %i.aq to double
  %i.as = fdiv double %i.ao, %i.ar                ; 6 uses
  %i.at = fcmp ogt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !132 ; 2 uses
  %i.aw = fsub double %i.av, %i.as
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fdiv double %i.ax, %i.av
  %i.az = fcmp ogt double %i.ay, 1.000000e-01
  br i1 %i.az, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store double %i.as, ptr %i.au, align 8, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !131 ; 2 uses
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !133
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load double, ptr %i.be, align 8, !tbaa !134
  %i.bg = fsub double 1.000000e+00, %i.as         ; 2 uses
  %i.bh = fsub double 1.000000e+00, %i.bc
  %i.bi = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bh, i64 1
  %i.bm = fdiv <2 x double> %i.bj, %i.bl          ; 3 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 1
  %i.bo = tail call double @log(double noundef %i.bn) #20
  %i.bp = extractelement <2 x double> %i.bm, i64 0
  %i.bq = tail call double @log(double noundef %i.bp) #20
  %i.br = fmul double %i.as, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bo, double %i.br)
  %i.bt = fmul double %i.bd, %i.bs
  %i.bu = fdiv double %i.bt, %i.bf
  %i.bv = fadd double %i.bu, 1.000000e+00         ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.016.i.i6 = phi double [ %i.bv, %bb.g ], [ %i.bx, %bb.h ] ; 2 uses
  %.0.i.i7 = phi i32 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 2 uses
  %i.bw = tail call double @log(double noundef %.016.i.i6) #20
  %i.bx = fadd double %i.bv, %i.bw                ; 3 uses
  %i.by = fsub double %i.bx, %.016.i.i6
  %i.bz = fcmp ogt double %i.by, 1.500000e-08
  %i.ca = add nuw nsw i32 %.0.i.i7, 1
  %i.cb = icmp samesign ult i32 %.0.i.i7, 9
  %or.cond.i.i8 = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %or.cond.i.i8, label %bb.h, label %.sink.split, !llvm.loop !93

.sink.split:                                      ; preds = %bb.d, %bb.h
  %.lcssa.sink = phi double [ %i.bx, %bb.h ], [ %i.aj, %bb.d ]
  %i.cc = phi <2 x double> [ %i.bm, %bb.h ], [ %i.y, %bb.d ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %.lcssa.sink, ptr %i.cd, align 8, !tbaa !94
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x double> %i.cc, ptr %i.ce, align 8, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %5, null                     ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp ne ptr %6, null                     ; 3 uses
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not197 = icmp eq i32 %4, 0
  br i1 %.not197, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %or.cond = or i1 %i.a, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 108 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 172 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 180 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 2 uses
  %wide.trip.count203 = zext i32 %4 to i64        ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
end_hunk_0
