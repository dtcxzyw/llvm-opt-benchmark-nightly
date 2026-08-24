Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@MatrixRotateZYX:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @MatrixScale(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store float %1, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @MatrixFrustum(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #18 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %2, i64 0
  %i.b = insertelement <2 x double> %i.a, double %4, i64 1 ; 2 uses
  %i.c = insertelement <2 x double> poison, double %1, i64 0
  %i.d = insertelement <2 x double> %i.c, double %3, i64 1 ; 2 uses
  %i.e = fsub <2 x double> %i.b, %i.d
  %i.f = fsub double %6, %5
  %i.g = fptrunc double %i.f to float
  %i.h = fptrunc double %5 to float               ; 3 uses
  %i.i = fmul float %i.h, 2.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = fptrunc <2 x double> %i.e to <2 x float> ; 2 uses
  %i.m = insertelement <2 x float> poison, float %i.i, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.n, %i.l              ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  store float %i.p, ptr %0, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = extractelement <2 x float> %i.o, i64 1
  store float %i.r, ptr %i.q, align 4
  %i.s = fptrunc <2 x double> %i.b to <2 x float>
  %i.t = fptrunc <2 x double> %i.d to <2 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = fptrunc double %6 to float               ; 2 uses
  %i.w = fadd float %i.h, %i.v
  %i.x = fneg float %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = fadd <2 x float> %i.t, %i.s
  %i.aa = fdiv <2 x float> %i.z, %i.l
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ac = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  store <4 x float> %i.ac, ptr %i.k, align 4
  %i.ad = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ab, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  store <4 x float> %i.ad, ptr %i.u, align 4
  %i.ae = fmul float %i.h, %i.v
  %i.af = fmul float %i.ae, -2.000000e+00
  %i.ag = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.g, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  store <2 x float> %i.ak, ptr %i.y, align 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @MatrixPerspective(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.a, i8 0, i64 60, i1 false)
  %i.b = fmul double %1, 5.000000e-01
  %i.c = tail call double @tan(double noundef %i.b) #56
  %i.d = fmul double %3, %i.c                     ; 4 uses
  %i.e = fmul double %2, %i.d                     ; 3 uses
  %i.f = fadd double %i.e, %i.e
  %i.g = fptrunc double %i.f to float
  %i.h = fadd double %i.d, %i.d
  %i.i = fptrunc double %i.h to float
  %i.j = fsub double %4, %3
  %i.k = fptrunc double %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = fptrunc double %i.d to float             ; 2 uses
  %i.o = fsub float %i.n, %i.n
  %i.p = fptrunc double %3 to float               ; 3 uses
  %i.q = fptrunc double %i.e to float             ; 2 uses
  %i.r = fmul float %i.p, 2.000000e+00            ; 2 uses
  %i.s = fsub float %i.q, %i.q
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.r, i64 1
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x float> %i.u, %i.w              ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  store float %i.y, ptr %i.m, align 4
  %i.z = extractelement <2 x float> %i.x, i64 1
  store float %i.z, ptr %0, align 4
  %i.aa = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.o, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x float> %i.ab, %i.ad
  store <2 x float> %i.ae, ptr %i.l, align 4
  %i.af = fptrunc double %4 to float              ; 2 uses
  %i.ag = fadd float %i.p, %i.af
  %i.ah = fneg float %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float -1.000000e+00, ptr %i.aj, align 4
  %i.ak = fmul float %i.p, %i.af
  %i.al = fmul float %i.ak, -2.000000e+00
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.al, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.an, %i.ap
  store <2 x float> %i.aq, ptr %i.ai, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @MatrixOrtho(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #18 {
bb.a:
  %i.a = insertelement <4 x double> poison, double %2, i64 0
  %i.b = insertelement <4 x double> %i.a, double %4, i64 1
  %i.c = insertelement <4 x double> %i.b, double %6, i64 2
  %i.d = insertelement <4 x double> poison, double %1, i64 0
  %i.e = insertelement <4 x double> %i.d, double %3, i64 1
  %i.f = insertelement <4 x double> %i.e, double %5, i64 2
  %i.g = fsub <4 x double> %i.c, %i.f
  %i.h = shufflevector <4 x double> %i.g, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = fptrunc double %1 to float
  %i.n = fptrunc double %2 to float
  %i.o = fadd float %i.m, %i.n
  %i.p = fneg float %i.o
  %i.q = fptrunc <4 x double> %i.h to <4 x float> ; 2 uses
  %i.r = insertelement <4 x float> <float 2.000000e+00, float 2.000000e+00, float -2.000000e+00, float poison>, float %i.p, i64 3
  %i.s = fdiv <4 x float> %i.r, %i.q              ; 4 uses
  %i.t = extractelement <4 x float> %i.s, i64 0
  store float %i.t, ptr %0, align 4
  %i.u = extractelement <4 x float> %i.s, i64 1
  store float %i.u, ptr %i.j, align 4
  %i.v = extractelement <4 x float> %i.s, i64 2
  store float %i.v, ptr %i.l, align 4
  %i.w = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  store <4 x float> %i.w, ptr %i.i, align 4
  %i.x = insertelement <2 x double> poison, double %4, i64 0
  %i.y = insertelement <2 x double> %i.x, double %6, i64 1
  %i.z = fptrunc <2 x double> %i.y to <2 x float>
  %i.aa = insertelement <2 x double> poison, double %3, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %5, i64 1
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = fadd <2 x float> %i.ac, %i.z
  %i.af = fneg <2 x float> %i.ae
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ai = fdiv <4 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ai, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  store <4 x float> %i.aj, ptr %i.k, align 4
  %i.ak = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ai, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  store <4 x float> %i.ak, ptr %i.ad, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.al, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @MatrixLookAt(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %5, float %6) local_unnamed_addr #21 {
bb.a:
  %.sroa.069.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 3 uses
  %.sroa.069.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.057.0.vec.extract = extractelement <2 x float> %5, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = fsub <2 x float> %1, %3                  ; 5 uses
  %i.f = fsub float %2, %4                        ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.g)
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.i) ; 2 uses
  %sqrt87 = tail call float @llvm.sqrt.f32(float %i.j)
  %i.k = fcmp oeq float %i.j, 0.000000e+00
  %i.l = fdiv float 1.000000e+00, %sqrt87
  %i.m = select i1 %i.k, float 1.000000e+00, float %i.l
  %i.n = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.o = insertelement <2 x float> %i.n, float %i.f, i64 1
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fmul <2 x float> %i.o, %i.q              ; 5 uses
  %i.s = fmul <2 x float> %i.e, %i.q              ; 2 uses
  %i.t = fneg <2 x float> %i.s
  %i.u = extractelement <2 x float> %i.r, i64 1   ; 3 uses
  %i.v = fneg float %i.u
  %i.w = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %6, i64 1
  %i.y = fmul <2 x float> %i.x, %i.t
  %i.z = fmul float %.sroa.057.0.vec.extract, %i.v
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %i.r, <2 x float> %i.y) ; 3 uses
  %i.ab = extractelement <2 x float> %i.s, i64 0  ; 5 uses
  %i.ac = tail call float @llvm.fmuladd.f32(float %6, float %i.ab, float %i.z) ; 3 uses
  %i.ad = fmul float %i.ac, %i.ac
  %i.ae = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ad)
  %i.ag = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ah)
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %i.aj = fdiv float 1.000000e+00, %sqrt
  %i.ak = select i1 %i.ai, float 1.000000e+00, float %i.aj ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.aa, %i.am           ; 3 uses
  %i.ao = fmul float %i.ac, %i.ak                 ; 4 uses
  %i.ap = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.aq = fneg float %i.ap
  %i.ar = fneg float %i.ao
  %i.as = fmul float %i.ab, %i.aq
  %i.at = fmul float %i.u, %i.ar
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.as, i64 1
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.an, <2 x float> %i.av) ; 3 uses
  %i.ax = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.ay = fneg float %i.ax
  %i.az = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.ba = fmul float %i.az, %i.ay
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ao, float %i.ba) ; 2 uses
  store float %i.ax, ptr %0, align 4
  store float %i.ab, ptr %i.b, align 4
  store float %i.ao, ptr %i.d, align 4
  store <2 x float> %i.aw, ptr %i.a, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ap, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bb, ptr %i.be, align 4
  store <2 x float> %i.r, ptr %i.bc, align 4
  %i.bf = fmul float %.sroa.069.4.vec.extract, %i.ao
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ax, float %.sroa.069.0.vec.extract, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ap, float %2, float %i.bg)
  %i.bi = fneg float %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bi, ptr %i.bj, align 4
  %foldExtExtBinop89 = fmul <2 x float> %1, %i.aw
  %i.bk = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.bl = extractelement <2 x float> %i.aw, i64 0
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %.sroa.069.0.vec.extract, float %i.bk)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bb, float %2, float %i.bm)
  %i.bo = fneg float %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bo, ptr %i.bp, align 4
  %i.bq = fmul float %.sroa.069.4.vec.extract, %i.az
  %i.br = tail call float @llvm.fmuladd.f32(float %i.ab, float %.sroa.069.0.vec.extract, float %i.bq)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.u, float %2, float %i.br)
  %i.bt = fneg float %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.bt, ptr %i.bu, align 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @MatrixToFloatV(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.float16) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %1, align 8
  store float %i.a, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load <12 x float>, ptr %i.c, align 4
  %i.e = shufflevector <12 x float> %i.d, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <12 x float>, ptr %i.g, align 8
  %i.i = shufflevector <12 x float> %i.h, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.i, ptr %i.f, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <12 x float>, ptr %i.k, align 4
  %i.m = shufflevector <12 x float> %i.l, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.u, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionAdd(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.b = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.c = fadd <4 x float> %i.a, %i.b              ; 2 uses
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionAddValue(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.b = insertelement <4 x float> poison, float %2, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer
  %i.d = fadd <4 x float> %i.a, %i.c              ; 2 uses
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.f = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.e, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.f, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionSubtract(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.b = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.c = fsub <4 x float> %i.a, %i.b              ; 2 uses
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.e, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionSubtractValue(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.b = insertelement <4 x float> poison, float %2, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer
  %i.d = fsub <4 x float> %i.a, %i.c              ; 2 uses
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.f = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.e, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.f, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionIdentity() local_unnamed_addr #10 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00> }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @QuaternionLength(<2 x float> %0, <2 x float> %1) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.a)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float %.sroa.5.8.vec.extract, float %i.b)
  %.sroa.5.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.5.12.vec.extract, float %.sroa.5.12.vec.extract, float %i.c)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.d)
  ret float %sqrt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float> %0, <2 x float> %1) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.a)
  %.sroa.7.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract, float %.sroa.7.8.vec.extract, float %i.b)
  %.sroa.7.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.7.12.vec.extract, float %.sroa.7.12.vec.extract, float %i.c) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.d)
  %i.e = fcmp oeq float %i.d, 0.000000e+00
  %i.f = fdiv float 1.000000e+00, %sqrt
  %i.g = select i1 %i.e, float 1.000000e+00, float %i.f
  %i.h = shufflevector <2 x float> %0, <2 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.i = insertelement <4 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = fmul <4 x float> %i.h, %i.j              ; 2 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.l, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.m, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionInvert(<2 x float> %0, <2 x float> %1) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.a)
  %.sroa.6.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.6.8.vec.extract, float %.sroa.6.8.vec.extract, float %i.b)
  %.sroa.6.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.6.12.vec.extract, float %.sroa.6.12.vec.extract, float %i.c) ; 2 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fdiv float 1.000000e+00, %i.d            ; 2 uses
  %i.g = fneg float %i.f
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0 ; 2 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %0, %i.i
  %i.k = insertelement <2 x float> %i.h, float %i.f, i64 1
  %i.l = fmul <2 x float> %1, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.014.0 = phi <2 x float> [ %i.j, %bb.b ], [ %0, %bb.a ]
  %.sroa.618.0 = phi <2 x float> [ %i.l, %bb.b ], [ %1, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.618.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionMultiply(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.a = fneg float %.sroa.0.0.vec.extract
  %i.b = shufflevector <2 x float> %1, <2 x float> %0, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.c = fneg <4 x float> %i.b                    ; 2 uses
  %i.d = shufflevector <2 x float> %1, <2 x float> %0, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
end_hunk_0
begin_hunk_1_@CameraPitch:bb.a

bb.i:                                             ; preds = %GetCameraRight.exit
  %.sroa.213.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %i.ek = fadd float %.sroa.03.0.vec.extract.i, %i.ee
  %.sroa.08.0.vec.insert.i130 = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.el = fadd float %.sroa.03.4.vec.extract.i, %i.ef
  %.sroa.08.4.vec.insert.i133 = insertelement <2 x float> %.sroa.08.0.vec.insert.i130, float %i.el, i64 1
  %i.em = fadd float %i.eg, %.sroa.213.0.copyload
  store <2 x float> %.sroa.08.4.vec.insert.i133, ptr %i.k, align 4
  store float %i.em, ptr %.sroa.271.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 3 uses
  %i.en = tail call float @sinf(float noundef %i.cw) #56 ; 3 uses
  %i.eo = fmul float %i.ct, %i.en                 ; 4 uses
  %i.ep = fmul float %i.cu, %i.en                 ; 4 uses
  %i.eq = fmul float %i.cv, %i.en                 ; 4 uses
  %i.er = tail call float @cosf(float noundef %i.cw) #56
  %i.es = fneg float %.sroa.07.4.vec.extract.i.i
  %i.et = fmul float %i.eq, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.ep, float %.sroa.24.0.copyload, float %i.et) ; 3 uses
  %i.ev = fneg float %.sroa.24.0.copyload
  %i.ew = fmul float %i.eo, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.eq, float %.sroa.07.0.vec.extract.i.i, float %i.ew) ; 3 uses
  %i.ey = fneg float %.sroa.07.0.vec.extract.i.i
  %i.ez = fmul float %i.ep, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.eo, float %.sroa.07.4.vec.extract.i.i, float %i.ez) ; 3 uses
  %i.fb = fneg float %i.ex
  %i.fc = fmul float %i.eq, %i.fb
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.fa, float %i.fc)
  %i.fe = fneg float %i.fa
  %i.ff = fmul float %i.eo, %i.fe
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eu, float %i.ff)
  %i.fh = fneg float %i.eu
  %i.fi = fmul float %i.ep, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ex, float %i.fi)
  %i.fk = fmul float %i.er, 2.000000e+00          ; 3 uses
  %i.fl = fmul float %i.fk, %i.eu
  %i.fm = fmul float %i.fk, %i.ex
  %i.fn = fmul float %i.fk, %i.fa
  %i.fo = fmul float %i.fd, 2.000000e+00
  %i.fp = fmul float %i.fg, 2.000000e+00
  %i.fq = fmul float %i.fj, 2.000000e+00
  %i.fr = fadd float %.sroa.07.0.vec.extract.i.i, %i.fl
  %i.fs = fadd float %.sroa.07.4.vec.extract.i.i, %i.fm
  %i.ft = fadd float %.sroa.24.0.copyload, %i.fn
  %i.fu = fadd float %i.fr, %i.fo
  %i.fv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fw = fadd float %i.fs, %i.fp
  %.sroa.071.4.vec.insert82.i141 = insertelement <2 x float> %i.fv, float %i.fw, i64 1
  %i.fx = fadd float %i.ft, %i.fq
  store <2 x float> %.sroa.071.4.vec.insert82.i141, ptr %i.a, align 4
  store float %i.fx, ptr %.sroa.24.0..sroa_idx.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraRoll(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.011.0.copyload.i = load <2 x float>, ptr %i.a, align 4
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.212.0.copyload.i = load float, ptr %.sroa.212.0..sroa_idx.i, align 4
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %0, align 4
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4
  %i.b = fsub <2 x float> %.sroa.011.0.copyload.i, %.sroa.09.0.copyload.i ; 5 uses
  %i.c = fsub float %.sroa.212.0.copyload.i, %.sroa.210.0.copyload.i ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %GetCameraForward.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.g)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
  %i.m = fmul float %i.c, %i.i
  br label %GetCameraForward.exit

