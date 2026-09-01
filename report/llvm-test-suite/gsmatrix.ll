Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gsmatrix?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gs_matrix_multiply:bb.a

bb.g:                                             ; preds = %bb.a
  %i.as = trunc i64 %i.t to i32
  %i.at = bitcast i32 %i.as to float              ; 2 uses
  %i.au = trunc i64 %i.r to i32
  %i.av = bitcast i32 %i.au to float              ; 2 uses
  %i.aw = fmul float %i.p, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.c, float %i.j, float %i.aw)
  store float %i.ax, ptr %2, align 8, !tbaa !16
  %i.ay = fmul float %i.l, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.c, float %i.n, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.az, ptr %i.ba, align 8, !tbaa !18
  %i.bb = fmul float %i.e, %i.l
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %i.n, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.bc, ptr %i.bd, align 8, !tbaa !17
  %i.be = fmul float %i.e, %i.p
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.at, float %i.j, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.l, i64 1
  %i.bl = fmul <2 x float> %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bp = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.n, i64 1
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bl) ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = fadd float %i.bu, %i.bn
  store float %i.bv, ptr %i.bo, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !15
  %i.by = extractelement <2 x float> %i.bt, i64 1
  %i.bz = fadd float %i.by, %i.bx
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink77 = phi i64 [ 80, %bb.g ], [ 48, %bb.f ]
  %.sink75 = phi float [ %i.bz, %bb.g ], [ %i.ar, %bb.f ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %.sink77
  store float %.sink75, ptr %i.ca, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_matrix_invert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = or i64 %i.d, %i.b
  %.mask = and i64 %i.e, 9223372036854775807
  %i.f = icmp eq i64 %.mask, 0
  %i.g = trunc i64 %i.b to i32
  %i.h = bitcast i32 %i.g to float                ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %.mask46 = and i64 %i.i, 9223372036854775807
  %i.j = icmp eq i64 %.mask46, 0
  %i.k = trunc i64 %i.i to i32
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.mask47 = and i64 %i.m, 9223372036854775807
  %i.n = icmp eq i64 %.mask47, 0
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %i.m to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !19
  %i.u = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.v = insertelement <2 x i32> %i.u, i32 %i.o, i64 1
  %i.w = bitcast <2 x i32> %i.v to <2 x float>
  %i.x = fdiv <2 x float> splat (float 1.000000e+00), %i.w ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  store float %i.y, ptr %1, align 8, !tbaa !16
  %i.z = fneg float %i.y
  %i.aa = fmul float %i.q, %i.z
  store float %i.aa, ptr %i.r, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  store float %i.ac, ptr %i.ab, align 8, !tbaa !17
  %i.ad = fneg float %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load float, ptr %i.ae, align 8, !tbaa !15
  %i.ag = fmul float %i.af, %i.ad
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ah = trunc i64 %i.d to i32
  %i.ai = bitcast i32 %i.ah to float
  %i.aj = load float, ptr %0, align 8, !tbaa !16  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load float, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = fneg float %i.ai                        ; 2 uses
  %i.an = fmul float %i.h, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.al, float %i.an) ; 2 uses
  %i.ap = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !13
  %i.as = fneg float %i.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = insertelement <2 x float> poison, float %i.am, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.aj, i64 1
  %i.aw = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ay = fdiv <2 x float> %i.av, %i.ax           ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = extractelement <2 x float> %i.ay, i64 0
  store float %i.ba, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = extractelement <2 x float> %i.ay, i64 1
  store float %i.bc, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load float, ptr %i.bd, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.as, i64 1
  %i.bi = fdiv <2 x float> %i.bh, %i.ax           ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  store float %i.bj, ptr %1, align 8, !tbaa !16
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  store float %i.bk, ptr %i.at, align 8, !tbaa !18
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.ay, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bi, <2 x float> %i.bn)
  %i.br = fneg <2 x float> %i.bq                  ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  store float %i.bs, ptr %i.bf, align 8, !tbaa !13
  %i.bt = extractelement <2 x float> %i.br, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.d
  %.sink = phi float [ %i.ag, %bb.d ], [ %i.bt, %.thread ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.sink, ptr %i.bu, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.b, %bb.c
  %.1 = phi i32 [ -23, %bb.b ], [ -23, %bb.e ], [ -23, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef i32 @gs_matrix_rotate(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ugt double %i.a, 3.600000e+02
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %1 to i32
  %i.c = sdiv i32 %i.b, 90                        ; 2 uses
  %i.d = mul nsw i32 %i.c, 90
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 3
  switch i32 %i.g, label %.unreachabledefault [
    i32 0, label %._crit_edge
    i32 1, label %._crit_edge.loopexit
    i32 2, label %._crit_edge.loopexit.fold.split
    i32 3, label %.lr.ph.2
  ]

.unreachabledefault:                              ; preds = %bb.c
  unreachable

.lr.ph.2:                                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.loopexit.fold.split:                  ; preds = %bb.c
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = fmul double %1, f0x3F91DF46A2529D39
  %i.i = fptrunc double %i.h to float
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #6, !tbaa !4
  %3 = fptrunc double %i.k to float
  %4 = tail call double @cos(double noundef %i.j) #6, !tbaa !4
  %5 = fptrunc double %4 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.lr.ph.2, %._crit_edge.loopexit.fold.split, %._crit_edge.loopexit, %bb.d
  %.042 = phi float [ %3, %bb.d ], [ 0.000000e+00, %bb.c ], [ -1.000000e+00, %.lr.ph.2 ], [ 0.000000e+00, %._crit_edge.loopexit.fold.split ], [ 1.000000e+00, %._crit_edge.loopexit ]
  %.041 = phi float [ %5, %bb.d ], [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %.lr.ph.2 ], [ -1.000000e+00, %._crit_edge.loopexit.fold.split ], [ 0.000000e+00, %._crit_edge.loopexit ]
  %i.l = load float, ptr %0, align 8, !tbaa !16   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load float, ptr %i.m, align 8, !tbaa !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load float, ptr %i.o, align 8, !tbaa !19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load float, ptr %i.q, align 8, !tbaa !17 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = fneg float %i.l
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = fneg float %i.n
  %6 = insertelement <4 x float> poison, float %.042, i64 0
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = insertelement <4 x float> poison, float %i.p, i64 0
  %i.x = insertelement <4 x float> %i.w, float %i.r, i64 1
  %i.y = insertelement <4 x float> %i.x, float %i.t, i64 2
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 3
  %i.aa = fmul <4 x float> %7, %i.z
  %8 = insertelement <4 x float> poison, float %.041, i64 0
  %i.ab = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = insertelement <4 x float> poison, float %i.l, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.n, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.p, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.r, i64 3
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.af, <4 x float> %i.aa) ; 4 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 0
  store float %i.ah, ptr %2, align 8, !tbaa !16
  %i.ai = extractelement <4 x float> %i.ag, i64 1
  store float %i.ai, ptr %i.s, align 8, !tbaa !18
  %i.aj = extractelement <4 x float> %i.ag, i64 2
  store float %i.aj, ptr %i.u, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.al = extractelement <4 x float> %i.ag, i64 3
  store float %i.al, ptr %i.ak, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load float, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.an, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  store float %i.aq, ptr %i.ar, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load float, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load float, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = insertelement <2 x float> poison, float %i.a, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.e, i64 1
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.g, i64 1
  %i.n = fpext <2 x float> %i.m to <2 x double>
  %i.o = insertelement <2 x double> poison, double %0, i64 0
  %i.p = insertelement <2 x double> %i.o, double %1, i64 1
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.k, <2 x double> %i.n)
  %i.r = fptrunc <2 x double> %i.q to <2 x float> ; 3 uses
  store <2 x float> %i.r, ptr %3, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.mask = and i64 %i.t, 9223372036854775807
  %i.u = icmp eq i64 %.mask, 0
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = trunc i64 %i.t to i32
  %i.w = bitcast i32 %i.v to float
  %i.x = fpext float %i.w to double
  %i.y = extractelement <2 x float> %i.r, i64 0
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %1, double %i.x, double %i.z)
  %i.ab = fptrunc double %i.aa to float
  store float %i.ab, ptr %3, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.mask16 = and i64 %i.ad, 9223372036854775807
  %i.ae = icmp eq i64 %.mask16, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i64 %i.ad to i32
  %i.ag = bitcast i32 %i.af to float
  %i.ah = fpext float %i.ag to double
  %i.ai = extractelement <2 x float> %i.r, i64 1
  %i.aj = fpext float %i.ai to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %0, double %i.ah, double %i.aj)
  %i.al = fptrunc double %i.ak to float
  store float %i.al, ptr %i.h, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_point_transform_inverse(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = or i64 %i.d, %i.b
  %.mask = and i64 %i.e, 9223372036854775807
  %i.f = icmp eq i64 %.mask, 0
  %i.g = load float, ptr %2, align 8, !tbaa !16   ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load float, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load float, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load float, ptr %i.l, align 8, !tbaa !17
  %i.n = insertelement <2 x float> poison, float %i.i, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.k, i64 1
  %i.p = fpext <2 x float> %i.o to <2 x double>
  %i.q = insertelement <2 x double> poison, double %0, i64 0
  %i.r = insertelement <2 x double> %i.q, double %1, i64 1
  %i.s = fsub <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x float> poison, float %i.g, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.m, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>
  %i.w = fdiv <2 x double> %i.s, %i.v
  %i.x = fptrunc <2 x double> %i.w to <2 x float>
  store <2 x float> %i.x, ptr %3, align 4, !tbaa !9
  br label %gs_point_transform.exit

bb.c:                                             ; preds = %bb.a
  %i.y = trunc i64 %i.b to i32
  %i.z = bitcast i32 %i.y to float                ; 2 uses
  %i.aa = trunc i64 %i.d to i32
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = fneg float %i.ab                        ; 2 uses
  %i.af = fmul float %i.z, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ad, float %i.af) ; 4 uses
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %gs_point_transform.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !13
  %i.ak = fneg float %i.z
  %i.al = fdiv float %i.ae, %i.ag                 ; 3 uses
  %i.am = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.g, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.as = load float, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.au = fdiv float %i.ak, %i.ag                 ; 3 uses
  %i.av = insertelement <2 x float> %i.aq, float %i.al, i64 0
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.av, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> %i.aq, float %i.au, i64 1
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.ay)
  %i.bd = fneg <2 x float> %i.bc
  %i.be = fpext <2 x float> %i.aq to <2 x double>
  %i.bf = fpext <2 x float> %i.bd to <2 x double>
  %i.bg = insertelement <2 x double> poison, double %0, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %1, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.be, <2 x double> %i.bf)
  %i.bj = fptrunc <2 x double> %i.bi to <2 x float> ; 3 uses
  store <2 x float> %i.bj, ptr %3, align 4, !tbaa !9
  %i.bk = tail call i1 @llvm.is.fpclass.f32(float %i.al, /* (pzero) */ i32 64)
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = fpext float %i.al to double
  %i.bm = extractelement <2 x float> %i.bj, i64 0
  %i.bn = fpext float %i.bm to double
  %i.bo = tail call double @llvm.fmuladd.f64(double %1, double %i.bl, double %i.bn)
  %i.bp = fptrunc double %i.bo to float
  store float %i.bp, ptr %3, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = tail call i1 @llvm.is.fpclass.f32(float %i.au, /* (pzero) */ i32 64)
  br i1 %i.bq, label %gs_point_transform.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = fpext float %i.au to double
  %i.bs = extractelement <2 x float> %i.bj, i64 1
  %i.bt = fpext float %i.bs to double
  %i.bu = tail call double @llvm.fmuladd.f64(double %0, double %i.br, double %i.bt)
  %i.bv = fptrunc double %i.bu to float
  store float %i.bv, ptr %i.at, align 4, !tbaa !22
  br label %gs_point_transform.exit

gs_point_transform.exit:                          ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ -23, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %2, align 8, !tbaa !16
end_hunk_0
