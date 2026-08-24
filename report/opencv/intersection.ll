Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/intersection?download=true
inline.NumInlined: 253
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"class.cv::Point_" = type { float, float }
%"class.cv::AutoBuffer" = type { ptr, i64, [100 x float] }
%"class.cv::AutoBuffer.1" = type { ptr, i64, [264 x i32] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.2" = type { i8 }
%"class.cv::RotatedRect" = type { %"class.cv::Point_", %"class.cv::Size_", float }
%"class.cv::Size_" = type { float, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl" }
%"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cv::Point_<float>, std::allocator<cv::Point_<float>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

@_ZZN2cv28rotatedRectangleIntersectionERKNS_11RotatedRectES2_RKNS_12_OutputArrayEE31__cv_trace_location_extra_fn316 = internal global ptr null, align 8
@_ZZN2cv28rotatedRectangleIntersectionERKNS_11RotatedRectES2_RKNS_12_OutputArrayEE25__cv_trace_location_fn316 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv28rotatedRectangleIntersectionERKNS_11RotatedRectES2_RKNS_12_OutputArrayEE31__cv_trace_location_extra_fn316, ptr @.str, ptr @.str.1, i32 316, i32 1 }, align 8
@.str = private unnamed_addr constant [92 x i8] c"int cv::rotatedRectangleIntersection(const RotatedRect &, const RotatedRect &, OutputArray)\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/opencv/opencv/modules/geometry/src/intersection.cpp\00", align 1
@_ZZN2cvL29_rotatedRectangleIntersectionERKNS_11RotatedRectES2_RSt6vectorINS_6Point_IfEESaIS5_EEE30__cv_trace_location_extra_fn60 = internal global ptr null, align 8
@_ZZN2cvL29_rotatedRectangleIntersectionERKNS_11RotatedRectES2_RSt6vectorINS_6Point_IfEESaIS5_EEE24__cv_trace_location_fn60 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cvL29_rotatedRectangleIntersectionERKNS_11RotatedRectES2_RSt6vectorINS_6Point_IfEESaIS5_EEE30__cv_trace_location_extra_fn60, ptr @.str.2, ptr @.str.1, i32 60, i32 1 }, align 8
@.str.2 = private unnamed_addr constant [104 x i8] c"int cv::_rotatedRectangleIntersection(const RotatedRect &, const RotatedRect &, std::vector<Point2f> &)\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"fabs(normL2Sqr<float>(intersection[minI] - intersection[minJ]) - minD) < 1e-6\00", align 1
@__func__._ZN2cvL29_rotatedRectangleIntersectionERKNS_11RotatedRectES2_RSt6vectorINS_6Point_IfEESaIS5_EE = private unnamed_addr constant [30 x i8] c"_rotatedRectangleIntersection\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN2cv28rotatedRectangleIntersectionERKNS_11RotatedRectES2_RKNS_12_OutputArrayE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %4 = alloca [4 x %"class.cv::Point_"], align 16 ; 6 uses
  %5 = alloca [4 x %"class.cv::Point_"], align 16 ; 6 uses
  %6 = alloca [4 x %"class.cv::Point_"], align 16 ; 21 uses
  %7 = alloca [4 x %"class.cv::Point_"], align 16 ; 20 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 12 uses
  %9 = alloca %"class.cv::AutoBuffer.1", align 8  ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.2", align 1 ; 3 uses
  %12 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %13 = alloca %"class.cv::RotatedRect", align 8  ; 9 uses
  %14 = alloca %"class.cv::RotatedRect", align 8  ; 9 uses
  %15 = alloca %"class.std::vector", align 8      ; 29 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv28rotatedRectangleIntersectionERKNS_11RotatedRectES2_RKNS_12_OutputArrayEE25__cv_trace_location_fn316)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !8
  %i.c = fcmp ole float %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4
  %i.f = fcmp ole float %i.e, 0.000000e+00
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !8
  %i.j = fcmp ole float %i.i, 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br i1 %i.n, label %bb.c, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cg unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.p = load <2 x float>, ptr %0, align 4, !tbaa !11
  %i.q = load <2 x float>, ptr %1, align 4, !tbaa !11
  %i.r = fadd <2 x float> %i.p, %i.q
  %i.s = fmul <2 x float> %i.r, splat (float 5.000000e-01) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !12
  %i.t = load <2 x float>, ptr %13, align 8, !tbaa !11
  %i.u = fsub <2 x float> %i.t, %i.s
  store <2 x float> %i.u, ptr %13, align 8, !tbaa !11
  %i.v = load <2 x float>, ptr %14, align 8, !tbaa !11
  %i.w = fsub <2 x float> %i.v, %i.s
  store <2 x float> %i.w, ptr %14, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 18 uses
  %i.z = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17
          to label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.bw ; 3 uses

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE11_M_allocateEm.exit.i
  store ptr %i.z, ptr %15, align 8, !tbaa !13
  store ptr %i.z, ptr %i.y, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL29_rotatedRectangleIntersectionERKNS_11RotatedRectES2_RSt6vectorINS_6Point_IfEESaIS5_EEE24__cv_trace_location_fn60)
          to label %.noexc42 unwind label %bb.bx

