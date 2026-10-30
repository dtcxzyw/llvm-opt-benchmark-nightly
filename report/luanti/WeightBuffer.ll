Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/WeightBuffer?download=true
inline.NumInlined: 259
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.core::vector3d" = type { float, float, float }

$__clang_call_terminate = comdat any

$_ZNSt19__shrink_to_fit_auxISt6vectorIjSaIjEELb1EE8_S_do_itERS2_ = comdat any

@.str = private unnamed_addr constant [15 x i8] c"weight >= 0.0f\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/luanti/luanti/irr/src/WeightBuffer.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN5scene12WeightBuffer13VertexWeights9addWeightEtf = private unnamed_addr constant [61 x i8] c"void scene::WeightBuffer::VertexWeights::addWeight(u16, f32)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"animated_vertices.has_value()\00", align 1
@__PRETTY_FUNCTION__._ZN5scene12WeightBuffer4skinEPNS_13IVertexBufferERKSt6vectorIN4core8CMatrix4IfEESaIS6_EE = private unnamed_addr constant [84 x i8] c"void scene::WeightBuffer::skin(IVertexBuffer *, const std::vector<core::matrix4> &)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"static_pose\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"!animated_vertices.has_value()\00", align 1
@__PRETTY_FUNCTION__._ZN5scene12WeightBuffer8finalizeEv = private unnamed_addr constant [37 x i8] c"void scene::WeightBuffer::finalize()\00", align 1
@__PRETTY_FUNCTION__._ZNK5scene12WeightBuffer17resetToStaticPoseEPNS_13IVertexBufferE = private unnamed_addr constant [67 x i8] c"void scene::WeightBuffer::resetToStaticPose(IVertexBuffer *) const\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5scene12WeightBuffer13VertexWeights9addWeightEtf(ptr noundef nonnull align 4 dereferenceable(24) %0, i16 noundef zeroext %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fcmp ult float %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12WeightBuffer13VertexWeights9addWeightEtf) #16
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre.i.i = load float, ptr %i.b, align 4, !tbaa !9 ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load float, ptr %.ptr, align 4, !tbaa !9 ; 2 uses
  %i.d = fcmp olt float %i.c, %.pre.i.i           ; 2 uses
  %spec.select.i.i = select i1 %i.d, ptr %.ptr, ptr %i.b
  %i.e = select i1 %i.d, float %i.c, float %.pre.i.i ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load float, ptr %.ptr.1, align 4, !tbaa !9 ; 2 uses
  %i.g = fcmp olt float %i.f, %i.e                ; 2 uses
  %spec.select.i.i.1 = select i1 %i.g, ptr %.ptr.1, ptr %spec.select.i.i
  %i.h = select i1 %i.g, float %i.f, float %i.e
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load float, ptr %.ptr.2, align 4, !tbaa !9
  %i.j = fcmp olt float %i.i, %i.h
  %spec.select.i.i.2 = select i1 %i.j, ptr %.ptr.2, ptr %spec.select.i.i.1 ; 3 uses
  %i.k = load float, ptr %spec.select.i.i.2, align 4, !tbaa !9
  %i.l = fcmp ogt float %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  store float %2, ptr %spec.select.i.i.2, align 4, !tbaa !9
  %i.m = ptrtoint ptr %spec.select.i.i.2 to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  store i16 %1, ptr %i.q, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i, %bb.c
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN5scene12WeightBuffer9addWeightEjtf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, i16 noundef zeroext %2, float noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.i, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN5scene12WeightBuffer13VertexWeightsESaIS2_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, i64 noundef %i.b, i64 noundef %i.i) #17
  unreachable

