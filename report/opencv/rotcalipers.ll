Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rotcalipers?download=true
inline.NumInlined: 72
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.cv::utils::trace::details::Region::LocationStaticStorage" = type { ptr, ptr, ptr, i32, i32 }
%"class.cv::RotatedRect" = type { %"class.cv::Point_", %"class.cv::Size_", float }
%"class.cv::Point_" = type { float, float }
%"class.cv::Size_" = type { float, float }
%"class.cv::AutoBuffer" = type { ptr, i64, [264 x float] }
%"class.cv::utils::trace::details::Region" = type <{ ptr, i32, [4 x i8] }>
%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.cv::_OutputArray" = type { %"class.cv::_InputArray" }
%"class.cv::_InputArray" = type { i32, ptr, %"class.cv::Size_.0" }
%"class.cv::Size_.0" = type { i32, i32 }

$_ZN2cv5utils5trace7details6RegionD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZZN2cv11minAreaRectERKNS_11_InputArrayEE31__cv_trace_location_extra_fn363 = internal global ptr null, align 8
@_ZZN2cv11minAreaRectERKNS_11_InputArrayEE25__cv_trace_location_fn363 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv11minAreaRectERKNS_11_InputArrayEE31__cv_trace_location_extra_fn363, ptr @.str, ptr @.str.1, i32 363, i32 1 }, align 8
@.str = private unnamed_addr constant [44 x i8] c"cv::RotatedRect cv::minAreaRect(InputArray)\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/opencv/opencv/modules/geometry/src/rotcalipers.cpp\00", align 1
@_ZZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayEE31__cv_trace_location_extra_fn432 = internal global ptr null, align 8
@_ZZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayEE25__cv_trace_location_fn432 = internal constant %"struct.cv::utils::trace::details::Region::LocationStaticStorage" { ptr @_ZZN2cv9boxPointsENS_11RotatedRectERKNS_12_OutputArrayEE31__cv_trace_location_extra_fn432, ptr @.str.2, ptr @.str.1, i32 432, i32 1 }, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"void cv::boxPoints(cv::RotatedRect, OutputArray)\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11minAreaRectERKNS_11_InputArrayE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::RotatedRect") align 4 captures(none) initializes((0, 20)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 6 uses
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %3 = alloca [4 x %"class.cv::Point_"], align 16 ; 8 uses
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11minAreaRectERKNS_11_InputArrayEE25__cv_trace_location_fn363)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.c, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !25
  store ptr %5, ptr %i.b, align 8, !tbaa !11
  invoke void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.d = load i32, ptr %5, align 8, !tbaa !26
  %i.e = and i32 %i.d, 31
  %.not = icmp eq i32 %i.e, 5
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !25
  store ptr %7, ptr %i.f, align 8, !tbaa !11
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.h = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ao

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn48 = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.j, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ao

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.l = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.aa      ; 7 uses

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 11 uses
  %i.o = icmp sgt i32 %i.l, 2
  br i1 %i.o, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.p = mul nuw nsw i32 %i.l, 3
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i = icmp samesign ugt i32 %i.l, 88
  store i64 %i.q, ptr %i.s, align 8, !tbaa !31
  br i1 %.not.i.i.i, label %bb.m, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i

bb.m:                                             ; preds = %bb.l
  %i.t = shl nuw nsw i64 %i.q, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #13
          to label %.noexc unwind label %bb.ab    ; 2 uses