.noexc42:                                         ; preds = %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false), !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !11
  invoke void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %13, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %.noexc42
  invoke void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %14, ptr noundef nonnull %7)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !19
  %i.af = fmul float %i.ac, %i.ae                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !19
  %i.ak = fmul float %i.ah, %i.aj                 ; 2 uses
  %i.al = fcmp olt float %i.af, %i.ak
  %.sroa.speculated401.i = select i1 %i.al, float %i.ak, float %i.af
  %i.am = fmul float %.sroa.speculated401.i, f0x358637BD ; 10 uses
  %i.an = load <2 x float>, ptr %6, align 16, !tbaa !11 ; 3 uses
  %i.ao = load <2 x float>, ptr %7, align 16, !tbaa !11 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.an, %i.ao
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aq = call float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp ogt float %i.aq, %i.am
  br i1 %i.ar, label %.critedge300.i, label %bb.n

bb.g:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = load float, ptr %i.au, align 8, !tbaa !20
  %i.aw = fsub float %i.at, %i.av
  %i.ax = call float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, %i.am
  br i1 %i.ay, label %.critedge300.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !22
  %i.bd = fsub float %i.ba, %i.bc
  %i.be = call float @llvm.fabs.f32(float %i.bd)
  %i.bf = fcmp ogt float %i.be, %i.am
  br i1 %i.bf, label %.critedge300.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 16, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = load float, ptr %i.bi, align 16, !tbaa !20
  %i.bk = fsub float %i.bh, %i.bj
  %i.bl = call float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp ogt float %i.bl, %i.am
  br i1 %i.bm, label %.critedge300.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !22
  %i.br = fsub float %i.bo, %i.bq
  %i.bs = call float @llvm.fabs.f32(float %i.br)
  %i.bt = fcmp ogt float %i.bs, %i.am
  br i1 %i.bt, label %.critedge300.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !20
  %i.by = fsub float %i.bv, %i.bx
  %i.bz = call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ogt float %i.bz, %i.am
  br i1 %i.ca, label %.critedge300.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !22
  %i.cf = fsub float %i.cc, %i.ce
  %i.cg = call float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp ogt float %i.cg, %i.am
  br i1 %i.ch, label %.critedge300.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.l
  invoke void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 4)
          to label %.preheader433.preheader.i unwind label %bb.o

bb.m:                                             ; preds = %bb.e, %.noexc42
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.n:                                             ; preds = %bb.f
  %.phi.trans.insert549.i = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.pre550.i = load float, ptr %.phi.trans.insert549.i, align 4, !tbaa !22
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  %i.cj = fsub float %.pre.i, %.pre550.i
  %i.ck = call float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp ogt float %i.ck, %i.am
  br i1 %i.cl, label %.critedge300.i, label %bb.g

.preheader433.preheader.i:                        ; preds = %.critedge.i
  %i.cm = load ptr, ptr %15, align 8, !tbaa !13
  %i.cn = load i64, ptr %6, align 16
  store i64 %i.cn, ptr %i.cm, align 4
  %i.co = load ptr, ptr %15, align 8, !tbaa !13   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.as, align 8
  store i64 %i.cq, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load i64, ptr %i.bg, align 16
  store i64 %i.cs, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cu = load i64, ptr %i.bu, align 8
  store i64 %i.cu, ptr %i.ct, align 4
  br label %.loopexit434.i