_ZNSt6vectorIN5scene12WeightBuffer13VertexWeightsESaIS2_EE2atEm.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.b ; 5 uses
  %i.k = fcmp ult float %3, 0.000000e+00
  br i1 %i.k, label %bb.c, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %_ZNSt6vectorIN5scene12WeightBuffer13VertexWeightsESaIS2_EE2atEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12WeightBuffer13VertexWeights9addWeightEtf) #16
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN5scene12WeightBuffer13VertexWeightsESaIS2_EE2atEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.pre.i.i.i = load float, ptr %i.l, align 4, !tbaa !9 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.m = load float, ptr %.ptr.i, align 4, !tbaa !9 ; 2 uses
  %i.n = fcmp olt float %i.m, %.pre.i.i.i         ; 2 uses
  %spec.select.i.i.i = select i1 %i.n, ptr %.ptr.i, ptr %i.l
  %i.o = select i1 %i.n, float %i.m, float %.pre.i.i.i ; 2 uses
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.p = load float, ptr %.ptr.1.i, align 4, !tbaa !9 ; 2 uses
  %i.q = fcmp olt float %i.p, %i.o                ; 2 uses
  %spec.select.i.i.1.i = select i1 %i.q, ptr %.ptr.1.i, ptr %spec.select.i.i.i
  %i.r = select i1 %i.q, float %i.p, float %i.o
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  %i.s = load float, ptr %.ptr.2.i, align 4, !tbaa !9
  %i.t = fcmp olt float %i.s, %i.r
  %spec.select.i.i.2.i = select i1 %i.t, ptr %.ptr.2.i, ptr %spec.select.i.i.1.i ; 3 uses
  %i.u = load float, ptr %spec.select.i.i.2.i, align 4, !tbaa !9
  %i.v = fcmp ogt float %i.u, %3
  br i1 %i.v, label %_ZN5scene12WeightBuffer13VertexWeights9addWeightEtf.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  store float %3, ptr %spec.select.i.i.2.i, align 4, !tbaa !9
  %i.w = ptrtoint ptr %spec.select.i.i.2.i to i64
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.z
  store i16 %2, ptr %i.aa, align 2, !tbaa !11
  br label %_ZN5scene12WeightBuffer13VertexWeights9addWeightEtf.exit

