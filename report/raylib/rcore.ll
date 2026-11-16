Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@QuaternionFromEuler:bb.a
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @QuaternionToEuler(<2 x float> %0, <2 x float> %1) local_unnamed_addr #14 {
bb.a:
  %.sroa.13.12.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.09.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.09.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.13.8.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fneg float %.sroa.09.0.vec.extract
  %i.b = fmul float %.sroa.13.8.vec.extract, %i.a
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.13.12.vec.extract, float %.sroa.09.4.vec.extract, float %i.b)
  %i.d = fmul float %i.c, 2.000000e+00            ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %i.f = select i1 %i.e, float 1.000000e+00, float %i.d ; 2 uses
  %i.g = fcmp olt float %i.f, -1.000000e+00
  %i.h = select i1 %i.g, float -1.000000e+00, float %i.f
  %i.i = shufflevector <2 x float> %0, <2 x float> %1, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.j = fmul <2 x float> %0, %i.i
  %i.k = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = shufflevector <2 x float> %1, <2 x float> %0, <2 x i32> <i32 0, i32 2>
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.l, <2 x float> %i.j)
  %i.n = fmul <2 x float> %i.m, splat (float 2.000000e+00) ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 1
  %i.p = fmul <2 x float> %i.i, %i.i
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %0, <2 x float> %0, <2 x float> %i.p)
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = tail call float @atan2f(float noundef %i.o, float noundef %i.s) #56
  %.sroa.042.0.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %i.u = tail call float @asinf(float noundef %i.h) #56
  %.sroa.042.4.vec.insert = insertelement <2 x float> %.sroa.042.0.vec.insert, float %i.u, i64 1
  %i.v = extractelement <2 x float> %i.n, i64 0
  %i.w = extractelement <2 x float> %i.r, i64 1
  %i.x = tail call float @atan2f(float noundef %i.v, float noundef %i.w) #56
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.042.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.x, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @QuaternionTransform(<2 x float> %0, <2 x float> %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %i.a = load <16 x float>, ptr %2, align 8       ; 4 uses
  %i.b = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.c = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.d = fmul <4 x float> %i.b, %i.c
  %i.e = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.f = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> zeroinitializer
  %i.g = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.f, <4 x float> %i.d)
  %i.h = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %i.i, <4 x float> %i.g)
  %i.k = shufflevector <16 x float> %i.a, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.l = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.l, <4 x float> %i.j) ; 2 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.o = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.n, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.o, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @QuaternionEquals(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.025.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = tail call float @llvm.fabs.f32(float %i.a)
  %i.c = tail call nsz float @llvm.fabs.f32(float %.sroa.025.0.vec.extract)
  %i.d = tail call nsz float @llvm.fabs.f32(float %.sroa.0.0.vec.extract)
  %i.e = tail call nsz float @llvm.maxnum.f32(float %i.c, float %i.d)
  %i.f = tail call nsz float @llvm.maxnum.f32(float %i.e, float 1.000000e+00)
  %i.g = fmul nnan float %i.f, f0x358637BD        ; 2 uses
  %i.h = fcmp ugt float %i.b, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.025.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.i = fsub float %.sroa.025.4.vec.extract, %.sroa.0.4.vec.extract
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = tail call nsz float @llvm.fabs.f32(float %.sroa.025.4.vec.extract)
  %i.l = tail call nsz float @llvm.fabs.f32(float %.sroa.0.4.vec.extract)
  %i.m = tail call nsz float @llvm.maxnum.f32(float %i.k, float %i.l)
  %i.n = tail call nsz float @llvm.maxnum.f32(float %i.m, float 1.000000e+00)
  %i.o = fmul nnan float %i.n, f0x358637BD
  %i.p = fcmp ugt float %i.j, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.938.8.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.9.8.vec.extract = extractelement <2 x float> %3, i64 0
  %foldExtExtBinop52 = fsub <2 x float> %1, %3
  %i.q = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = tail call nsz float @llvm.fabs.f32(float %.sroa.938.8.vec.extract)
  %i.t = tail call nsz float @llvm.fabs.f32(float %.sroa.9.8.vec.extract)
  %i.u = tail call nsz float @llvm.maxnum.f32(float %i.s, float %i.t)
  %i.v = tail call nsz float @llvm.maxnum.f32(float %i.u, float 1.000000e+00)
  %i.w = fmul nnan float %i.v, f0x358637BD
  %i.x = fcmp ugt float %i.r, %i.w
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.938.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.9.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.y = fsub float %.sroa.938.12.vec.extract, %.sroa.9.12.vec.extract
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = tail call nsz float @llvm.fabs.f32(float %.sroa.938.12.vec.extract)
  %i.ab = tail call nsz float @llvm.fabs.f32(float %.sroa.9.12.vec.extract)
  %i.ac = tail call nsz float @llvm.maxnum.f32(float %i.aa, float %i.ab)
  %i.ad = tail call nsz float @llvm.maxnum.f32(float %i.ac, float 1.000000e+00)
  %i.ae = fmul nnan float %i.ad, f0x358637BD
  %i.af = fcmp ugt float %i.z, %i.ae
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %foldExtExtBinop54 = fadd <2 x float> %0, %2
  %i.ag = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ai = fcmp ugt float %i.ah, %i.g
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.025.4.vec.extract35 = extractelement <2 x float> %0, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract10 = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.aj = fadd float %.sroa.025.4.vec.extract35, %.sroa.0.4.vec.extract10
  %i.ak = tail call float @llvm.fabs.f32(float %i.aj)
  %i.al = tail call nsz float @llvm.fabs.f32(float %.sroa.025.4.vec.extract35)
  %i.am = tail call nsz float @llvm.fabs.f32(float %.sroa.0.4.vec.extract10)
  %i.an = tail call nsz float @llvm.maxnum.f32(float %i.al, float %i.am)
  %i.ao = tail call nsz float @llvm.maxnum.f32(float %i.an, float 1.000000e+00)
  %i.ap = fmul nnan float %i.ao, f0x358637BD
  %i.aq = fcmp ugt float %i.ak, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.938.8.vec.extract42 = extractelement <2 x float> %1, i64 0
  %.sroa.9.8.vec.extract16 = extractelement <2 x float> %3, i64 0
  %foldExtExtBinop56 = fadd <2 x float> %1, %3
  %i.ar = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.as = tail call float @llvm.fabs.f32(float %i.ar)
  %i.at = tail call nsz float @llvm.fabs.f32(float %.sroa.938.8.vec.extract42)
  %i.au = tail call nsz float @llvm.fabs.f32(float %.sroa.9.8.vec.extract16)
  %i.av = tail call nsz float @llvm.maxnum.f32(float %i.at, float %i.au)
  %i.aw = tail call nsz float @llvm.maxnum.f32(float %i.av, float 1.000000e+00)
  %i.ax = fmul nnan float %i.aw, f0x358637BD
  %i.ay = fcmp ugt float %i.as, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.938.12.vec.extract48 = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.9.12.vec.extract22 = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.az = fadd float %.sroa.938.12.vec.extract48, %.sroa.9.12.vec.extract22
  %i.ba = tail call float @llvm.fabs.f32(float %i.az)
  %i.bb = tail call nsz float @llvm.fabs.f32(float %.sroa.938.12.vec.extract48)
  %i.bc = tail call nsz float @llvm.fabs.f32(float %.sroa.9.12.vec.extract22)
  %i.bd = tail call nsz float @llvm.maxnum.f32(float %i.bb, float %i.bc)
  %i.be = tail call nsz float @llvm.maxnum.f32(float %i.bd, float 1.000000e+00)
  %i.bf = fmul nnan float %i.be, f0x358637BD
  %i.bg = fcmp ole float %i.ba, %i.bf
  %i.bh = zext i1 %i.bg to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.d
  %i.bi = phi i32 [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.bh, %bb.h ]
  ret i32 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @MatrixCompose(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, <2 x float> %1, float %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float %6) local_unnamed_addr #21 {
bb.a:
  %i.a = fmul float %6, 0.000000e+00              ; 6 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %4, %4
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.b)
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 5 uses
  %i.d = shufflevector <2 x float> %3, <2 x float> %4, <4 x i32> <i32 poison, i32 0, i32 3, i32 3>
  %i.e = fneg float %.sroa.01.0.vec.extract.i
  %i.f = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 0> ; 2 uses
  %i.g = shufflevector <2 x float> %5, <2 x float> %4, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.h = fneg float %.sroa.01.4.vec.extract.i     ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %.sroa.01.4.vec.extract.i, float %i.c)
  %i.j = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.k = shufflevector <2 x float> %3, <2 x float> %4, <4 x i32> <i32 1, i32 2, i32 1, i32 poison>
  %i.l = insertelement <4 x float> %i.k, float 1.000000e+00, i64 3
  %i.m = fmul <4 x float> %i.l, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.n = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.057.0.vec.extract = extractelement <2 x float> %5, i64 0
  %.sroa.25.8.vec.extract.i = extractelement <2 x float> %4, i64 0 ; 3 uses
  %i.o = shufflevector <2 x float> %5, <2 x float> %4, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.p = fmul <4 x float> %i.o, <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 6 uses
  %i.q = fneg float %.sroa.25.8.vec.extract.i     ; 3 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %.sroa.25.8.vec.extract.i, float %i.i) ; 3 uses
  %i.s = insertelement <4 x float> %i.d, float %i.r, i64 0
  %i.t = fmul <4 x float> %i.s, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 6 uses
  %i.u = extractelement <4 x float> %i.t, i64 2
  %i.v = fmul float %i.u, %i.q
  %i.w = extractelement <4 x float> %i.t, i64 1
  %7 = shufflevector <4 x float> %i.f, <4 x float> %i.t, <4 x i32> <i32 poison, i32 6, i32 5, i32 3>
  %8 = shufflevector <4 x float> %i.p, <4 x float> %7, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.x = extractelement <4 x float> %i.p, i64 0   ; 2 uses
  %i.y = shufflevector <4 x float> %i.j, <4 x float> %i.t, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %i.z = insertelement <4 x float> %i.y, float %i.h, i64 3
  %i.aa = fmul <4 x float> %i.z, <float -2.000000e+00, float -2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.ab = shufflevector <4 x float> %i.j, <4 x float> %i.t, <4 x i32> <i32 0, i32 5, i32 0, i32 poison>
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.w, float %.sroa.01.4.vec.extract.i, float %i.v) ; 3 uses
  %i.ad = insertelement <4 x float> %i.f, float %i.ac, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.e, i64 3
  %i.af = fmul <4 x float> %8, %i.ae
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.t, <4 x float> %i.af) ; 6 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 0
  %i.ai = extractelement <4 x float> %i.ag, i64 1 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ai, float %i.ah)
  %i.ak = extractelement <4 x float> %i.ag, i64 3
  %i.al = tail call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.ak)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.q, float %.sroa.25.8.vec.extract.i, float %i.al) ; 3 uses
  %i.an = fmul float %i.x, %i.am
  %i.ao = extractelement <4 x float> %i.ag, i64 2 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %.sroa.057.0.vec.extract, float %i.ao, float %i.an)
  %i.aq = shufflevector <4 x float> %i.ab, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ar = fmul <4 x float> %i.aq, %i.m
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.n, <4 x float> %i.ar) ; 7 uses
  %i.at = extractelement <4 x float> %i.as, i64 0 ; 2 uses
  %i.au = extractelement <4 x float> %i.as, i64 2
  %i.av = extractelement <4 x float> %i.as, i64 1
  %i.aw = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ay = insertelement <2 x float> %i.ax, float %i.ac, i64 1
  %i.az = shufflevector <4 x float> %i.as, <4 x float> %i.j, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float %i.r, i64 3
  %i.bb = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.bc = insertelement <4 x float> %i.bb, float %i.ap, i64 0
  %i.bd = shufflevector <4 x float> %i.p, <4 x float> %i.aw, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bf = fmul <4 x float> %i.bd, %i.be
  %i.bg = shufflevector <4 x float> %i.bc, <4 x float> %i.bf, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.ba, <4 x float> %i.bg) ; 4 uses
  %i.bi = extractelement <4 x float> %i.bh, i64 2 ; 2 uses
  %i.bj = extractelement <4 x float> %i.p, i64 3  ; 2 uses
  %i.bk = insertelement <2 x float> %i.ax, float %i.am, i64 0
  %i.bl = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.bm = shufflevector <4 x float> %i.bh, <4 x float> %i.ag, <4 x i32> <i32 2, i32 5, i32 6, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bo = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = fmul <4 x float> %i.bo, %i.bp
  %i.br = shufflevector <4 x float> %i.bh, <4 x float> %i.bq, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bn, <4 x float> %i.br) ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 2
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.at, float %i.bt)
  %i.bv = extractelement <4 x float> %i.bs, i64 3
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bi, float %i.bv)
  %i.bx = fmul float %i.a, %i.ac
  %i.by = tail call float @llvm.fmuladd.f32(float %i.a, float %i.r, float %i.bx)
  %i.bz = tail call float @llvm.fmuladd.f32(float %6, float %i.ai, float %i.by)
  %i.ca = fmul float %i.a, %i.am
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.a, float %i.ao, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %6, float %i.at, float %i.cb)
  %i.cd = fmul float %i.a, %i.au
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.a, float %i.av, float %i.cd)
  %i.cf = tail call float @llvm.fmuladd.f32(float %6, float %i.bi, float %i.ce)
  store float %i.aj, ptr %0, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ch = extractelement <4 x float> %i.bs, i64 1
  store float %i.ch, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bz, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.066.0.vec.extract = extractelement <2 x float> %1, i64 0
  store float %.sroa.066.0.vec.extract, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = extractelement <4 x float> %i.bh, i64 0
  store float %i.cl, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bu, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cc, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.066.4.vec.extract = extractelement <2 x float> %1, i64 1
  store float %.sroa.066.4.vec.extract, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = extractelement <4 x float> %i.bs, i64 0
  store float %i.cq, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bw, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cf, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %2, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.cu, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @MatrixDecompose(ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %3) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.d, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.g, ptr %i.h, align 4
  %i.i = load float, ptr %0, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load float, ptr %i.n, align 8            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 8            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load float, ptr %i.t, align 8            ; 2 uses
  %i.v = tail call nsz float @llvm.fabs.f32(float %i.i)
  %i.w = tail call nsz float @llvm.maxnum.f32(float %i.v, float f0x3089705F)
  %i.x = load <2 x float>, ptr %i.j, align 4      ; 2 uses
  %i.y = load float, ptr %i.k, align 8
  %i.z = load <2 x float>, ptr %i.l, align 8      ; 2 uses
  %i.aa = load float, ptr %i.m, align 4
  %i.ab = shufflevector <2 x float> %i.x, <2 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ac = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ab) ; 4 uses
  %i.ad = extractelement <4 x float> %i.ac, i64 0
  %i.ae = tail call nsz float @llvm.maxnum.f32(float %i.w, float %i.ad)
  %i.af = extractelement <4 x float> %i.ac, i64 1
  %i.ag = tail call nsz float @llvm.maxnum.f32(float %i.ae, float %i.af)
  %i.ah = extractelement <4 x float> %i.ac, i64 2
  %i.ai = tail call nsz float @llvm.maxnum.f32(float %i.ag, float %i.ah)
  %i.aj = extractelement <4 x float> %i.ac, i64 3
  %i.ak = tail call nsz float @llvm.maxnum.f32(float %i.ai, float %i.aj)
  %i.al = tail call nsz float @llvm.fabs.f32(float %i.o)
  %i.am = tail call nsz float @llvm.maxnum.f32(float %i.ak, float %i.al)
  %i.an = tail call nsz float @llvm.fabs.f32(float %i.q)
  %i.ao = tail call nsz float @llvm.maxnum.f32(float %i.am, float %i.an)
  %i.ap = tail call nsz float @llvm.fabs.f32(float %i.s)
  %i.aq = tail call nsz float @llvm.maxnum.f32(float %i.ao, float %i.ap)
  %i.ar = tail call nsz float @llvm.fabs.f32(float %i.u)
  %i.as = tail call nsz float @llvm.maxnum.f32(float %i.aq, float %i.ar) ; 3 uses
  %i.at = fdiv float 1.000000e+00, %i.as          ; 9 uses
  %i.au = fmul float %i.at, %i.i                  ; 4 uses
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.au, i64 0
  %i.av = extractelement <2 x float> %i.x, i64 0
  %i.aw = fmul float %i.at, %i.av                 ; 4 uses
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.aw, i64 1
  %i.ax = fmul float %i.y, %i.at                  ; 4 uses
  %i.ay = extractelement <2 x float> %i.z, i64 0
  %i.az = fmul float %i.at, %i.ay                 ; 2 uses
  %i.ba = fmul float %i.at, %i.aa                 ; 2 uses
  %i.bb = fmul float %i.o, %i.at                  ; 2 uses
  %i.bc = fmul float %i.at, %i.q                  ; 2 uses
  %i.bd = fmul float %i.at, %i.s                  ; 2 uses
  %i.be = fmul float %i.u, %i.at                  ; 2 uses
  %i.bf = fmul float %i.aw, %i.aw
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.bg)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bh) ; 3 uses
  %.sroa.0182.0.vec.insert = insertelement <2 x float> poison, float %sqrt.i, i64 0 ; 2 uses
  %i.bi = fcmp ogt float %sqrt.i, f0x3089705F
  br i1 %i.bi, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bj = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.bk = fmul float %i.au, %i.bj
  %.sroa.06.0.vec.insert.i226 = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bl = fmul float %i.aw, %i.bj
  %.sroa.06.4.vec.insert.i228 = insertelement <2 x float> %.sroa.06.0.vec.insert.i226, float %i.bl, i64 1
  %i.bm = fmul float %i.ax, %i.bj
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi <2 x float> [ %.sroa.06.4.vec.insert.i228, %bb.b ], [ %.sroa.06.4.vec.insert.i, %bb.a ] ; 2 uses
  %i.bn = phi float [ %i.bm, %bb.b ], [ %i.ax, %bb.a ] ; 7 uses
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0, i64 0 ; 7 uses
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0, i64 1 ; 7 uses
  %i.bo = fmul float %i.ba, %.sroa.04.4.vec.extract.i
  %i.bp = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i, float %i.az, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bb, float %i.bp) ; 3 uses
  %i.br = fmul float %.sroa.04.0.vec.extract.i, %i.bq
  %i.bs = fmul float %.sroa.04.4.vec.extract.i, %i.bq
  %i.bt = fmul float %i.bn, %i.bq
  %i.bu = fsub float %i.az, %i.br                 ; 4 uses
  %.sroa.08.0.vec.insert.i = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bv = fsub float %i.ba, %i.bs                 ; 4 uses
  %.sroa.08.4.vec.insert.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i, float %i.bv, i64 1
  %i.bw = fsub float %i.bb, %i.bt                 ; 4 uses
  %i.bx = fmul float %i.bv, %i.bv
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bx)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.by)
  %sqrt.i243 = tail call float @llvm.sqrt.f32(float %i.bz) ; 4 uses
  %.sroa.0182.4.vec.insert = insertelement <2 x float> %.sroa.0182.0.vec.insert, float %sqrt.i243, i64 1
  %i.ca = fcmp ogt float %sqrt.i243, f0x3089705F
  br i1 %i.ca, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@TakeScreenshot:bb.a
  %i.j = uitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %.sroa.02.0, %i.j       ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fptosi float %i.l to i32
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fptosi float %i.n to i32
  %i.p = call ptr @rlReadScreenPixels(i32 noundef %i.m, i32 noundef %i.o) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  store ptr %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %.sroa.02.0, %i.s
  %i.u = fptosi <2 x float> %i.t to <2 x i32>
  store <2 x i32> %i.u, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 7, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 184), align 8
  %i.z = call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.190, ptr noundef %i.y, ptr noundef nonnull %0) #56
  %i.aa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 4095) #56 ; 0 uses
  %i.ab = call zeroext i1 @ExportImage(ptr noundef nonnull byval(%struct.Image) align 8 %2, ptr noundef nonnull %i.a) #56 ; 0 uses
  call void @free(ptr noundef %i.p) #56
  %i.ac = call i32 @access(ptr noundef nonnull readonly %i.a, i32 noundef 0) #56
  %.not.i.not = icmp eq i32 %i.ac, -1
  br i1 %.not.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.191, ptr noundef nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.192, ptr noundef nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

