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
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load <2 x float>, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.i = load float, ptr %4, align 4, !tbaa !12   ; 4 uses
  %i.j = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.k = insertelement <2 x float> %i.j, float %i.i, i64 0
  %5 = load float, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %6 = load float, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %i.l = load float, ptr %2, align 4, !tbaa !12   ; 6 uses
  %7 = load float, ptr %i.d, align 4, !tbaa !12   ; 2 uses
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fsub <2 x float> %i.k, %i.n              ; 7 uses
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = load float, ptr %1, align 4, !tbaa !12   ; 3 uses
  %12 = load <2 x float>, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %13 = shufflevector <2 x float> %12, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %14 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %5, i64 1
  %16 = fsub <2 x float> %13, %9                  ; 7 uses
  %17 = fsub <2 x float> %15, %11                 ; 7 uses
  %i.q = load <2 x float>, ptr %i.g, align 4, !tbaa !12 ; 3 uses
  %18 = extractelement <2 x float> %i.q, i64 0    ; 2 uses
  %19 = fsub float %18, %6
  %20 = fsub float %i.p, %i.l
  %21 = extractelement <2 x float> %i.q, i64 1    ; 2 uses
  %22 = fsub float %21, %7
  %23 = insertelement <2 x float> poison, float %19, i64 0
  %i.r = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %16, %i.r
  %i.t = insertelement <2 x float> poison, float %20, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.u, <2 x float> %i.s)
  %24 = insertelement <2 x float> poison, float %22, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %25, <2 x float> %i.v) ; 4 uses
  %i.x = fcmp ugt <2 x float> %i.w, zeroinitializer
  %i.y = bitcast <2 x i1> %i.x to i2
  %i.z = icmp eq i2 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.l, ptr %0, align 4, !tbaa !12
  %i.aa = load float, ptr %i.b, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !12
  %i.ac = load float, ptr %i.d, align 4, !tbaa !12
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %26 = load float, ptr %i.a, align 4, !tbaa !12
  %i.ad = extractelement <2 x float> %i.h, i64 0  ; 4 uses
  %27 = fsub float %18, %26
  %28 = fsub float %i.p, %i.ad
  %i.ae = fsub float %21, %5
  %29 = insertelement <2 x float> poison, float %27, i64 0
  %i.af = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %16, %i.af
  %i.ah = insertelement <2 x float> poison, float %28, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.ai, <2 x float> %i.ag)
  %30 = insertelement <2 x float> poison, float %i.ae, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %31, <2 x float> %i.aj) ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1 ; 7 uses
  %i.am = fcmp ult float %i.al, 0.000000e+00
  %i.an = extractelement <2 x float> %i.ak, i64 0 ; 4 uses
  %i.ao = fcmp ugt float %i.an, %i.al
  %or.cond126 = or i1 %i.am, %i.ao
  br i1 %or.cond126, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %i.ad, ptr %0, align 4, !tbaa !12
  %i.ap = load float, ptr %i.a, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !12
  %i.ar = load float, ptr %i.c, align 4, !tbaa !12
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.as = extractelement <2 x float> %i.w, i64 0  ; 4 uses
  %i.at = fneg float %i.as
  %i.au = fmul float %i.al, %i.at
  %i.av = extractelement <2 x float> %i.w, i64 1  ; 5 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.an, float %i.au) ; 3 uses
  %i.ax = fcmp ole float %i.aw, 0.000000e+00
  %i.ay = fcmp oge float %i.av, 0.000000e+00
  %or.cond3 = and i1 %i.ay, %i.ax
  %i.az = fcmp ole float %i.al, 0.000000e+00
  %or.cond5 = and i1 %i.az, %or.cond3
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = fsub float %i.av, %i.al
  %i.bb = fdiv float %i.av, %i.ba                 ; 3 uses
  %i.bc = extractelement <2 x float> %i.o, i64 1
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bc, float %i.l)
  store float %i.bd, ptr %0, align 4, !tbaa !12
  %i.be = load float, ptr %i.b, align 4, !tbaa !12
  %i.bf = extractelement <2 x float> %16, i64 1
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bf, float %i.be)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.bg, ptr %i.bh, align 4, !tbaa !12
  %i.bi = load float, ptr %i.d, align 4, !tbaa !12
  %i.bj = extractelement <2 x float> %17, i64 1
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bj, float %i.bi)
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.bl = fsub float %i.p, %i.i
  %i.bm = fsub <2 x float> %i.q, %12              ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %16, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.bq, <2 x float> %i.bo)
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %i.bs, <2 x float> %i.br) ; 3 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0 ; 6 uses
  %i.bv = fcmp ult float %i.bu, 0.000000e+00
  %i.bw = extractelement <2 x float> %i.bt, i64 1 ; 4 uses
  %i.bx = fcmp ugt float %i.bw, %i.bu
  %or.cond127 = or i1 %i.bv, %i.bx
  br i1 %or.cond127, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.i, ptr %0, align 4, !tbaa !12
  %i.by = load float, ptr %i.e, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.by, ptr %i.bz, align 4, !tbaa !12
  %i.ca = load float, ptr %i.f, align 4, !tbaa !12
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.cb = fneg float %i.bu
  %i.cc = fmul float %i.av, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.as, float %i.cc) ; 3 uses
  %i.ce = fcmp ole float %i.cd, 0.000000e+00
  %i.cf = fcmp oge float %i.as, 0.000000e+00
  %or.cond7 = and i1 %i.cf, %i.ce
  %i.cg = fcmp ole float %i.bu, 0.000000e+00
  %or.cond9 = and i1 %i.cg, %or.cond7
  br i1 %or.cond9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop = fsub <2 x float> %i.w, %i.bt
  %i.ch = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ci = fdiv float %i.as, %i.ch                 ; 3 uses
  %i.cj = extractelement <2 x float> %i.o, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cj, float %i.l)
  store float %i.ck, ptr %0, align 4, !tbaa !12
  %i.cl = load float, ptr %i.b, align 4, !tbaa !12
  %i.cm = extractelement <2 x float> %16, i64 0
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cm, float %i.cl)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !12
  %i.cp = load float, ptr %i.d, align 4, !tbaa !12
  %i.cq = extractelement <2 x float> %17, i64 0
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cq, float %i.cp)
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.cs = fneg float %i.an
  %i.ct = fmul float %i.bw, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bu, float %i.ct) ; 2 uses
  %i.cv = fcmp ugt float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = fsub float %i.an, %i.al                 ; 3 uses
  %i.cx = fcmp ult float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = fsub float %i.bw, %i.bu                 ; 2 uses
  %i.cz = fcmp ult float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = fadd float %i.cw, %i.cy
  %i.db = fdiv float %i.cw, %i.da                 ; 3 uses
  %i.dc = fsub float %i.i, %i.ad
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dc, float %i.ad)
  store float %i.dd, ptr %0, align 4, !tbaa !12
  %i.de = load float, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.df = load float, ptr %i.e, align 4, !tbaa !12
  %i.dg = fsub float %i.df, %i.de
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dg, float %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.dh, ptr %i.di, align 4, !tbaa !12
  %i.dj = load float, ptr %i.c, align 4, !tbaa !12 ; 2 uses
  %i.dk = load float, ptr %i.f, align 4, !tbaa !12
  %i.dl = fsub float %i.dk, %i.dj
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dl, float %i.dj)
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.dn = fadd float %i.cu, %i.cd
  %i.do = fadd float %i.aw, %i.dn
  %i.dp = fdiv float 1.000000e+00, %i.do          ; 2 uses
  %i.dq = fmul float %i.cd, %i.dp                 ; 3 uses
  %i.dr = fmul float %i.aw, %i.dp                 ; 3 uses
  %i.ds = extractelement <2 x float> %i.o, i64 1
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dq, float %i.l)
  %i.du = extractelement <2 x float> %i.o, i64 0
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float %i.dr, float %i.dt)
  store float %i.dv, ptr %0, align 4, !tbaa !12
  %i.dw = load float, ptr %i.b, align 4, !tbaa !12
  %i.dx = extractelement <2 x float> %16, i64 1
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dq, float %i.dw)
  %i.dz = extractelement <2 x float> %16, i64 0
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.dr, float %i.dy)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ea, ptr %i.eb, align 4, !tbaa !12
  %i.ec = load float, ptr %i.d, align 4, !tbaa !12
  %i.ed = extractelement <2 x float> %17, i64 1
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.dq, float %i.ec)
  %i.ef = extractelement <2 x float> %17, i64 0
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.dr, float %i.ee)
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.o, %bb.n, %bb.h, %bb.b
  %.sink = phi float [ %i.ar, %bb.d ], [ %i.bk, %bb.f ], [ %i.cr, %bb.j ], [ %i.eg, %bb.o ], [ %i.dm, %bb.n ], [ %i.ca, %bb.h ], [ %i.ac, %bb.b ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink, ptr %i.eh, align 4, !tbaa !12
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
end_hunk_0