_ZN5scene12WeightBuffer13VertexWeights9addWeightEtf.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @_ZNK5scene12WeightBuffer13VertexWeights10skinVertexERN4core8vector3dIfEES5_RKSt6vectorINS2_8CMatrix4IfEESaIS8_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %3, align 8                ; 4 uses
  %.sroa.037.0.copyload = load <2 x float>, ptr %1, align 4 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 8 uses
  %.sroa.037.0.vec.extract = extractelement <2 x float> %.sroa.037.0.copyload, i64 0 ; 4 uses
  %.sroa.037.4.vec.extract = extractelement <2 x float> %.sroa.037.0.copyload, i64 1 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load float, ptr %2, align 4              ; 8 uses
  %i.f = load float, ptr %i.c, align 4            ; 9 uses
  %i.g = load float, ptr %i.d, align 4            ; 8 uses
  %i.h = load float, ptr %i.a, align 4, !tbaa !9  ; 5 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ugt float %i.i, f0x358637BD
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %0, align 4, !tbaa !11
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.l ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !9  ; 2 uses
  %i.v = fmul float %.sroa.037.4.vec.extract, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.037.0.vec.extract, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load float, ptr %i.x, align 4, !tbaa !9  ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.y, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9
  %i.ac = fadd float %i.ab, %i.z
  %i.ad = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 2 uses
  %i.ae = load float, ptr %i.q, align 4, !tbaa !9
  %i.af = insertelement <2 x float> poison, float %.sroa.8.0.copyload, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = load <2 x float>, ptr %i.p, align 4, !tbaa !9
  %i.ai = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul float %i.h, %i.ac
  %i.al = fadd float %i.ak, 0.000000e+00
  %i.am = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.an = load <2 x float>, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.ao = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fmul <2 x float> %i.ao, %i.am
  %i.aq = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.an, <2 x float> %i.ap)
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ad, <2 x float> %i.ar)
  %i.at = fadd <2 x float> %i.ah, %i.as
  %i.au = fmul <2 x float> %i.aj, %i.at
  %i.av = fadd <2 x float> %i.au, zeroinitializer
  %i.aw = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.am, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.an, <2 x float> %i.ay)
  %i.bc = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> %i.ad, float %i.ae, i64 1
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bb)
  %i.bg = fmul float %i.u, %i.f
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.e, float %i.s, float %i.bg)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.g, float %i.y, float %i.bh)
  %i.bj = fmul <2 x float> %i.aj, %i.bf
  %i.bk = fmul float %i.h, %i.bi
  %i.bl = fadd <2 x float> %i.bj, zeroinitializer
  %i.bm = fadd float %i.bk, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.13.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.bm, %bb.b ] ; 2 uses
  %.sroa.9.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.al, %bb.b ] ; 2 uses
  %.1 = phi float [ 0.000000e+00, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.bn = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bl, %bb.b ] ; 2 uses
  %i.bo = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.av, %bb.b ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !9 ; 5 uses
  %i.br = tail call noundef float @llvm.fabs.f32(float %i.bq)
  %i.bs = fcmp ugt float %i.br, f0x358637BD
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !11
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.bv ; 10 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !9 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !9 ; 2 uses
  %i.cg = fmul float %.sroa.037.4.vec.extract, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %.sroa.037.0.vec.extract, float %i.cd, float %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !9 ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.cj, float %i.ch)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !9
  %i.cn = fadd float %i.cm, %i.ck
  %i.co = fmul float %i.bq, %i.cn
  %i.cp = fadd float %.sroa.9.1, %i.co
  %i.cq = fmul float %i.cf, %i.f
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.e, float %i.cd, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.g, float %i.cj, float %i.cr)
  %i.ct = load <2 x float>, ptr %i.bw, align 4, !tbaa !9 ; 2 uses
  %i.cu = load float, ptr %i.ca, align 4, !tbaa !9
  %i.cv = load <2 x float>, ptr %i.by, align 4, !tbaa !9 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.bx, align 4, !tbaa !9 ; 2 uses
  %i.cx = load float, ptr %i.cb, align 4, !tbaa !9
  %i.cy = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x float> %i.cy, %i.cw
  %i.da = load <2 x float>, ptr %i.bz, align 4, !tbaa !9
  %i.db = extractelement <2 x float> %i.cw, i64 0
  %i.dc = fmul float %i.db, %i.f
  %i.dd = fmul float %i.cx, %i.f
  %i.de = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x float> %i.ct, float %i.cu, i64 1
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.cz)
  %i.dh = insertelement <2 x float> poison, float %.sroa.8.0.copyload, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.cv, <2 x float> %i.dg)
  %i.dk = fadd <2 x float> %i.da, %i.dj
  %i.dl = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fmul <2 x float> %i.dm, %i.dk
  %i.do = fadd <2 x float> %i.bo, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.e, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 1
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ct, <2 x float> %i.ds)
  %i.du = insertelement <2 x float> poison, float %i.g, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.cv, <2 x float> %i.dt)
  %i.dx = fmul <2 x float> %i.dm, %i.dw
  %i.dy = fmul float %i.bq, %i.cs
  %i.dz = fadd <2 x float> %i.bn, %i.dx
  %i.ea = fadd float %.sroa.13.1, %i.dy
  %i.eb = fadd float %.1, %i.bq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.13.1.1 = phi float [ %.sroa.13.1, %bb.c ], [ %i.ea, %bb.d ] ; 2 uses
  %.sroa.9.1.1 = phi float [ %.sroa.9.1, %bb.c ], [ %i.cp, %bb.d ] ; 2 uses
  %.1.1 = phi float [ %.1, %bb.c ], [ %i.eb, %bb.d ] ; 2 uses
  %i.ec = phi <2 x float> [ %i.bn, %bb.c ], [ %i.dz, %bb.d ] ; 2 uses
  %i.ed = phi <2 x float> [ %i.bo, %bb.c ], [ %i.do, %bb.d ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !9 ; 5 uses
  %i.eg = tail call noundef float @llvm.fabs.f32(float %i.ef)
  %i.eh = fcmp ugt float %i.eg, f0x358637BD
  br i1 %i.eh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !11
  %i.ek = zext i16 %i.ej to i64
  %i.el = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.ek ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !9 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.es = load float, ptr %i.er, align 4, !tbaa !9 ; 2 uses
  %i.et = fmul float %.sroa.037.4.vec.extract, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %.sroa.037.0.vec.extract, float %i.eq, float %i.et)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !9 ; 2 uses
  %i.ex = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.ew, float %i.eu)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !9
  %i.fa = fadd float %i.ez, %i.ex
  %i.fb = fmul float %i.ef, %i.fa
  %i.fc = fadd float %.sroa.9.1.1, %i.fb
  %i.fd = fmul float %i.es, %i.f
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.e, float %i.eq, float %i.fd)
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ew, float %i.fe)
  %i.fg = load <2 x float>, ptr %i.em, align 4, !tbaa !9 ; 2 uses
  %i.fh = load <2 x float>, ptr %i.el, align 4, !tbaa !9 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.en, align 4, !tbaa !9 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.eo, align 4, !tbaa !9
  %i.fk = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = fmul <2 x float> %i.fk, %i.fg
  %i.fm = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fh, <2 x float> %i.fl)
  %i.fo = insertelement <2 x float> poison, float %.sroa.8.0.copyload, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fi, <2 x float> %i.fn)
  %i.fr = fadd <2 x float> %i.fj, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fu = fmul <2 x float> %i.ft, %i.fr
  %i.fv = fadd <2 x float> %i.ed, %i.fu
  %i.fw = insertelement <2 x float> poison, float %i.f, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.fg, %i.fx
  %i.fz = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.fh, <2 x float> %i.fy)
  %i.gc = insertelement <2 x float> poison, float %i.g, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.fi, <2 x float> %i.gb)
  %i.gf = fmul <2 x float> %i.ft, %i.ge
  %i.gg = fmul float %i.ef, %i.ff
  %i.gh = fadd <2 x float> %i.ec, %i.gf
  %i.gi = fadd float %.sroa.13.1.1, %i.gg
  %i.gj = fadd float %.1.1, %i.ef
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.13.1.2 = phi float [ %.sroa.13.1.1, %bb.e ], [ %i.gi, %bb.f ] ; 2 uses
  %.sroa.9.1.2 = phi float [ %.sroa.9.1.1, %bb.e ], [ %i.fc, %bb.f ] ; 2 uses
  %.1.2 = phi float [ %.1.1, %bb.e ], [ %i.gj, %bb.f ] ; 2 uses
  %i.gk = phi <2 x float> [ %i.ec, %bb.e ], [ %i.gh, %bb.f ] ; 2 uses
  %i.gl = phi <2 x float> [ %i.ed, %bb.e ], [ %i.fv, %bb.f ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !9 ; 5 uses
  %i.go = tail call noundef float @llvm.fabs.f32(float %i.gn)
  %i.gp = fcmp ugt float %i.go, f0x358637BD
  br i1 %i.gp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !11
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.gs ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !9 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !9 ; 2 uses
  %i.hb = fmul float %.sroa.037.4.vec.extract, %i.ha
  %i.hc = tail call float @llvm.fmuladd.f32(float %.sroa.037.0.vec.extract, float %i.gy, float %i.hb)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.he = load float, ptr %i.hd, align 4, !tbaa !9 ; 2 uses
  %i.hf = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.he, float %i.hc)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !9
  %i.hi = fadd float %i.hh, %i.hf
  %i.hj = fmul float %i.gn, %i.hi
  %i.hk = fadd float %.sroa.9.1.2, %i.hj
  %i.hl = fmul float %i.ha, %i.f
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.e, float %i.gy, float %i.hl)
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.g, float %i.he, float %i.hm)
  %i.ho = load <2 x float>, ptr %i.gu, align 4, !tbaa !9 ; 2 uses
  %i.hp = load <2 x float>, ptr %i.gt, align 4, !tbaa !9 ; 2 uses
  %i.hq = load <2 x float>, ptr %i.gv, align 4, !tbaa !9 ; 2 uses
  %i.hr = load <2 x float>, ptr %i.gw, align 4, !tbaa !9
  %i.hs = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = fmul <2 x float> %i.hs, %i.ho
  %i.hu = shufflevector <2 x float> %.sroa.037.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hp, <2 x float> %i.ht)
  %i.hw = insertelement <2 x float> poison, float %.sroa.8.0.copyload, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hq, <2 x float> %i.hv)
  %i.hz = fadd <2 x float> %i.hr, %i.hy
  %i.ia = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ic = fmul <2 x float> %i.ib, %i.hz
  %i.id = fadd <2 x float> %i.gl, %i.ic
  %i.ie = insertelement <2 x float> poison, float %i.f, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x float> %i.ho, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.hp, <2 x float> %i.ig)
  %i.ik = insertelement <2 x float> poison, float %i.g, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.hq, <2 x float> %i.ij)
  %i.in = fmul <2 x float> %i.ib, %i.im
  %i.io = fmul float %i.gn, %i.hn
  %i.ip = fadd <2 x float> %i.gk, %i.in
  %i.iq = fadd float %.sroa.13.1.2, %i.io
  %i.ir = fadd float %.1.2, %i.gn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.13.1.3 = phi float [ %.sroa.13.1.2, %bb.g ], [ %i.iq, %bb.h ] ; 4 uses
  %.sroa.9.1.3 = phi float [ %.sroa.9.1.2, %bb.g ], [ %i.hk, %bb.h ]
  %.1.3 = phi float [ %.1.2, %bb.g ], [ %i.ir, %bb.h ]
  %i.is = phi <2 x float> [ %i.gk, %bb.g ], [ %i.ip, %bb.h ] ; 5 uses
  %i.it = phi <2 x float> [ %i.gl, %bb.g ], [ %i.id, %bb.h ]
  %i.iu = tail call noundef float @llvm.fabs.f32(float %.1.3)
  %i.iv = fcmp ugt float %i.iu, f0x358637BD
  br i1 %i.iv, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store <2 x float> %i.it, ptr %1, align 4, !tbaa !9
  store float %.sroa.9.1.3, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !9
  %foldExtExtBinop = fmul <2 x float> %i.is, %i.is
  %i.iw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ix = extractelement <2 x float> %i.is, i64 0 ; 2 uses
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ix, float %i.iw)
  %i.iz = tail call float @llvm.fmuladd.f32(float %.sroa.13.1.3, float %.sroa.13.1.3, float %i.iy) ; 2 uses
  %i.ja = fcmp oeq float %i.iz, 0.000000e+00
  br i1 %i.ja, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.jb = fpext float %i.iz to double
  %i.jc = tail call double @sqrt(double noundef %i.jb) #18
  %i.jd = fdiv double 1.000000e+00, %i.jc         ; 2 uses
  %i.je = fpext <2 x float> %i.is to <2 x double>
  %i.jf = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fmul <2 x double> %i.jg, %i.je
  %i.ji = fptrunc <2 x double> %i.jh to <2 x float>
  %i.jj = fpext float %.sroa.13.1.3 to double
  %i.jk = fmul double %i.jd, %i.jj
  %i.jl = fptrunc double %i.jk to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.j, %bb.k
  %.sroa.13.2 = phi float [ %.sroa.13.1.3, %bb.j ], [ %i.jl, %bb.k ]
  %i.jm = phi <2 x float> [ %i.is, %bb.j ], [ %i.ji, %bb.k ]
  store <2 x float> %i.jm, ptr %2, align 4, !tbaa !9
  store float %.sroa.13.2, ptr %i.d, align 4, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_ZN4core8vector3dIfE9normalizeEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK5scene12WeightBuffer10skinVertexEjRN4core8vector3dIfEES4_RKSt6vectorINS1_8CMatrix4IfEESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b
  tail call void @_ZNK5scene12WeightBuffer13VertexWeights10skinVertexERN4core8vector3dIfEES5_RKSt6vectorINS2_8CMatrix4IfEESaIS8_EE(ptr noundef nonnull align 4 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene12WeightBuffer4skinEPNS_13IVertexBufferERKSt6vectorIN4core8CMatrix4IfEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.core::vector3d", align 4    ; 5 uses
  %4 = alloca %"class.core::vector3d", align 4    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12WeightBuffer4skinEPNS_13IVertexBufferERKSt6vectorIN4core8CMatrix4IfEESaIS6_EE) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not16 = icmp eq ptr %i.h, %i.i
  br i1 %.not16, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12WeightBuffer4skinEPNS_13IVertexBufferERKSt6vectorIN4core8CMatrix4IfEESaIS6_EE) #16
  unreachable