declare ptr @TextFormat(ptr noundef, ...) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @BeginMode2D(ptr nofree noundef readonly byval(%struct.Camera2D) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.float16, align 4            ; 10 uses
  %2 = alloca %struct.Matrix, align 8             ; 8 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @GetCameraMatrix2D(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %2, ptr noundef nonnull byval(%struct.Camera2D) align 8 %0)
  %.sroa.0.0.copyload = load float, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  store float %.sroa.0.0.copyload, ptr %1, align 4, !alias.scope !244
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load <12 x float>, ptr %.sroa.4.0..sroa_idx, align 4
  %i.e = shufflevector <12 x float> %i.d, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.e, ptr %i.c, align 4, !alias.scope !244
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load <12 x float>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = shufflevector <12 x float> %i.g, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.h, ptr %i.f, align 4, !alias.scope !244
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load <12 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.k = shufflevector <12 x float> %i.j, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.k, ptr %i.i, align 4, !alias.scope !244
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %.sroa.10.0.copyload, ptr %i.l, align 4, !alias.scope !244
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %.sroa.14.0.copyload, ptr %i.m, align 4, !alias.scope !244
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sroa.18.0.copyload, ptr %i.n, align 4, !alias.scope !244
  call void @rlMultMatrixf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @GetCameraMatrix2D(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Camera2D) align 8 captures(none) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 8
  %i.c = fneg float %i.b                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4
  %i.f = fneg float %i.e                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load float, ptr %i.g, align 8
  %i.i = fmul float %i.h, f0x3C8EFA35             ; 2 uses
  %i.j = tail call float @sinf(float noundef %i.i) #56, !noalias !247 ; 3 uses
  %i.k = tail call float @cosf(float noundef %i.i) #56, !noalias !247 ; 3 uses
  %i.l = fneg float %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load float, ptr %i.m, align 4            ; 7 uses
  %i.o = load <1 x float>, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load <1 x float>, ptr %i.p, align 4
  %i.r = tail call float @llvm.fmuladd.f32(float %i.n, float 0.000000e+00, float 0.000000e+00)
  %i.s = fmul float %i.n, 0.000000e+00
  %i.t = fadd float %i.s, 0.000000e+00            ; 3 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = fmul float %i.t, %i.f
  %i.w = fmul float %i.j, 0.000000e+00            ; 2 uses
  %i.x = fneg float %i.w
  %i.y = fadd float %i.r, 0.000000e+00            ; 3 uses
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.u, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> zeroinitializer, <2 x float> %i.ac)
  %i.ae = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.c, i64 3
  %i.af = tail call float @llvm.fmuladd.f32(float %i.c, float %i.y, float %i.v)
  %i.ag = fadd float %i.af, 0.000000e+00
  %i.ah = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ai = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 3
  %i.al = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, float %i.u, i64 0
  %i.am = fadd <4 x float> %i.ak, %i.al           ; 4 uses
  %i.an = shufflevector <1 x float> %i.o, <1 x float> poison, <4 x i32> zeroinitializer
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = fsub float 1.000000e+00, %i.k           ; 5 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float 0.000000e+00, float %i.l) ; 2 uses
  %i.aq = fadd float %i.k, %i.ao                  ; 4 uses
  %i.ar = fmul float %i.ap, 0.000000e+00          ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.j, i64 1
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> zeroinitializer, <2 x float> %i.aw) ; 8 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.az = insertelement <2 x float> %i.ax, float %i.ao, i64 1
  %i.ba = extractelement <2 x float> %i.ax, i64 0
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.bc = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.aq, i64 1
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ao, float 0.000000e+00, float %i.k) ; 5 uses
  %i.be = tail call float @llvm.fmuladd.f32(float %i.n, float %i.bd, float %i.ar)
  %i.bf = fmul float %i.n, %i.bd
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ay, float 0.000000e+00, float %i.bf)
  %i.bh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bd, i64 1
  %i.bj = fmul <2 x float> %i.bi, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 1
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ay, float %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.w, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.bn) ; 5 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %i.n, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = insertelement <2 x float> %i.bo, float %i.ap, i64 0
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bd, float 0.000000e+00, float %i.ar) ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bp, float 0.000000e+00, float %i.bu) ; 2 uses
  %.scalar = fadd float %i.bv, 0.000000e+00
  %i.bw = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.scalar, i64 3 ; 2 uses
  %i.bx = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.bv, i64 0
  %i.by = fadd <4 x float> %i.bx, <float 0.000000e+00, float poison, float poison, float -0.000000e+00>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.bj) ; 2 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bu, i64 1
  %i.cd = fadd <2 x float> %i.bo, <float 0.000000e+00, float -0.000000e+00> ; 4 uses
  %i.ce = fadd <2 x float> %i.ca, <float 0.000000e+00, float -0.000000e+00> ; 3 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ch = fmul <4 x float> %i.cg, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cj = insertelement <2 x float> %i.ci, float %i.be, i64 1
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cj)
  %i.cl = fadd <2 x float> %i.ck, <float -0.000000e+00, float 0.000000e+00> ; 3 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 1
  %i.cn = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.co = insertelement <2 x float> %i.cn, float %i.bd, i64 0
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> zeroinitializer, <2 x float> %i.bt)
  %i.cq = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cr = insertelement <2 x float> %i.cq, float %i.aq, i64 1
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> %i.cp)
  %i.ct = fadd <2 x float> %i.cs, zeroinitializer ; 3 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.cu)
  %i.cw = fmul float %i.cu, %i.f
  %i.cx = fmul ninf float %i.bp, 0.000000e+00     ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ba, float %i.cx)
  %i.cz = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cx, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> zeroinitializer, <2 x float> %i.da) ; 2 uses
  %i.dc = fadd <2 x float> %i.bc, %i.db           ; 5 uses
  %i.dd = fmul <2 x float> %i.ct, zeroinitializer ; 3 uses
  %i.de = extractelement <2 x float> %i.dc, i64 0 ; 2 uses
  %i.df = shufflevector <2 x float> %i.cl, <2 x float> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.dg = fadd <2 x float> %i.df, %i.dd           ; 2 uses
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = insertelement <4 x float> %i.dh, float %i.cv, i64 1
  %i.dj = shufflevector <2 x float> %i.ax, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.cc)
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dm = fadd <4 x float> %i.dl, zeroinitializer ; 3 uses
  %i.dn = extractelement <2 x float> %i.db, i64 1
  %i.do = tail call float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.dn)
  %i.dp = fadd float %i.do, 0.000000e+00          ; 2 uses
  %i.dq = extractelement <2 x float> %i.cd, i64 0
  %i.dr = shufflevector <2 x float> %i.cd, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.ce)
  %i.dt = extractelement <2 x float> %i.ct, i64 1 ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.de, float 0.000000e+00, float %i.dt)
  %i.dv = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dy = insertelement <2 x float> %i.dx, float %i.du, i64 1
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> zeroinitializer, <2 x float> %i.dy)
  %i.ea = shufflevector <2 x float> %i.cd, <2 x float> %i.ds, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.eb = insertelement <4 x float> %i.ea, float %i.cw, i64 3
  %i.ec = fadd <4 x float> %i.eb, %i.ch           ; 3 uses
  %i.ed = extractelement <2 x float> %i.ce, i64 0
  %i.ee = fmul float %i.ed, %i.f
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.c, float %i.dq, float %i.ee)
  %i.eg = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> %i.ec, <2 x i32> <i32 1, i32 6>
  %i.ei = insertelement <2 x float> %i.dd, float %i.ef, i64 1
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> zeroinitializer, <2 x float> %i.ei)
  %i.ek = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.el = fadd <2 x float> %i.ek, %i.ej           ; 2 uses
  %i.em = fmul <2 x float> %i.el, <float 1.000000e+00, float 0.000000e+00>
  %i.en = shufflevector <4 x float> %i.dm, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 6, i32 7>
  %2 = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.di, <4 x float> %2, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> zeroinitializer, <4 x float> %i.eo)
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> zeroinitializer, <4 x float> %i.ep) ; 2 uses
  %3 = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %3, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %4, <4 x float> %i.ec)
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> zeroinitializer, <4 x float> %i.er) ; 3 uses
  %i.et = fmul float %i.dt, %i.f
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.c, float %i.de, float %i.et)
  %i.ev = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x float> %i.ev, float %i.eu, i64 1
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> zeroinitializer, <2 x float> %i.ew)
  %i.ey = insertelement <2 x float> %i.dv, float %i.dp, i64 1
  %i.ez = fadd <2 x float> %i.ey, %i.ex           ; 2 uses
  %i.fa = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.dp, i64 0
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fc = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <2 x float> %i.dz, <2 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> zeroinitializer, <4 x float> %i.fd) ; 2 uses
  %i.ff = fmul <4 x float> %i.bw, %i.es
  %i.fg = fadd <4 x float> %i.bw, %i.es           ; 2 uses
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fi = fadd <4 x float> %i.fh, %i.eq
  %i.fj = shufflevector <4 x float> %i.fe, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 3 uses
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> zeroinitializer, <4 x float> %i.fi)
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.an, <4 x float> %i.fk)
  %i.fm = shufflevector <4 x float> %i.eq, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fn = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x float> %i.es, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> zeroinitializer, <4 x float> %i.fo)
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> zeroinitializer, <4 x float> %i.fp)
  %i.fr = shufflevector <1 x float> %i.q, <1 x float> poison, <4 x i32> zeroinitializer
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.fr, <4 x float> %i.fq)
  store <4 x float> %i.fl, ptr %0, align 4
  store <4 x float> %i.fs, ptr %.sroa.723.0..sroa_idx, align 4
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ft = shufflevector <4 x float> %i.fh, <4 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> zeroinitializer, <4 x float> %i.ft) ; 2 uses
  %i.fv = fadd <4 x float> %i.fj, %i.fu
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> zeroinitializer, <4 x float> %i.fv)
  store <4 x float> %i.fw, ptr %.sroa.1127.0..sroa_idx, align 4
  %.sroa.1531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> zeroinitializer, <4 x float> %i.fu)
  %i.fy = fadd <4 x float> %i.am, %i.fx
  store <4 x float> %i.fy, ptr %.sroa.1531.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndMode2D() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %0 = alloca %struct.float16, align 4            ; 10 uses
  %i.b = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.b)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.d = load ptr, ptr @glad_glGetIntegerv, align 8
  call void %i.d(i32 noundef 36006, ptr noundef nonnull %i.a) #56, !inline_history !10
  %i.e = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  %.sroa.01.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  %.sroa.108.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 128), align 8
  %.sroa.1412.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 144), align 8
  %.sroa.1816.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  store float %.sroa.01.0.copyload, ptr %0, align 4, !alias.scope !250
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 104), align 8
  %i.i = shufflevector <12 x float> %i.h, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.i, ptr %i.g, align 4, !alias.scope !250
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 108), align 4
  %i.l = shufflevector <12 x float> %i.k, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.l, ptr %i.j, align 4, !alias.scope !250
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 112), align 8
  %i.o = shufflevector <12 x float> %i.n, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.o, ptr %i.m, align 4, !alias.scope !250
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %.sroa.108.0.copyload, ptr %i.p, align 4, !alias.scope !250
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %.sroa.1412.0.copyload, ptr %i.q, align 4, !alias.scope !250
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %.sroa.1816.0.copyload, ptr %i.r, align 4, !alias.scope !250
  call void @rlMultMatrixf(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginMode3D(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %1 = alloca %struct.float16, align 4            ; 18 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5889, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.c = icmp sgt i32 %i.b, 31
  br i1 %i.c, label %bb.b, label %rlPushMatrix.exit

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 5, ptr noundef nonnull @.str.1)
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.d = icmp eq i32 %.pr, 5888
  br i1 %i.d, label %bb.c, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.b
  %.pre.i.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %rlPushMatrix.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %rlPushMatrix.exit

rlPushMatrix.exit:                                ; preds = %bb.a, %.._crit_edge.i_crit_edge, %bb.c
  %i.e = phi ptr [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), %bb.c ], [ %.pre.i.pre, %.._crit_edge.i_crit_edge ], [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), %bb.a ]
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false)
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.k, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  %i.m = uitofp i32 %i.l to float
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.o = uitofp i32 %i.n to float
  %i.p = fdiv float %i.m, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %rlPushMatrix.exit
  %i.s = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load float, ptr %i.t, align 4
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = fmul double %i.w, f0x3F91DF46A0000000
  %i.y = tail call double @tan(double noundef %i.x) #56
  %i.z = fmul double %i.s, %i.y                   ; 3 uses
  %i.aa = fpext float %i.p to double
  %i.ab = fmul double %i.z, %i.aa                 ; 2 uses
  %i.ac = fneg double %i.ab
  %i.ad = fneg double %i.z
  %i.ae = load double, ptr @rlCullDistanceFar, align 8
  tail call void @rlFrustum(double noundef %i.ac, double noundef %i.ab, double noundef %i.ad, double noundef %i.z, double noundef %i.s, double noundef %i.ae)
  br label %bb.f