bb.o:                                             ; preds = %.critedge.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.critedge300.i:                                   ; preds = %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.da = load float, ptr %i.cz, align 4, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !22
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dg = load float, ptr %i.df, align 4, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.dj = load float, ptr %i.di, align 4, !tbaa !22
  %i.dk = load <2 x float>, ptr %i.cw, align 8, !tbaa !11 ; 2 uses
  %i.dl = load <3 x float>, ptr %i.cy, align 16, !tbaa !20 ; 2 uses
  %i.dm = shufflevector <2 x float> %i.an, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.dn = shufflevector <3 x float> %i.dm, <3 x float> %i.dl, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.do = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.dr = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dt = fsub <4 x float> %i.dp, %i.ds           ; 5 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.dv = shufflevector <2 x float> %i.an, <2 x float> %i.dk, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.dw = insertelement <4 x float> %i.dv, float %i.dg, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.da, i64 3 ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.dz = fsub <4 x float> %i.dx, %i.dy           ; 5 uses
  %17 = shufflevector <4 x float> %i.dt, <4 x float> %i.dz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %17, ptr %4, align 16, !tbaa !11
  %18 = shufflevector <4 x float> %i.dt, <4 x float> %i.dz, <4 x i32> <i32 1, i32 5, i32 0, i32 4>
  store <4 x float> %18, ptr %i.de, align 16, !tbaa !11
  %i.ea = load <2 x float>, ptr %i.cx, align 8, !tbaa !11 ; 2 uses
  %i.eb = load <3 x float>, ptr %i.db, align 16, !tbaa !20 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.ao, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ed = shufflevector <3 x float> %i.ec, <3 x float> %i.eb, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ee = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.eh = shufflevector <3 x float> %i.eb, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ej = fsub <4 x float> %i.ef, %i.ei           ; 5 uses
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.el = shufflevector <2 x float> %i.ao, <2 x float> %i.ea, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float %i.dj, i64 1
  %i.en = insertelement <4 x float> %i.em, float %i.dd, i64 3 ; 2 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.ep = fsub <4 x float> %i.en, %i.eo           ; 5 uses
  %19 = shufflevector <4 x float> %i.ej, <4 x float> %i.ep, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %19, ptr %5, align 16, !tbaa !11
  %20 = shufflevector <4 x float> %i.ej, <4 x float> %i.ep, <4 x i32> <i32 1, i32 5, i32 0, i32 4>
  store <4 x float> %20, ptr %i.dh, align 16, !tbaa !11
  %i.eq = shufflevector <4 x float> %i.dz, <4 x float> %i.ep, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.er = fmul <4 x float> %i.eq, %i.eq
  %i.es = shufflevector <4 x float> %i.dt, <4 x float> %i.ej, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.es, <4 x float> %i.er) ; 4 uses
  %i.eu = extractelement <4 x float> %i.et, i64 0
  %sqrt411.i = call float @llvm.sqrt.f32(float %i.eu) ; 2 uses
  %i.ev = fcmp olt float %sqrt411.i, %i.am
  %.sroa.speculated397.i = select i1 %i.ev, float %sqrt411.i, float %i.am ; 2 uses
  %i.ew = extractelement <4 x float> %i.et, i64 1
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ew) ; 2 uses
  %i.ex = fcmp olt float %sqrt.i, %.sroa.speculated397.i
  %.sroa.speculated393.i = select i1 %i.ex, float %sqrt.i, float %.sroa.speculated397.i ; 2 uses
  %i.ey = extractelement <4 x float> %i.et, i64 2
  %sqrt411.1.i = call float @llvm.sqrt.f32(float %i.ey) ; 2 uses
  %i.ez = fcmp olt float %sqrt411.1.i, %.sroa.speculated393.i
  %.sroa.speculated397.1.i = select i1 %i.ez, float %sqrt411.1.i, float %.sroa.speculated393.i ; 2 uses
  %i.fa = extractelement <4 x float> %i.et, i64 3
  %sqrt.1.i = call float @llvm.sqrt.f32(float %i.fa) ; 2 uses
  %i.fb = fcmp olt float %sqrt.1.i, %.sroa.speculated397.1.i
  %.sroa.speculated393.1.i = select i1 %i.fb, float %sqrt.1.i, float %.sroa.speculated397.1.i ; 2 uses
  %i.fc = shufflevector <4 x float> %i.dz, <4 x float> %i.ep, <4 x i32> <i32 1, i32 5, i32 0, i32 4> ; 2 uses
  %i.fd = fmul <4 x float> %i.fc, %i.fc
  %i.fe = shufflevector <4 x float> %i.dt, <4 x float> %i.ej, <4 x i32> <i32 1, i32 5, i32 0, i32 4> ; 2 uses
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.fe, <4 x float> %i.fd) ; 4 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 0
  %sqrt411.2.i = call float @llvm.sqrt.f32(float %i.fg) ; 2 uses
  %i.fh = fcmp olt float %sqrt411.2.i, %.sroa.speculated393.1.i
  %.sroa.speculated397.2.i = select i1 %i.fh, float %sqrt411.2.i, float %.sroa.speculated393.1.i ; 2 uses
  %i.fi = extractelement <4 x float> %i.ff, i64 1
  %sqrt.2.i = call float @llvm.sqrt.f32(float %i.fi) ; 2 uses
  %i.fj = fcmp olt float %sqrt.2.i, %.sroa.speculated397.2.i
  %.sroa.speculated393.2.i = select i1 %i.fj, float %sqrt.2.i, float %.sroa.speculated397.2.i ; 2 uses
  %i.fk = extractelement <4 x float> %i.ff, i64 2
  %sqrt411.3.i = call float @llvm.sqrt.f32(float %i.fk) ; 2 uses
  %i.fl = fcmp olt float %sqrt411.3.i, %.sroa.speculated393.2.i
  %.sroa.speculated397.3.i = select i1 %i.fl, float %sqrt411.3.i, float %.sroa.speculated393.2.i ; 2 uses
  %i.fm = extractelement <4 x float> %i.ff, i64 3
  %sqrt.3.i = call float @llvm.sqrt.f32(float %i.fm) ; 2 uses
  %i.fn = fcmp olt float %sqrt.3.i, %.sroa.speculated397.3.i
  %.sroa.speculated393.3.i = select i1 %i.fn, float %sqrt.3.i, float %.sroa.speculated397.3.i ; 2 uses
  %i.fo = fcmp ogt float %.sroa.speculated393.3.i, 1.000000e-16
  %.sroa.speculated.i = select i1 %i.fo, float %.sroa.speculated393.3.i, float 1.000000e-16
  br label %.preheader426.i