._crit_edge:                                      ; preds = %bb.e
  %i.k = icmp eq ptr %i.ag, %i.af
  br i1 %i.k, label %._crit_edge.thread, label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.l = phi ptr [ %i.i, %.lr.ph ], [ %i.ag, %bb.e ]
  %i.m = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.e ] ; 2 uses
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.e ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.m ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !tbaa.struct !29
  %i.s = zext i32 %i.o to i64
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s
  call void @_ZNK5scene12WeightBuffer13VertexWeights10skinVertexERN4core8vector3dIfEES5_RKSt6vectorINS2_8CMatrix4IfEESaIS8_EE(ptr noundef nonnull align 4 dereferenceable(24) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
  %i.v = load ptr, ptr %1, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !29
  %i.z = load ptr, ptr %1, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ad = add i32 %.014, 1                        ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !26  ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = icmp ugt i64 %i.ak, %i.ae
  br i1 %i.al, label %bb.e, label %._crit_edge, !llvm.loop !34

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.f, %._crit_edge
  ret void
}

declare void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN5scene12WeightBuffer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalISt6vectorIjSaIjEEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 81, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12WeightBuffer8finalizeEv) #16
  unreachable

_ZNSt8optionalISt6vectorIjSaIjEEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  %i.m = and i64 %i.l, 4294967295
  %.not26 = icmp eq i64 %i.m, 0
  br i1 %.not26, label %_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8optionalISt6vectorIjSaIjEEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %.lr.ph.i

