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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load float, ptr %i.e, align 4, !tbaa !78 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load float, ptr %i.f, align 4, !tbaa !78 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.k = load float, ptr %2, align 4, !tbaa !78   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %3 = load float, ptr %i.j, align 4, !tbaa !78   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load float, ptr %i.l, align 4, !tbaa !78 ; 3 uses
  %i.u = load float, ptr %i.m, align 4, !tbaa !78 ; 3 uses
  %i.v = load float, ptr %i.n, align 4, !tbaa !78 ; 3 uses
  %5 = load float, ptr %i.o, align 4, !tbaa !78   ; 3 uses
  %i.w = fmul float %i.g, %i.v
  %i.x = fmul float %i.g, %5
  %i.y = fmul float %i.i, %i.v
  %i.z = fmul float %i.i, %5
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %6 = insertelement <2 x float> poison, float %i.u, i64 0
  %7 = load <2 x float>, ptr %i.b, align 4, !tbaa !78 ; 2 uses
  %i.ab = load float, ptr %1, align 4, !tbaa !78  ; 2 uses
  %i.ac = load <2 x float>, ptr %i.h, align 4, !tbaa !78 ; 6 uses
  %8 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %9 = insertelement <4 x float> poison, float %i.k, i64 0
  %10 = insertelement <4 x float> %9, float %i.g, i64 1
  %11 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %13 = fsub <4 x float> %12, %8                  ; 3 uses
  %14 = extractelement <2 x float> %i.ac, i64 1   ; 6 uses
  %15 = fsub float %i.i, %14
  %16 = fsub float %3, %14
  %17 = load float, ptr %i.s, align 4, !tbaa !78  ; 3 uses
  %18 = load float, ptr %i.r, align 4, !tbaa !78  ; 3 uses
  %19 = load float, ptr %i.q, align 4, !tbaa !78  ; 4 uses
  %20 = load float, ptr %i.p, align 4, !tbaa !78  ; 4 uses
  %21 = extractelement <2 x float> %7, i64 0      ; 3 uses
  %22 = fmul float %21, %i.u
  %i.ad = extractelement <2 x float> %i.ac, i64 0 ; 5 uses
  %23 = fmul float %i.ad, %19                     ; 4 uses
  %24 = fmul float %i.ad, %20                     ; 4 uses
  %25 = fmul float %21, %i.t
  %26 = fmul float %i.k, %17
  %27 = fmul float %i.k, %18
  %28 = fmul float %i.ab, %i.t
  %29 = fmul float %14, %20                       ; 2 uses
  %30 = fmul float %3, %18
  %31 = fmul float %i.ab, %i.u
  %i.ae = fmul float %14, %19                     ; 2 uses
  %i.af = fmul float %3, %17
  %i.ag = fsub float %24, %i.w
  %i.ah = fneg float %24
  %32 = fsub float %23, %22                       ; 3 uses
  %33 = fsub float %23, %i.x
  %34 = fneg float %23
  %35 = fsub float %24, %25                       ; 3 uses
  %36 = fsub float %21, %i.ad                     ; 6 uses
  %37 = fsub float %23, %26
  %38 = fsub float %24, %27
  %39 = fneg float %29
  %40 = fneg float %i.ae
  %i.ai = insertelement <2 x float> %i.aa, float %29, i64 1 ; 3 uses
  %41 = insertelement <2 x float> poison, float %20, i64 0
  %i.aj = insertelement <2 x float> %41, float %28, i64 1 ; 3 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj           ; 4 uses
  %42 = insertelement <2 x float> %i.ai, float %i.v, i64 0
  %43 = insertelement <2 x float> %i.aj, float %i.y, i64 1
  %44 = fsub <2 x float> %42, %43
  %i.al = insertelement <2 x float> %i.ai, float %18, i64 0
  %45 = insertelement <2 x float> %i.aj, float %30, i64 1
  %46 = fsub <2 x float> %i.al, %45
  %47 = insertelement <2 x float> %6, float %i.ae, i64 1 ; 3 uses
  %i.am = insertelement <2 x float> poison, float %19, i64 0
  %48 = insertelement <2 x float> %i.am, float %31, i64 1 ; 3 uses
  %49 = fsub <2 x float> %47, %48                 ; 3 uses
  %50 = insertelement <2 x float> %47, float %5, i64 0
  %51 = insertelement <2 x float> %48, float %i.z, i64 1
  %52 = fsub <2 x float> %50, %51
  %53 = insertelement <2 x float> %47, float %17, i64 0
  %54 = insertelement <2 x float> %48, float %i.af, i64 1
  %55 = fsub <2 x float> %53, %54
  %56 = fneg <4 x float> %13                      ; 7 uses
  %i.an = extractelement <4 x float> %56, i64 1   ; 2 uses
  %57 = fmul float %35, %i.an
  %58 = tail call float @llvm.fmuladd.f32(float %i.ag, float %36, float %57) ; 3 uses
  %59 = insertelement <4 x float> poison, float %35, i64 0
  %60 = shufflevector <4 x float> %59, <4 x float> %13, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %61 = insertelement <4 x float> %60, float %32, i64 2
  %62 = insertelement <4 x float> %61, float %58, i64 3
  %63 = fmul <4 x float> %62, %56                 ; 2 uses
  %64 = extractelement <4 x float> %63, i64 1
  %65 = tail call float @llvm.fmuladd.f32(float %15, float %36, float %64) ; 7 uses
  %66 = shufflevector <4 x float> %56, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %67 = fmul <2 x float> %i.ak, %66
  %i.ao = fmul float %32, %i.an
  %68 = tail call float @llvm.fmuladd.f32(float %33, float %36, float %i.ao) ; 3 uses
  %69 = fmul <2 x float> %49, %66
  %70 = insertelement <2 x float> poison, float %36, i64 0
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %71, <2 x float> %69) ; 4 uses
  %shift = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ap = fmul <4 x float> %shift, %56
  %i.aq = extractelement <4 x float> %i.ap, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %16, float %36, float %i.aq)
  %73 = shufflevector <4 x float> %56, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %74 = fmul <2 x float> %i.ak, %73
  %75 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %71, <2 x float> %74)
  %76 = fmul <2 x float> %49, %73
  %77 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %55, <2 x float> %71, <2 x float> %76)
  %78 = fneg float %i.ar                          ; 3 uses
  %79 = fmul float %58, %78
  %80 = insertelement <4 x float> poison, float %38, i64 0
  %81 = insertelement <4 x float> %80, float %36, i64 1 ; 2 uses
  %82 = insertelement <4 x float> %81, float %37, i64 2
  %83 = insertelement <4 x float> %82, float %35, i64 3
  %84 = shufflevector <4 x float> %81, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %84, float %65, i64 1
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %83, <4 x float> %i.at, <4 x float> %63) ; 4 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %65, float %79)
  %i.ax = fmul float %68, %78
  %i.ay = extractelement <4 x float> %i.au, i64 2
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %65, float %i.ax)
  %i.ba = insertelement <2 x float> poison, float %78, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = fmul <2 x float> %72, %i.bb
  %i.bd = insertelement <2 x float> poison, float %65, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %77, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %71, <2 x float> %67) ; 5 uses
  %85 = extractelement <4 x float> %56, i64 3
  %i.bh = extractelement <2 x float> %72, i64 0
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %72, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.bj = insertelement <4 x float> %i.bi, float %68, i64 1
  %86 = shufflevector <4 x float> %56, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bk = fmul <4 x float> %i.bj, %86
  %i.bl = shufflevector <2 x float> %i.ak, <2 x float> %49, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.bm = insertelement <4 x float> %i.bl, float %32, i64 1
  %i.bn = insertelement <4 x float> poison, float %65, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.bo, <4 x float> %i.bk) ; 3 uses
  %i.bq = fneg float %i.aw
  %i.br = fmul <2 x float> %i.bg, %i.bb
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %75, <2 x float> %i.be, <2 x float> %i.br)
  %i.bt = extractelement <2 x float> %i.bg, i64 0
  %i.bu = fmul float %i.bt, %85
  %87 = extractelement <2 x float> %i.ak, i64 0
  %i.bv = tail call float @llvm.fmuladd.f32(float %87, float %65, float %i.bu)
  %i.bw = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %65, i64 1
  %i.by = fdiv <2 x float> splat (float 1.000000e+00), %i.bx ; 5 uses
  %88 = extractelement <2 x float> %i.by, i64 0   ; 3 uses
  %i.bz = extractelement <4 x float> %i.au, i64 3
  %89 = fmul float %88, %i.bz                     ; 2 uses
  %i.ca = extractelement <4 x float> %i.bp, i64 0
  %i.cb = fmul float %88, %i.ca                   ; 2 uses
  %i.cc = extractelement <4 x float> %i.bp, i64 3
  %i.cd = fmul float %88, %i.cc                   ; 2 uses
  %i.ce = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.cf = fmul float %i.ce, %58                   ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.ci = fmul <2 x float> %i.by, %i.ch           ; 3 uses
  %i.cj = fmul float %14, %i.cf
  %i.ck = tail call float @llvm.fmuladd.f32(float %89, float %i.ad, float %i.cj)
  %i.cl = fsub float %i.ah, %i.ck
  %90 = insertelement <4 x float> poison, float %89, i64 0
  %91 = insertelement <4 x float> %90, float %i.cf, i64 1
  %92 = insertelement <4 x float> %91, float %i.cl, i64 2
  %93 = insertelement <4 x float> poison, float %i.cb, i64 0
  %94 = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %95 = fmul float %i.ce, %i.bh                   ; 2 uses
  %96 = fmul float %14, %95
  %i.cm = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 1>
  %i.cn = insertelement <4 x float> %i.cm, float 1.000000e+00, i64 1
  %i.co = shufflevector <2 x float> %i.bg, <2 x float> %i.ci, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %68, i64 2
  %i.cq = shufflevector <2 x float> %72, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cs = fmul <4 x float> %i.cn, %i.cr           ; 4 uses
  %97 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ct = fmul <4 x float> %97, %i.cs
  %98 = shufflevector <2 x float> %i.ac, <2 x float> %i.ci, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %99 = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %100 = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %101 = fmul <4 x float> %99, %100               ; 3 uses
  %102 = shufflevector <4 x float> %98, <4 x float> %101, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %103 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.cu = insertelement <4 x float> %103, float %i.cb, i64 0
  %104 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %102, <4 x float> %i.cu, <4 x float> %i.ct) ; 4 uses
  %105 = extractelement <4 x float> %104, i64 0
  %106 = fsub float %39, %105
  %107 = extractelement <4 x float> %104, i64 1
  %108 = fsub float %20, %107
  %109 = shufflevector <4 x float> %92, <4 x float> %101, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %110 = fneg <4 x float> %109                    ; 2 uses
  %111 = shufflevector <4 x float> %93, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %112 = shufflevector <4 x float> %111, <4 x float> %101, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %113 = insertelement <4 x float> %112, float %106, i64 2
  %114 = insertelement <4 x float> %94, float %108, i64 2
  %i.cv = insertelement <4 x float> %114, float %i.cd, i64 3
  %115 = extractelement <4 x float> %104, i64 2
  %116 = fsub float %34, %115
  %117 = extractelement <4 x float> %104, i64 3
  %118 = fsub float %40, %117
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ad, float %96)
  %i.cx = fsub float %19, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.az, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x float> %i.bf, %i.cz           ; 7 uses
  %i.db = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.da, <2 x float> %i.bs) ; 2 uses
  %i.de = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %110, <4 x float> %i.de, <4 x float> %113)
  %i.dg = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %110, <4 x float> %i.dg, <4 x float> %i.cv)
  %119 = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %120 = insertelement <2 x float> %119, float %116, i64 1
  %i.di = fneg <2 x float> %120                   ; 2 uses
  %i.dj = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %121 = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %122 = insertelement <2 x float> %121, float %118, i64 1
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dj, <2 x float> %122)
  %i.dl = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x float> poison, float %95, i64 0
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
  store <2 x float> %i.dz, ptr %4, align 4, !tbaa !78
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