.preheader426.i:                                  ; preds = %bb.q, %.critedge300.i
  %indvars.iv495.i = phi i64 [ 0, %.critedge300.i ], [ %indvars.iv.next496.i, %bb.q ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv495.i
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv495.i
  %i.fr = load <2 x float>, ptr %i.fq, align 8, !tbaa !11 ; 5 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = extractelement <2 x float> %i.fr, i64 1
  br label %bb.r

bb.p:                                             ; preds = %bb.q
  %i.fu = load ptr, ptr %15, align 8, !tbaa !23
  %i.fv = load ptr, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  %spec.select.i = select i1 %i.fw, i32 2, i32 1
  %21 = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  br label %bb.z

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i
  %indvars.iv.next496.i = add nuw nsw i64 %indvars.iv495.i, 1 ; 2 uses
  %exitcond498.not.i = icmp eq i64 %indvars.iv.next496.i, 4
  br i1 %exitcond498.not.i, label %bb.p, label %.preheader426.i, !llvm.loop !24

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i, %.preheader426.i
  %indvars.iv.i = phi i64 [ 0, %.preheader426.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i ] ; 3 uses
  %i.fx = load <2 x float>, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load <2 x float>, ptr %i.fy, align 8, !tbaa !11 ; 3 uses
  %i.gb = load float, ptr %i.fz, align 4, !tbaa !22
  %i.gc = fneg float %i.gb
  %i.gd = fmul float %i.fs, %i.gc
  %i.ge = extractelement <2 x float> %i.ga, i64 0
  %i.gf = call float @llvm.fmuladd.f32(float %i.ge, float %i.ft, float %i.gd) ; 2 uses
  %i.gg = call noundef float @llvm.fabs.f32(float %i.gf)
  %i.gh = fpext float %i.gg to double
  %i.gi = fcmp olt double %i.gh, f0x3D719799812DEA11
  br i1 %i.gi, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.gk = load <2 x float>, ptr %i.gj, align 8, !tbaa !11
  %i.gl = fsub <2 x float> %i.gk, %i.fx           ; 2 uses
  %i.gm = fdiv float 1.000000e+00, %i.gf
  %i.gn = extractelement <2 x float> %i.gl, i64 0
  %i.go = fneg float %i.gn
  %i.gp = shufflevector <2 x float> %i.fr, <2 x float> %i.ga, <2 x i32> <i32 3, i32 1>
  %i.gq = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gp, %i.gr
  %i.gt = shufflevector <2 x float> %i.ga, <2 x float> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.gu = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gu, <2 x float> %i.gs)
  %i.gw = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gx, %i.gv           ; 4 uses
  %i.gz = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gy)
  %i.ha = shufflevector <2 x float> %i.gy, <2 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hb = fcmp ord <4 x float> %i.ha, zeroinitializer
  %i.hc = fcmp une <4 x float> %i.ha, <float 0.000000e+00, float 0.000000e+00, float +inf, float +inf>
  %i.hd = shufflevector <4 x i1> %i.hb, <4 x i1> %i.hc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.he = freeze <4 x i1> %i.hd
  %i.hf = bitcast <4 x i1> %i.he to i4
  %i.hg = icmp eq i4 %i.hf, -1
  br i1 %i.hg, label %bb.t, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.hh = shufflevector <2 x float> %i.gy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.hi = fcmp ole <4 x float> %i.hh, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hj = fcmp oge <4 x float> %i.hh, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hk = shufflevector <4 x i1> %i.hi, <4 x i1> %i.hj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hl = freeze <4 x i1> %i.hk
  %i.hm = bitcast <4 x i1> %i.hl to i4
  %i.hn = icmp eq i4 %i.hm, -1
  br i1 %i.hn, label %bb.u, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ho = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.ho, <2 x float> %i.fx) ; 2 uses
  %i.hq = load ptr, ptr %i.y, align 8, !tbaa !17  ; 5 uses
  %i.hr = load ptr, ptr %i.x, align 8, !tbaa !18
  %.not.i.i.i = icmp eq ptr %i.hq, %i.hr
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store <2 x float> %i.hp, ptr %i.hq, align 4
  %i.hs = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.ht, ptr %i.y, align 8, !tbaa !17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.hu = load ptr, ptr %15, align 8, !tbaa !13   ; 7 uses
  %i.hv = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775800
  br i1 %i.hy, label %bb.x, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc.i unwind label %.loopexit.split-lp428.i

.noexc.i:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.w
  %i.hz = ashr exact i64 %i.hx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 1152921504606846975)
  %i.id = select i1 %i.ib, i64 1152921504606846975, i64 %i.ic ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #17
          to label %.noexc335.i unwind label %.loopexit427.i ; 8 uses

.noexc335.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx
  store <2 x float> %i.hp, ptr %i.ig, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.hu, %i.hq
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc335.i
  %i.ih = ptrtoaddr ptr %i.if to i64
  %i.ii = add i64 %i.hv, -8
  %i.ij = sub i64 %i.ii, %i.hw                    ; 2 uses
  %i.ik = lshr i64 %i.ij, 3
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ij, 24
  %i.im = sub i64 %i.hw, %i.ih
  %diff.check = icmp ugt i64 %i.im, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader203, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.il, 4611686018427387900     ; 3 uses
  %i.in = shl i64 %n.vec, 3                       ; 2 uses
  %i.io = getelementptr i8, ptr %i.if, i64 %i.in  ; 2 uses
  %i.ip = getelementptr i8, ptr %i.hu, i64 %i.in
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.if, i64 %i.iq ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.hu, i64 %i.iq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.ir = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep125, align 4, !alias.scope !29, !noalias !26
  %wide.load126 = load <2 x i64>, ptr %i.ir, align 4, !alias.scope !29, !noalias !26
  %i.is = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !26, !noalias !29
  store <2 x i64> %wide.load126, ptr %i.is, align 4, !alias.scope !26, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.il, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader203