._crit_edge:                                      ; preds = %_ZSt4fillIPffEvT_S1_RKT0_.exit
  %i.p = icmp eq ptr %i.bo, %i.bp
  br i1 %i.p, label %_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIjSaIjEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #18 ; 0 uses
  br label %_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit

_ZNSt6vectorIjSaIjEE13shrink_to_fitEv.exit:       ; preds = %_ZNSt8optionalISt6vectorIjSaIjEEE7emplaceIJEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS6_.exit, %._crit_edge, %bb.c
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt4fillIPffEvT_S1_RKT0_.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.bn, %_ZSt4fillIPffEvT_S1_RKT0_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.bo, %_ZSt4fillIPffEvT_S1_RKT0_.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bp, %_ZSt4fillIPffEvT_S1_RKT0_.exit ] ; 4 uses
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZSt4fillIPffEvT_S1_RKT0_.exit ] ; 5 uses
  %i.u = phi ptr [ %i.h, %.lr.ph ], [ %i.br, %_ZSt4fillIPffEvT_S1_RKT0_.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvar ; 4 uses
  %.068.i.ptr = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.w = load float, ptr %.068.i.ptr, align 4, !tbaa !9
  %i.x = fadd float %i.w, 0.000000e+00
  %.068.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = load float, ptr %.068.i.ptr.1, align 4, !tbaa !9
  %i.z = fadd float %i.x, %i.y
  %.068.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load float, ptr %.068.i.ptr.2, align 4, !tbaa !9
  %i.ab = fadd float %i.z, %i.aa
  %.068.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ac = load float, ptr %.068.i.ptr.3, align 4, !tbaa !9
  %i.ad = fadd float %i.ab, %i.ac                 ; 3 uses
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ad)
  %i.af = fcmp ugt float %i.ae, f0x358637BD
  br i1 %i.af, label %bb.d, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %i.ag = mul nuw nsw i64 %indvar, 24
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !9
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i16 = icmp eq ptr %i.t, %i.s
  br i1 %.not.i16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = trunc nuw i64 %indvar to i32
  store i32 %i.ai, ptr %i.t, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !26
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %i.s to i64
  %i.al = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 5 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775804
  br i1 %i.an, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ao = ashr exact i64 %i.am, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 2305843009213693951)
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #19 ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  %i.aw = trunc nuw i64 %indvar to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !28
  %i.ax = icmp sgt i64 %i.am, 0
  br i1 %i.ax, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.r, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.bb) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.au, ptr %i.a, align 8, !tbaa !27
  store ptr %i.ay, ptr %i.n, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as ; 2 uses
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !33
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.bd = phi ptr [ %i.r, %bb.e ], [ %i.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.be = phi ptr [ %i.s, %bb.e ], [ %i.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %i.aj, %bb.e ], [ %i.ay, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ] ; 2 uses
  %i.bg = fadd float %i.ad, -1.000000e+00
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fcmp ugt float %i.bh, f0x358637BD
  br i1 %i.bi, label %.preheader.preheader, label %_ZSt4fillIPffEvT_S1_RKT0_.exit

.preheader.preheader:                             ; preds = %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit
  %i.bj = load <4 x float>, ptr %.068.i.ptr, align 4, !tbaa !9
  %i.bk = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = fdiv <4 x float> %i.bj, %i.bl
  store <4 x float> %i.bm, ptr %.068.i.ptr, align 4, !tbaa !9
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %.preheader.preheader, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit
  %i.bn = phi ptr [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.preheader.preheader ], [ %i.bd, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ]
  %i.bo = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.be, %.preheader.preheader ], [ %i.be, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 2 uses
  %i.bp = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.bf, %.preheader.preheader ], [ %i.bf, %_ZNSt6vectorIjSaIjEE12emplace_backIJRjEEES3_DpOT_.exit ] ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 24
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = icmp samesign ult i64 %indvar.next, %i.bw
  br i1 %i.bx, label %.lr.ph.i, label %._crit_edge, !llvm.loop !35
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene12WeightBuffer16updateStaticPoseEPKNS_13IVertexBufferE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.fr = freeze i64 %i.i
  %i.j = ashr i64 %.fr, 2
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 24) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #19, !noalias !39 ; 2 uses
  %i.p = icmp eq ptr %i.e, %i.f
  br i1 %i.p, label %_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, label %_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.loopexit