bb.e:                                             ; preds = %rlPushMatrix.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %i.ah, 5.000000e-01         ; 3 uses
  %i.aj = fpext float %i.p to double
  %i.ak = fmul double %i.ai, %i.aj                ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = fneg double %i.ai
  %i.an = load double, ptr @rlCullDistanceNear, align 8
  %i.ao = load double, ptr @rlCullDistanceFar, align 8
  tail call void @rlOrtho(double noundef %i.al, double noundef %i.ak, double noundef %i.am, double noundef %i.ai, double noundef %i.an, double noundef %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %rlPushMatrix.exit, %bb.e, %bb.d
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5888, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 8 ; 6 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ap, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aq, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.070.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %foldExtExtBinop = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %.sroa.070.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %foldExtExtBinop34 = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload
  %i.as = extractelement <2 x float> %foldExtExtBinop34, i64 1 ; 3 uses
  %i.at = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
  %i.au = fmul float %i.as, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.au)
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av) ; 2 uses
  %sqrt86.i = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fcmp oeq float %i.aw, 0.000000e+00
end_hunk_1
begin_hunk_2_@EndTextureMode:bb.a
  %i.s = shufflevector <12 x float> %i.r, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.s, ptr %i.q, align 4, !alias.scope !263
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 112), align 8
  %i.v = shufflevector <12 x float> %i.u, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.v, ptr %i.t, align 4, !alias.scope !263
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %.sroa.108.0.copyload, ptr %i.w, align 4, !alias.scope !263
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %.sroa.1412.0.copyload, ptr %i.x, align 4, !alias.scope !263
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %.sroa.1816.0.copyload, ptr %i.y, align 4, !alias.scope !263
  call void @rlMultMatrixf(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  %i.z = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  store <2 x i32> %i.z, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 16), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginShaderMode(i32 %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2384), align 8
  %.not.i = icmp eq i32 %i.a, %0
  br i1 %.not.i, label %rlSetShader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.b)
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2384), align 8
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  br label %rlSetShader.exit