GetCameraForward.exit:                            ; preds = %bb.a, %bb.b
  %.sroa.013.0.i.i = phi <2 x float> [ %i.l, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %.sroa.617.0.i.i = phi float [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 3 uses
  %.sroa.044.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 0 ; 2 uses
  %foldExtExtBinop16 = fmul <2 x float> %.sroa.013.0.i.i, %.sroa.013.0.i.i
  %i.o = extractelement <2 x float> %foldExtExtBinop16, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.044.0.vec.extract.i, float %.sroa.044.0.vec.extract.i, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i, float %.sroa.617.0.i.i, float %i.p) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.q)
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  %i.s = fdiv float 1.000000e+00, %sqrt.i
  %i.t = select i1 %i.r, float 1.000000e+00, float %i.s
  %i.u = fmul float %1, 5.000000e-01              ; 2 uses
  %i.v = tail call float @sinf(float noundef %i.u) #56
  %i.w = tail call float @cosf(float noundef %i.u) #56
  %i.x = fmul float %i.w, 2.000000e+00            ; 2 uses
  %i.y = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %.sroa.617.0.i.i, i64 1
  %i.aa = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fmul <2 x float> %.sroa.013.0.i.i, %i.ab
  %i.ae = insertelement <2 x float> %i.y, float %.sroa.617.0.i.i, i64 0
  %i.af = fmul <2 x float> %i.ae, %i.ab
  %i.ag = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ai = fmul <2 x float> %i.ah, %i.ac           ; 5 uses
  %i.aj = fmul <2 x float> %i.ah, %i.ad
  %i.ak = fmul <2 x float> %i.ah, %i.af           ; 5 uses
  %i.al = shufflevector <2 x float> %.sroa.03.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.am = insertelement <2 x float> %i.al, float %.sroa.24.0.copyload, i64 1 ; 2 uses
  %i.an = fneg <2 x float> %i.am
  %i.ao = fneg <2 x float> %.sroa.03.0.copyload
  %i.ap = insertelement <2 x float> %i.al, float %.sroa.24.0.copyload, i64 0 ; 2 uses
  %i.aq = fneg <2 x float> %i.ap
  %i.ar = fmul <2 x float> %i.ak, %i.an
  %i.as = fmul <2 x float> %i.ai, %i.ao
  %i.at = shufflevector <2 x float> %i.ak, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2>
  %i.au = fmul <2 x float> %i.at, %i.aq
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ap, <2 x float> %i.ar) ; 3 uses
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.am, <2 x float> %i.as) ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %.sroa.03.0.copyload, <2 x float> %i.au)
  %i.ay = fneg <2 x float> %i.ax
  %i.az = fmul <2 x float> %i.ak, %i.ay
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aw, <2 x float> %i.az)
  %i.bb = extractelement <2 x float> %i.av, i64 0
  %i.bc = fneg float %i.bb
  %i.bd = extractelement <2 x float> %i.ai, i64 0
  %i.be = fmul float %i.bd, %i.bc
  %i.bf = extractelement <2 x float> %i.av, i64 1
  %i.bg = extractelement <2 x float> %i.ak, i64 1
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bf, float %i.be)
  %i.bi = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bj, %i.av
  %i.bl = extractelement <2 x float> %i.aw, i64 0
  %i.bm = fmul float %i.x, %i.bl
  %i.bn = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bo = fmul float %i.bh, 2.000000e+00
  %i.bp = fadd <2 x float> %.sroa.03.0.copyload, %i.bk
  %i.bq = fadd float %.sroa.24.0.copyload, %i.bm
  %i.br = fadd <2 x float> %i.bp, %i.bn
  %i.bs = fadd float %i.bq, %i.bo
  store <2 x float> %i.br, ptr %i.n, align 4
  store float %i.bs, ptr %.sroa.24.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetCameraViewMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 4 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4 ; 2 uses
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0 ; 3 uses
  %.sroa.069.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1 ; 2 uses
  %.sroa.057.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload ; 5 uses
  %i.h = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.g, %i.g
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %sqrt87.i = tail call float @llvm.sqrt.f32(float %i.l)
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fdiv float 1.000000e+00, %sqrt87.i
  %i.o = select i1 %i.m, float 1.000000e+00, float %i.n
  %i.p = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.h, i64 1
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x float> %i.q, %i.s              ; 5 uses
  %i.u = fmul <2 x float> %i.g, %i.s              ; 2 uses
  %i.v = fneg <2 x float> %i.u
  %i.w = extractelement <2 x float> %i.t, i64 1   ; 3 uses
  %i.x = fneg float %i.w
  %i.y = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %.sroa.2.0.copyload, i64 1
  %i.aa = fmul <2 x float> %i.z, %i.v
  %i.ab = fmul float %.sroa.057.0.vec.extract.i, %i.x
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.copyload, <2 x float> %i.t, <2 x float> %i.aa) ; 3 uses
  %i.ad = extractelement <2 x float> %i.u, i64 0  ; 5 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %.sroa.2.0.copyload, float %i.ad, float %i.ab) ; 3 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af)
  %i.ai = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = fdiv float 1.000000e+00, %sqrt.i
  %i.am = select i1 %i.ak, float 1.000000e+00, float %i.al ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ac, %i.ao           ; 3 uses
  %i.aq = fmul float %i.ae, %i.am                 ; 4 uses
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  %i.as = fneg float %i.ar
  %i.at = fneg float %i.aq
  %i.au = fmul float %i.ad, %i.as
  %i.av = fmul float %i.w, %i.at
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ap, <2 x float> %i.ax) ; 3 uses
  %i.az = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.ba = fneg float %i.az
  %i.bb = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.bc = fmul float %i.bb, %i.ba
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aq, float %i.bc) ; 2 uses
  store float %i.az, ptr %0, align 4, !alias.scope !198
  store float %i.ad, ptr %i.d, align 4, !alias.scope !198
  store float %i.aq, ptr %i.f, align 4, !alias.scope !198
  store <2 x float> %i.ay, ptr %i.c, align 4, !alias.scope !198
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ar, ptr %i.bf, align 4, !alias.scope !198
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bd, ptr %i.bg, align 4, !alias.scope !198
  store <2 x float> %i.t, ptr %i.be, align 4, !alias.scope !198
  %i.bh = fmul float %.sroa.069.4.vec.extract.i, %i.aq
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.069.0.vec.extract.i, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.24.0.copyload, float %i.bi)
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bk, ptr %i.bl, align 4, !alias.scope !198
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.03.0.copyload, %i.ay
  %i.bm = extractelement <2 x float> %foldExtExtBinop8, i64 1
  %i.bn = extractelement <2 x float> %i.ay, i64 0
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %.sroa.069.0.vec.extract.i, float %i.bm)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bd, float %.sroa.24.0.copyload, float %i.bo)
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bq, ptr %i.br, align 4, !alias.scope !198
  %i.bs = fmul float %.sroa.069.4.vec.extract.i, %i.bb
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.069.0.vec.extract.i, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.w, float %.sroa.24.0.copyload, float %i.bt)
  %i.bv = fneg float %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.bv, ptr %i.bw, align 4, !alias.scope !198
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 4, !alias.scope !198
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @GetCameraProjectionMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 28), (32, 44), (48, 60)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load float, ptr %i.c, align 4
  %i.e = fmul float %i.d, f0x3C8EFA35
  %i.f = fpext float %i.e to double
  %i.g = fpext float %2 to double
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.h, i8 0, i64 60, i1 false), !alias.scope !201
  %i.i = fmul double %i.f, 5.000000e-01
  %i.j = tail call double @tan(double noundef %i.i) #56, !noalias !201
  %i.k = fmul double %i.j, 5.000000e-02           ; 4 uses
  %i.l = fmul double %i.k, %i.g                   ; 3 uses
  %i.m = fadd double %i.l, %i.l
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %i.o = fadd double %i.k, %i.k
  %i.p = fptrunc double %i.o to float
  %i.q = fdiv float 1.000000e-01, %i.n
  store float %i.q, ptr %0, align 4, !alias.scope !201
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = fptrunc double %i.l to float             ; 2 uses
  %i.t = fsub float %i.s, %i.s
  %i.u = fdiv float %i.t, %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.u, ptr %i.v, align 4, !alias.scope !201
  %i.w = fptrunc double %i.k to float             ; 2 uses
  %i.x = fsub float %i.w, %i.w
  %i.y = insertelement <2 x float> <float 1.000000e-01, float poison>, float %i.x, i64 1
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x float> %i.y, %i.aa
  store <2 x float> %i.ab, ptr %i.r, align 4, !alias.scope !201
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fpext float %i.ad to double
  %i.af = fmul double %i.ae, 5.000000e-01         ; 2 uses
  %i.ag = fpext float %2 to double
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.af, i64 1 ; 3 uses
  %i.an = fadd <2 x double> %i.am, %i.am
  %i.ao = fptrunc <2 x double> %i.an to <2 x float> ; 2 uses
  %i.ap = fdiv <2 x float> splat (float 2.000000e+00), %i.ao ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  store float %i.aq, ptr %0, align 4, !alias.scope !204
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.as = extractelement <2 x float> %i.ap, i64 1
  store float %i.as, ptr %i.ar, align 4, !alias.scope !204
  store <2 x float> zeroinitializer, ptr %i.ai, align 4, !alias.scope !204
  store <2 x float> zeroinitializer, ptr %i.aj, align 4, !alias.scope !204
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.at, align 4, !alias.scope !204
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float f0xBA0312DA, ptr %i.au, align 4, !alias.scope !204
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.av, align 4, !alias.scope !204
  %i.aw = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ax = fsub <2 x float> %i.aw, %i.aw
  %i.ay = fneg <2 x float> %i.ax
  %i.az = fdiv <2 x float> %i.ay, %i.ao           ; 2 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  store <4 x float> %i.bb, ptr %i.ak, align 4, !alias.scope !204
  %i.bc = extractelement <2 x float> %i.az, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.bd, i8 0, i64 56, i1 false), !alias.scope !207
  store float 1.000000e+00, ptr %0, align 4, !alias.scope !207
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink18 = phi i64 [ 20, %bb.d ], [ 28, %bb.c ], [ 40, %bb.b ]
  %.sink16 = phi float [ 1.000000e+00, %bb.d ], [ %i.bc, %bb.c ], [ f0xBF8000D2, %bb.b ]
  %.sink15 = phi i64 [ 40, %bb.d ], [ 44, %bb.c ], [ 56, %bb.b ]
  %.sink13 = phi float [ 1.000000e+00, %bb.d ], [ f0xBF8000D2, %bb.c ], [ -1.000000e+00, %bb.b ]
  %.sink12 = phi i64 [ 60, %bb.d ], [ 60, %bb.c ], [ 44, %bb.b ]
  %.sink = phi float [ 1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.c ], [ f0xBDCCCD75, %bb.b ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.sink18
  store float %.sink16, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store float %.sink13, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store float %.sink, ptr %i.bg, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @UpdateCamera(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #29 {
bb.a:
  %i.a = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1892), align 4
  %i.c = fsub <2 x float> %i.a, %i.b
  %i.d = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.e = fmul <2 x float> %i.c, %i.d              ; 2 uses
  %i.f = icmp eq i32 %1, 4
  %i.g = add i32 %1, -3
  %i.h = icmp ult i32 %i.g, 2                     ; 8 uses
  %i.i = icmp eq i32 %1, 2                        ; 3 uses
  %i.j = or i1 %i.f, %i.i                         ; 4 uses
  %i.k = icmp eq i32 %1, 1                        ; 2 uses
  switch i32 %1, label %bb.b [
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.l = phi i1 [ true, %bb.a ], [ %i.i, %bb.b ], [ true, %bb.a ], [ true, %bb.a ] ; 4 uses
  %i.m = load double, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 3080), align 8
  %i.n = fptrunc double %i.m to float             ; 4 uses
  %i.o = fmul float %i.n, 5.400000e+00            ; 15 uses
  %i.p = fmul float %i.n, 3.000000e-02            ; 6 uses
  %i.q = fmul float %i.n, 2.000000e+00            ; 6 uses
  %i.r = fmul float %i.n, 5.000000e-01            ; 2 uses
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %IsKeyPressed.exit874.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.s, align 4 ; 5 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.03.0.copyload.i
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.u) ; 3 uses
  %i.w = fcmp une float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.f, label %GetCameraUp.exit