.lr.ph.i.i.i.i.i.i.i.preheader203:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.io, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ip, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader203, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader203 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader203 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.iu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !29, !noalias !26
  store i64 %i.iu, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !26, !noalias !29
  %i.iv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.iv, %i.hq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !34

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc335.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.if, %.noexc335.i ], [ %i.io, %middle.block ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hx) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.if, ptr %15, align 8, !tbaa !13
  store ptr %i.ix, ptr %i.y, align 8, !tbaa !17
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id
  store ptr %i.iy, ptr %i.x, align 8, !tbaa !18
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i

.loopexit427.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit429.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp428.i:                          ; preds = %bb.x
  %lpad.loopexit.split-lp430.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.v, %bb.t, %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.q, label %bb.r, !llvm.loop !35

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i, %bb.p
  %i.iz = phi ptr [ %i.fv, %bb.p ], [ %i.lh, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i ] ; 6 uses
  %indvars.iv503.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next504.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv503.i ; 4 uses
  %.val304.i = load float, ptr %i.ja, align 8, !tbaa !20
  %i.jb = getelementptr i8, ptr %i.ja, i64 4
  %.val305.i = load float, ptr %i.jb, align 4, !tbaa !22
  %i.jc = load <8 x float>, ptr %7, align 16, !tbaa !11 ; 2 uses
  %22 = insertelement <4 x float> poison, float %.val304.i, i64 0
  %23 = shufflevector <8 x float> %i.jc, <8 x float> poison, <4 x i32> <i32 4, i32 2, i32 6, i32 0>
  %i.jd = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fsub <4 x float> %23, %i.jd
  %i.jf = fmul <4 x float> %21, %i.je
  %i.jg = shufflevector <8 x float> %i.jc, <8 x float> poison, <4 x i32> <i32 5, i32 3, i32 7, i32 1>
  %i.jh = insertelement <4 x float> poison, float %.val305.i, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = fsub <4 x float> %i.jg, %i.ji
  %i.jk = fmul <4 x float> %i.ek, %i.jj
  %i.jl = fcmp oge <4 x float> %i.jf, %i.jk       ; 5 uses
  %i.jm = extractelement <4 x i1> %i.jl, i64 3
  %i.jn = zext i1 %i.jm to i32
  %i.jo = extractelement <4 x i1> %i.jl, i64 1
  %i.jp = zext i1 %i.jo to i32
  %.1239.1.i = add nuw nsw i32 %i.jp, %i.jn
  %i.jq = extractelement <4 x i1> %i.jl, i64 0
  %i.jr = zext i1 %i.jq to i32
  %.1239.2.i = add nuw nsw i32 %.1239.1.i, %i.jr
  %i.js = extractelement <4 x i1> %i.jl, i64 2
  %i.jt = zext i1 %i.js to i32
  %.1239.3.i = add nuw nsw i32 %.1239.2.i, %i.jt
  %i.ju = icmp eq i32 %.1239.3.i, 4
  %i.jv = bitcast <4 x i1> %i.jl to i4
  %i.jw = icmp eq i4 %i.jv, 0
  %or.cond7.i = select i1 %i.ju, i1 true, i1 %i.jw
  br i1 %or.cond7.i, label %bb.aa, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.jx = load ptr, ptr %i.x, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.iz, %i.jx
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jy = load i64, ptr %i.ja, align 8
  store i64 %i.jy, ptr %i.iz, align 4
  %i.jz = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  store ptr %i.ka, ptr %i.y, align 8, !tbaa !17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.kb = load ptr, ptr %15, align 8, !tbaa !13   ; 7 uses
  %i.kc = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64               ; 3 uses
  %i.ke = sub i64 %i.kc, %i.kd                    ; 4 uses
  %i.kf = icmp eq i64 %i.ke, 9223372036854775800
  br i1 %i.kf, label %bb.ad, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc336.i unwind label %.loopexit.split-lp422.i

.noexc336.i:                                      ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.kg = ashr exact i64 %i.ke, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kg, i64 1)
  %i.kh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kg ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.kg
  %i.kj = call i64 @llvm.umin.i64(i64 %i.kh, i64 1152921504606846975)
  %i.kk = select i1 %i.ki, i64 1152921504606846975, i64 %i.kj ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.kk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kl) #17
          to label %.noexc337.i unwind label %.loopexit421.i ; 8 uses