rlSetShader.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndShaderMode() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2384), align 8
  %.not.i = icmp eq i32 %i.b, %i.a
  br i1 %.not.i, label %rlSetShader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  %i.d = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.d)
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2384), align 8
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  br label %rlSetShader.exit

rlSetShader.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginBlendMode(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rlSetBlendMode(i32 noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndBlendMode() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2660), align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %rlSetBlendMode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.b)
  %i.c = load ptr, ptr @glad_glBlendFunc, align 8
  tail call void %i.c(i32 noundef 770, i32 noundef 771) #56, !inline_history !264
  %i.d = load ptr, ptr @glad_glBlendEquation, align 8
  tail call void %i.d(i32 noundef 32774) #56, !inline_history !264
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2660), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2700), align 4
  br label %rlSetBlendMode.exit

rlSetBlendMode.exit:                              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginScissorMode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.Vector2, align 8            ; 6 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr @glad_glEnable, align 8
  tail call void %i.b(i32 noundef 3089) #56, !inline_history !265
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 16), align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.f = and i32 %i.e, 8192
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 4575657222473777152, ptr %4, align 8
  %i.g = and i32 %i.e, 8194
  %or.cond.i = icmp eq i32 %i.g, 8192
  br i1 %or.cond.i, label %bb.d, label %GetWindowScaleDPI.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @platform.0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.h, ptr noundef nonnull %4, ptr noundef nonnull %i.i) #56
  %.pre.i = load <2 x float>, ptr %4, align 8
  br label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.c, %bb.d
  %i.j = phi <2 x float> [ %.pre.i, %bb.d ], [ splat (float 1.000000e+00), %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.k = sitofp i32 %0 to float
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.j, i64 0 ; 2 uses
  %i.l = fmul float %.sroa.0.0.vec.extract, %i.k
  %i.m = fptosi float %i.l to i32
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.o = uitofp i32 %i.n to float
  %i.p = add nsw i32 %3, %1
  %i.q = sitofp i32 %i.p to float
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.j, i64 1 ; 2 uses
  %i.r = fneg float %i.q
  %i.s = call float @llvm.fmuladd.f32(float %i.r, float %.sroa.0.4.vec.extract, float %i.o)
  %i.t = fptosi float %i.s to i32
  %i.u = sitofp i32 %2 to float
  %i.v = fmul float %.sroa.0.0.vec.extract, %i.u
  %i.w = fptosi float %i.v to i32
  %i.x = sitofp i32 %3 to float
  %i.y = fmul float %.sroa.0.4.vec.extract, %i.x
  %i.z = fptosi float %i.y to i32
  %i.aa = load ptr, ptr @glad_glScissor, align 8
  call void %i.aa(i32 noundef %i.m, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.z) #56, !inline_history !266
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.ac = add i32 %3, %1
  %i.ad = sub i32 %i.ab, %i.ac
  %i.ae = load ptr, ptr @glad_glScissor, align 8
  tail call void %i.ae(i32 noundef %0, i32 noundef %i.ad, i32 noundef %2, i32 noundef %3) #56, !inline_history !266
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %GetWindowScaleDPI.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndScissorMode() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr @glad_glDisable, align 8
  tail call void %i.b(i32 noundef 3089) #56, !inline_history !267
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BeginVrStereoMode(ptr nofree noundef readonly byval(%struct.VrStereoConfig) align 8 captures(none) %0) local_unnamed_addr #3 {
bb.a:
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2400), align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2404), ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2468), ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2532), ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 2596), ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @EndVrStereoMode() local_unnamed_addr #2 {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2400), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @LoadVrStereoConfig(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.VrStereoConfig) align 4 captures(none) initializes((0, 304)) %0, ptr nofree noundef readonly byval(%struct.VrDeviceInfo) align 8 captures(none) %1) local_unnamed_addr #43 {
bb.a:
  %i.a = load <2 x i32>, ptr %1, align 8
  %i.b = sitofp <2 x i32> %i.a to <2 x float>     ; 2 uses
  %i.c = extractelement <2 x float> %i.b, i64 0
  %i.d = fmul nnan float %i.c, 5.000000e-01
  %i.e = extractelement <2 x float> %i.b, i64 1
  %i.f = fdiv float %i.d, %i.e                    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 8            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x float> <float 7.500000e-01, float 5.000000e-01>, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %2 = load float, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %3 = load float, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %4 = load float, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %5 = load float, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  store float 4.000000e+00, ptr %i.q, align 4
  %i.r = fdiv float 2.000000e+00, %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 300
  store float %i.r, ptr %i.s, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4
  %i.w = fmul float %i.v, 5.000000e-01
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load float, ptr %i.x, align 8
  %i.z = fpext float %i.f to double
  %i.aa = insertelement <4 x float> poison, float %i.f, i64 0
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.1195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.1296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.1397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.1599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.16100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.17101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.18102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.1163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.1264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.1365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.1567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.1668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.1769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.1335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.1739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = fmul float %i.j, -5.000000e-01
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.h, float 2.500000e-01, float %i.ac)
  %i.ae = fdiv float %i.ad, %i.h                  ; 4 uses
  %.scalar.a = fadd float %i.ae, 2.500000e-01
  %7 = insertelement <4 x float> <float 0.000000e+00, float 1.000000e+00, float poison, float 5.000000e-01>, float %.scalar.a, i64 2
  %.scalar188 = fsub float 7.500000e-01, %i.ae
  %i.af = insertelement <4 x float> <float poison, float 5.000000e-01, float 2.500000e-01, float 5.000000e-01>, float %.scalar188, i64 0
  store <4 x float> %i.af, ptr %i.k, align 4
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ae, float -4.000000e+00, float -1.000000e+00) ; 2 uses
  %i.ah = fmul float %i.ag, %i.ag                 ; 6 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %3, float %i.ah, float %2)
  %i.aj = fmul float %i.ah, %4
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ah, float %i.ai)
  %i.al = fmul float %i.ah, %5
  %i.am = fmul float %i.ah, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ah, float %i.ak) ; 3 uses
  %i.ao = fdiv float 2.500000e-01, %i.an
  store float %i.ao, ptr %6, align 4
  %i.ap = fmul float %i.an, %i.w
  %i.aq = tail call float @atan2f(float noundef %i.ap, float noundef %i.y) #56
  %i.ar = fmul float %i.aq, 2.000000e+00
  %i.as = fmul float %i.ae, 4.000000e+00          ; 4 uses
  %i.at = fpext float %i.ar to double
  %i.au = load double, ptr @rlCullDistanceNear, align 8 ; 3 uses
  %i.av = load double, ptr @rlCullDistanceFar, align 8 ; 2 uses
  %i.aw = fmul double %i.at, 5.000000e-01
  %i.ax = tail call double @tan(double noundef %i.aw) #56, !noalias !270
  %i.ay = fmul double %i.au, %i.ax                ; 3 uses
  %i.az = fmul double %i.ay, %i.z                 ; 2 uses
  %i.ba = fmul double %i.az, 2.000000e+00
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul double %i.ay, 2.000000e+00
  %i.bd = fptrunc double %i.bc to float           ; 2 uses
  %i.be = fsub double %i.av, %i.au
  %i.bf = fptrunc double %i.be to float
  %i.bg = fptrunc double %i.au to float           ; 3 uses
  %i.bh = fptrunc double %i.az to float           ; 2 uses
  %i.bi = fsub float %i.bh, %i.bh
  %i.bj = insertelement <4 x float> %i.aa, float %i.bg, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bi, i64 3
  %i.bl = fmul <4 x float> %i.bk, <float 5.000000e-01, float 2.000000e+00, float poison, float 1.000000e+00>
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bn = insertelement <4 x float> poison, float %i.an, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bb, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.bd, i64 2
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.br = fdiv <4 x float> %i.bm, %i.bq           ; 5 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  store float %i.bs, ptr %i.t, align 4
  %i.bt = fptrunc double %i.ay to float           ; 2 uses
  %8 = fsub float %i.bt, %i.bt
  %9 = fdiv float %8, %i.bd                       ; 2 uses
  %i.bu = fptrunc double %i.av to float           ; 2 uses
  %i.bv = fadd float %i.bg, %i.bu
  %i.bw = fneg float %i.bv
  %i.bx = fmul float %i.bg, %i.bu
  %i.by = fmul float %i.bx, -2.000000e+00
  %10 = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %11 = fmul <2 x float> %10, <float 1.000000e+00, float 0.000000e+00>
  %12 = fadd <2 x float> %11, zeroinitializer     ; 3 uses
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = extractelement <2 x float> %12, i64 1   ; 4 uses
  %14 = fmul float %9, 0.000000e+00               ; 2 uses
  %i.ca = extractelement <4 x float> %i.br, i64 3 ; 3 uses
  %i.cb = fadd float %i.ca, %14
  store float %i.bz, ptr %.sroa.1296.0..sroa_idx, align 4
  store float %i.bz, ptr %.sroa.16100.0..sroa_idx, align 4
  %i.cc = fneg float %i.as                        ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x float> %i.ce, %i.cg           ; 3 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cb) ; 2 uses
  %16 = fsub float %15, %i.as
  %i.cj = insertelement <4 x float> poison, float %i.cc, i64 0
  %17 = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %18 = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %19 = shufflevector <4 x float> %18, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.as, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ca, float 0.000000e+00, float %9)
  %22 = shufflevector <4 x float> %i.br, <4 x float> %18, <2 x i32> <i32 1, i32 4>
  %23 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ck, i64 1
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> zeroinitializer, <2 x float> %23)
  %25 = tail call float @llvm.fmuladd.f32(float %i.ca, float 0.000000e+00, float %14) ; 2 uses
  %i.cl = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %25, i64 0
  %26 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %27 = shufflevector <4 x float> %i.cl, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %28 = shufflevector <4 x float> %27, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> zeroinitializer, <4 x float> %28) ; 6 uses
  %30 = extractelement <4 x float> %29, i64 1
  %i.cm = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %31 = shufflevector <4 x float> %26, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %32 = insertelement <4 x float> %31, float %16, i64 2
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> zeroinitializer, <4 x float> %32)
  %33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %25, i64 0
  %34 = fadd <2 x float> %i.ch, %33               ; 2 uses
  store <4 x float> %i.cn, ptr %0, align 4
  %35 = shufflevector <4 x float> %i.br, <4 x float> %29, <4 x i32> <i32 poison, i32 2, i32 poison, i32 5>
  %36 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %37 = shufflevector <4 x float> %36, <4 x float> %35, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %38 = fadd <4 x float> %37, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 5 uses
  %i.co = extractelement <4 x float> %38, i64 0   ; 4 uses
  store float %i.co, ptr %.sroa.1195.0..sroa_idx, align 4
  store float %i.co, ptr %.sroa.1599.0..sroa_idx, align 4
  store <4 x float> %38, ptr %.sroa.791.0..sroa_idx, align 4
  store <2 x float> %34, ptr %.sroa.1397.0..sroa_idx, align 4
  %39 = fadd float %i.as, %15
  %40 = tail call float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %30)
  %i.cp = extractelement <4 x float> %29, i64 3
  store float %i.cp, ptr %.sroa.456.0..sroa_idx, align 4
  store float %39, ptr %.sroa.557.0..sroa_idx, align 4
  store float %40, ptr %.sroa.658.0..sroa_idx, align 4
  %41 = shufflevector <4 x float> %38, <4 x float> %36, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  store <4 x float> %41, ptr %.sroa.759.0..sroa_idx, align 4
  store float %i.co, ptr %.sroa.1163.0..sroa_idx, align 4
  store float %i.bz, ptr %.sroa.1264.0..sroa_idx, align 4
  store <2 x float> %34, ptr %.sroa.1365.0..sroa_idx, align 4
  store float %i.co, ptr %.sroa.1567.0..sroa_idx, align 4
  store float %i.bz, ptr %.sroa.1668.0..sroa_idx, align 4
  %42 = load float, ptr %i.ab, align 8
  %43 = shufflevector <4 x float> %29, <4 x float> %38, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %44 = shufflevector <4 x float> %43, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %45 = fadd <4 x float> %44, <float -1.000000e+00, float -0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %46 = extractelement <4 x float> %45, i64 0
  store float %46, ptr %.sroa.17101.0..sroa_idx, align 4
  %47 = shufflevector <4 x float> %38, <4 x float> %29, <2 x i32> <i32 3, i32 6>
  store <2 x float> %47, ptr %.sroa.18102.0..sroa_idx, align 4
  store <4 x float> %45, ptr %.sroa.1769.0..sroa_idx, align 4
  %i.cq = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float 1.000000e+00>, float %42, i64 1 ; 2 uses
  %i.cr = fmul <4 x float> %i.cq, <float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cr, ptr %.sroa.527.0..sroa_idx, align 4
  store <4 x float> <float 0.000000e+00, float 7.500000e-02, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.931.0..sroa_idx, align 4
  store <4 x float> <float 1.000000e+00, float 4.500000e-02, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.1335.0..sroa_idx, align 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.1739.0..sroa_idx, align 4
  %i.cs = fmul <4 x float> %i.cq, <float 0.000000e+00, float -5.000000e-01, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.cs, ptr %.sroa.5.0..sroa_idx, align 4
  store <4 x float> <float 0.000000e+00, float 7.500000e-02, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.9.0..sroa_idx, align 4
  store <4 x float> <float 1.000000e+00, float 4.500000e-02, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.13.0..sroa_idx, align 4
  store <4 x float> %7, ptr %.sroa.17.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadVrStereoConfig(ptr nofree noundef readnone byval(%struct.VrStereoConfig) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.176)
  ret void
}