.noexc:                                           ; preds = %bb.m
  store ptr %i.u, ptr %2, align 8, !tbaa !30
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i:           ; preds = %.noexc, %bb.l
  %i.v = phi ptr [ %i.r, %bb.l ], [ %i.u, %.noexc ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.w = zext nneg i32 %i.l to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w ; 6 uses
  %i.y = load <2 x float>, ptr %i.n, align 4, !tbaa !33 ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %.0230299.i = phi i32 [ 0, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %.1231.i, %bb.n ]
  %.0232298.i = phi i32 [ 0, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %.1233.i, %bb.n ]
  %.0242297.i = phi i32 [ 0, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %.1243.i, %bb.n ]
  %.0244296.i = phi i32 [ 0, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %.1245.i, %bb.n ]
  %i.aa = phi <2 x float> [ %i.y, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %i.aq, %bb.n ] ; 2 uses
  %i.ab = phi <4 x float> [ %i.z, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i ], [ %i.ak, %bb.n ] ; 3 uses
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.ae = fcmp ogt <4 x float> %i.ac, %i.ab       ; 3 uses
  %i.af = fcmp olt <4 x float> %i.ac, %i.ab       ; 3 uses
  %i.ag = shufflevector <4 x i1> %i.af, <4 x i1> %i.ae, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ah = extractelement <4 x i1> %i.af, i64 0
  %.1231.i = select i1 %i.ah, i32 %i.ad, i32 %.0230299.i ; 3 uses
  %i.ai = extractelement <4 x i1> %i.ae, i64 1
  %.1243.i = select i1 %i.ai, i32 %i.ad, i32 %.0242297.i ; 3 uses
  %i.aj = extractelement <4 x i1> %i.ae, i64 3
  %.1245.i = select i1 %i.aj, i32 %i.ad, i32 %.0244296.i ; 3 uses
  %i.ak = select <4 x i1> %i.ag, <4 x float> %i.ac, <4 x float> %i.ab
  %i.al = extractelement <4 x i1> %i.af, i64 2
  %.1233.i = select i1 %i.al, i32 %i.ad, i32 %.0232298.i ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next.i, %i.w
  %i.an = select i1 %i.am, i64 %indvars.iv.next.i, i64 0
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !33 ; 2 uses
  %i.ar = fsub <2 x float> %i.aq, %i.aa           ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fpext float %i.as to double             ; 2 uses
  %i.au = extractelement <2 x float> %i.ar, i64 1
  %i.av = fpext float %i.au to double             ; 2 uses
  store <2 x float> %i.ar, ptr %i.ap, align 4, !tbaa !33
  %i.aw = fmul double %i.av, %i.av
  %i.ax = call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.aw)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.ax)
  %i.ay = fdiv double 1.000000e+00, %sqrt.i
  %i.az = fptrunc double %i.ay to float
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  store float %i.az, ptr %i.ba, align 4, !tbaa !33
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond.not.i, label %bb.o, label %bb.n, !llvm.loop !23