.noexc337.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ke
  %i.ko = load i64, ptr %i.ja, align 8
  store i64 %i.ko, ptr %i.kn, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kb, %i.iz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc337.i
  %i.kp = ptrtoaddr ptr %i.km to i64
  %i.kq = add i64 %i.kc, -8
  %i.kr = sub i64 %i.kq, %i.kd                    ; 2 uses
  %i.ks = lshr i64 %i.kr, 3
  %i.kt = add nuw nsw i64 %i.ks, 1                ; 2 uses
  %min.iters.check131 = icmp ult i64 %i.kr, 24
  %i.ku = sub i64 %i.kd, %i.kp
  %diff.check129 = icmp ugt i64 %i.ku, -32
  %or.cond192 = or i1 %min.iters.check131, %diff.check129
  br i1 %or.cond192, label %.lr.ph.i.i.i.i.i.i.preheader200, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec133 = and i64 %i.kt, 4611686018427387900  ; 3 uses
  %i.kv = shl i64 %n.vec133, 3                    ; 2 uses
  %i.kw = getelementptr i8, ptr %i.km, i64 %i.kv  ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kb, i64 %i.kv
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next140, %vector.body134 ] ; 2 uses
  %i.ky = shl i64 %index135, 3                    ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.km, i64 %i.ky ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.kb, i64 %i.ky ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.kz = getelementptr i8, ptr %next.gep137, i64 16
  %wide.load138 = load <2 x i64>, ptr %next.gep137, align 4, !alias.scope !39, !noalias !36
  %wide.load139 = load <2 x i64>, ptr %i.kz, align 4, !alias.scope !39, !noalias !36
  %i.la = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x i64> %wide.load138, ptr %next.gep136, align 4, !alias.scope !36, !noalias !39
  store <2 x i64> %wide.load139, ptr %i.la, align 4, !alias.scope !36, !noalias !39
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.lb, label %middle.block141, label %vector.body134, !llvm.loop !41

middle.block141:                                  ; preds = %vector.body134
  %cmp.n142 = icmp eq i64 %i.kt, %n.vec133
  br i1 %cmp.n142, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader200

.lr.ph.i.i.i.i.i.i.preheader200:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block141
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kw, %middle.block141 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kx, %middle.block141 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader200, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader200 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader200 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.lc = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !39, !noalias !36
  store i64 %i.lc, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !36, !noalias !39
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ld, %i.iz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block141, %.noexc337.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.km, %.noexc337.i ], [ %i.kw, %middle.block141 ], [ %i.le, %.lr.ph.i.i.i.i.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.ke) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.km, ptr %15, align 8, !tbaa !13
  store ptr %i.lf, ptr %i.y, align 8, !tbaa !17
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kk
  store ptr %i.lg, ptr %i.x, align 8, !tbaa !18
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i

.loopexit421.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit423.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp422.i:                          ; preds = %bb.ad
  %lpad.loopexit.split-lp424.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ab, %bb.z
  %i.lh = phi ptr [ %i.lf, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ka, %bb.ab ], [ %i.iz, %bb.z ] ; 2 uses
  %indvars.iv.next504.i = add nuw nsw i64 %indvars.iv503.i, 1 ; 2 uses
  %exitcond506.not.i = icmp eq i64 %indvars.iv.next504.i, 4
  br i1 %exitcond506.not.i, label %.preheader419.i.preheader, label %bb.z, !llvm.loop !43

.preheader419.i.preheader:                        ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit.i
  %24 = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  br label %.preheader419.i

bb.af:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i
  %i.li = load ptr, ptr %15, align 8, !tbaa !13
  %i.lj = ptrtoint ptr %i.nx to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = ashr exact i64 %i.ll, 3                 ; 4 uses
  %i.ln = trunc i64 %i.lm to i32                  ; 5 uses
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %.loopexit434.i, label %bb.al

.preheader419.i:                                  ; preds = %.preheader419.i.preheader, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i
  %i.lp = phi ptr [ %i.nx, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i ], [ %i.lh, %.preheader419.i.preheader ] ; 6 uses
  %indvars.iv511.i = phi i64 [ %indvars.iv.next512.i, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i ], [ 0, %.preheader419.i.preheader ] ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv511.i ; 4 uses
  %.val310.i = load float, ptr %i.lq, align 8, !tbaa !20
  %i.lr = getelementptr i8, ptr %i.lq, i64 4
  %.val311.i = load float, ptr %i.lr, align 4, !tbaa !22
  %i.ls = load <8 x float>, ptr %6, align 16, !tbaa !11 ; 2 uses
  %25 = insertelement <4 x float> poison, float %.val310.i, i64 0
  %26 = shufflevector <8 x float> %i.ls, <8 x float> poison, <4 x i32> <i32 4, i32 2, i32 6, i32 0>
  %i.lt = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = fsub <4 x float> %26, %i.lt
  %i.lv = fmul <4 x float> %24, %i.lu
  %i.lw = shufflevector <8 x float> %i.ls, <8 x float> poison, <4 x i32> <i32 5, i32 3, i32 7, i32 1>
  %i.lx = insertelement <4 x float> poison, float %.val311.i, i64 0
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lz = fsub <4 x float> %i.lw, %i.ly
  %i.ma = fmul <4 x float> %i.du, %i.lz
  %i.mb = fcmp oge <4 x float> %i.lv, %i.ma       ; 5 uses
  %i.mc = extractelement <4 x i1> %i.mb, i64 3
  %i.md = zext i1 %i.mc to i32
  %i.me = extractelement <4 x i1> %i.mb, i64 1
  %i.mf = zext i1 %i.me to i32
  %.1233.1.i = add nuw nsw i32 %i.mf, %i.md
  %i.mg = extractelement <4 x i1> %i.mb, i64 0
  %i.mh = zext i1 %i.mg to i32
  %.1233.2.i = add nuw nsw i32 %.1233.1.i, %i.mh
  %i.mi = extractelement <4 x i1> %i.mb, i64 2
  %i.mj = zext i1 %i.mi to i32
  %.1233.3.i = add nuw nsw i32 %.1233.2.i, %i.mj
  %i.mk = icmp eq i32 %.1233.3.i, 4
  %i.ml = bitcast <4 x i1> %i.mb to i4
  %i.mm = icmp eq i4 %i.ml, 0
  %or.cond9.i = select i1 %i.mk, i1 true, i1 %i.mm
  br i1 %or.cond9.i, label %bb.ag, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i