; Function Attrs: nounwind uwtable
define { i32, ptr } @LoadShader(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @LoadFileText(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ] ; 3 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call ptr @LoadFileText(ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.b, %bb.d ], [ null, %bb.c ]  ; 3 uses
  %i.c = icmp eq ptr %.014, null
  %i.d = icmp eq ptr %.0, null
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.177)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = tail call { i32, ptr } @LoadShaderFromMemory(ptr noundef %.014, ptr noundef %.0)
  tail call void @free(ptr noundef %.014) #56
  tail call void @free(ptr noundef %.0) #56
  ret { i32, ptr } %i.e
}

; Function Attrs: nounwind uwtable
define ptr @LoadFileText(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @loadFileText, align 8     ; 2 uses
  %.not33 = icmp eq ptr %i.a, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr %i.a(ptr noundef nonnull %0) #56
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.227) ; 6 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.e = tail call i64 @ftell(ptr noundef nonnull %i.c) ; 3 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 0) ; 0 uses
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = add i64 %i.e, 1
  %i.i = and i64 %i.h, 4294967295
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #60 ; 4 uses
  %.not36 = icmp eq ptr %i.j, null
  br i1 %.not36, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %i.e, 4294967295
  %i.l = tail call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.k, ptr noundef nonnull %i.c) ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp ult i32 %i.m, %i.f
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %i.l, 1
  %i.p = and i64 %i.o, 4294967295
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.p) #61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.q, %bb.h ], [ %i.j, %bb.g ]  ; 2 uses
  %i.r = and i64 %i.l, 4294967295
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 %i.r
  store i8 0, ptr %i.s, align 1
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.228, ptr noundef nonnull %0)
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.205, ptr noundef nonnull %0)
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.229, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.1 = phi ptr [ %.0, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  %i.t = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.230, ptr noundef nonnull %0)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.208)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.c
  %.025 = phi ptr [ %i.b, %bb.c ], [ null, %bb.n ], [ %.1, %bb.l ], [ null, %bb.m ]
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define { i32, ptr } @LoadShaderFromMemory(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rlLoadShaderProgram(ptr noundef %0, ptr noundef %1) ; 22 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 32, i64 noundef 4) #60 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.c, i8 -1, i64 128, i1 false)
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2368), align 8
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2376), align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 32, i64 noundef 4) #60 ; 21 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.h, i8 -1, i64 84, i1 false)
  %i.i = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.j = tail call i32 %i.i(i32 noundef %i.a, ptr noundef nonnull @.str.74) #56, !inline_history !11
  store i32 %i.j, ptr %i.g, align 4
  %i.k = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.l = tail call i32 %i.k(i32 noundef %i.a, ptr noundef nonnull @.str.75) #56, !inline_history !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.o = tail call i32 %i.n(i32 noundef %i.a, ptr noundef nonnull @.str.79) #56, !inline_history !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.o, ptr %i.p, align 4
  %i.q = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.r = tail call i32 %i.q(i32 noundef %i.a, ptr noundef nonnull @.str.76) #56, !inline_history !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.r, ptr %i.s, align 4
  %i.t = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.u = tail call i32 %i.t(i32 noundef %i.a, ptr noundef nonnull @.str.78) #56, !inline_history !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.u, ptr %i.v, align 4
  %i.w = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.x = tail call i32 %i.w(i32 noundef %i.a, ptr noundef nonnull @.str.77) #56, !inline_history !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %i.x, ptr %i.y, align 4
  %i.z = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.aa = tail call i32 %i.z(i32 noundef %i.a, ptr noundef nonnull @.str.81) #56, !inline_history !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.ad = tail call i32 %i.ac(i32 noundef %i.a, ptr noundef nonnull @.str.82) #56, !inline_history !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = load ptr, ptr @glad_glGetAttribLocation, align 8
  %i.ag = tail call i32 %i.af(i32 noundef %i.a, ptr noundef nonnull @.str.80) #56, !inline_history !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.aj = tail call i32 %i.ai(i32 noundef %i.a, ptr noundef nonnull @.str.178) #56, !inline_history !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.am = tail call i32 %i.al(i32 noundef %i.a, ptr noundef nonnull @.str.179) #56, !inline_history !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = load ptr, ptr @glad_glGetUniformLocation, align 8
  %i.ap = tail call i32 %i.ao(i32 noundef %i.a, ptr noundef nonnull @.str.180) #56, !inline_history !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
end_hunk_2
