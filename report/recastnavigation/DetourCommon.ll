Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCommon?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z24dtClosestPtPointTrianglePfPKfS1_S1_S1_(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load float, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.c = load float, ptr %5, align 4, !tbaa !12   ; 2 uses
  %12 = load float, ptr %3, align 4, !tbaa !12    ; 5 uses
  %i.d = load float, ptr %7, align 4, !tbaa !12   ; 2 uses
  %13 = load float, ptr %6, align 4, !tbaa !12    ; 3 uses
  %i.e = load float, ptr %2, align 4, !tbaa !12   ; 7 uses
  %14 = load float, ptr %i.a, align 4, !tbaa !12  ; 3 uses
  %15 = load float, ptr %8, align 4, !tbaa !12    ; 2 uses
  %i.f = load float, ptr %4, align 4, !tbaa !12   ; 4 uses
  %i.g = fsub float %12, %i.e                     ; 5 uses
  %16 = fsub float %i.f, %i.e                     ; 5 uses
  %17 = fsub float %i.c, %13                      ; 5 uses
  %i.h = fsub float %15, %13                      ; 5 uses
  %18 = fsub float %i.d, %14                      ; 5 uses
  %i.i = fsub float %11, %14                      ; 5 uses
  %19 = load float, ptr %9, align 4, !tbaa !12    ; 3 uses
  %i.j = load float, ptr %1, align 4, !tbaa !12   ; 3 uses
  %20 = load float, ptr %10, align 4, !tbaa !12   ; 3 uses
  %21 = fsub float %i.j, %i.e                     ; 2 uses
  %22 = fsub float %19, %13                       ; 2 uses
  %i.k = fsub float %20, %14                      ; 2 uses
  %i.l = fmul float %17, %22
  %i.m = tail call float @llvm.fmuladd.f32(float %i.g, float %21, float %i.l)
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %18, float %i.k, float %i.m) ; 6 uses
  %i.o = fmul float %i.h, %22
  %i.p = tail call float @llvm.fmuladd.f32(float %16, float %21, float %i.o)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.k, float %i.p) ; 6 uses
  %i.r = fcmp ole float %i.n, 0.000000e+00
  %i.s = fcmp ole float %i.q, 0.000000e+00
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.e, ptr %0, align 4, !tbaa !12
  %i.t = load float, ptr %6, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !12
  %i.v = load float, ptr %i.a, align 4, !tbaa !12
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.w = fsub float %i.j, %12
  %i.x = fsub float %19, %i.c
  %i.y = fsub float %20, %i.d
  %23 = insertelement <2 x float> poison, float %17, i64 0
  %24 = insertelement <2 x float> %23, float %i.h, i64 1
  %25 = insertelement <2 x float> poison, float %i.x, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fmul <2 x float> %24, %26
  %28 = insertelement <2 x float> poison, float %i.g, i64 0
  %29 = insertelement <2 x float> %28, float %16, i64 1
  %30 = insertelement <2 x float> poison, float %i.w, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %31, <2 x float> %27)
  %33 = insertelement <2 x float> poison, float %18, i64 0
  %34 = insertelement <2 x float> %33, float %i.i, i64 1
  %35 = insertelement <2 x float> poison, float %i.y, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %36, <2 x float> %32) ; 2 uses
  %38 = extractelement <2 x float> %37, i64 0     ; 7 uses
  %i.z = fcmp ult float %38, 0.000000e+00
  %39 = extractelement <2 x float> %37, i64 1     ; 4 uses
  %i.aa = fcmp ugt float %39, %38
  %or.cond126 = or i1 %i.z, %i.aa
  br i1 %or.cond126, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %12, ptr %0, align 4, !tbaa !12
  %i.ab = load float, ptr %5, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !12
  %i.ad = load float, ptr %7, align 4, !tbaa !12
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.ae = fneg float %i.q
  %i.af = fmul float %38, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.n, float %39, float %i.af) ; 3 uses
  %i.ah = fcmp ole float %i.ag, 0.000000e+00
  %i.ai = fcmp oge float %i.n, 0.000000e+00
  %or.cond3 = and i1 %i.ai, %i.ah
  %i.aj = fcmp ole float %38, 0.000000e+00
  %or.cond5 = and i1 %i.aj, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = fsub float %i.n, %38
  %i.al = fdiv float %i.n, %i.ak                  ; 3 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.g, float %i.e)
  store float %i.am, ptr %0, align 4, !tbaa !12
  %i.an = load float, ptr %6, align 4, !tbaa !12
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.al, float %17, float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ao, ptr %i.ap, align 4, !tbaa !12
  %i.aq = load float, ptr %i.a, align 4, !tbaa !12
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.al, float %18, float %i.aq)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.as = fsub float %i.j, %i.f
  %i.at = fsub float %19, %15
  %i.au = fsub float %20, %11
  %40 = insertelement <2 x float> poison, float %i.h, i64 0
  %41 = insertelement <2 x float> %40, float %17, i64 1
  %42 = insertelement <2 x float> poison, float %i.at, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x float> %41, %43
  %45 = insertelement <2 x float> poison, float %16, i64 0
  %46 = insertelement <2 x float> %45, float %i.g, i64 1
  %47 = insertelement <2 x float> poison, float %i.as, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %48, <2 x float> %44)
  %50 = insertelement <2 x float> poison, float %i.i, i64 0
  %51 = insertelement <2 x float> %50, float %18, i64 1
  %52 = insertelement <2 x float> poison, float %i.au, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> %53, <2 x float> %49) ; 2 uses
  %55 = extractelement <2 x float> %54, i64 0     ; 7 uses
  %i.av = fcmp ult float %55, 0.000000e+00
  %56 = extractelement <2 x float> %54, i64 1     ; 4 uses
  %i.aw = fcmp ugt float %56, %55
  %or.cond127 = or i1 %i.av, %i.aw
  br i1 %or.cond127, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.f, ptr %0, align 4, !tbaa !12
  %i.ax = load float, ptr %8, align 4, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ax, ptr %i.ay, align 4, !tbaa !12
  %i.az = load float, ptr %i.b, align 4, !tbaa !12
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ba = fneg float %55
  %i.bb = fmul float %i.n, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %56, float %i.q, float %i.bb) ; 3 uses
  %i.bd = fcmp ole float %i.bc, 0.000000e+00
  %i.be = fcmp oge float %i.q, 0.000000e+00
  %or.cond7 = and i1 %i.be, %i.bd
  %i.bf = fcmp ole float %55, 0.000000e+00
  %or.cond9 = and i1 %i.bf, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = fsub float %i.q, %55
  %i.bh = fdiv float %i.q, %i.bg                  ; 3 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %16, float %i.e)
  store float %i.bi, ptr %0, align 4, !tbaa !12
  %i.bj = load float, ptr %6, align 4, !tbaa !12
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.h, float %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.bk, ptr %i.bl, align 4, !tbaa !12
  %i.bm = load float, ptr %i.a, align 4, !tbaa !12
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.i, float %i.bm)
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.bo = fneg float %39
  %i.bp = fmul float %56, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %38, float %55, float %i.bp) ; 2 uses
  %i.br = fcmp ugt float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = fsub float %39, %38                     ; 3 uses
  %i.bt = fcmp ult float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = fsub float %56, %55                     ; 2 uses
  %i.bv = fcmp ult float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = fadd float %i.bs, %i.bu
  %i.bx = fdiv float %i.bs, %i.bw                 ; 3 uses
  %i.by = fsub float %i.f, %12
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.by, float %12)
  store float %i.bz, ptr %0, align 4, !tbaa !12
  %i.ca = load float, ptr %5, align 4, !tbaa !12  ; 2 uses
  %i.cb = load float, ptr %8, align 4, !tbaa !12
  %i.cc = fsub float %i.cb, %i.ca
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cc, float %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.cd, ptr %i.ce, align 4, !tbaa !12
  %i.cf = load float, ptr %7, align 4, !tbaa !12  ; 2 uses
  %i.cg = load float, ptr %i.b, align 4, !tbaa !12
  %i.ch = fsub float %i.cg, %i.cf
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.ch, float %i.cf)
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cj = fadd float %i.bq, %i.bc
  %i.ck = fadd float %i.ag, %i.cj
  %i.cl = fdiv float 1.000000e+00, %i.ck          ; 2 uses
  %i.cm = fmul float %i.bc, %i.cl                 ; 3 uses
  %i.cn = fmul float %i.ag, %i.cl                 ; 3 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.g, float %i.cm, float %i.e)
  %i.cp = tail call float @llvm.fmuladd.f32(float %16, float %i.cn, float %i.co)
  store float %i.cp, ptr %0, align 4, !tbaa !12
  %i.cq = load float, ptr %6, align 4, !tbaa !12
  %i.cr = tail call float @llvm.fmuladd.f32(float %17, float %i.cm, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.h, float %i.cn, float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.cs, ptr %i.ct, align 4, !tbaa !12
  %i.cu = load float, ptr %i.a, align 4, !tbaa !12
  %i.cv = tail call float @llvm.fmuladd.f32(float %18, float %i.cm, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.i, float %i.cn, float %i.cv)
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink = phi float [ %i.ad, %bb.d ], [ %i.ar, %bb.f ], [ %i.bn, %bb.j ], [ %i.cw, %bb.o ], [ %i.ci, %bb.n ], [ %i.az, %bb.h ], [ %i.v, %bb.b ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink, ptr %i.cx, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_Z24dtIntersectSegmentPoly2DPKfS0_S0_iRfS1_RiS2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %7) local_unnamed_addr #2 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !12
  store float 1.000000e+00, ptr %5, align 4, !tbaa !12
  store i32 -1, ptr %6, align 4, !tbaa !13
  store i32 -1, ptr %7, align 4, !tbaa !13
  %i.a = load float, ptr %1, align 4, !tbaa !12
  %i.b = load float, ptr %0, align 4, !tbaa !12
  %i.c = fsub float %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = fsub float %i.e, %i.g
  %.not55 = icmp slt i32 %3, 1
  br i1 %.not55, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = add nsw i32 %3, -1
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.j = phi float [ 1.000000e+00, %.lr.ph.preheader ], [ %i.as, %bb.h ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.04057 = phi i32 [ %i.i, %.lr.ph.preheader ], [ %i.at, %bb.h ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.l = mul nsw i32 %.04057, 3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.k, align 4, !tbaa !12
  %i.p = load float, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = fsub float %i.s, %i.u                    ; 2 uses
  %i.w = load float, ptr %0, align 4, !tbaa !12
  %i.x = fsub float %i.w, %i.p
  %i.y = load float, ptr %i.f, align 4, !tbaa !12
  %i.z = fsub float %i.y, %i.u
  %i.aa = fneg float %i.z
  %i.ab = fmul float %i.q, %i.aa
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.ab) ; 2 uses
  %i.ad = fneg float %i.v
  %i.ae = fmul float %i.c, %i.ad
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.q, float %i.ae) ; 3 uses
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp olt float %i.ag, f0x358637BD
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ai = fcmp olt float %i.ac, 0.000000e+00
  br i1 %i.ai, label %.critedge, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.aj = fdiv float %i.ac, %i.af                 ; 7 uses
  %i.ak = fcmp olt float %i.af, 0.000000e+00
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = load float, ptr %4, align 4, !tbaa !12
  %i.am = fcmp ogt float %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store float %i.aj, ptr %4, align 4, !tbaa !12
  store i32 %.04057, ptr %6, align 4, !tbaa !13
  %i.an = load float, ptr %5, align 4, !tbaa !12  ; 2 uses
  %i.ao = fcmp ogt float %i.aj, %i.an
  br i1 %i.ao, label %.critedge, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ap = fcmp olt float %i.aj, %i.j
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.aj, ptr %5, align 4, !tbaa !12
  store i32 %.04057, ptr %7, align 4, !tbaa !13
  %i.aq = load float, ptr %4, align 4, !tbaa !12
  %i.ar = fcmp olt float %i.aj, %i.aq
  br i1 %i.ar, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.b
  %i.as = phi float [ %i.an, %bb.e ], [ %i.j, %bb.d ], [ %i.aj, %bb.g ], [ %i.j, %bb.f ], [ %i.j, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.h, %bb.e, %bb.g, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.e ], [ true, %bb.h ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef float @_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !12
  %i.b = load float, ptr %1, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = load float, ptr %0, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = insertelement <2 x float> poison, float %i.g, i64 0
  %i.k = insertelement <2 x float> %i.j, float %i.a, i64 1
  %i.l = insertelement <2 x float> poison, float %i.b, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fsub <2 x float> %i.k, %i.m              ; 3 uses
  %i.o = insertelement <2 x float> poison, float %i.i, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1
  %i.q = insertelement <2 x float> poison, float %i.f, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fsub <2 x float> %i.p, %i.r              ; 3 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x float> %i.t, %i.s
  %i.v = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.n, <2 x float> %i.u) ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 1   ; 2 uses
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  %i.z = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.aa = fdiv float %i.z, %i.x
  %storemerge = select i1 %i.y, float %i.aa, float %i.z ; 4 uses
  store float %storemerge, ptr %3, align 4, !tbaa !12
  %i.ab = fcmp olt float %storemerge, 0.000000e+00
  br i1 %i.ab, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = fcmp ogt float %storemerge, 1.000000e+00
  br i1 %i.ac, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi float [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ] ; 2 uses
  store float %.sink, ptr %3, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.ad = phi float [ %storemerge, %bb.b ], [ %.sink, %.sink.split ] ; 2 uses
  %i.ae = load float, ptr %1, align 4, !tbaa !12
  %i.af = extractelement <2 x float> %i.n, i64 1
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.af, float %i.ae)
  %i.ah = load float, ptr %0, align 4, !tbaa !12
  %i.ai = fsub float %i.ag, %i.ah                 ; 2 uses
  %i.aj = load float, ptr %i.e, align 4, !tbaa !12
  %i.ak = extractelement <2 x float> %i.s, i64 1
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ak, float %i.aj)
  %i.am = load float, ptr %i.h, align 4, !tbaa !12
  %i.an = fsub float %i.al, %i.am                 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao)
  ret float %i.ap
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z16dtCalcPolyCenterPfPKtiPKf(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %2, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
end_hunk_0