bb.f:                                             ; preds = %bb.e
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.v)
  %i.x = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %.sroa.03.0.copyload.i, %i.z ; 4 uses
  %i.ab = fmul float %.sroa.24.0.copyload.i, %i.x ; 3 uses
  %foldExtExtBinop973 = fmul <2 x float> %i.aa, %i.aa
  %.pre918 = extractelement <2 x float> %foldExtExtBinop973, i64 1 ; 2 uses
  %i.ac = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %.pre919 = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %.pre918)
  %.pre921 = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %.pre919)
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.e, %bb.f
  %.pre-phi922 = phi float [ %i.v, %bb.e ], [ %.pre921, %bb.f ] ; 3 uses
  %.pre-phi = phi float [ %i.t, %bb.e ], [ %.pre918, %bb.f ]
  %.sroa.617.0.i.i = phi float [ %.sroa.24.0.copyload.i, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ad = phi <2 x float> [ %.sroa.03.0.copyload.i, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ae = fcmp une float %.pre-phi922, 1.000000e+00
  %i.af = fcmp une float %.pre-phi922, 0.000000e+00
  %or.cond.i = and i1 %i.ae, %i.af
end_hunk_1
begin_hunk_2_@IsShaderValid
define zeroext i1 @IsShaderValid(i32 %0, ptr nofree readnone captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne ptr %1, null
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define void @UnloadShader(i32 %0, ptr captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %.not = icmp eq i32 %0, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @glad_glDeleteProgram, align 8
  tail call void %i.b(i32 noundef %0) #56, !inline_history !272
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.88, i32 noundef %0)
  tail call void @free(ptr noundef %1) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetShaderLocation(i32 %0, ptr nofree readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.b = tail call i32 %i.a(i32 noundef %0, ptr noundef %2) #56, !inline_history !271
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @GetShaderLocationAttrib(i32 %0, ptr nofree readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.b = tail call i32 %i.a(i32 noundef %0, ptr noundef %2) #56, !inline_history !270
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define void @SetShaderValue(i32 %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %SetShaderValueV.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @glad_glUseProgram, align 8
  tail call void %i.b(i32 noundef %0) #56, !inline_history !273
  tail call void @rlSetUniform(i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1)
  br label %SetShaderValueV.exit

SetShaderValueV.exit:                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetShaderValueV(i32 %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @glad_glUseProgram, align 8
  tail call void %i.b(i32 noundef %0) #56, !inline_history !274
  tail call void @rlSetUniform(i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetShaderValueMatrix(i32 %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rl_float16, align 4         ; 10 uses
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @glad_glUseProgram, align 8
  tail call void %i.b(i32 noundef %0) #56, !inline_history !274
  %.sroa.0.0.copyload = load float, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  %i.c = load ptr, ptr @glad_glUniformMatrix4fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  store float %.sroa.0.0.copyload, ptr %4, align 4, !alias.scope !275
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load <12 x float>, ptr %.sroa.4.0..sroa_idx, align 4
  %i.f = shufflevector <12 x float> %i.e, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.f, ptr %i.d, align 4, !alias.scope !275
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.h = load <12 x float>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = shufflevector <12 x float> %i.h, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.i, ptr %i.g, align 4, !alias.scope !275
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.k = load <12 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.l = shufflevector <12 x float> %i.k, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.l, ptr %i.j, align 4, !alias.scope !275
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float %.sroa.10.0.copyload, ptr %i.m, align 4, !alias.scope !275
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %.sroa.14.0.copyload, ptr %i.n, align 4, !alias.scope !275
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 60
  store float %.sroa.18.0.copyload, ptr %i.o, align 4, !alias.scope !275
  call void %i.c(i32 noundef %2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %4) #56, !inline_history !278
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetShaderValueTexture(i32 %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %rlSetUniformSampler.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @glad_glUseProgram, align 8
  tail call void %i.b(i32 noundef %0) #56, !inline_history !274
  %i.c = load i32, ptr %3, align 8                ; 5 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2344), align 8 ; 2 uses
  %i.e = icmp eq i32 %i.d, %i.c
  br i1 %i.e, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.01519.lcssa.wide.i = phi i32 [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ]
  %i.f = load ptr, ptr @glad_glUniform1i, align 8
  tail call void %i.f(i32 noundef %2, i32 noundef %.01519.lcssa.wide.i) #56, !inline_history !279
  br label %rlSetUniformSampler.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2348), align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, %i.c
  br i1 %i.h, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2352), align 8 ; 2 uses
  %i.j = icmp eq i32 %i.i, %i.c
  br i1 %i.j, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2356), align 4 ; 2 uses
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.e
  %i.m = icmp eq i32 %i.d, 0
  br i1 %i.m, label %bb.f, label %.preheader.1.i

bb.f:                                             ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.021.lcssa.wide.i = phi i64 [ 0, %.preheader.preheader.i ], [ 1, %.preheader.1.i ], [ 2, %.preheader.2.i ], [ 3, %.preheader.3.i ] ; 2 uses
  %i.n = trunc nuw nsw i64 %.021.lcssa.wide.i to i32
  %i.o = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2344), i64 %.021.lcssa.wide.i
  %i.p = load ptr, ptr @glad_glUniform1i, align 8
  %i.q = add nuw nsw i32 %i.n, 1
  tail call void %i.p(i32 noundef %2, i32 noundef %i.q) #56, !inline_history !279
  store i32 %i.c, ptr %i.o, align 4
  br label %rlSetUniformSampler.exit

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.r = icmp eq i32 %i.g, 0
  br i1 %i.r, label %bb.f, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.s = icmp eq i32 %i.i, 0
  br i1 %i.s, label %bb.f, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.f, label %rlSetUniformSampler.exit

rlSetUniformSampler.exit:                         ; preds = %.preheader.3.i, %bb.f, %.thread.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @GetScreenToWorldRay(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Ray) align 4 captures(none) initializes((0, 24)) %0, <2 x float> %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2) local_unnamed_addr #29 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  tail call void @GetScreenToWorldRayEx(ptr dead_on_unwind writable sret(%struct.Ray) align 4 %0, <2 x float> %1, ptr noundef nonnull byval(%struct.Camera3D) align 8 %2, i32 noundef %i.a, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @GetScreenToWorldRayEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Ray) align 4 captures(none) initializes((0, 24)) %0, <2 x float> %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #29 {
bb.a:
  %5 = alloca %struct.Matrix, align 8             ; 16 uses
  %6 = alloca %struct.Matrix, align 8             ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.sroa.070.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fmul float %.sroa.070.0.vec.extract, 2.000000e+00
  %i.b = sitofp i32 %3 to float
  %i.c = fdiv float %i.a, %i.b
  %i.d = fadd float %i.c, -1.000000e+00
  %.sroa.070.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.e = fmul float %.sroa.070.4.vec.extract, 2.000000e+00
  %i.f = sitofp i32 %4 to float
  %i.g = fdiv float %i.e, %i.f
  %i.h = fsub float 1.000000e+00, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.055.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 8 ; 4 uses
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.i, align 4
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.254.0.copyload = load float, ptr %.sroa.254.0..sroa_idx, align 4
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.j, align 8 ; 3 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 8 ; 2 uses
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 0 ; 3 uses
  %.sroa.069.4.vec.extract.i = extractelement <2 x float> %.sroa.055.0.copyload, i64 1 ; 2 uses
  %.sroa.057.0.vec.extract.i = extractelement <2 x float> %.sroa.051.0.copyload, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.o = fsub <2 x float> %.sroa.055.0.copyload, %.sroa.053.0.copyload ; 5 uses
  %i.p = fsub float %.sroa.256.0.copyload, %.sroa.254.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.o, %i.o
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.r = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.q)
  %i.t = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.s) ; 2 uses
  %sqrt87.i = tail call float @llvm.sqrt.f32(float %i.t)
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  %i.v = fdiv float 1.000000e+00, %sqrt87.i
  %i.w = select i1 %i.u, float 1.000000e+00, float %i.v
  %i.x = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x float> %i.x, float %i.p, i64 1
  %i.z = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul <2 x float> %i.y, %i.aa            ; 5 uses
  %i.ac = fmul <2 x float> %i.o, %i.aa            ; 2 uses
  %i.ad = fneg <2 x float> %i.ac
  %i.ae = extractelement <2 x float> %i.ab, i64 1 ; 3 uses
  %i.af = fneg float %i.ae
  %i.ag = shufflevector <2 x float> %.sroa.051.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.252.0.copyload, i64 1
  %i.ai = fmul <2 x float> %i.ah, %i.ad
  %i.aj = fmul float %.sroa.057.0.vec.extract.i, %i.af
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.051.0.copyload, <2 x float> %i.ab, <2 x float> %i.ai) ; 3 uses
  %i.al = extractelement <2 x float> %i.ac, i64 0 ; 5 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %.sroa.252.0.copyload, float %i.al, float %i.aj) ; 3 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.an)
  %i.aq = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ap) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ar)
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  %i.at = fdiv float 1.000000e+00, %sqrt.i
  %i.au = select i1 %i.as, float 1.000000e+00, float %i.at ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.ak, %i.aw           ; 3 uses
  %i.ay = fmul float %i.am, %i.au                 ; 4 uses
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.ba = fneg float %i.az
  %i.bb = fneg float %i.ay
  %i.bc = fmul float %i.al, %i.ba
  %i.bd = fmul float %i.ae, %i.bb
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.bc, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ax, <2 x float> %i.bf) ; 3 uses
  %i.bh = extractelement <2 x float> %i.ax, i64 1 ; 3 uses
  %i.bi = fneg float %i.bh
  %i.bj = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.bk = fmul float %i.bj, %i.bi
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ay, float %i.bk) ; 2 uses
  store float %i.bh, ptr %5, align 8, !alias.scope !280
  store float %i.al, ptr %i.l, align 8, !alias.scope !280
  store float %i.ay, ptr %i.n, align 4, !alias.scope !280
  store <2 x float> %i.bg, ptr %i.k, align 8, !alias.scope !280
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.az, ptr %i.bn, align 8, !alias.scope !280
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.bl, ptr %i.bo, align 8, !alias.scope !280
  store <2 x float> %i.ab, ptr %i.bm, align 4, !alias.scope !280
  %i.bp = fmul float %.sroa.069.4.vec.extract.i, %i.ay
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bh, float %.sroa.069.0.vec.extract.i, float %i.bp)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.256.0.copyload, float %i.bq)
  %i.bs = fneg float %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bs, ptr %i.bt, align 4, !alias.scope !280
  %foldExtExtBinop89 = fmul <2 x float> %.sroa.055.0.copyload, %i.bg
  %i.bu = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.bv = extractelement <2 x float> %i.bg, i64 0
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.069.0.vec.extract.i, float %i.bu)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bl, float %.sroa.256.0.copyload, float %i.bw)
  %i.by = fneg float %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %i.by, ptr %i.bz, align 4, !alias.scope !280
  %i.ca = fmul float %.sroa.069.4.vec.extract.i, %i.bj
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.al, float %.sroa.069.0.vec.extract.i, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.256.0.copyload, float %i.cb)
  %i.cd = fneg float %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float %i.cd, ptr %i.ce, align 4, !alias.scope !280
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.m, align 8, !alias.scope !280
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.cf, i8 0, i64 56, i1 false), !alias.scope !283
  store float 1.000000e+00, ptr %6, align 8, !alias.scope !283
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  store float 1.000000e+00, ptr %i.cg, align 4, !alias.scope !283
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store float 1.000000e+00, ptr %i.ch, align 8, !alias.scope !283
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.ci, align 4, !alias.scope !283
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  switch i32 %i.ck, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = fmul float %i.cm, f0x3C8EFA35
  %i.co = fpext float %i.cn to double
  %i.cp = sitofp i32 %3 to double
  %i.cq = sitofp i32 %4 to double
  %i.cr = fdiv double %i.cp, %i.cq
  %i.cs = load double, ptr @rlCullDistanceNear, align 8 ; 3 uses
  %i.ct = load double, ptr @rlCullDistanceFar, align 8 ; 2 uses
  %i.cu = fmul double %i.co, 5.000000e-01
  %i.cv = tail call double @tan(double noundef %i.cu) #56, !noalias !286
  %i.cw = fmul double %i.cs, %i.cv                ; 4 uses
  %i.cx = fmul double %i.cr, %i.cw                ; 3 uses
  %i.cy = fadd double %i.cx, %i.cx
  %i.cz = fptrunc double %i.cy to float
  %i.da = fadd double %i.cw, %i.cw
  %i.db = fptrunc double %i.da to float
  %i.dc = fsub double %i.ct, %i.cs
  %i.dd = fptrunc double %i.dc to float
  %i.de = fptrunc double %i.ct to float           ; 2 uses
  store float 0.000000e+00, ptr %i.cf, align 4
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i64 0, ptr %.sroa.679.0..sroa_idx, align 4
  %i.df = fptrunc double %i.cw to float           ; 2 uses
  %i.dg = fsub float %i.df, %i.df
  %i.dh = fptrunc double %i.cs to float           ; 3 uses
  %i.di = fptrunc double %i.cx to float           ; 2 uses
  %i.dj = fmul float %i.dh, 2.000000e+00          ; 2 uses
  %i.dk = fsub float %i.di, %i.di
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dj, i64 1
  %i.dn = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x float> %i.dm, %i.do           ; 2 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  store float %i.dq, ptr %.sroa.578.0..sroa_idx, align 8
  %i.dr = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dg, i64 1
  %i.dt = insertelement <2 x float> poison, float %i.db, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fdiv <2 x float> %i.ds, %i.du
  %i.dw = fadd float %i.dh, %i.de
  %i.dx = fneg float %i.dw
  %i.dy = fmul float %i.dh, %i.de
  %i.dz = fmul float %i.dy, -2.000000e+00
  %i.ea = extractelement <2 x float> %i.dp, i64 1
  store float %i.ea, ptr %6, align 8
  store <2 x float> %i.dv, ptr %i.cg, align 4
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.882.0..sroa_idx, i8 0, i64 12, i1 false)
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dz, i64 1
  %i.ed = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fdiv <2 x float> %i.ec, %i.ee
  store <2 x float> %i.ef, ptr %i.ch, align 8
  %.sroa.1085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %.sroa.1085.0..sroa_idx, align 8
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store float -1.000000e+00, ptr %.sroa.1086.0..sroa_idx, align 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.eg = sitofp i32 %3 to double
  %i.eh = sitofp i32 %4 to double
  %i.ei = fdiv double %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = fpext float %i.ek to double
  %i.em = fmul double %i.el, 5.000000e-01         ; 2 uses
  %i.en = fmul double %i.ei, %i.em
  %i.eo = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
  %i.ep = load double, ptr @rlCullDistanceFar, align 8 ; 2 uses
  %i.eq = fsub double %i.ep, %i.eo
  %i.er = fptrunc double %i.eq to float
  %i.es = insertelement <2 x double> poison, double %i.en, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.em, i64 1 ; 3 uses
  %i.eu = fadd <2 x double> %i.et, %i.et
  %i.ev = fptrunc <2 x double> %i.eu to <2 x float>
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ex = fptrunc <2 x double> %i.et to <2 x float> ; 2 uses
  %i.ey = fsub <2 x float> %i.ex, %i.ex
  %i.ez = fneg <2 x float> %i.ey
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> <float 2.000000e+00, float 2.000000e+00, float poison, float poison>, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fc = fdiv <4 x float> %i.fb, %i.ew           ; 4 uses
  %i.fd = fptrunc double %i.ep to float
  %i.fe = fptrunc double %i.eo to float
  %i.ff = fadd float %i.fe, %i.fd
  %i.fg = fneg float %i.ff
  %i.fh = extractelement <4 x float> %i.fc, i64 0
  store float %i.fh, ptr %6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fi = extractelement <4 x float> %i.fc, i64 2
  store float %i.fi, ptr %.sroa.6.0..sroa_idx, align 4
  %i.fj = extractelement <4 x float> %i.fc, i64 1
  store float %i.fj, ptr %i.cg, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fk = extractelement <4 x float> %i.fc, i64 3
  store float %i.fk, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4
  %i.fl = insertelement <2 x float> <float -2.000000e+00, float poison>, float %i.fg, i64 1
  %i.fm = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fdiv <2 x float> %i.fl, %i.fn
  store <2 x float> %i.fo, ptr %i.ch, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 52
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi float [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ]
  store float %.sink, ptr %i.ci, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.sroa.041.0.vec.insert = insertelement <2 x float> poison, float %i.d, i64 0
  %.sroa.041.4.vec.insert = insertelement <2 x float> %.sroa.041.0.vec.insert, float %i.h, i64 1 ; 3 uses
  %i.fp = tail call { <2 x float>, float } @Vector3Unproject(<2 x float> %.sroa.041.4.vec.insert, float 0.000000e+00, ptr noundef nonnull byval(%struct.Matrix) align 8 %6, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) ; 2 uses
  %.fca.0.extract35 = extractvalue { <2 x float>, float } %i.fp, 0
  %.fca.1.extract36 = extractvalue { <2 x float>, float } %i.fp, 1
  %i.fq = tail call { <2 x float>, float } @Vector3Unproject(<2 x float> %.sroa.041.4.vec.insert, float 1.000000e+00, ptr noundef nonnull byval(%struct.Matrix) align 8 %6, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) ; 2 uses
  %.fca.0.extract24 = extractvalue { <2 x float>, float } %i.fq, 0
  %.fca.1.extract25 = extractvalue { <2 x float>, float } %i.fq, 1
  %i.fr = tail call { <2 x float>, float } @Vector3Unproject(<2 x float> %.sroa.041.4.vec.insert, float -1.000000e+00, ptr noundef nonnull byval(%struct.Matrix) align 8 %6, ptr noundef nonnull byval(%struct.Matrix) align 8 %5) ; 2 uses
  %.fca.0.extract14 = extractvalue { <2 x float>, float } %i.fr, 0
  %.fca.1.extract15 = extractvalue { <2 x float>, float } %i.fr, 1
  %i.fs = fsub <2 x float> %.fca.0.extract24, %.fca.0.extract35 ; 5 uses
  %i.ft = fsub float %.fca.1.extract25, %.fca.1.extract36 ; 4 uses
  %foldExtExtBinop91 = fmul <2 x float> %i.fs, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop91, i64 1
  %i.fv = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fu)
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fw) ; 2 uses
  %i.fy = fcmp une float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.e, label %Vector3Normalize.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i74 = tail call float @llvm.sqrt.f32(float %i.fx)
  %i.fz = fdiv float 1.000000e+00, %sqrt.i74      ; 2 uses
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.fs, %i.gb
  %i.gd = fmul float %i.ft, %i.fz
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.d, %bb.e
  %.sroa.013.0.i = phi <2 x float> [ %i.gc, %bb.e ], [ %i.fs, %bb.d ]
  %.sroa.617.0.i = phi float [ %i.gd, %bb.e ], [ %i.ft, %bb.d ]
  switch i32 %i.ck, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %Vector3Normalize.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %Vector3Normalize.exit
  store <2 x float> %.fca.0.extract14, ptr %0, align 4
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.fca.1.extract15, ptr %.sroa.423.0..sroa_idx, align 4
  br label %bb.h