bb.o:                                             ; preds = %bb.n
  store i32 %.1233.i, ptr %i.a, align 16, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %.1243.i, ptr %i.bb, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %.1245.i, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %.1231.i, ptr %i.bd, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.gep58 = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %bb.o
  %i.bh = phi i32 [ %.1231.i, %bb.o ], [ %i.dp, %bb.v ]
  %i.bi = phi i32 [ %.1245.i, %bb.o ], [ %i.dy, %bb.v ]
  %i.bj = phi i32 [ %.1243.i, %bb.o ], [ %i.dl, %bb.v ]
  %i.bk = phi i32 [ %.1233.i, %bb.o ], [ %i.ec, %bb.v ]
  %.0212310.i = phi float [ f0x7F7FFFFF, %bb.o ], [ %.1213.i, %bb.v ] ; 2 uses
  %.0221309.i = phi i32 [ 0, %bb.o ], [ %i.fc, %bb.v ]
  %.sroa.19.0308.i = phi i32 [ 0, %bb.o ], [ %.sroa.19.1.i, %bb.v ]
  %.sroa.0.0303.i = phi i32 [ 0, %bb.o ], [ %.sroa.0.1.i, %bb.v ]
  %i.bl = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.fa, %bb.v ]
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.o ], [ %i.fb, %bb.v ]
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 4, !tbaa !33 ; 3 uses
  store i64 %i.bp, ptr %3, align 16, !tbaa !33
  %i.bq = sext i32 %i.bj to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !37 ; 3 uses
  store float %i.bt, ptr %i.be, align 8, !tbaa !38
  %i.bu = load float, ptr %i.br, align 4, !tbaa !38
  %9 = fneg float %i.bu                           ; 3 uses
  store float %9, ptr %i.bf, align 4, !tbaa !37
  %i.bv = sext i32 %i.bi to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bv
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !33 ; 2 uses
  %10 = fneg <2 x float> %i.bx                    ; 2 uses
  store <2 x float> %10, ptr %i.bg, align 16, !tbaa !33
  %11 = sext i32 %i.bh to i64
  %12 = getelementptr inbounds [8 x i8], ptr %i.x, i64 %11 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.by = load float, ptr %13, align 4, !tbaa !37
  %14 = load float, ptr %12, align 4, !tbaa !38
  %i.bz = trunc i64 %i.bp to i32
  %i.ca = bitcast i32 %i.bz to float              ; 2 uses
  %i.cb = lshr i64 %i.bp, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = bitcast i32 %i.cc to float
  %i.ce = fneg float %i.bt
  %i.cf = fmul float %i.ce, %i.cd
  %i.cg = call float @llvm.fmuladd.f32(float %9, float %i.ca, float %i.cf)
  %i.ch = fcmp olt float %i.cg, 0.000000e+00      ; 3 uses
  %spec.select.i = zext i1 %i.ch to i32
  %.val278.1.i = select i1 %i.ch, float %i.bt, float %i.ca
  %.sroa.gep58.val = load float, ptr %.sroa.gep58, align 4
  %.val279.1.i = select i1 %i.ch, float %9, float %.sroa.gep58.val
  %i.ci = extractelement <2 x float> %i.bx, i64 0
  %i.cj = fmul float %i.ci, %.val279.1.i
  %i.ck = extractelement <2 x float> %10, i64 1
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %.val278.1.i, float %i.cj)
  %i.cm = fcmp olt float %i.cl, 0.000000e+00
  %spec.select.1.i = select i1 %i.cm, i32 2, i32 %spec.select.i ; 2 uses
  %i.cn = zext nneg i32 %spec.select.1.i to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cn ; 2 uses
  %.val278.2.i = load float, ptr %i.co, align 8, !tbaa !38
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val279.2.i = load float, ptr %i.cp, align 4, !tbaa !37
  %i.cq = fmul float %i.by, %.val279.2.i
  %i.cr = call float @llvm.fmuladd.f32(float %14, float %.val278.2.i, float %i.cq)
  %i.cs = fcmp olt float %i.cr, 0.000000e+00
  %spec.select.2.i = select i1 %i.cs, i32 3, i32 %spec.select.1.i ; 2 uses
  %i.ct = zext nneg i32 %spec.select.2.i to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !35 ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cw
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !33 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load float, ptr %i.cx, align 4, !tbaa !38
  %i.dc = fmul float %i.db, %i.cz                 ; 4 uses
  %i.dd = load float, ptr %i.da, align 4, !tbaa !37
  %i.de = fmul float %i.cz, %i.dd                 ; 4 uses
  switch i32 %spec.select.2.i, label %default.unreachable [
    i32 0, label %bb.t
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.df = fneg float %i.dc
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.dg = fneg float %i.dc
  %i.dh = fneg float %i.de
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.di = fneg float %i.de
  br label %bb.t

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.0255.i = phi float [ %i.di, %bb.s ], [ %i.de, %bb.q ], [ %i.dg, %bb.r ], [ %i.dc, %bb.p ]
  %.0254.i = phi float [ %i.dc, %bb.s ], [ %i.df, %bb.q ], [ %i.dh, %bb.r ], [ %i.de, %bb.p ]
  %i.dj = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.dk = icmp eq i32 %i.dj, %i.l
  %spec.select274.i = select i1 %i.dk, i32 0, i32 %i.dj
  store i32 %spec.select274.i, ptr %i.cu, align 4, !tbaa !35
  %i.dl = load i32, ptr %i.bb, align 4, !tbaa !35 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dm ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !38
  %i.dp = load i32, ptr %i.bd, align 4, !tbaa !35 ; 3 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dq ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !38
  %i.dt = fsub float %i.do, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !37
  %i.dy = load i32, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dz ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !38
  %i.ec = load i32, ptr %i.a, align 16, !tbaa !35 ; 3 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ed ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !38
  %i.eg = fsub float %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !37
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !37
  %i.el = fneg float %i.eg
  %i.em = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.ei, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.ek, i64 1
  %i.eq = fsub <2 x float> %i.en, %i.ep
  %i.er = insertelement <2 x float> poison, float %.0254.i, i64 0
  %i.es = insertelement <2 x float> %i.er, float %.0255.i, i64 1 ; 3 uses
  %i.et = fmul <2 x float> %i.es, %i.eq
  %i.eu = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.el, i64 1
  %i.ew = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ew, <2 x float> %i.et) ; 3 uses
  %shift = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ex, %shift
  %i.ey = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ez = fcmp ugt float %i.ey, %.0212310.i
  br i1 %i.ez, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.1.i = phi i32 [ %i.dp, %bb.u ], [ %.sroa.0.0303.i, %bb.t ] ; 2 uses
  %.sroa.19.1.i = phi i32 [ %i.ec, %bb.u ], [ %.sroa.19.0308.i, %bb.t ] ; 2 uses
  %.1213.i = phi float [ %i.ey, %bb.u ], [ %.0212310.i, %bb.t ]
  %i.fa = phi <2 x float> [ %i.ex, %bb.u ], [ %i.bl, %bb.t ] ; 3 uses
  %i.fb = phi <2 x float> [ %i.es, %bb.u ], [ %i.bm, %bb.t ] ; 9 uses
  %i.fc = add nuw nsw i32 %.0221309.i, 1          ; 2 uses
  %exitcond316.not.i = icmp eq i32 %i.fc, %i.l
  br i1 %exitcond316.not.i, label %bb.w, label %bb.p, !llvm.loop !24

