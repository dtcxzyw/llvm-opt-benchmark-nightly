Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gnnparsers?download=true
inline.NumInlined: 627
inline.NumDeleted: 282
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::nothrow_t" = type { i8 }
%"class.cv::gapi::nn::SSDParser" = type { %"struct.cv::MatShape", i32, i32, ptr, %"class.cv::Rect_", %"class.cv::Size_" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"class.cv::Rect_" = type { i32, i32, i32, i32 }
%"class.cv::Size_" = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.20" = type { i8 }
%"struct.cv::gapi::nn::Detection" = type { %"class.cv::Rect_", float, i32 }

$_ZN2cv4gapi2nn9SSDParserC2ERKNS_8MatShapeERKNS_5Size_IiEEPKf = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN2cv4gapi2nn9DetectionESt6vectorIS5_SaIS5_EEEES6_lET_SB_SB_SB_T1_SC_T0_SC_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"num_classes > 0\00", align 1
@__func__._ZN2cv9parseYoloERKNS_3MatERKNS_5Size_IiEEffRKSt6vectorIfSaIfEERS7_INS_5Rect_IiEESaISD_EERS7_IiSaIiEE = private unnamed_addr constant [10 x i8] c"parseYolo\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/opt-bench/work/opencv/opencv_contrib/modules/gapi/src/backends/cpu/gnnparsers.cpp\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"0 < nms_threshold && nms_threshold <= 1\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"in_ssd_dims.dims == 4\00", align 1
@__func__._ZN2cv4gapi2nn9SSDParserC2ERKNS_8MatShapeERKNS_5Size_IiEEPKf = private unnamed_addr constant [10 x i8] c"SSDParser\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"m_objSize == 7\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"d >= 2\00", align 1
@__func__._ZN2cvL13checkYoloDimsERKNS_8MatShapeE = private unnamed_addr constant [14 x i8] c"checkYoloDims\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dims[d-1]%5 == 0\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"dims[d-3] == 13\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"dims[i] == 1\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"dims[d-1]%(5*13*13) == 0\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"idx < (size_t)(dims > 0 ? dims : 1)\00", align 1
@__func__._ZNK2cv8MatShapeixEm = private unnamed_addr constant [11 x i8] c"operator[]\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"/opt-bench/work/opencv/opencv/modules/core/include/opencv2/core/mat.inl.hpp\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ParseSSDERKNS_3MatERKNS_5Size_IiEEfibbRSt6vectorINS_5Rect_IiEESaIS9_EERS7_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::gapi::nn::SSDParser", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  call void @_ZN2cv4gapi2nn9SSDParserC2ERKNS_8MatShapeERKNS_5Size_IiEEPKf(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 4 dereferenceable(52) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %i.c)
  %i.d = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.g = load ptr, ptr %7, align 8, !tbaa !32     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i18, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit
  store ptr %i.g, ptr %i.h, align 8, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE5clearEv.exit ], [ %i.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.not47 = icmp eq i32 %i.l, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.not = icmp eq i32 %3, -1
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 72
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.t = phi ptr [ %i.j, %.lr.ph ], [ %i.ew, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 3 uses
  %.044 = phi i64 [ 0, %.lr.ph ], [ %i.ex, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !39, !noalias !68
  %i.v = load i32, ptr %i.o, align 8, !tbaa !40, !noalias !68
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %.044, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.x ; 5 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !42, !noalias !68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !42, !noalias !68
  %i.ac = fptosi float %i.ab to i32               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !42, !noalias !68
  %i.ag = load <2 x float>, ptr %i.ae, align 4, !tbaa !42, !noalias !68
  %i.ah = load <2 x i32>, ptr %i.p, align 8, !tbaa !43, !noalias !68
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>   ; 2 uses
  %i.aj = fmul <2 x float> %i.af, %i.ai
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>   ; 3 uses
  %i.al = fmul <2 x float> %i.ag, %i.ai
  %i.am = fptosi <2 x float> %i.al to <2 x i32>
  %i.an = sub nsw <2 x i32> %i.am, %i.ak          ; 2 uses
  %i.ao = fcmp olt float %i.z, 0.000000e+00
  br i1 %i.ao, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !42, !noalias !68
  %i.ar = fcmp uge float %i.aq, %2
  %.not16 = icmp eq i32 %3, %i.ac
  %or.cond = select i1 %.not, i1 true, i1 %.not16
  %or.cond46 = select i1 %i.ar, i1 %or.cond, i1 false
  br i1 %or.cond46, label %bb.d, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.as = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  %i.at = extractelement <2 x i32> %i.ak, i64 1   ; 2 uses
  br i1 %4, label %bb.e, label %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit

bb.e:                                             ; preds = %bb.d
  %i.au = shufflevector <2 x i32> %i.an, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = sitofp <2 x i32> %i.au to <2 x double>  ; 3 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1
  %i.ax = fmul nnan double %i.aw, 6.700000e-02
  %i.ay = fptosi double %i.ax to i32
  %i.az = sub nsw i32 %i.as, %i.ay                ; 2 uses
  %i.ba = extractelement <2 x double> %i.av, i64 0
  %i.bb = fmul nnan double %i.ba, 2.800000e-02
  %i.bc = fptosi double %i.bb to i32
  %i.bd = sub nsw i32 %i.at, %i.bc                ; 2 uses
  %i.be = fmul nnan <2 x double> %i.av, <double 1.300000e-01, double 1.500000e-01>
  %i.bf = fptosi <2 x double> %i.be to <2 x i32>
  %i.bg = add nsw <2 x i32> %i.au, %i.bf          ; 4 uses
  %i.bh = extractelement <2 x i32> %i.bg, i64 0   ; 3 uses
  %i.bi = extractelement <2 x i32> %i.bg, i64 1   ; 3 uses
  %i.bj = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = sub nsw i32 %i.bh, %i.bi
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = sub nsw i32 %i.az, %i.bl
  %i.bn = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit

bb.g:                                             ; preds = %bb.e
  %i.bo = sub nsw i32 %i.bi, %i.bh
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = sub nsw i32 %i.bd, %i.bp
  %i.br = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit

_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.0.0 = phi i32 [ %i.as, %bb.d ], [ %i.bm, %bb.f ], [ %i.az, %bb.g ] ; 3 uses
  %.sroa.8.0 = phi i32 [ %i.at, %bb.d ], [ %i.bd, %bb.f ], [ %i.bq, %bb.g ] ; 6 uses
  %i.bs = phi <2 x i32> [ %i.an, %bb.d ], [ %i.bn, %bb.f ], [ %i.br, %bb.g ] ; 7 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !43 ; 3 uses
  %i.bt = icmp slt <2 x i32> %i.bs, splat (i32 1) ; 2 uses
  %9 = extractelement <2 x i1> %i.bt, i64 0
  %10 = extractelement <2 x i1> %i.bt, i64 1
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !43 ; 2 uses
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32 ; 4 uses
  %i.bu = icmp slt i32 %.sroa.5.8.extract.trunc, 1
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32 ; 4 uses
  %i.bv = icmp slt i32 %.sroa.5.12.extract.trunc, 1
  %i.bw = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %i.bw, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 3 uses
  %i.bx = icmp slt i32 %.sroa.0.0, %.sroa.0.0.extract.trunc ; 3 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32 ; 5 uses
  %i.by = icmp slt i32 %.sroa.8.0, %.sroa.0.4.extract.trunc ; 2 uses
  %i.bz = call i32 @llvm.smin.i32(i32 %.sroa.0.0, i32 %.sroa.0.0.extract.trunc) ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = call i32 @llvm.smax.i32(i32 %.sroa.0.0, i32 %.sroa.0.0.extract.trunc) ; 3 uses
  br i1 %i.ca, label %.cont38.i, label %bb.j

.cont38.i:                                        ; preds = %bb.i
  %i.cc = extractelement <2 x i32> %i.bs, i64 0
  %spec.select.i = select i1 %i.bx, i32 %i.cc, i32 %.sroa.5.8.extract.trunc
  %i.cd = add nsw i32 %spec.select.i, %i.bz
  %i.ce = icmp slt i32 %i.cd, %i.cb
  br i1 %i.ce, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %bb.j

bb.j:                                             ; preds = %.cont38.i, %bb.i
  br i1 %i.by, label %.cont55.thread.i, label %.cont29.i

.cont55.thread.i:                                 ; preds = %bb.j
  %i.cf = icmp slt i32 %.sroa.8.0, 0
  %i.cg = extractelement <2 x i32> %i.bs, i64 1   ; 2 uses
  br i1 %i.cf, label %.then53.i, label %._crit_edge.i.cont.i

.cont29.i:                                        ; preds = %bb.j
  %i.ch = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ch, label %bb.k, label %._crit_edge.i.cont.i

._crit_edge.i.cont.i:                             ; preds = %.cont29.i, %.cont55.thread.i
  %i.ci = phi i32 [ %.sroa.0.4.extract.trunc, %.cont29.i ], [ %.sroa.8.0, %.cont55.thread.i ]
  %i.cj = phi i32 [ %.sroa.5.12.extract.trunc, %.cont29.i ], [ %i.cg, %.cont55.thread.i ]
  %.pre59.i.i = phi i32 [ %.sroa.8.0, %.cont29.i ], [ %.sroa.0.4.extract.trunc, %.cont55.thread.i ]
  %.pre60.i.i = add nuw i32 %i.cj, %i.ci
  br label %.cont35.i

bb.k:                                             ; preds = %.cont29.i
  %i.ck = add nsw i32 %.sroa.5.12.extract.trunc, %.sroa.0.4.extract.trunc
  br label %.cont52.i

.then53.i:                                        ; preds = %.cont55.thread.i
  %i.cl = add nsw i32 %i.cg, %.sroa.8.0
  br label %.cont52.i

.cont52.i:                                        ; preds = %.then53.i, %bb.k
  %i.cm = phi i32 [ %i.cl, %.then53.i ], [ %i.ck, %bb.k ] ; 2 uses
  %i.cn = phi i32 [ %.sroa.0.4.extract.trunc, %.then53.i ], [ %.sroa.8.0, %bb.k ] ; 2 uses
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit, label %.cont35.i

.cont35.i:                                        ; preds = %.cont52.i, %._crit_edge.i.cont.i
  %.neg49.pre-phi.i.i = phi i32 [ %.pre60.i.i, %._crit_edge.i.cont.i ], [ %i.cm, %.cont52.i ]
  %i.cp = phi i32 [ %.pre59.i.i, %._crit_edge.i.cont.i ], [ %i.cn, %.cont52.i ] ; 2 uses
  %i.cq = extractelement <2 x i32> %i.bs, i64 0   ; 2 uses
  %.v.v.i = select i1 %i.bx, i32 %i.cq, i32 %.sroa.5.8.extract.trunc
  %.v.i = sub i32 %i.bz, %i.cb
  %i.cr = add i32 %.v.i, %.v.v.i
  %i.cs = select i1 %i.bx, i32 %.sroa.5.8.extract.trunc, i32 %i.cq
  %.sroa.speculated53.i.i = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.cr) ; 2 uses
  %i.ct = sub i32 %.neg49.pre-phi.i.i, %i.cp
  %i.cu = extractelement <2 x i32> %i.bs, i64 1
  %i.cv = select i1 %i.by, i32 %.sroa.5.12.extract.trunc, i32 %i.cu
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.ct) ; 2 uses
  %i.cw = icmp slt i32 %.sroa.speculated53.i.i, 1
  %i.cx = icmp slt i32 %.sroa.speculated.i.i, 1
  %i.cy = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %i.cy, label %bb.l, label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit

bb.l:                                             ; preds = %.cont35.i
  br label %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit

_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit:          ; preds = %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit, %bb.h, %.cont38.i, %.cont52.i, %.cont35.i, %bb.l
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.cb, %.cont35.i ], [ 0, %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %.cont52.i ], [ 0, %.cont38.i ]
  %.sroa.0.sroa.9.0.i = phi i32 [ %i.cp, %.cont35.i ], [ 0, %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %.cont52.i ], [ 0, %.cont38.i ]
  %.sroa.14.sroa.0.0.i = phi i32 [ %.sroa.speculated53.i.i, %.cont35.i ], [ 0, %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %.cont52.i ], [ 0, %.cont38.i ] ; 2 uses
  %.sroa.14.sroa.12.0.i = phi i32 [ %.sroa.speculated.i.i, %.cont35.i ], [ 0, %_ZN2cv4gapi2nn9SSDParser17adjustBoundingBoxERNS_5Rect_IiEE.exit ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %.cont52.i ], [ 0, %.cont38.i ] ; 2 uses
  %.sroa.0.sroa.9.0.insert.ext.i = zext i32 %.sroa.0.sroa.9.0.i to i64
  %.sroa.0.sroa.9.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.9.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.sroa.0.0.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.9.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i ; 2 uses
  %.sroa.14.sroa.12.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.12.0.i to i64
  %.sroa.14.sroa.12.0.insert.shift.i = shl nuw nsw i64 %.sroa.14.sroa.12.0.insert.ext.i, 32
  %.sroa.14.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.0.0.i to i64
  %.sroa.14.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.14.sroa.12.0.insert.shift.i, %.sroa.14.sroa.0.0.insert.ext.i ; 2 uses
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.cz = mul nsw i32 %.sroa.14.sroa.12.0.i, %.sroa.14.sroa.0.0.i
  %i.da = extractelement <2 x i32> %i.bs, i64 0
  %i.db = extractelement <2 x i32> %i.bs, i64 1
  %i.dc = mul nsw i32 %i.db, %i.da
  %.not17 = icmp eq i32 %i.cz, %i.dc
  br i1 %.not17, label %bb.n, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.n:                                             ; preds = %bb.m, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !29  ; 7 uses
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.dd, align 4, !tbaa !43
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.526.0..sroa_idx, align 4, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.df, ptr %i.e, align 8, !tbaa !29
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %6, align 8, !tbaa !28    ; 5 uses
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775792
  br i1 %i.dk, label %bb.q, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #15
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.dl = ashr exact i64 %i.dj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 576460752303423487)
  %i.dp = select i1 %i.dn, i64 576460752303423487, i64 %i.do ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dq = shl nuw nsw i64 %i.dp, 4
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #16 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj ; 2 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.ds, align 4, !tbaa !43
  %.sroa.526.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.526.0..sroa_idx27, align 4, !tbaa !43
  %.not10.i.i.i.i.i = icmp eq ptr %i.dg, %i.dd
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i ], [ %i.dr, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %i.dg, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !45, !alias.scope !69
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, %i.dd
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.du, %.lr.ph.i.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.dw = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dy) #17
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dr, ptr %6, align 8, !tbaa !28
  store ptr %i.dv, ptr %i.e, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dz, ptr %i.r, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !33
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit: ; preds = %bb.o, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ea = phi ptr [ %i.t, %bb.o ], [ %.pre, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.eb = load ptr, ptr %i.s, align 8, !tbaa !47
  %.not.i21 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  store i32 %i.ac, ptr %i.ea, align 4, !tbaa !43
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  store ptr %i.ec, ptr %i.h, align 8, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit
  %i.ed = load ptr, ptr %7, align 8, !tbaa !32    ; 4 uses
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 5 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775804
  br i1 %i.eh, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.ei = ashr exact i64 %i.eg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i22 = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i22, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 2305843009213693951)
  %i.em = select i1 %i.ek, i64 2305843009213693951, i64 %i.el ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i23)
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #16 ; 4 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.eg ; 2 uses
  store i32 %i.ac, ptr %i.ep, align 4, !tbaa !43
  %i.eq = icmp sgt i64 %i.eg, 0
  br i1 %i.eq, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr align 4 %i.ed, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.es = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = sub i64 %i.et, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eu) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.eo, ptr %7, align 8, !tbaa !32
  store ptr %i.er, ptr %i.h, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.ev, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %bb.m, %bb.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c
  %i.ew = phi ptr [ %i.t, %bb.m ], [ %i.ec, %bb.s ], [ %i.er, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.t, %bb.c ]
  %i.ex = add nuw i64 %.044, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !67

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, %bb.b, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi2nn9SSDParserC2ERKNS_8MatShapeERKNS_5Size_IiEEPKf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  tail call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(52) %1)
  %i.a = load i32, ptr %1, align 4, !tbaa !48     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 2
  br i1 %i.b, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 103) #15
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !53
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