bb.h:                                             ; preds = %Vector3Normalize.exit, %bb.g, %bb.f
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.013.0.i, ptr %i.ge, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.617.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @GetCameraMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %1) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %1, align 8 ; 4 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 4 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0 ; 3 uses
  %.sroa.069.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1 ; 2 uses
  %.sroa.057.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload ; 5 uses
  %i.h = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.g, %i.g
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.g, i64 0   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %sqrt87.i = tail call float @llvm.sqrt.f32(float %i.l)
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  %i.n = fdiv float 1.000000e+00, %sqrt87.i
  %i.o = select i1 %i.m, float 1.000000e+00, float %i.n
  %i.p = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.h, i64 1
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x float> %i.q, %i.s              ; 5 uses
  %i.u = fmul <2 x float> %i.g, %i.s              ; 2 uses
  %i.v = fneg <2 x float> %i.u
  %i.w = extractelement <2 x float> %i.t, i64 1   ; 3 uses
  %i.x = fneg float %i.w
  %i.y = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x float> %i.y, float %.sroa.2.0.copyload, i64 1
  %i.aa = fmul <2 x float> %i.z, %i.v
  %i.ab = fmul float %.sroa.057.0.vec.extract.i, %i.x
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.copyload, <2 x float> %i.t, <2 x float> %i.aa) ; 3 uses
  %i.ad = extractelement <2 x float> %i.u, i64 0  ; 5 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %.sroa.2.0.copyload, float %i.ad, float %i.ab) ; 3 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.af)
  %i.ai = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ah) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = fdiv float 1.000000e+00, %sqrt.i
  %i.am = select i1 %i.ak, float 1.000000e+00, float %i.al ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ac, %i.ao           ; 3 uses
  %i.aq = fmul float %i.ae, %i.am                 ; 4 uses
  %i.ar = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  %i.as = fneg float %i.ar
  %i.at = fneg float %i.aq
  %i.au = fmul float %i.ad, %i.as
  %i.av = fmul float %i.w, %i.at
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ap, <2 x float> %i.ax) ; 3 uses
  %i.az = extractelement <2 x float> %i.ap, i64 1 ; 3 uses
  %i.ba = fneg float %i.az
  %i.bb = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.bc = fmul float %i.bb, %i.ba
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aq, float %i.bc) ; 2 uses
  store float %i.az, ptr %0, align 4, !alias.scope !289
  store float %i.ad, ptr %i.d, align 4, !alias.scope !289
  store float %i.aq, ptr %i.f, align 4, !alias.scope !289
  store <2 x float> %i.ay, ptr %i.c, align 4, !alias.scope !289
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ar, ptr %i.bf, align 4, !alias.scope !289
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bd, ptr %i.bg, align 4, !alias.scope !289
  store <2 x float> %i.t, ptr %i.be, align 4, !alias.scope !289
  %i.bh = fmul float %.sroa.069.4.vec.extract.i, %i.aq
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.az, float %.sroa.069.0.vec.extract.i, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.24.0.copyload, float %i.bi)
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bk, ptr %i.bl, align 4, !alias.scope !289
  %foldExtExtBinop6 = fmul <2 x float> %.sroa.03.0.copyload, %i.ay
  %i.bm = extractelement <2 x float> %foldExtExtBinop6, i64 1
  %i.bn = extractelement <2 x float> %i.ay, i64 0
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %.sroa.069.0.vec.extract.i, float %i.bm)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bd, float %.sroa.24.0.copyload, float %i.bo)
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bq, ptr %i.br, align 4, !alias.scope !289
  %i.bs = fmul float %.sroa.069.4.vec.extract.i, %i.bb
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ad, float %.sroa.069.0.vec.extract.i, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.w, float %.sroa.24.0.copyload, float %i.bt)
  %i.bv = fneg float %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.bv, ptr %i.bw, align 4, !alias.scope !289
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 4, !alias.scope !289
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define <2 x float> @GetWorldToScreen(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2) local_unnamed_addr #44 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  %i.c = tail call <2 x float> @GetWorldToScreenEx(<2 x float> %0, float %1, ptr noundef nonnull byval(%struct.Camera3D) align 8 %2, i32 noundef %i.a, i32 noundef %i.b)
  ret <2 x float> %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define <2 x float> @GetWorldToScreenEx(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.d = load float, ptr %i.c, align 4
  %i.e = fmul float %i.d, f0x3C8EFA35
  %i.f = fpext float %i.e to double
  %i.g = sitofp i32 %3 to double
  %i.h = sitofp i32 %4 to double
  %i.i = fdiv double %i.g, %i.h
  %i.j = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
  %i.k = fmul double %i.f, 5.000000e-01
  %i.l = tail call double @tan(double noundef %i.k) #56, !noalias !292
  %i.m = fmul double %i.j, %i.l                   ; 2 uses
  %i.n = fmul double %i.i, %i.m
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1 ; 3 uses
  %i.q = fadd <2 x double> %i.p, %i.p
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = insertelement <4 x double> poison, double %i.j, i64 0
  %i.v = shufflevector <4 x double> %i.u, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.w = shufflevector <4 x double> %i.t, <4 x double> %i.v, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.x = fptrunc <4 x double> %i.w to <4 x float> ; 3 uses
  %i.y = shufflevector <4 x float> <float 2.000000e+00, float 2.000000e+00, float poison, float poison>, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.z = fmul <4 x float> %i.y, %i.x
  %i.aa = fsub <4 x float> %i.x, %i.y
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ac = fdiv <4 x float> %i.ab, %i.s
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = sitofp i32 %3 to double
  %i.ae = sitofp i32 %4 to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = fpext float %i.ah to double
  %i.aj = fmul double %i.ai, 5.000000e-01         ; 2 uses
  %i.ak = fmul double %i.af, %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1 ; 3 uses
  %i.an = fadd <2 x double> %i.am, %i.am
  %i.ao = fptrunc <2 x double> %i.an to <2 x float> ; 2 uses
  %i.ap = fdiv <2 x float> splat (float 2.000000e+00), %i.ao
  %i.aq = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ar = fsub <2 x float> %i.aq, %i.aq
  %i.as = fneg <2 x float> %i.ar
  %i.at = fdiv <2 x float> %i.as, %i.ao           ; 2 uses
  %i.au = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aw = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.at, <2 x i32> <i32 3, i32 1>
  %i.ax = extractelement <2 x float> %i.at, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.44.0 = phi float [ 0.000000e+00, %bb.a ], [ -1.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.sroa.1370.0 = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ %i.ax, %bb.c ]
  %i.ay = phi <4 x float> [ <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ], [ %i.ac, %bb.b ], [ %i.av, %bb.c ] ; 4 uses
  %i.az = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.aw, %bb.c ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.021.0.copyload = load <2 x float>, ptr %2, align 8 ; 3 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.222.0.copyload = load float, ptr %.sroa.222.0..sroa_idx, align 8 ; 2 uses
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ba, align 4
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.220.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.bb, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.057.0.vec.extract.i = extractelement <2 x float> %.sroa.018.0.copyload, i64 0
  %i.bc = fsub <2 x float> %.sroa.021.0.copyload, %.sroa.019.0.copyload ; 5 uses
  %i.bd = fsub float %.sroa.222.0.copyload, %.sroa.220.0.copyload ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bc, %i.bc
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bf = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bg) ; 2 uses
  %sqrt87.i = tail call float @llvm.sqrt.f32(float %i.bh)
  %i.bi = fcmp oeq float %i.bh, 0.000000e+00
  %i.bj = fdiv float 1.000000e+00, %sqrt87.i
  %i.bk = select i1 %i.bi, float 1.000000e+00, float %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bn = fmul <2 x float> %i.bc, %i.bm           ; 4 uses
  %i.bo = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = insertelement <2 x float> %i.bo, float %i.bd, i64 1
  %i.bq = fmul <2 x float> %i.bp, %i.bm           ; 6 uses
  %i.br = extractelement <2 x float> %i.bq, i64 1 ; 3 uses
  %i.bs = fneg float %i.br
  %i.bt = fmul float %.sroa.057.0.vec.extract.i, %i.bs
  %i.bu = extractelement <2 x float> %i.bn, i64 0 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %.sroa.2.0.copyload, float %i.bu, float %i.bt) ; 3 uses
  %i.bw = fneg <2 x float> %i.bn
  %i.bx = shufflevector <2 x float> %.sroa.018.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.by = insertelement <2 x float> %i.bx, float %.sroa.2.0.copyload, i64 1
  %i.bz = fmul <2 x float> %i.by, %i.bw
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.018.0.copyload, <2 x float> %i.bq, <2 x float> %i.bz) ; 3 uses
  %i.cb = fmul float %i.bv, %i.bv
  %i.cc = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cb)
  %i.ce = extractelement <2 x float> %i.ca, i64 0 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cd) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cf)
  %i.cg = fcmp oeq float %i.cf, 0.000000e+00
  %i.ch = fdiv float 1.000000e+00, %sqrt.i
  %i.ci = select i1 %i.cg, float 1.000000e+00, float %i.ch ; 2 uses
  %i.cj = fmul float %i.bv, %i.ci                 ; 3 uses
  %i.ck = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.ca, %i.cl           ; 5 uses
  %i.cn = fneg float %i.cj
  %i.co = fmul float %i.br, %i.cn
  %i.cp = extractelement <2 x float> %i.cm, i64 0
  %i.cq = extractelement <2 x float> %i.bq, i64 0
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cp, float %i.co)
  %i.cs = fneg <2 x float> %i.cm                  ; 2 uses
  %foldExtExtBinop78 = fmul <2 x float> %i.bn, %i.cs
  %i.ct = extractelement <2 x float> %foldExtExtBinop78, i64 0
  %i.cu = extractelement <2 x float> %i.cm, i64 1
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cu, float %i.ct)
  %shift = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fmul <2 x float> %i.bq, %shift
  %i.cw = extractelement <2 x float> %foldExtExtBinop80, i64 0
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.cj, float %i.cw)
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %0, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %0, i64 1
  %i.cy = shufflevector <2 x float> %0, <2 x float> %.sroa.021.0.copyload, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.cz = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.cy, %i.da
  %i.dc = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = shufflevector <2 x float> %0, <2 x float> %.sroa.021.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.db)
  %i.df = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x float> poison, float %1, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %.sroa.222.0.copyload, i64 1 ; 3 uses
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dh, <2 x float> %i.de) ; 2 uses
  %shift82 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop83 = fsub <2 x float> %i.di, %shift82 ; 2 uses
  %i.dj = extractelement <2 x float> %foldExtExtBinop83, i64 0
  %i.dk = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.cy, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dd, <2 x float> %i.dm)
  %i.dq = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dh, <2 x float> %i.dp) ; 2 uses
  %i.dt = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.cy, %i.dt
  %i.dv = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dd, <2 x float> %i.du)
  %i.dx = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dh, <2 x float> %i.dw) ; 2 uses
  %shift88 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_2