bb.ag:                                            ; preds = %.preheader419.i
  %i.mn = load ptr, ptr %i.x, align 8, !tbaa !18
  %.not.i338.i = icmp eq ptr %i.lp, %i.mn
  br i1 %.not.i338.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mo = load i64, ptr %i.lq, align 8
  store i64 %i.mo, ptr %i.lp, align 4
  %i.mp = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  store ptr %i.mq, ptr %i.y, align 8, !tbaa !17
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i

bb.ai:                                            ; preds = %bb.ag
  %i.mr = load ptr, ptr %15, align 8, !tbaa !13   ; 7 uses
  %i.ms = ptrtoint ptr %i.lp to i64               ; 2 uses
  %i.mt = ptrtoint ptr %i.mr to i64               ; 3 uses
  %i.mu = sub i64 %i.ms, %i.mt                    ; 4 uses
  %i.mv = icmp eq i64 %i.mu, 9223372036854775800
  br i1 %i.mv, label %bb.aj, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i339.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
          to label %.noexc351.i unwind label %.loopexit.split-lp.i

.noexc351.i:                                      ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i339.i: ; preds = %bb.ai
  %i.mw = ashr exact i64 %i.mu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i340.i = call i64 @llvm.umax.i64(i64 %i.mw, i64 1)
  %i.mx = add nsw i64 %.sroa.speculated.i.i.i340.i, %i.mw ; 2 uses
  %i.my = icmp ult i64 %i.mx, %i.mw
  %i.mz = call i64 @llvm.umin.i64(i64 %i.mx, i64 1152921504606846975)
  %i.na = select i1 %i.my, i64 1152921504606846975, i64 %i.mz ; 3 uses
  %.not.i.i.i341.i = icmp ne i64 %i.na, 0
  call void @llvm.assume(i1 %.not.i.i.i341.i)
  %i.nb = shl nuw nsw i64 %i.na, 3
  %i.nc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nb) #17
          to label %.noexc352.i unwind label %.loopexit420.i ; 8 uses

.noexc352.i:                                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i339.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mu
  %i.ne = load i64, ptr %i.lq, align 8
  store i64 %i.ne, ptr %i.nd, align 4
  %.not10.i.i.i.i.i342.i = icmp eq ptr %i.mr, %i.lp
  br i1 %.not10.i.i.i.i.i342.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i347.i, label %.lr.ph.i.i.i.i.i343.i.preheader

.lr.ph.i.i.i.i.i343.i.preheader:                  ; preds = %.noexc352.i
  %i.nf = ptrtoaddr ptr %i.nc to i64
  %i.ng = add i64 %i.ms, -8
  %i.nh = sub i64 %i.ng, %i.mt                    ; 2 uses
  %i.ni = lshr i64 %i.nh, 3
  %i.nj = add nuw nsw i64 %i.ni, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.nh, 24
  %i.nk = sub i64 %i.mt, %i.nf
  %diff.check146 = icmp ugt i64 %i.nk, -32
  %or.cond193 = or i1 %min.iters.check148, %diff.check146
  br i1 %or.cond193, label %.lr.ph.i.i.i.i.i343.i.preheader198, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.i.i.i.i.i343.i.preheader
  %n.vec150 = and i64 %i.nj, 4611686018427387900  ; 3 uses
  %i.nl = shl i64 %n.vec150, 3                    ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nc, i64 %i.nl  ; 2 uses
  %i.nn = getelementptr i8, ptr %i.mr, i64 %i.nl
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 2 uses
  %i.no = shl i64 %index152, 3                    ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.nc, i64 %i.no ; 2 uses
  %next.gep154 = getelementptr i8, ptr %i.mr, i64 %i.no ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.np = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load155 = load <2 x i64>, ptr %next.gep154, align 4, !alias.scope !47, !noalias !44
  %wide.load156 = load <2 x i64>, ptr %i.np, align 4, !alias.scope !47, !noalias !44
  %i.nq = getelementptr i8, ptr %next.gep153, i64 16
  store <2 x i64> %wide.load155, ptr %next.gep153, align 4, !alias.scope !44, !noalias !47
  store <2 x i64> %wide.load156, ptr %i.nq, align 4, !alias.scope !44, !noalias !47
  %index.next157 = add nuw i64 %index152, 4       ; 2 uses
  %i.nr = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.nr, label %middle.block158, label %vector.body151, !llvm.loop !49

middle.block158:                                  ; preds = %vector.body151
  %cmp.n159 = icmp eq i64 %i.nj, %n.vec150
  br i1 %cmp.n159, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i347.i, label %.lr.ph.i.i.i.i.i343.i.preheader198