_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.loopexit: ; preds = %bb.b
  %i.q = add i64 %i.m, -24                        ; 2 uses
  %i.r = urem i64 %i.q, 24
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = add i64 %i.s, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.t, i1 false), !noalias !39
  br label %_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit

_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit: ; preds = %_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.loopexit, %bb.b
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !23
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N5scene12WeightBuffer14VertexGeometryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIA_N5scene12WeightBuffer14VertexGeometryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit, %_ZNKSt14default_deleteIA_N5scene12WeightBuffer14VertexGeometryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %.not11 = icmp eq ptr %i.x, %i.y
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit, %.lr.ph
  %i.z = phi ptr [ %i.ar, %.lr.ph ], [ %i.y, %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit ]
  %.010 = phi i64 [ %i.ap, %.lr.ph ], [ 0, %_ZNSt10unique_ptrIA_N5scene12WeightBuffer14VertexGeometryESt14default_deleteIS3_EED2Ev.exit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.010
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %i.ab)
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.010
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !29
  %i.ai = load ptr, ptr %1, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %i.ab)
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.010
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false), !tbaa.struct !29
  %i.ap = add nuw i64 %.010, 1                    ; 2 uses
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !27  ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !38
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene12WeightBuffer17resetToStaticPoseEPNS_13IVertexBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 112, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5scene12WeightBuffer17resetToStaticPoseEPNS_13IVertexBufferE) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not13 = icmp eq ptr %i.h, %i.i
  br i1 %.not13, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.j = icmp eq ptr %i.ac, %i.ab
  br i1 %i.j, label %._crit_edge.thread, label %bb.d

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.k = phi ptr [ %i.ac, %.lr.ph ], [ %i.i, %.preheader ]
  %.011 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.011
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28   ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.011
  %i.p = load ptr, ptr %1, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !29
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.011
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load ptr, ptr %1, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false), !tbaa.struct !29
  %i.aa = add nuw i64 %.011, 1                    ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !26  ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = icmp ult i64 %i.aa, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %1)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.c, %bb.d, %._crit_edge
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIjSaIjEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %i.k = icmp samesign ugt i64 %i.f, 4
  br i1 %i.k, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 4
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 4, !tbaa !28
  store i32 %i.m, ptr %i.i, align 4, !tbaa !28
  br label %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit

_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i:           ; preds = %bb.b, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.09) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIjSaIjEED2Ev.exit unwind label %bb.g

_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !27
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !26
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !33
  %.not.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.f, %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit, %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i ], [ true, %_ZNSt6vectorIjSaIjEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPjS1_EEEvEET_S9_RKS0_.exit ], [ true, %bb.f ]
  ret i1 %.0

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #16
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTSN5scene12WeightBuffer13VertexWeightsE", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN5scene12WeightBuffer13VertexWeightsESaIS2_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!14, !13, i64 0}
!17 = !{!"bool", !4, i64 0}
!18 = !{!"_ZTSSt22_Optional_payload_baseISt6vectorIjSaIjEEE", !4, i64 0, !17, i64 24}
!19 = !{!18, !17, i64 24}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!"p1 _ZTSN5scene12WeightBuffer14VertexGeometryE", !12, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 int", !12, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !24, i64 0}
!28 = !{!5, !5, i64 0}
!29 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9}
!30 = !{!"vtable pointer", !3, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!25, !24, i64 16}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, i1 true, !"_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!37 = distinct !{!37, !36, !"_ZSt11make_uniqueIA_N5scene12WeightBuffer14VertexGeometryEENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!38 = distinct !{!38, !32}
!39 = !{!37}
!40 = distinct !{!40, !32}
!41 = !{!24, !24, i64 0}
!42 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_0