bb.w:                                             ; preds = %bb.v
  %i.fd = extractelement <2 x float> %i.fb, i64 0
  %i.fe = fneg float %i.fd                        ; 2 uses
  %i.ff = sext i32 %.sroa.0.1.i to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ff
  %i.fh = extractelement <2 x float> %i.fb, i64 1 ; 2 uses
  %i.fi = sext i32 %.sroa.19.1.i to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fi
  %foldExtExtBinop65 = fmul <2 x float> %i.fb, %i.fb
  %i.fk = extractelement <2 x float> %foldExtExtBinop65, i64 0
  %i.fl = call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fk)
  %i.fm = fdiv float 1.000000e+00, %i.fl
  %i.fn = load <2 x float>, ptr %i.fg, align 4, !tbaa !33 ; 2 uses
  %i.fo = load <2 x float>, ptr %i.fj, align 4, !tbaa !33 ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fq = fmul <2 x float> %i.fb, %i.fp
  %i.fr = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fs = insertelement <2 x float> %i.fr, float %i.fe, i64 1 ; 2 uses
  %i.ft = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fq) ; 2 uses
  %i.fv = insertelement <2 x float> %i.fb, float %i.fe, i64 1
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fr, <2 x float> %i.fx)
  %i.fz = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x float> %i.ga, %i.fy
  %i.gc = fmul <2 x float> %i.fa, %i.fs           ; 4 uses
  %i.gd = fmul <2 x float> %i.fb, %i.fa           ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not.i.i280.i = icmp eq ptr %i.v, %i.r
  br i1 %.not.i.i280.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.v) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.ge = extractelement <2 x float> %i.gc, i64 0
  %i.gf = extractelement <2 x float> %i.gd, i64 0
  %i.gg = shufflevector <2 x float> %i.gc, <2 x float> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.gh = shufflevector <2 x float> %i.gc, <2 x float> %i.gd, <2 x i32> <i32 1, i32 3>
  %i.gi = fadd <2 x float> %i.gg, %i.gh
  %i.gj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> splat (float 5.000000e-01), <2 x float> %i.gb)
  store <2 x float> %i.gj, ptr %0, align 4, !tbaa !33
  %i.gk = fpext <2 x float> %i.gc to <2 x double> ; 3 uses
  %i.gl = fpext <2 x float> %i.gd to <2 x double> ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gn = fmul <2 x double> %i.gl, %i.gl
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gk, <2 x double> %i.gn)
  %i.gp = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.go)
  %i.gq = fptrunc <2 x double> %i.gp to <2 x float> ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gr, ptr %i.gm, align 4, !tbaa !33
  %i.gs = fcmp oeq float %i.ge, 0.000000e+00
  %i.gt = fcmp ogt float %i.gf, 0.000000e+00
  %or.cond = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  store <2 x float> %i.gq, ptr %i.gm, align 4, !tbaa !33
  br label %bb.al

bb.aa:                                            ; preds = %bb.j
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ab:                                            ; preds = %bb.m
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %bb.y
  %i.gw = extractelement <2 x double> %i.gk, i64 0
  %i.gx = extractelement <2 x double> %i.gl, i64 0
  %i.gy = call double @atan2(double noundef %i.gw, double noundef %i.gx) #12
  %i.gz = fneg double %i.gy
  br label %bb.al

bb.ad:                                            ; preds = %bb.k
  switch i32 %i.l, label %bb.al [
    i32 2, label %bb.ae
    i32 1, label %bb.ak
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ha = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hd = load <2 x float>, ptr %i.n, align 4, !tbaa !33 ; 3 uses
  %i.he = load <2 x float>, ptr %i.ha, align 4, !tbaa !33 ; 3 uses
  %i.hf = fadd <2 x float> %i.hd, %i.he
  %foldExtExtBinop67 = fsub <2 x float> %i.hd, %i.he
  %i.hg = extractelement <2 x float> %foldExtExtBinop67, i64 0 ; 2 uses
  %i.hh = fpext float %i.hg to double             ; 4 uses
end_hunk_0