.lr.ph.i.i.i.i.i343.i.preheader198:               ; preds = %.lr.ph.i.i.i.i.i343.i.preheader, %middle.block158
  %.012.i.i.i.i.i344.i.ph = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i343.i.preheader ], [ %i.nm, %middle.block158 ]
  %.0911.i.i.i.i.i345.i.ph = phi ptr [ %i.mr, %.lr.ph.i.i.i.i.i343.i.preheader ], [ %i.nn, %middle.block158 ]
  br label %.lr.ph.i.i.i.i.i343.i

.lr.ph.i.i.i.i.i343.i:                            ; preds = %.lr.ph.i.i.i.i.i343.i.preheader198, %.lr.ph.i.i.i.i.i343.i
  %.012.i.i.i.i.i344.i = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i343.i ], [ %.012.i.i.i.i.i344.i.ph, %.lr.ph.i.i.i.i.i343.i.preheader198 ] ; 2 uses
  %.0911.i.i.i.i.i345.i = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i343.i ], [ %.0911.i.i.i.i.i345.i.ph, %.lr.ph.i.i.i.i.i343.i.preheader198 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ns = load i64, ptr %.0911.i.i.i.i.i345.i, align 4, !alias.scope !47, !noalias !44
  store i64 %i.ns, ptr %.012.i.i.i.i.i344.i, align 4, !alias.scope !44, !noalias !47
  %i.nt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i345.i, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i344.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i346.i = icmp eq ptr %i.nt, %i.lp
  br i1 %.not.i.i.i.i.i346.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i347.i, label %.lr.ph.i.i.i.i.i343.i, !llvm.loop !50

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i347.i: ; preds = %.lr.ph.i.i.i.i.i343.i, %middle.block158, %.noexc352.i
  %.0.lcssa.i.i.i.i.i348.i = phi ptr [ %i.nc, %.noexc352.i ], [ %i.nm, %middle.block158 ], [ %i.nu, %.lr.ph.i.i.i.i.i343.i ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i348.i, i64 8 ; 2 uses
  %.not.i23.i.i349.i = icmp eq ptr %i.mr, null
  br i1 %.not.i23.i.i349.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i350.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i347.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mu) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i350.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i350.i: ; preds = %bb.ak, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i347.i
  store ptr %i.nc, ptr %15, align 8, !tbaa !13
  store ptr %i.nv, ptr %i.y, align 8, !tbaa !17
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.na
  store ptr %i.nw, ptr %i.x, align 8, !tbaa !18
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i

.loopexit420.i:                                   ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i339.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp.i:                             ; preds = %bb.aj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit353.i: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i350.i, %bb.ah, %.preheader419.i
  %i.nx = phi ptr [ %i.nv, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i350.i ], [ %i.mq, %bb.ah ], [ %i.lp, %.preheader419.i ] ; 2 uses
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %exitcond514.not.i = icmp eq i64 %indvars.iv.next512.i, 4
  br i1 %exitcond514.not.i, label %bb.af, label %.preheader419.i, !llvm.loop !51

bb.al:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ny = mul i64 %i.lm, %i.lm
  %i.nz = and i64 %i.ny, 4294967293               ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.oa, ptr %8, align 8, !tbaa !52
  %i.ob = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i354.i = icmp samesign ugt i64 %i.nz, 100
  store i64 %i.nz, ptr %i.ob, align 8, !tbaa !56
  br i1 %.not.i.i354.i, label %bb.am, label %_ZN2cv10AutoBufferIfLm100EEC2Em.exit.i

bb.am:                                            ; preds = %bb.al
  %i.oc = shl nuw nsw i64 %i.nz, 2
  %i.od = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oc) #17
          to label %.noexc355.i unwind label %bb.ao

.noexc355.i:                                      ; preds = %bb.am
  store ptr %i.od, ptr %8, align 8, !tbaa !52
  br label %_ZN2cv10AutoBufferIfLm100EEC2Em.exit.i

_ZN2cv10AutoBufferIfLm100EEC2Em.exit.i:           ; preds = %.noexc355.i, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %sext.i = shl i64 %i.ll, 29                     ; 2 uses
  %i.oe = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.of, ptr %9, align 8, !tbaa !57
  %i.og = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i356.i = icmp ugt i64 %i.oe, 264
  store i64 %i.oe, ptr %i.og, align 8, !tbaa !60
  br i1 %.not.i.i356.i, label %bb.an, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

bb.an:                                            ; preds = %_ZN2cv10AutoBufferIfLm100EEC2Em.exit.i
  %i.oh = icmp ugt i64 %i.oe, 4611686018427387903
  %i.oi = ashr exact i64 %sext.i, 30
  %i.oj = select i1 %i.oh, i64 -1, i64 %i.oi
  %i.ok = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oj) #17
          to label %.noexc357.i unwind label %bb.ap

.noexc357.i:                                      ; preds = %bb.an
  store ptr %i.ok, ptr %9, align 8, !tbaa !57
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIiLm264EEC2Em.exit.i:           ; preds = %.noexc357.i, %_ZN2cv10AutoBufferIfLm100EEC2Em.exit.i
  %i.ol = icmp sgt i32 %i.ln, 0
  br i1 %i.ol, label %.lr.ph458.i, label %.preheader.._crit_edge486_crit_edge.i
end_hunk_0
