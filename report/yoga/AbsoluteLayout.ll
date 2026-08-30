Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator" = type { ptr, i64, %"class.std::forward_list" }
%"class.std::forward_list" = type { %"struct.std::_Fwd_list_base" }
%"struct.std::_Fwd_list_base" = type { %"struct.std::_Fwd_list_base<std::pair<const facebook::yoga::Node *, unsigned long>, std::allocator<std::pair<const facebook::yoga::Node *, unsigned long>>>::_Fwd_list_impl" }
%"struct.std::_Fwd_list_base<std::pair<const facebook::yoga::Node *, unsigned long>, std::allocator<std::pair<const facebook::yoga::Node *, unsigned long>>>::_Fwd_list_impl" = type { %"struct.std::_Fwd_list_node_base" }
%"struct.std::_Fwd_list_node_base" = type { ptr }

$_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf = comdat any

$_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff = comdat any

$_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf = comdat any

$_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE = comdat any

$_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE = comdat any

$_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE = comdat any

$_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE = comdat any

$_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff = comdat any

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv = comdat any

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv = comdat any

@.str = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid physical edge\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid FlexDirection\00", align 1
@switch.table._ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf = private unnamed_addr constant [4 x i16] [i16 652, i16 644, i16 648, i16 640], align 8
@switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf = private unnamed_addr constant [4 x i8] c"\01\01\00\00", align 8
@switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.9 = private unnamed_addr constant [4 x i16] [i16 660, i16 668, i16 656, i16 664], align 8
@switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.10 = private unnamed_addr constant [4 x i8] c"\03\01\02\00", align 8
@switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12 = private unnamed_addr constant [4 x i8] c"\01\03\00\02", align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, float noundef %3, float noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 12
  %i.d = icmp eq i8 %i.c, 12
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %6, 2
  %spec.select = select i1 %i.e, i8 3, i8 2
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i32, ptr %i.f, align 8
  %.fr459 = freeze i32 %i.g
  %i.h = trunc i32 %.fr459 to i8
  %i.i = lshr i8 %i.h, 2                          ; 2 uses
  %i.j = and i8 %i.i, 3                           ; 3 uses
  %i.k = icmp eq i8 %6, 2
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  switch i8 %i.j, label %.thread390 [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
    i8 3, label %bb.e
  ]

.thread390:                                       ; preds = %bb.d
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.c
  %i.l = and i8 %i.i, 2
  %spec.select450 = xor i8 %i.l, 2
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit: ; preds = %bb.f, %bb.b, %bb.e, %bb.d, %.thread390
  %i.m = phi i8 [ 3, %bb.d ], [ 2, %bb.e ], [ %spec.select, %bb.b ], [ %i.j, %bb.f ], [ %i.j, %.thread390 ] ; 2 uses
  %i.n = phi i8 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ %spec.select450, %bb.f ], [ 3, %.thread390 ]
  %i.o = icmp samesign ult i8 %i.m, 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 77 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !9    ; 2 uses
  %i.s = and i16 %i.r, 7
  %.not14.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not14.i.i.i, label %bb.g, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

bb.g:                                             ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 69
  %i.u = load i16, ptr %i.t, align 1, !tbaa !9    ; 2 uses
  %i.v = and i16 %i.u, 7
  %.not15.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not15.i.i.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.x = load i16, ptr %i.w, align 1, !tbaa !9    ; 2 uses
  %i.y = and i16 %i.x, 7
  %.not16.i.i.i = icmp eq i16 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 85
  %.val.i = load i16, ptr %i.z, align 1
  %.sroa.0.0.pre.i11.i31.i = select i1 %.not16.i.i.i, i16 %.val.i, i16 %i.x
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i, %bb.g, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %.sroa.0.0.pre.i11.i31.sink.i = phi i16 [ %.sroa.0.0.pre.i11.i31.i, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i ], [ %i.u, %bb.g ], [ %i.r, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit ]
  %i.aa = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i31.sink.i, float noundef %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 79 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !9  ; 2 uses
  %i.ad = and i16 %i.ac, 7
  %.not14.i12.i14.i = icmp eq i16 %i.ad, 0
  br i1 %.not14.i12.i14.i, label %bb.h, label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit

bb.h:                                             ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !9  ; 2 uses
  %i.ag = and i16 %i.af, 7
  %.not15.i8.i15.i = icmp eq i16 %i.ag, 0
  br i1 %.not15.i8.i15.i, label %bb.i, label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 81 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !9
  %i.aj = and i16 %i.ai, 7
  %.not16.i9.i16.i = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 85
  %spec.select.i10.i17.i = select i1 %.not16.i9.i16.i, ptr %i.ak, ptr %i.ah
  %.sroa.0.0.pre.i11.i12.i = load i16, ptr %spec.select.i10.i17.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit

_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i, %bb.h, %bb.i
  %.sroa.0.0.i13.i = phi i16 [ %i.af, %bb.h ], [ %i.ac, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i ], [ %.sroa.0.0.pre.i11.i12.i, %bb.i ]
  %i.al = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i13.i, float noundef %3)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 71 ; 4 uses
  %i.an = load i16, ptr %i.am, align 1, !tbaa !9
  %i.ao = and i16 %i.an, 7
  %.not.i3.i.i = icmp eq i16 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 83 ; 8 uses
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = and i16 %i.aq, 7
  %.not7.i.i.i = icmp eq i16 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 85 ; 6 uses
  %spec.select.i4.i.i = select i1 %.not7.i.i.i, ptr %i.as, ptr %i.ap
  %.sroa.0.0.in.i.i.i = select i1 %.not.i3.i.i, ptr %spec.select.i4.i.i, ptr %i.am
  %.sroa.0.0.pre.i11.i.i = load i16, ptr %.sroa.0.0.in.i.i.i, align 1, !tbaa !12
  %i.at = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i.i, float noundef %3)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 75 ; 4 uses
  %i.av = load i16, ptr %i.au, align 1, !tbaa !9
  %i.aw = and i16 %i.av, 7
  %.not.i13.i6.i = icmp eq i16 %i.aw, 0
  %i.ax = load i16, ptr %i.ap, align 1
  %i.ay = and i16 %i.ax, 7
  %.not7.i14.i7.i = icmp eq i16 %i.ay, 0
  %spec.select.i15.i8.i = select i1 %.not7.i14.i7.i, ptr %i.as, ptr %i.ap
  %.sroa.0.0.in.i16.i9.i = select i1 %.not.i13.i6.i, ptr %spec.select.i15.i8.i, ptr %i.au
  %.sroa.0.0.pre.i11.i12.i147 = load i16, ptr %.sroa.0.0.in.i16.i9.i, align 1, !tbaa !12
  %i.az = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i12.i147, float noundef %3)
  %i.ba = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.al, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.at, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 3 ; 2 uses
  %i.be = fcmp ord <4 x float> %i.bd, zeroinitializer
  %i.bf = select <4 x i1> %i.be, <4 x float> %i.bd, <4 x float> zeroinitializer ; 4 uses
  %shift = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bf, %shift
  %i.bg = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift497 = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop498 = fadd <4 x float> %i.bf, %shift497
  %i.bh = extractelement <4 x float> %foldExtExtBinop498, i64 2 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 728
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bi, align 4 ; 2 uses
  %i.bj = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %i.bk = trunc i64 %i.bj to i8                   ; 2 uses
  %i.bl = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bm = bitcast i32 %i.bl to float              ; 4 uses
  switch i8 %i.bk, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i
    i8 2, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit
  %i.bn = fmul float %3, %i.bm
  %i.bo = fmul float %i.bn, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i: ; preds = %bb.j, %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit
  %.sroa.0.0.i.i = phi float [ %i.bo, %bb.j ], [ %i.bm, %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit ]
  %i.bp = fcmp ult float %.sroa.0.0.i.i, 0.000000e+00
  br i1 %i.bp, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i152

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i152: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i
  %i.bq = icmp eq i8 %i.bk, 1
  %i.br = fmul float %3, %i.bm
  %i.bs = fmul float %i.br, f0x3C23D70A
  %.sroa.0.0.i.i153 = select i1 %i.bq, float %i.bm, float %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = and i8 %i.bu, 16
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i152
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 105
  switch i8 %6, label %bb.n [
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 113
  %i.bz = load i16, ptr %i.by, align 1, !tbaa !9  ; 2 uses
  %i.ca = and i16 %i.bz, 7
  %.not14.i.i356 = icmp eq i16 %i.ca, 0
  br i1 %.not14.i.i356, label %bb.n, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread: ; preds = %bb.l
  %i.cb = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.bz, float noundef %3) ; 4 uses
  %or.cond.i.i.i223395 = fcmp ord float %i.cb, 0.000000e+00
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp uno float %i.cb, 0.000000e+00
  %.sink.i.i.i224396 = select i1 %or.cond.i.i.i223395, i1 %i.cc, i1 %i.cd
  %i.ce = select i1 %.sink.i.i.i224396, float 0.000000e+00, float %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 123
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 115
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !9  ; 2 uses
  %i.ci = and i16 %i.ch, 7
  %.not.i.i350 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i350, label %bb.n, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397: ; preds = %bb.m
  %i.cj = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.ch, float noundef %3) ; 4 uses
  %or.cond.i.i.i223399 = fcmp ord float %i.cj, 0.000000e+00
  %i.ck = fcmp olt float %i.cj, 0.000000e+00
  %i.cl = fcmp uno float %i.cj, 0.000000e+00
  %.sink.i.i.i224400 = select i1 %or.cond.i.i.i223399, i1 %i.ck, i1 %i.cl
  %i.cm = select i1 %.sink.i.i.i224400, float 0.000000e+00, float %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 123
  br label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.co = load i16, ptr %i.bx, align 1, !tbaa !9  ; 2 uses
  %i.cp = and i16 %i.co, 7
  %.not15.i.i352 = icmp eq i16 %i.cp, 0
  br i1 %.not15.i.i352, label %bb.o, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 117 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !9
  %i.cs = and i16 %i.cr, 7
  %.not16.i.i353 = icmp eq i16 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 121
  %spec.select.i.i354 = select i1 %.not16.i.i353, ptr %i.ct, ptr %i.cq
  %.sroa.0.0.pre.i11.i355 = load i16, ptr %spec.select.i.i354, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i351 = phi i16 [ %.sroa.0.0.pre.i11.i355, %bb.o ], [ %i.co, %bb.n ]
  %i.cu = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i351, float noundef %3) ; 4 uses
  %or.cond.i.i.i223 = fcmp ord float %i.cu, 0.000000e+00
  %i.cv = fcmp olt float %i.cu, 0.000000e+00
  %i.cw = fcmp uno float %i.cu, 0.000000e+00
  %.sink.i.i.i224 = select i1 %or.cond.i.i.i223, i1 %i.cv, i1 %i.cw
  %i.cx = select i1 %.sink.i.i.i224, float 0.000000e+00, float %i.cu ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 123 ; 3 uses
  switch i8 %6, label %bb.r [
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.p:                                             ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357
  %i.cz = phi ptr [ %i.cf, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread ], [ %i.cy, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357 ]
  %i.da = phi float [ %i.ce, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread ], [ %i.cx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 131
  %i.dc = load i16, ptr %i.db, align 1, !tbaa !9  ; 2 uses
  %i.dd = and i16 %i.dc, 7
  %.not14.i.i348 = icmp eq i16 %i.dd, 0
  br i1 %.not14.i.i348, label %bb.r, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread: ; preds = %bb.p
  %i.de = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.dc, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i225402 = fcmp ord float %i.de, 0.000000e+00
  %i.df = fcmp uno float %i.de, 0.000000e+00
  %i.dg = fcmp olt float %i.de, 0.000000e+00
  %.sink.i.i7.i226403 = select i1 %or.cond.i.i6.i225402, i1 %i.dg, i1 %i.df
  %i.dh = select i1 %.sink.i.i7.i226403, float 0.000000e+00, float %i.de
  %i.di = fadd float %i.da, %i.dh
  br label %bb.t

bb.q:                                             ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357
  %i.dj = phi ptr [ %i.cn, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397 ], [ %i.cy, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357 ]
  %i.dk = phi float [ %i.cm, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397 ], [ %i.cx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 133
  %i.dm = load i16, ptr %i.dl, align 1, !tbaa !9  ; 2 uses
  %i.dn = and i16 %i.dm, 7
  %.not.i.i342 = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i342, label %bb.r, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread404

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread404: ; preds = %bb.q
  %i.do = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.dm, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i225406 = fcmp ord float %i.do, 0.000000e+00
  %i.dp = fcmp uno float %i.do, 0.000000e+00
  %i.dq = fcmp olt float %i.do, 0.000000e+00
  %.sink.i.i7.i226407 = select i1 %or.cond.i.i6.i225406, i1 %i.dq, i1 %i.dp
  %i.dr = select i1 %.sink.i.i7.i226407, float 0.000000e+00, float %i.do
  %i.ds = fadd float %i.dk, %i.dr
  br label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357
  %i.dt = phi ptr [ %i.dj, %bb.q ], [ %i.cz, %bb.p ], [ %i.cy, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357 ]
  %i.du = phi float [ %i.dk, %bb.q ], [ %i.da, %bb.p ], [ %i.cx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357 ]
  %i.dv = load i16, ptr %i.dt, align 1, !tbaa !9  ; 2 uses
  %i.dw = and i16 %i.dv, 7
  %.not15.i.i344 = icmp eq i16 %i.dw, 0
  br i1 %.not15.i.i344, label %bb.s, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 135 ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 1, !tbaa !9
  %i.dz = and i16 %i.dy, 7
  %.not16.i.i345 = icmp eq i16 %i.dz, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 139
  %spec.select.i.i346 = select i1 %.not16.i.i345, ptr %i.ea, ptr %i.dx
  %.sroa.0.0.pre.i11.i347 = load i16, ptr %spec.select.i.i346, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349: ; preds = %bb.r, %bb.s
  %.sroa.0.0.i343 = phi i16 [ %.sroa.0.0.pre.i11.i347, %bb.s ], [ %i.dv, %bb.r ]
  %i.eb = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i343, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i225 = fcmp ord float %i.eb, 0.000000e+00
  %i.ec = fcmp uno float %i.eb, 0.000000e+00
  %i.ed = fcmp olt float %i.eb, 0.000000e+00
  %.sink.i.i7.i226 = select i1 %or.cond.i.i6.i225, i1 %i.ed, i1 %i.ec
  %i.ee = select i1 %.sink.i.i7.i226, float 0.000000e+00, float %i.eb
  %i.ef = fadd float %i.du, %i.ee                 ; 3 uses
  switch i8 %6, label %bb.v [
    i8 1, label %bb.t
    i8 2, label %bb.u
  ]

bb.t:                                             ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349
  %i.eg = phi float [ %i.di, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread ], [ %i.ef, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 115
  %i.ei = load i16, ptr %i.eh, align 1, !tbaa !9  ; 2 uses
  %i.ej = and i16 %i.ei, 7
  %.not14.i12.i341 = icmp eq i16 %i.ej, 0
  br i1 %.not14.i12.i341, label %bb.v, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread: ; preds = %bb.t
  %i.ek = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.ei, float noundef %3) ; 4 uses
  %or.cond.i.i.i409 = fcmp ord float %i.ek, 0.000000e+00
  %i.el = fcmp olt float %i.ek, 0.000000e+00
  %i.em = fcmp uno float %i.ek, 0.000000e+00
  %.sink.i.i.i410 = select i1 %or.cond.i.i.i409, i1 %i.el, i1 %i.em
  %i.en = select i1 %.sink.i.i.i410, float 0.000000e+00, float %i.ek
  br label %bb.x

bb.u:                                             ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread404, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349
  %i.eo = phi float [ %i.ds, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349.thread404 ], [ %i.ef, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 113
  %i.eq = load i16, ptr %i.ep, align 1, !tbaa !9  ; 2 uses
  %i.er = and i16 %i.eq, 7
  %.not.i6.i335 = icmp eq i16 %i.er, 0
  br i1 %.not.i6.i335, label %bb.v, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread411

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread411: ; preds = %bb.u
  %i.es = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.eq, float noundef %3) ; 4 uses
  %or.cond.i.i.i413 = fcmp ord float %i.es, 0.000000e+00
  %i.et = fcmp olt float %i.es, 0.000000e+00
  %i.eu = fcmp uno float %i.es, 0.000000e+00
  %.sink.i.i.i414 = select i1 %or.cond.i.i.i413, i1 %i.et, i1 %i.eu
  %i.ev = select i1 %.sink.i.i.i414, float 0.000000e+00, float %i.es
  br label %bb.y

bb.v:                                             ; preds = %bb.u, %bb.t, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349
  %i.ew = phi float [ %i.eo, %bb.u ], [ %i.eg, %bb.t ], [ %i.ef, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit349 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 109
  %i.ey = load i16, ptr %i.ex, align 1, !tbaa !9  ; 2 uses
  %i.ez = and i16 %i.ey, 7
  %.not15.i8.i337 = icmp eq i16 %i.ez, 0
  br i1 %.not15.i8.i337, label %bb.w, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 117 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj:bb.a
  %.sink.i.i = select i1 %or.cond.i.i, i1 %i.jp, i1 %i.jo
  %i.jq = select i1 %.sink.i.i, float 0.000000e+00, float %i.jn ; 3 uses
  switch i8 %6, label %bb.at [
    i8 1, label %bb.ar
    i8 2, label %bb.as
  ]

bb.ar:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit
  %i.jr = phi float [ %i.iz, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread ], [ %i.jq, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.jt = load i16, ptr %i.js, align 1, !tbaa !9  ; 2 uses
  %i.ju = and i16 %i.jt, 7
  %.not14.i12.i261 = icmp eq i16 %i.ju, 0
  br i1 %.not14.i12.i261, label %bb.at, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread: ; preds = %bb.ar
  %i.jv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ir, i16 %i.jt, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i154423 = fcmp ord float %i.jv, 0.000000e+00
  %i.jw = fcmp uno float %i.jv, 0.000000e+00
  %i.jx = fcmp olt float %i.jv, 0.000000e+00
  %.sink.i.i155424 = select i1 %or.cond.i.i154423, i1 %i.jx, i1 %i.jw
  %i.jy = select i1 %.sink.i.i155424, float 0.000000e+00, float %i.jv
  %i.jz = fadd float %i.jr, %i.jy
  %i.ka = fsub float %i.iq, %i.jz
  br label %bb.av

bb.as:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread418, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit
  %i.kb = phi float [ %i.jg, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread418 ], [ %i.jq, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.kd = load i16, ptr %i.kc, align 1, !tbaa !9  ; 2 uses
  %i.ke = and i16 %i.kd, 7
  %.not.i6.i255 = icmp eq i16 %i.ke, 0
  br i1 %.not.i6.i255, label %bb.at, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread425

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread425: ; preds = %bb.as
  %i.kf = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ir, i16 %i.kd, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i154427 = fcmp ord float %i.kf, 0.000000e+00
  %i.kg = fcmp uno float %i.kf, 0.000000e+00
  %i.kh = fcmp olt float %i.kf, 0.000000e+00
  %.sink.i.i155428 = select i1 %or.cond.i.i154427, i1 %i.kh, i1 %i.kg
  %i.ki = select i1 %.sink.i.i155428, float 0.000000e+00, float %i.kf
  %i.kj = fadd float %i.kb, %i.ki
  %i.kk = fsub float %i.iq, %i.kj
  br label %bb.aw

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit
  %i.kl = phi float [ %i.kb, %bb.as ], [ %i.jr, %bb.ar ], [ %i.jq, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.kn = load i16, ptr %i.km, align 1, !tbaa !9  ; 2 uses
  %i.ko = and i16 %i.kn, 7
  %.not15.i8.i257 = icmp eq i16 %i.ko, 0
  br i1 %.not15.i8.i257, label %bb.au, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262

bb.au:                                            ; preds = %bb.at
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 1, !tbaa !9
  %i.kr = and i16 %i.kq, 7
  %.not16.i9.i258 = icmp eq i16 %i.kr, 0
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 139
  %spec.select.i10.i259 = select i1 %.not16.i9.i258, ptr %i.ks, ptr %i.kp
  %.sroa.0.0.pre.i11.i260 = load i16, ptr %spec.select.i10.i259, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262: ; preds = %bb.at, %bb.au
  %.sroa.0.0.i256 = phi i16 [ %i.kn, %bb.at ], [ %.sroa.0.0.pre.i11.i260, %bb.au ]
  %i.kt = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ir, i16 %.sroa.0.0.i256, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i154 = fcmp ord float %i.kt, 0.000000e+00
  %i.ku = fcmp uno float %i.kt, 0.000000e+00
  %i.kv = fcmp olt float %i.kt, 0.000000e+00
  %.sink.i.i155 = select i1 %or.cond.i.i154, i1 %i.kv, i1 %i.ku
  %i.kw = select i1 %.sink.i.i155, float 0.000000e+00, float %i.kt
  %i.kx = fadd float %i.kl, %i.kw
  %i.ky = fsub float %i.iq, %i.kx                 ; 3 uses
  switch i8 %6, label %bb.ax [
    i8 1, label %bb.av
    i8 2, label %bb.aw
  ]

bb.av:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262
  %i.kz = phi float [ %i.ka, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread ], [ %i.ky, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262 ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 95
  %i.lb = load i16, ptr %i.la, align 1, !tbaa !9  ; 2 uses
  %i.lc = and i16 %i.lb, 7
  %.not14.i.i269 = icmp eq i16 %i.lc, 0
  br i1 %.not14.i.i269, label %bb.ax, label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread

_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread: ; preds = %bb.av
  %i.ld = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.lb, float noundef %3) ; 2 uses
  %.inv.i430 = fcmp ord float %i.ld, 0.000000e+00
  %i.le = select i1 %.inv.i430, float %i.ld, float 0.000000e+00
  br label %bb.az

bb.aw:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread425, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262
  %i.lf = phi float [ %i.kk, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262.thread425 ], [ %i.ky, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 97
  %i.lh = load i16, ptr %i.lg, align 1, !tbaa !9  ; 2 uses
  %i.li = and i16 %i.lh, 7
  %.not.i.i263 = icmp eq i16 %i.li, 0
  br i1 %.not.i.i263, label %bb.ax, label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread431

_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread431: ; preds = %bb.aw
  %i.lj = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %i.lh, float noundef %3) ; 2 uses
  %.inv.i433 = fcmp ord float %i.lj, 0.000000e+00
  %i.lk = select i1 %.inv.i433, float %i.lj, float 0.000000e+00
  br label %bb.ba

bb.ax:                                            ; preds = %bb.aw, %bb.av, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262
  %i.ll = phi float [ %i.lf, %bb.aw ], [ %i.kz, %bb.av ], [ %i.ky, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit262 ] ; 3 uses
  %i.lm = load i16, ptr %i.gm, align 1, !tbaa !9  ; 2 uses
  %i.ln = and i16 %i.lm, 7
  %.not15.i.i265 = icmp eq i16 %i.ln, 0
  br i1 %.not15.i.i265, label %bb.ay, label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270

bb.ay:                                            ; preds = %bb.ax
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 99 ; 2 uses
  %i.lp = load i16, ptr %i.lo, align 1, !tbaa !9
  %i.lq = and i16 %i.lp, 7
  %.not16.i.i266 = icmp eq i16 %i.lq, 0
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 103
  %spec.select.i.i267 = select i1 %.not16.i.i266, ptr %i.lr, ptr %i.lo
  %.sroa.0.0.pre.i11.i268 = load i16, ptr %spec.select.i.i267, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270

_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270: ; preds = %bb.ax, %bb.ay
  %.sroa.0.0.i264 = phi i16 [ %.sroa.0.0.pre.i11.i268, %bb.ay ], [ %i.lm, %bb.ax ]
  %i.ls = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i264, float noundef %3) ; 2 uses
  %.inv.i = fcmp ord float %i.ls, 0.000000e+00
  %i.lt = select i1 %.inv.i, float %i.ls, float 0.000000e+00 ; 3 uses
  switch i8 %6, label %bb.bb [
    i8 1, label %bb.az
    i8 2, label %bb.ba
  ]

bb.az:                                            ; preds = %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270
  %i.lu = phi float [ %i.le, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread ], [ %i.lt, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270 ] ; 2 uses
  %i.lv = phi float [ %i.kz, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread ], [ %i.ll, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 97
  %i.lx = load i16, ptr %i.lw, align 1, !tbaa !9  ; 2 uses
  %i.ly = and i16 %i.lx, 7
  %.not14.i12.i277 = icmp eq i16 %i.ly, 0
  br i1 %.not14.i12.i277, label %bb.bb, label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278

bb.ba:                                            ; preds = %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread431, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270
  %i.lz = phi float [ %i.lk, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread431 ], [ %i.lt, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270 ] ; 2 uses
  %i.ma = phi float [ %i.lf, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270.thread431 ], [ %i.ll, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 95
  %i.mc = load i16, ptr %i.mb, align 1, !tbaa !9  ; 2 uses
  %i.md = and i16 %i.mc, 7
  %.not.i6.i271 = icmp eq i16 %i.md, 0
  br i1 %.not.i6.i271, label %bb.bb, label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278

bb.bb:                                            ; preds = %bb.ba, %bb.az, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270
  %i.me = phi float [ %i.lz, %bb.ba ], [ %i.lu, %bb.az ], [ %i.lt, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270 ] ; 2 uses
  %i.mf = phi float [ %i.ma, %bb.ba ], [ %i.lv, %bb.az ], [ %i.ll, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit270 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 91
  %i.mh = load i16, ptr %i.mg, align 1, !tbaa !9  ; 2 uses
  %i.mi = and i16 %i.mh, 7
  %.not15.i8.i273 = icmp eq i16 %i.mi, 0
  br i1 %.not15.i8.i273, label %bb.bc, label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278

bb.bc:                                            ; preds = %bb.bb
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 99 ; 2 uses
  %i.mk = load i16, ptr %i.mj, align 1, !tbaa !9
  %i.ml = and i16 %i.mk, 7
  %.not16.i9.i274 = icmp eq i16 %i.ml, 0
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 103
  %spec.select.i10.i275 = select i1 %.not16.i9.i274, ptr %i.mm, ptr %i.mj
  %.sroa.0.0.pre.i11.i276 = load i16, ptr %spec.select.i10.i275, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278

_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278: ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc
  %i.mn = phi float [ %i.me, %bb.bb ], [ %i.lu, %bb.az ], [ %i.me, %bb.bc ], [ %i.lz, %bb.ba ]
  %i.mo = phi float [ %i.mf, %bb.bb ], [ %i.lv, %bb.az ], [ %i.mf, %bb.bc ], [ %i.ma, %bb.ba ]
  %.sroa.0.0.i272 = phi i16 [ %i.mh, %bb.bb ], [ %i.lx, %bb.az ], [ %.sroa.0.0.pre.i11.i276, %bb.bc ], [ %i.mc, %bb.ba ]
  %i.mp = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i272, float noundef %3) ; 2 uses
  %.inv.i156 = fcmp ord float %i.mp, 0.000000e+00
  %i.mq = select i1 %.inv.i156, float %i.mp, float 0.000000e+00
  %i.mr = fadd float %i.mn, %i.mq
  %i.ms = fsub float %i.mo, %i.mr
  %i.mt = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %2, i8 noundef zeroext 2, i8 noundef zeroext %6, float noundef %i.ms, float noundef %3, float noundef %3)
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit231, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit239, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit247, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %.0.a = phi float [ %i.gl, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ +qnan, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit239 ], [ +qnan, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit247 ], [ %i.mt, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit278 ], [ +qnan, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit231 ], [ +qnan, %_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE.exit ] ; 10 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 736
  %.sroa.0.0.copyload.i.i157 = load i64, ptr %i.mu, align 4 ; 2 uses
  %i.mv = lshr i64 %.sroa.0.0.copyload.i.i157, 32
  %i.mw = trunc i64 %i.mv to i8                   ; 2 uses
  %i.mx = trunc i64 %.sroa.0.0.copyload.i.i157 to i32
  %i.my = bitcast i32 %i.mx to float              ; 4 uses
  switch i8 %i.mw, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit160.thread [
    i8 1, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i158
    i8 2, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.mz = fmul float %4, %i.my
  %i.na = fmul float %i.mz, f0x3C23D70A
  br label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i158

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i158: ; preds = %bb.be, %bb.bd
  %.sroa.0.0.i.i159 = phi float [ %i.na, %bb.be ], [ %i.my, %bb.bd ]
  %i.nb = fcmp ult float %.sroa.0.0.i.i159, 0.000000e+00
  br i1 %i.nb, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit160.thread, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i162

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i162: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i158
  %i.nc = icmp eq i8 %i.mw, 1
  %i.nd = fmul float %4, %i.my
  %i.ne = fmul float %i.nd, f0x3C23D70A
  %.sroa.0.0.i.i163 = select i1 %i.nc, float %i.my, float %i.ne ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ng = load i8, ptr %i.nf, align 4
  %i.nh = and i8 %i.ng, 16
  %i.ni = icmp eq i8 %i.nh, 0
  br i1 %i.ni, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit166, label %bb.bf

bb.bf:                                            ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i162
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 107 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 1, !tbaa !9
  %i.nl = and i16 %i.nk, 7
  %.not.i3.i376 = icmp eq i16 %i.nl, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 119 ; 4 uses
  %i.nn = load i16, ptr %i.nm, align 1
  %i.no = and i16 %i.nn, 7
  %.not7.i.i377 = icmp eq i16 %i.no, 0
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 121 ; 2 uses
  %spec.select.i4.i378 = select i1 %.not7.i.i377, ptr %i.np, ptr %i.nm
  %.sroa.0.0.in.i.i379 = select i1 %.not.i3.i376, ptr %spec.select.i4.i378, ptr %i.nj
  %.sroa.0.0.pre.i11.i380 = load i16, ptr %.sroa.0.0.in.i.i379, align 1, !tbaa !12
  %i.nq = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i380, float noundef %3)
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 125 ; 2 uses
  %i.ns = load i16, ptr %i.nr, align 1, !tbaa !9
  %i.nt = and i16 %i.ns, 7
  %.not.i3.i370 = icmp eq i16 %i.nt, 0
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 137 ; 4 uses
  %i.nv = load i16, ptr %i.nu, align 1
  %i.nw = and i16 %i.nv, 7
  %.not7.i.i371 = icmp eq i16 %i.nw, 0
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 139 ; 2 uses
  %spec.select.i4.i372 = select i1 %.not7.i.i371, ptr %i.nx, ptr %i.nu
  %.sroa.0.0.in.i.i373 = select i1 %.not.i3.i370, ptr %spec.select.i4.i372, ptr %i.nr
  %.sroa.0.0.pre.i11.i374 = load i16, ptr %.sroa.0.0.in.i.i373, align 1, !tbaa !12
  %i.ny = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i374, float noundef 0.000000e+00)
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 111 ; 2 uses
  %i.oa = load i16, ptr %i.nz, align 1, !tbaa !9
  %i.ob = and i16 %i.oa, 7
  %.not.i13.i364 = icmp eq i16 %i.ob, 0
  %i.oc = load i16, ptr %i.nm, align 1
  %i.od = and i16 %i.oc, 7
  %.not7.i14.i365 = icmp eq i16 %i.od, 0
  %spec.select.i15.i366 = select i1 %.not7.i14.i365, ptr %i.np, ptr %i.nm
  %.sroa.0.0.in.i16.i367 = select i1 %.not.i13.i364, ptr %spec.select.i15.i366, ptr %i.nz
  %.sroa.0.0.pre.i11.i368 = load i16, ptr %.sroa.0.0.in.i16.i367, align 1, !tbaa !12
  %i.oe = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i368, float noundef %3)
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 129 ; 2 uses
  %i.og = load i16, ptr %i.of, align 1, !tbaa !9
  %i.oh = and i16 %i.og, 7
  %.not.i13.i358 = icmp eq i16 %i.oh, 0
  %i.oi = load i16, ptr %i.nu, align 1
  %i.oj = and i16 %i.oi, 7
  %.not7.i14.i359 = icmp eq i16 %i.oj, 0
  %spec.select.i15.i360 = select i1 %.not7.i14.i359, ptr %i.nx, ptr %i.nu
  %.sroa.0.0.in.i16.i361 = select i1 %.not.i13.i358, ptr %spec.select.i15.i360, ptr %i.of
  %.sroa.0.0.pre.i11.i362 = load i16, ptr %.sroa.0.0.in.i16.i361, align 1, !tbaa !12
  %i.ok = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i362, float noundef 0.000000e+00)
  %i.ol = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.om = insertelement <4 x float> %i.ol, float %i.ny, i64 1
  %i.on = insertelement <4 x float> %i.om, float %i.oe, i64 2
  %i.oo = insertelement <4 x float> %i.on, float %i.ok, i64 3 ; 4 uses
  %i.op = fcmp ord <4 x float> %i.oo, zeroinitializer
  %i.oq = fcmp uno <4 x float> %i.oo, zeroinitializer
  %i.or = fcmp olt <4 x float> %i.oo, zeroinitializer
  %i.os = select <4 x i1> %i.op, <4 x i1> %i.or, <4 x i1> %i.oq
  %i.ot = select <4 x i1> %i.os, <4 x float> zeroinitializer, <4 x float> %i.oo ; 2 uses
  %i.ou = shufflevector <4 x float> %i.ot, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ov = shufflevector <4 x float> %i.ot, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ow = fadd <2 x float> %i.ou, %i.ov           ; 2 uses
  %shift500 = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop501 = fadd <2 x float> %i.ow, %shift500
  %i.ox = extractelement <2 x float> %foldExtExtBinop501, i64 0 ; 2 uses
  %i.oy = fcmp ord float %i.ox, 0.000000e+00
  %.sroa.0.0.i164 = select i1 %i.oy, float %i.ox, float 0.000000e+00
  %i.oz = fadd float %.sroa.0.0.i.i163, %.sroa.0.0.i164
  br label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit166

_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit166: ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i162, %bb.bf
  %.sroa.06.0.i165 = phi float [ %i.oz, %bb.bf ], [ %.sroa.0.0.i.i163, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i162 ]
  %i.pa = fadd float %i.bh, %.sroa.06.0.i165
  br label %bb.bi

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit160.thread: ; preds = %bb.bd, %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i158
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 89 ; 4 uses
  %i.pc = load i16, ptr %i.pb, align 1, !tbaa !9
  %i.pd = and i16 %i.pc, 7
  %.not.i3.i = icmp eq i16 %i.pd, 0
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 101 ; 6 uses
  %i.pf = load i16, ptr %i.pe, align 1
  %i.pg = and i16 %i.pf, 7
  %.not7.i.i = icmp eq i16 %i.pg, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 103 ; 3 uses
  %spec.select.i4.i = select i1 %.not7.i.i, ptr %i.ph, ptr %i.pe ; 2 uses
  %.sroa.0.0.in.i.i = select i1 %.not.i3.i, ptr %spec.select.i4.i, ptr %i.pb
  %.sroa.0.0.pre.i11.i287 = load i16, ptr %.sroa.0.0.in.i.i, align 1, !tbaa !12
  %.sroa.0.0.pre.i11.i287.fr = freeze i16 %.sroa.0.0.pre.i11.i287
  %i.pi = and i16 %.sroa.0.0.pre.i11.i287.fr, 7   ; 2 uses
  %.not461 = icmp eq i16 %i.pi, 0
  br i1 %.not461, label %.thr_comm434, label %bb.bg

bb.bg:                                            ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit160.thread
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 93 ; 4 uses
  %i.pk = icmp eq i16 %i.pi, 4
  br i1 %i.pk, label %.thr_comm434, label %switch.early.test

switch.early.test:                                ; preds = %bb.bg
  %i.pl = load i16, ptr %i.pj, align 1, !tbaa !9
  %i.pm = and i16 %i.pl, 7
  %.not.i13.i = icmp eq i16 %i.pm, 0
  %.sroa.0.0.in.i16.i = select i1 %.not.i13.i, ptr %spec.select.i4.i, ptr %i.pj
  %.sroa.0.0.pre.i11.i289 = load i16, ptr %.sroa.0.0.in.i16.i, align 1, !tbaa !12
  %i.pn = and i16 %.sroa.0.0.pre.i11.i289, 7
  switch i16 %i.pn, label %bb.bh [
    i16 4, label %.thr_comm434
    i16 0, label %.thr_comm434
  ]

bb.bh:                                            ; preds = %switch.early.test
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.pp = load float, ptr %i.po, align 4, !tbaa !13
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.ps = load i16, ptr %i.pr, align 1, !tbaa !9
  %i.pt = and i16 %i.ps, 7
  %.not.i3.i303 = icmp eq i16 %i.pt, 0
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.pv = load i16, ptr %i.pu, align 1
  %i.pw = and i16 %i.pv, 7
  %.not7.i.i304 = icmp eq i16 %i.pw, 0
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %spec.select.i4.i305 = select i1 %.not7.i.i304, ptr %i.px, ptr %i.pu
  %.sroa.0.0.in.i.i306 = select i1 %.not.i3.i303, ptr %spec.select.i4.i305, ptr %i.pr
  %.sroa.0.0.pre.i11.i307 = load i16, ptr %.sroa.0.0.in.i.i306, align 1, !tbaa !12
  %i.py = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.pq, i16 %.sroa.0.0.pre.i11.i307, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i167 = fcmp ord float %i.py, 0.000000e+00
  %i.pz = fcmp uno float %i.py, 0.000000e+00
  %i.qa = fcmp olt float %i.py, 0.000000e+00
  %.sink.i.i168 = select i1 %or.cond.i.i167, i1 %i.qa, i1 %i.pz
  %i.qb = select i1 %.sink.i.i168, float 0.000000e+00, float %i.py
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.qd = load i16, ptr %i.qc, align 1, !tbaa !9
  %i.qe = and i16 %i.qd, 7
  %.not.i13.i309 = icmp eq i16 %i.qe, 0
  %i.qf = load i16, ptr %i.pu, align 1
  %i.qg = and i16 %i.qf, 7
  %.not7.i14.i310 = icmp eq i16 %i.qg, 0
  %spec.select.i15.i311 = select i1 %.not7.i14.i310, ptr %i.px, ptr %i.pu
  %.sroa.0.0.in.i16.i312 = select i1 %.not.i13.i309, ptr %spec.select.i15.i311, ptr %i.qc
  %.sroa.0.0.pre.i11.i313 = load i16, ptr %.sroa.0.0.in.i16.i312, align 1, !tbaa !12
  %i.qh = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.pq, i16 %.sroa.0.0.pre.i11.i313, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i169 = fcmp ord float %i.qh, 0.000000e+00
  %i.qi = fcmp uno float %i.qh, 0.000000e+00
  %i.qj = fcmp olt float %i.qh, 0.000000e+00
  %.sink.i.i170 = select i1 %or.cond.i.i169, i1 %i.qj, i1 %i.qi
  %i.qk = select i1 %.sink.i.i170, float 0.000000e+00, float %i.qh
  %i.ql = fadd float %i.qb, %i.qk
  %i.qm = fsub float %i.pp, %i.ql
  %i.qn = load i16, ptr %i.pb, align 1, !tbaa !9
  %i.qo = and i16 %i.qn, 7
  %.not.i3.i315 = icmp eq i16 %i.qo, 0
  %i.qp = load i16, ptr %i.pe, align 1
  %i.qq = and i16 %i.qp, 7
  %.not7.i.i316 = icmp eq i16 %i.qq, 0
  %spec.select.i4.i317 = select i1 %.not7.i.i316, ptr %i.ph, ptr %i.pe
  %.sroa.0.0.in.i.i318 = select i1 %.not.i3.i315, ptr %spec.select.i4.i317, ptr %i.pb
  %.sroa.0.0.pre.i11.i319 = load i16, ptr %.sroa.0.0.in.i.i318, align 1, !tbaa !12
  %i.qr = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i319, float noundef %4) ; 2 uses
  %.inv.i171 = fcmp ord float %i.qr, 0.000000e+00
  %i.qs = select i1 %.inv.i171, float %i.qr, float 0.000000e+00
  %i.qt = load i16, ptr %i.pj, align 1, !tbaa !9
  %i.qu = and i16 %i.qt, 7
  %.not.i13.i321 = icmp eq i16 %i.qu, 0
  %i.qv = load i16, ptr %i.pe, align 1
  %i.qw = and i16 %i.qv, 7
  %.not7.i14.i322 = icmp eq i16 %i.qw, 0
  %spec.select.i15.i323 = select i1 %.not7.i14.i322, ptr %i.ph, ptr %i.pe
  %.sroa.0.0.in.i16.i324 = select i1 %.not.i13.i321, ptr %spec.select.i15.i323, ptr %i.pj
  %.sroa.0.0.pre.i11.i325 = load i16, ptr %.sroa.0.0.in.i16.i324, align 1, !tbaa !12
  %i.qx = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i325, float noundef %4) ; 2 uses
  %.inv.i172 = fcmp ord float %i.qx, 0.000000e+00
  %i.qy = select i1 %.inv.i172, float %i.qx, float 0.000000e+00
  %i.qz = fadd float %i.qs, %i.qy
  %i.ra = fsub float %i.qm, %i.qz
  %i.rb = tail call noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext %6, float noundef %i.ra, float noundef %4, float noundef %3)
  br label %bb.bi

.thr_comm434:                                     ; preds = %switch.early.test, %switch.early.test, %bb.bg, %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit160.thread
  %i.rc = fcmp uno float %.0.a, 0.000000e+00
  br i1 %i.rc, label %.thread439, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit166
  %.0140 = phi float [ %i.pa, %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit166 ], [ %i.rb, %bb.bh ] ; 3 uses
  %i.rd = fcmp uno float %.0.a, 0.000000e+00      ; 2 uses
  %i.re = fcmp uno float %.0140, 0.000000e+00     ; 2 uses
  %i.rf = xor i1 %i.rd, %i.re
  br i1 %i.rf, label %bb.bj, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437

bb.bj:                                            ; preds = %.thr_comm434, %bb.bi
  %i.rg = phi i1 [ true, %.thr_comm434 ], [ %i.re, %bb.bi ] ; 2 uses
  %i.rh = phi i1 [ false, %.thr_comm434 ], [ %i.rd, %bb.bi ] ; 2 uses
  %.0140435 = phi float [ +qnan, %.thr_comm434 ], [ %.0140, %bb.bi ] ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 159
  %.sroa.0.0.copyload.i = load i16, ptr %i.ri, align 1, !tbaa !12 ; 12 uses
  %i.rj = and i16 %.sroa.0.0.copyload.i, 7
  %i.rk = icmp eq i16 %i.rj, 0
  br i1 %i.rk, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rl = and i16 %.sroa.0.0.copyload.i, 8
  %.not.i.i = icmp eq i16 %i.rl, 0
  br i1 %.not.i.i, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rm = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.rn = zext nneg i16 %i.rm to i64              ; 2 uses
  %i.ro = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.ro, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.rn
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit

bb.bn:                                            ; preds = %bb.bl
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !15 ; 2 uses
  %i.rt = add nsw i64 %i.rn, -4                   ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !18
  %i.rw = load ptr, ptr %i.rs, align 8, !tbaa !21 ; 2 uses
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry
  %i.sa = ashr exact i64 %i.rz, 2                 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.rt, %i.sa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.rt, i64 noundef %i.sa) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i:             ; preds = %bb.bn
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rt
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit

_ZNK8facebook4yoga5Style11aspectRatioEv.exit:     ; preds = %bb.bm, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i
  %.0.in.i.i.i = phi ptr [ %i.rq, %bb.bm ], [ %i.sb, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i ]
  %.0.i7.i.i = load float, ptr %.0.in.i.i.i, align 4, !tbaa !22
  %i.sc = fcmp ord float %.0.i7.i.i, 0.000000e+00
  br i1 %i.sc, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread: ; preds = %bb.bk
  br i1 %i.rh, label %bb.bt, label %bb.bu

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread: ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit
  br i1 %i.rh, label %bb.bp, label %.thread492

bb.bp:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread
  %i.sd = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.se = zext nneg i16 %i.sd to i64              ; 2 uses
  %i.sf = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.sf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.se
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i177

bb.br:                                            ; preds = %bb.bp
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !15 ; 2 uses
  %i.sk = add nsw i64 %i.se, -4                   ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !18
  %i.sn = load ptr, ptr %i.sj, align 8, !tbaa !21 ; 2 uses
  %i.so = ptrtoint ptr %i.sm to i64
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = ashr exact i64 %i.sq, 2                 ; 2 uses
  %.not.i.i.i.i.i175 = icmp ult i64 %i.sk, %i.sr
  br i1 %.not.i.i.i.i.i175, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i176, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.sk, i64 noundef %i.sr) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i176:          ; preds = %bb.br
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sk
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i177

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i177: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i176, %bb.bq
  %.0.in.i.i.i178 = phi ptr [ %i.sh, %bb.bq ], [ %i.ss, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i176 ]
  %.0.i7.i.i179 = load float, ptr %.0.in.i.i.i178, align 4, !tbaa !22
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit182

bb.bt:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread
  %i.st = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.su = and i16 %i.st, 2047
  %i.sv = zext nneg i16 %i.su to i32              ; 2 uses
  %i.sw = sub nsw i32 0, %i.sv
  %.not.i6.i.i181 = icmp slt i16 %.sroa.0.0.copyload.i, 0
  %i.sx = select i1 %.not.i6.i.i181, i32 %i.sw, i32 %i.sv
  %i.sy = sitofp i32 %i.sx to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit182

_ZNK8facebook4yoga5Style11aspectRatioEv.exit182:  ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i177, %bb.bt
  %.sroa.05.0.i.i180 = phi float [ %i.sy, %bb.bt ], [ %.0.i7.i.i179, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i177 ]
  %i.sz = fsub float %.0140435, %i.bh
  %i.ta = tail call float @llvm.fmuladd.f32(float %i.sz, float %.sroa.05.0.i.i180, float %i.bg)
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437

bb.bu:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread
  br i1 %i.rg, label %bb.bz, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437

.thread492:                                       ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread
  br i1 %i.rg, label %bb.bv, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437

bb.bv:                                            ; preds = %.thread492
  %i.tb = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.tc = zext nneg i16 %i.tb to i64              ; 2 uses
  %i.td = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.td, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.tc
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i187

bb.bx:                                            ; preds = %bb.bv
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !15 ; 2 uses
  %i.ti = add nsw i64 %i.tc, -4                   ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !18
  %i.tl = load ptr, ptr %i.th, align 8, !tbaa !21 ; 2 uses
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = ashr exact i64 %i.to, 2                 ; 2 uses
  %.not.i.i.i.i.i185 = icmp ult i64 %i.ti, %i.tp
  br i1 %.not.i.i.i.i.i185, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i186, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ti, i64 noundef %i.tp) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i186:          ; preds = %bb.bx
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.ti
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i187

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i187: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i186, %bb.bw
  %.0.in.i.i.i188 = phi ptr [ %i.tf, %bb.bw ], [ %i.tq, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i186 ]
  %.0.i7.i.i189 = load float, ptr %.0.in.i.i.i188, align 4, !tbaa !22
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit192

bb.bz:                                            ; preds = %bb.bu
  %i.tr = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.ts = and i16 %i.tr, 2047
  %i.tt = zext nneg i16 %i.ts to i32              ; 2 uses
  %i.tu = sub nsw i32 0, %i.tt
  %.not.i6.i.i191 = icmp slt i16 %.sroa.0.0.copyload.i, 0
  %i.tv = select i1 %.not.i6.i.i191, i32 %i.tu, i32 %i.tt
  %i.tw = sitofp i32 %i.tv to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit192

_ZNK8facebook4yoga5Style11aspectRatioEv.exit192:  ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i187, %bb.bz
  %.sroa.05.0.i.i190 = phi float [ %i.tw, %bb.bz ], [ %.0.i7.i.i189, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i187 ]
  %i.tx = fsub float %.0.a, %i.bg
  %i.ty = fdiv float %i.tx, %.sroa.05.0.i.i190
  %i.tz = fadd float %i.bh, %i.ty
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437: ; preds = %.thread492, %bb.bj, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit, %bb.bu, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit192, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit182, %bb.bi
  %.1141 = phi float [ %.0140435, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit182 ], [ %i.tz, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit192 ], [ %.0140435, %bb.bu ], [ %.0140435, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ %.0140, %bb.bi ], [ %.0140435, %bb.bj ], [ %.0140435, %.thread492 ] ; 4 uses
  %.1 = phi float [ %i.ta, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit182 ], [ %.0.a, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit192 ], [ %.0.a, %bb.bu ], [ %.0.a, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ %.0.a, %bb.bi ], [ %.0.a, %bb.bj ], [ %.0.a, %.thread492 ] ; 4 uses
  %i.ua = fcmp uno float %.1, 0.000000e+00
  br i1 %i.ua, label %.thread439, label %bb.ca

bb.ca:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437
  %i.ub = fcmp uno float %.1141, 0.000000e+00
  br i1 %i.ub, label %.thread439, label %bb.ce

.thread439:                                       ; preds = %.thr_comm434, %bb.ca, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437
  %i.uc = phi i1 [ true, %.thr_comm434 ], [ false, %bb.ca ], [ true, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437 ] ; 2 uses
  %.1445 = phi float [ %.0.a, %.thr_comm434 ], [ %.1, %bb.ca ], [ %.1, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437 ]
  %.1141443 = phi float [ +qnan, %.thr_comm434 ], [ %.1141, %bb.ca ], [ %.1141, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread437 ] ; 2 uses
  %i.ud = zext i1 %i.uc to i32
  %i.ue = fcmp uno float %.1141443, 0.000000e+00
  %i.uf = zext i1 %i.ue to i32
  %i.ug = icmp ne i32 %5, 1
  %i.uh = and i1 %i.ug, %i.o
  %i.ui = fcmp ogt float %3, 0.000000e+00
  %i.uj = and i1 %i.ui, %i.uh
  %or.cond457 = and i1 %i.uj, %i.uc               ; 2 uses
  %.0143 = select i1 %or.cond457, i32 2, i32 %i.ud
  %.2 = select i1 %or.cond457, float %3, float %.1445
  %i.uk = tail call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %2, float noundef %.2, float noundef %.1141443, i8 noundef zeroext %6, i32 noundef %.0143, i32 noundef %i.uf, float noundef %3, float noundef %4, i1 noundef zeroext false, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) ; 0 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.um = load float, ptr %i.ul, align 4, !tbaa !13
  %i.un = load i16, ptr %i.q, align 1, !tbaa !9   ; 2 uses
  %i.uo = and i16 %i.un, 7
  %.not14.i.i.i193 = icmp eq i16 %i.uo, 0
  br i1 %.not14.i.i.i193, label %bb.cb, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194

bb.cb:                                            ; preds = %.thread439
  %i.up = getelementptr inbounds nuw i8, ptr %2, i64 69
  %i.uq = load i16, ptr %i.up, align 1, !tbaa !9  ; 2 uses
  %i.ur = and i16 %i.uq, 7
  %.not15.i.i.i204 = icmp eq i16 %i.ur, 0
  br i1 %.not15.i.i.i204, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i205, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i205: ; preds = %bb.cb
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.ut = load i16, ptr %i.us, align 1, !tbaa !9  ; 2 uses
  %i.uu = and i16 %i.ut, 7
  %.not16.i.i.i206 = icmp eq i16 %i.uu, 0
  %.val.i207 = load i16, ptr %i.as, align 1
  %.sroa.0.0.pre.i11.i31.i208 = select i1 %.not16.i.i.i206, i16 %.val.i207, i16 %i.ut
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i205, %bb.cb, %.thread439
  %.sroa.0.0.pre.i11.i31.sink.i195 = phi i16 [ %.sroa.0.0.pre.i11.i31.i208, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i205 ], [ %i.uq, %bb.cb ], [ %i.un, %.thread439 ]
  %i.uv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i31.sink.i195, float noundef %3) ; 2 uses
  %i.uw = load i16, ptr %i.ab, align 1, !tbaa !9  ; 2 uses
  %i.ux = and i16 %i.uw, 7
  %.not14.i12.i14.i196 = icmp eq i16 %i.ux, 0
  br i1 %.not14.i12.i14.i196, label %bb.cc, label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209

bb.cc:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194
  %i.uy = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.uz = load i16, ptr %i.uy, align 1, !tbaa !9  ; 2 uses
  %i.va = and i16 %i.uz, 7
  %.not15.i8.i15.i200 = icmp eq i16 %i.va, 0
  br i1 %.not15.i8.i15.i200, label %bb.cd, label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209

bb.cd:                                            ; preds = %bb.cc
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 81 ; 2 uses
  %i.vc = load i16, ptr %i.vb, align 1, !tbaa !9
  %i.vd = and i16 %i.vc, 7
  %.not16.i9.i16.i201 = icmp eq i16 %i.vd, 0
  %spec.select.i10.i17.i202 = select i1 %.not16.i9.i16.i201, ptr %i.as, ptr %i.vb
  %.sroa.0.0.pre.i11.i12.i203 = load i16, ptr %spec.select.i10.i17.i202, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209

_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194, %bb.cc, %bb.cd
  %.sroa.0.0.i13.i197 = phi i16 [ %i.uz, %bb.cc ], [ %i.uw, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i194 ], [ %.sroa.0.0.pre.i11.i12.i203, %bb.cd ]
  %.inv.i.i198 = fcmp ord float %i.uv, 0.000000e+00
  %i.ve = select i1 %.inv.i.i198, float %i.uv, float 0.000000e+00
  %i.vf = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i13.i197, float noundef %3) ; 2 uses
  %.inv.i5.i199 = fcmp ord float %i.vf, 0.000000e+00
  %i.vg = select i1 %.inv.i5.i199, float %i.vf, float 0.000000e+00
  %i.vh = fadd float %i.ve, %i.vg
  %i.vi = fadd float %i.um, %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 596
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !13
  %i.vl = load i16, ptr %i.am, align 1, !tbaa !9
  %i.vm = and i16 %i.vl, 7
  %.not.i3.i.i210 = icmp eq i16 %i.vm, 0
  %i.vn = load i16, ptr %i.ap, align 1
  %i.vo = and i16 %i.vn, 7
  %.not7.i.i.i211 = icmp eq i16 %i.vo, 0
  %spec.select.i4.i.i212 = select i1 %.not7.i.i.i211, ptr %i.as, ptr %i.ap
  %.sroa.0.0.in.i.i.i213 = select i1 %.not.i3.i.i210, ptr %spec.select.i4.i.i212, ptr %i.am
  %.sroa.0.0.pre.i11.i.i214 = load i16, ptr %.sroa.0.0.in.i.i.i213, align 1, !tbaa !12
  %i.vp = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i.i214, float noundef %3) ; 2 uses
  %i.vq = load i16, ptr %i.au, align 1, !tbaa !9
  %i.vr = and i16 %i.vq, 7
  %.not.i13.i6.i215 = icmp eq i16 %i.vr, 0
  %i.vs = load i16, ptr %i.ap, align 1
  %i.vt = and i16 %i.vs, 7
  %.not7.i14.i7.i216 = icmp eq i16 %i.vt, 0
  %spec.select.i15.i8.i217 = select i1 %.not7.i14.i7.i216, ptr %i.as, ptr %i.ap
  %.sroa.0.0.in.i16.i9.i218 = select i1 %.not.i13.i6.i215, ptr %spec.select.i15.i8.i217, ptr %i.au
  %.sroa.0.0.pre.i11.i12.i219 = load i16, ptr %.sroa.0.0.in.i16.i9.i218, align 1, !tbaa !12
  %.inv.i.i221 = fcmp ord float %i.vp, 0.000000e+00
  %i.vu = select i1 %.inv.i.i221, float %i.vp, float 0.000000e+00
  %i.vv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.pre.i11.i12.i219, float noundef %3) ; 2 uses
  %.inv.i5.i222 = fcmp ord float %i.vv, 0.000000e+00
  %i.vw = select i1 %.inv.i5.i222, float %i.vv, float 0.000000e+00
  %i.vx = fadd float %i.vu, %i.vw
  %i.vy = fadd float %i.vk, %i.vx
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209, %bb.ca
  %.2142 = phi float [ %i.vy, %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209 ], [ %.1141, %bb.ca ]
  %.3 = phi float [ %i.vi, %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit209 ], [ %.1, %bb.ca ]
  %i.vz = tail call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %2, float noundef %.3, float noundef %.2142, i8 noundef zeroext %6, i32 noundef 0, i32 noundef 0, float noundef %3, float noundef %4, i1 noundef zeroext true, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) ; 0 uses
  tail call fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext %i.m, i1 noundef zeroext true, float noundef %3, float noundef %4)
  tail call fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext %i.n, i1 noundef zeroext false, float noundef %3, float noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i8 %1, -2
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.d = load i16, ptr %i.c, align 1, !tbaa !9    ; 2 uses
  %i.e = and i16 %i.d, 7
  %.not14.i.i = icmp eq i16 %i.e, 0
  br i1 %.not14.i.i, label %bb.c, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.g = load i16, ptr %i.f, align 1, !tbaa !9    ; 2 uses
  %i.h = and i16 %i.g, 7
  %.not15.i.i = icmp eq i16 %i.h, 0
  br i1 %.not15.i.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load i16, ptr %i.i, align 1, !tbaa !9    ; 2 uses
  %i.k = and i16 %i.j, 7
  %.not16.i.i = icmp eq i16 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29
  %.val = load i16, ptr %i.l, align 1
  %.sroa.0.0.pre.i11.i31 = select i1 %.not16.i.i, i16 %.val, i16 %i.j
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29
  %.sroa.0.0.pre.i11.i31.sink = phi i16 [ %.sroa.0.0.pre.i11.i31, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29 ], [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.m = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %.sroa.0.0.pre.i11.i31.sink, float noundef %2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.o = load i16, ptr %i.n, align 1, !tbaa !9    ; 2 uses
  %i.p = and i16 %i.o, 7
  %.not14.i12.i14 = icmp eq i16 %i.p, 0
  br i1 %.not14.i12.i14, label %bb.d, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26

bb.d:                                             ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.r = load i16, ptr %i.q, align 1, !tbaa !9    ; 2 uses
  %i.s = and i16 %i.r, 7
  %.not15.i8.i15 = icmp eq i16 %i.s, 0
  br i1 %.not15.i8.i15, label %bb.e, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.u = load i16, ptr %i.t, align 1, !tbaa !9
  %i.v = and i16 %i.u, 7
  %.not16.i9.i16 = icmp eq i16 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i10.i17 = select i1 %.not16.i9.i16, ptr %i.w, ptr %i.t
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.y = load i16, ptr %i.x, align 1, !tbaa !9
  %i.z = and i16 %i.y, 7
  %.not.i3.i = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = and i16 %i.ab, 7
  %.not7.i.i = icmp eq i16 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i4.i = select i1 %.not7.i.i, ptr %i.ad, ptr %i.aa
  %.sroa.0.0.in.i.i = select i1 %.not.i3.i, ptr %spec.select.i4.i, ptr %i.x
  %.sroa.0.0.pre.i11.i = load i16, ptr %.sroa.0.0.in.i.i, align 1, !tbaa !12
  %i.ae = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %.sroa.0.0.pre.i11.i, float noundef %2)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !9
  %i.ah = and i16 %i.ag, 7
  %.not.i13.i6 = icmp eq i16 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = and i16 %i.aj, 7
  %.not7.i14.i7 = icmp eq i16 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i15.i8 = select i1 %.not7.i14.i7, ptr %i.al, ptr %i.ai
  %.sroa.0.0.in.i16.i9 = select i1 %.not.i13.i6, ptr %spec.select.i15.i8, ptr %i.af
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10: ; preds = %bb.f, %bb.e
  %i.am = phi float [ %i.m, %bb.e ], [ %i.ae, %bb.f ]
  %spec.select.i10.sink.i11 = phi ptr [ %spec.select.i10.i17, %bb.e ], [ %.sroa.0.0.in.i16.i9, %bb.f ]
  %.sroa.0.0.pre.i11.i12 = load i16, ptr %spec.select.i10.sink.i11, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread, %bb.d, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10
  %i.an = phi float [ %i.m, %bb.d ], [ %i.m, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread ], [ %i.am, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10 ] ; 2 uses
  %.sroa.0.0.i13 = phi i16 [ %i.r, %bb.d ], [ %i.o, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread ], [ %.sroa.0.0.pre.i11.i12, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10 ]
  %.inv.i = fcmp ord float %i.an, 0.000000e+00
  %i.ao = select i1 %.inv.i, float %i.an, float 0.000000e+00
  %i.ap = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %.sroa.0.0.i13, float noundef %2) ; 2 uses
  %.inv.i5 = fcmp ord float %i.ap, 0.000000e+00
  %i.aq = select i1 %.inv.i5, float %i.ap, float 0.000000e+00
  %i.ar = fadd float %i.ao, %i.aq
  ret float %i.ar
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %1, float %3, float noundef %4, float noundef %5) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.c = and i8 %1, -2
  %i.d = icmp eq i8 %i.c, 2                       ; 2 uses
  %i.e = icmp eq i8 %2, 2                         ; 2 uses
  %i.f = select i1 %i.e, i32 2, i32 0
  %.0.i.i.i.i = select i1 %i.d, i32 %i.f, i32 1   ; 2 uses
  %i.g = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %2)
  %i.h = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.g, float noundef %5)
  %i.i = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i.i, i8 noundef zeroext %2)
  %i.j = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.i, float noundef 0.000000e+00)
  %i.k = select i1 %i.e, i32 0, i32 2
  %.0.i.i.i7.i = select i1 %i.d, i32 %i.k, i32 3  ; 2 uses
  %i.l = tail call i16 @_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %2)
  %i.m = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.l, float noundef %5)
  %i.n = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %.0.i.i.i7.i, i8 noundef zeroext %2)
  %i.o = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.n, float noundef 0.000000e+00)
  %i.p = insertelement <4 x float> poison, float %i.h, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.j, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.m, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 4 uses
  %i.t = fcmp ord <4 x float> %i.s, zeroinitializer
  %i.u = fcmp uno <4 x float> %i.s, zeroinitializer
  %i.v = fcmp olt <4 x float> %i.s, zeroinitializer
  %i.w = select <4 x i1> %i.t, <4 x i1> %i.v, <4 x i1> %i.u
  %i.x = select <4 x i1> %i.w, <4 x float> zeroinitializer, <4 x float> %i.s ; 2 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.z = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aa = fadd <2 x float> %i.y, %i.z             ; 2 uses
  %shift = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aa, %shift
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %or.cond.i = fcmp ord float %i.a, %i.ab
  %i.ac = fcmp uno float %i.a, 0.000000e+00
  %i.ad = fcmp olt float %i.a, %i.ab
  %.sink.i = select i1 %or.cond.i, i1 %i.ad, i1 %i.ac
  %i.ae = select i1 %.sink.i, float %i.ab, float %i.a
  ret float %i.ae
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef, float noundef, float noundef, i8 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 4 dereferenceable(60), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, float noundef %6, float noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = and i8 %4, -2
  %i.b = icmp eq i8 %i.a, 2                       ; 3 uses
  %i.c = select i1 %i.b, float %6, float %7       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 14 uses
  %i.e = icmp eq i8 %3, 2                         ; 2 uses
  %i.f = select i1 %i.e, i32 2, i32 0
  %.0.i.i = select i1 %i.b, i32 %i.f, i32 1       ; 7 uses
  %i.g = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.h = and i16 %i.g, 7
  %.not119 = icmp eq i16 %i.h, 0
  br i1 %.not119, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.j = and i16 %i.i, 7
  %i.k = icmp eq i16 %i.j, 4
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.m = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.l, float noundef %i.c) ; 2 uses
  %.inv.i = fcmp ord float %i.m, 0.000000e+00
  %i.n = select i1 %.inv.i, float %i.m, float 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.q = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i16 %i.p, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i = fcmp ord float %i.q, 0.000000e+00
  %i.r = fcmp uno float %i.q, 0.000000e+00
  %i.s = fcmp olt float %i.q, 0.000000e+00
  %.sink.i.i = select i1 %or.cond.i.i, i1 %i.s, i1 %i.r
  %i.t = select i1 %.sink.i.i, float 0.000000e+00, float %i.q
  %i.u = fadd float %i.n, %i.t
  %i.v = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.w = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.v, float noundef %i.c) ; 2 uses
  %.inv.i79 = fcmp ord float %i.w, 0.000000e+00
  %i.x = select i1 %.inv.i79, float %i.w, float 0.000000e+00
  %i.y = fadd float %i.u, %i.x                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff:bb.a
  ]

bb.ag:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161.thread, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161
  %i.jq = phi ptr [ %i.iw, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161.thread ], [ %i.jp, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161 ]
  %i.jr = phi float [ %i.iv, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161.thread ], [ %i.jo, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161 ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.jt = load i16, ptr %i.js, align 1, !tbaa !9  ; 2 uses
  %i.ju = and i16 %i.jt, 7
  %.not14.i.i152 = icmp eq i16 %i.ju, 0
  br i1 %.not14.i.i152, label %bb.ai, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread: ; preds = %bb.ag
  %i.jv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %i.jt, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i69194 = fcmp ord float %i.jv, 0.000000e+00
  %i.jw = fcmp uno float %i.jv, 0.000000e+00
  %i.jx = fcmp olt float %i.jv, 0.000000e+00
  %.sink.i.i7.i70195 = select i1 %or.cond.i.i6.i69194, i1 %i.jx, i1 %i.jw
  %i.jy = select i1 %.sink.i.i7.i70195, float 0.000000e+00, float %i.jv
  %i.jz = fadd float %i.jr, %i.jy
  br label %bb.ak

bb.ah:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161.thread189, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161
  %i.ka = phi ptr [ %i.je, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161.thread189 ], [ %i.jp, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161 ]
  %i.kb = phi float [ %i.jd, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161.thread189 ], [ %i.jo, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161 ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.kd = load i16, ptr %i.kc, align 1, !tbaa !9  ; 2 uses
  %i.ke = and i16 %i.kd, 7
  %.not.i.i146 = icmp eq i16 %i.ke, 0
  br i1 %.not.i.i146, label %bb.ai, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread196

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread196: ; preds = %bb.ah
  %i.kf = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %i.kd, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i69198 = fcmp ord float %i.kf, 0.000000e+00
  %i.kg = fcmp uno float %i.kf, 0.000000e+00
  %i.kh = fcmp olt float %i.kf, 0.000000e+00
  %.sink.i.i7.i70199 = select i1 %or.cond.i.i6.i69198, i1 %i.kh, i1 %i.kg
  %i.ki = select i1 %.sink.i.i7.i70199, float 0.000000e+00, float %i.kf
  %i.kj = fadd float %i.kb, %i.ki
  br label %bb.al

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161
  %i.kk = phi ptr [ %i.ka, %bb.ah ], [ %i.jq, %bb.ag ], [ %i.jp, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161 ]
  %i.kl = phi float [ %i.kb, %bb.ah ], [ %i.jr, %bb.ag ], [ %i.jo, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit161 ]
  %i.km = load i16, ptr %i.kk, align 1, !tbaa !9  ; 2 uses
  %i.kn = and i16 %i.km, 7
  %.not15.i.i148 = icmp eq i16 %i.kn, 0
  br i1 %.not15.i.i148, label %bb.aj, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153

bb.aj:                                            ; preds = %bb.ai
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 1, !tbaa !9
  %i.kq = and i16 %i.kp, 7
  %.not16.i.i149 = icmp eq i16 %i.kq, 0
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 139
  %spec.select.i.i150 = select i1 %.not16.i.i149, ptr %i.kr, ptr %i.ko
  %.sroa.0.0.pre.i11.i151 = load i16, ptr %spec.select.i.i150, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153: ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.i147 = phi i16 [ %.sroa.0.0.pre.i11.i151, %bb.aj ], [ %i.km, %bb.ai ]
  %i.ks = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %.sroa.0.0.i147, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i69 = fcmp ord float %i.ks, 0.000000e+00
  %i.kt = fcmp uno float %i.ks, 0.000000e+00
  %i.ku = fcmp olt float %i.ks, 0.000000e+00
  %.sink.i.i7.i70 = select i1 %or.cond.i.i6.i69, i1 %i.ku, i1 %i.kt
  %i.kv = select i1 %.sink.i.i7.i70, float 0.000000e+00, float %i.ks
  %i.kw = fadd float %i.kl, %i.kv                 ; 3 uses
  switch i8 %1, label %bb.am [
    i8 1, label %bb.ak
    i8 2, label %bb.al
  ]

bb.ak:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153
  %i.kx = phi float [ %i.jz, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread ], [ %i.kw, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.kz = load i16, ptr %i.ky, align 1, !tbaa !9  ; 2 uses
  %i.la = and i16 %i.kz, 7
  %.not14.i12.i144 = icmp eq i16 %i.la, 0
  br i1 %.not14.i12.i144, label %bb.am, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread: ; preds = %bb.ak
  %i.lb = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %i.kz, float noundef %5) ; 4 uses
  %or.cond.i.i.i63201 = fcmp ord float %i.lb, 0.000000e+00
  %i.lc = fcmp olt float %i.lb, 0.000000e+00
  %i.ld = fcmp uno float %i.lb, 0.000000e+00
  %.sink.i.i.i64202 = select i1 %or.cond.i.i.i63201, i1 %i.lc, i1 %i.ld
  %i.le = select i1 %.sink.i.i.i64202, float 0.000000e+00, float %i.lb
  br label %bb.ao

bb.al:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread196, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153
  %i.lf = phi float [ %i.kj, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153.thread196 ], [ %i.kw, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.lh = load i16, ptr %i.lg, align 1, !tbaa !9  ; 2 uses
  %i.li = and i16 %i.lh, 7
  %.not.i6.i138 = icmp eq i16 %i.li, 0
  br i1 %.not.i6.i138, label %bb.am, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread203

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread203: ; preds = %bb.al
  %i.lj = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %i.lh, float noundef %5) ; 4 uses
  %or.cond.i.i.i63205 = fcmp ord float %i.lj, 0.000000e+00
  %i.lk = fcmp olt float %i.lj, 0.000000e+00
  %i.ll = fcmp uno float %i.lj, 0.000000e+00
  %.sink.i.i.i64206 = select i1 %or.cond.i.i.i63205, i1 %i.lk, i1 %i.ll
  %i.lm = select i1 %.sink.i.i.i64206, float 0.000000e+00, float %i.lj
  br label %bb.ap

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153
  %i.ln = phi float [ %i.lf, %bb.al ], [ %i.kx, %bb.ak ], [ %i.kw, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit153 ] ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.lp = load i16, ptr %i.lo, align 1, !tbaa !9  ; 2 uses
  %i.lq = and i16 %i.lp, 7
  %.not15.i8.i140 = icmp eq i16 %i.lq, 0
  br i1 %.not15.i8.i140, label %bb.an, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145

bb.an:                                            ; preds = %bb.am
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  %i.ls = load i16, ptr %i.lr, align 1, !tbaa !9
  %i.lt = and i16 %i.ls, 7
  %.not16.i9.i141 = icmp eq i16 %i.lt, 0
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 121
  %spec.select.i10.i142 = select i1 %.not16.i9.i141, ptr %i.lu, ptr %i.lr
  %.sroa.0.0.pre.i11.i143 = load i16, ptr %spec.select.i10.i142, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145: ; preds = %bb.am, %bb.an
  %.sroa.0.0.i139 = phi i16 [ %i.lp, %bb.am ], [ %.sroa.0.0.pre.i11.i143, %bb.an ]
  %i.lv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %.sroa.0.0.i139, float noundef %5) ; 4 uses
  %or.cond.i.i.i63 = fcmp ord float %i.lv, 0.000000e+00
  %i.lw = fcmp olt float %i.lv, 0.000000e+00
  %i.lx = fcmp uno float %i.lv, 0.000000e+00
  %.sink.i.i.i64 = select i1 %or.cond.i.i.i63, i1 %i.lw, i1 %i.lx
  %i.ly = select i1 %.sink.i.i.i64, float 0.000000e+00, float %i.lv ; 3 uses
  switch i8 %1, label %bb.aq [
    i8 1, label %bb.ao
    i8 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145
  %i.lz = phi float [ %i.le, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread ], [ %i.ly, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145 ] ; 2 uses
  %i.ma = phi float [ %i.kx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread ], [ %i.ln, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.mc = load i16, ptr %i.mb, align 1, !tbaa !9  ; 2 uses
  %i.md = and i16 %i.mc, 7
  %.not14.i12.i136 = icmp eq i16 %i.md, 0
  br i1 %.not14.i12.i136, label %bb.aq, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137

bb.ap:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread203, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145
  %i.me = phi float [ %i.lm, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread203 ], [ %i.ly, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145 ] ; 2 uses
  %i.mf = phi float [ %i.lf, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145.thread203 ], [ %i.ln, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.mh = load i16, ptr %i.mg, align 1, !tbaa !9  ; 2 uses
  %i.mi = and i16 %i.mh, 7
  %.not.i6.i130 = icmp eq i16 %i.mi, 0
  br i1 %.not.i6.i130, label %bb.aq, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145
  %i.mj = phi float [ %i.me, %bb.ap ], [ %i.lz, %bb.ao ], [ %i.ly, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145 ] ; 2 uses
  %i.mk = phi float [ %i.mf, %bb.ap ], [ %i.ma, %bb.ao ], [ %i.ln, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit145 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.mm = load i16, ptr %i.ml, align 1, !tbaa !9  ; 2 uses
  %i.mn = and i16 %i.mm, 7
  %.not15.i8.i132 = icmp eq i16 %i.mn, 0
  br i1 %.not15.i8.i132, label %bb.ar, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137

bb.ar:                                            ; preds = %bb.aq
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 1, !tbaa !9
  %i.mq = and i16 %i.mp, 7
  %.not16.i9.i133 = icmp eq i16 %i.mq, 0
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 139
  %spec.select.i10.i134 = select i1 %.not16.i9.i133, ptr %i.mr, ptr %i.mo
  %.sroa.0.0.pre.i11.i135 = load i16, ptr %spec.select.i10.i134, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137: ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.ms = phi float [ %i.mj, %bb.aq ], [ %i.lz, %bb.ao ], [ %i.mj, %bb.ar ], [ %i.me, %bb.ap ]
  %i.mt = phi float [ %i.mk, %bb.aq ], [ %i.ma, %bb.ao ], [ %i.mk, %bb.ar ], [ %i.mf, %bb.ap ]
  %.sroa.0.0.i131 = phi i16 [ %i.mm, %bb.aq ], [ %i.mc, %bb.ao ], [ %.sroa.0.0.pre.i11.i135, %bb.ar ], [ %i.mh, %bb.ap ]
  %i.mu = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %.sroa.0.0.i131, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i65 = fcmp ord float %i.mu, 0.000000e+00
  %i.mv = fcmp uno float %i.mu, 0.000000e+00
  %i.mw = fcmp olt float %i.mu, 0.000000e+00
  %.sink.i.i7.i66 = select i1 %or.cond.i.i6.i65, i1 %i.mw, i1 %i.mv
  %i.mx = select i1 %.sink.i.i7.i66, float 0.000000e+00, float %i.mu
  %i.my = fadd float %i.ms, %i.mx
  %i.mz = fadd float %i.mt, %i.my                 ; 2 uses
  %i.na = fcmp ord float %i.mz, 0.000000e+00
  %.sroa.0.0.i38 = select i1 %i.na, float %i.mz, float 0.000000e+00
  %i.nb = fadd float %i.ii, %.sroa.0.0.i38
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137, %bb.aa, %bb.f, %bb.e
  %.sroa.0163.0 = phi float [ %i.ii, %bb.aa ], [ %i.bh, %bb.e ], [ %i.nb, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137 ], [ %i.dd, %bb.f ] ; 3 uses
  %.sroa.0164.0 = phi float [ %.sroa.010.1.i33, %bb.aa ], [ %.sroa.010.1.i, %bb.e ], [ %.sroa.010.1.i33, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit137 ], [ %.sroa.010.1.i, %bb.f ]
  %or.cond.i40 = fcmp oge float %.sroa.0163.0, 0.000000e+00
  %i.nc = fcmp ogt float %3, %.sroa.0163.0
  %or.cond = select i1 %or.cond.i40, i1 %i.nc, i1 false
  br i1 %or.cond, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit42, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread

_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread: ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit35
  %.sroa.0164.0212220 = phi float [ %.sroa.0164.0, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.010.1.i, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.010.1.i33, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit35 ] ; 3 uses
  %or.cond.i41 = fcmp oge float %.sroa.0164.0212220, 0.000000e+00
  %i.nd = fcmp olt float %3, %.sroa.0164.0212220
  %or.cond226 = select i1 %or.cond.i41, i1 %i.nd, i1 false
  br i1 %or.cond226, label %bb.as, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit42

bb.as:                                            ; preds = %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread
  br label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit42

_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit42: ; preds = %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, %bb.g, %bb.as
  %.sroa.027.0 = phi float [ %.sroa.0163.0, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.0164.0212220, %bb.as ], [ %3, %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread ], [ %3, %bb.g ]
  ret float %.sroa.027.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i8 %3, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.c = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.d = zext nneg i8 %3 to i64
  %switch.gep28 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.d
  %switch.load29 = load i8, ptr %switch.gep28, align 1
  %switch.ext30 = zext i8 %switch.load29 to i64
  %i.e = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i32 noundef %switch.ext, i8 noundef zeroext %2)
  %i.f = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.e, float noundef %4) ; 2 uses
  %.inv.i18 = fcmp ord float %i.f, 0.000000e+00
  %i.g = select i1 %.inv.i18, float %i.f, float 0.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %switch.ext30
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
  %i.k = fadd float %i.g, %i.j                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = tail call noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i32 noundef 2)
  br i1 %i.n, label %switch.lookup35, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 12
  %.not = icmp eq i8 %i.q, 12
  br i1 %.not, label %switch.lookup35, label %switch.lookup31

switch.lookup31:                                  ; preds = %bb.c
  %i.r = zext nneg i8 %3 to i64
  %switch.gep32 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.r
  %switch.load33 = load i8, ptr %switch.gep32, align 1
  %switch.ext34 = zext i8 %switch.load33 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %switch.ext34
  %i.u = load float, ptr %i.t, align 4, !tbaa !13
  %i.v = fadd float %i.k, %i.u
  br label %switch.lookup35

switch.lookup35:                                  ; preds = %switch.lookup, %bb.c, %switch.lookup31
  %.0 = phi float [ %i.k, %switch.lookup ], [ %i.v, %switch.lookup31 ], [ %i.k, %bb.c ]
  %i.w = zext nneg i8 %3 to i64
  %switch.gep36 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.w
  %switch.load37 = load i8, ptr %switch.gep36, align 1
  %switch.ext38 = zext i8 %switch.load37 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %1, float noundef %.0, i32 noundef %switch.ext38)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i8 %3, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf, i64 %i.b
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.c = zext nneg i8 %3 to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.10, i64 %i.c
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext29 = zext i8 %switch.load28 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.e = load float, ptr %i.d, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.g = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.f, i32 noundef %switch.ext29, i8 noundef zeroext %2)
  %i.h = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.f, i16 %i.g, float noundef %4) ; 2 uses
  %.inv.i = fcmp ord float %i.h, 0.000000e+00
  %i.i = select i1 %.inv.i, float %i.h, float 0.000000e+00
  %i.j = fadd float %i.e, %i.i                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = tail call noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 2)
  br i1 %i.m, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %.not = icmp eq i8 %i.p, 12
  br i1 %.not, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit, label %switch.lookup30

switch.lookup30:                                  ; preds = %bb.c
  %i.q = zext nneg i8 %3 to i64
  %switch.gep31 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.10, i64 %i.q
  %switch.load32 = load i8, ptr %switch.gep31, align 1
  %switch.ext33 = zext i8 %switch.load32 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %switch.ext33
  %i.t = load float, ptr %i.s, align 4, !tbaa !13
  %i.u = fadd float %i.j, %i.t
  br label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit: ; preds = %switch.lookup30, %bb.c, %switch.lookup
  %.0 = phi float [ %i.j, %switch.lookup ], [ %i.u, %switch.lookup30 ], [ %i.j, %bb.c ]
  %switch = icmp samesign ult i8 %3, 2
  %spec.select = zext i1 %switch to i64           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %spec.select
  %i.x = load float, ptr %i.w, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %spec.select
  %i.aa = load float, ptr %i.z, align 4, !tbaa !13
  %i.ab = zext nneg i8 %3 to i64
  %switch.gep35 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.ab
  %switch.load36 = load i8, ptr %switch.gep35, align 1
  %switch.ext37 = zext i8 %switch.load36 to i32
  %i.ac = fsub float %i.x, %i.aa
  %i.ad = fsub float %i.ac, %.0
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %1, float noundef %i.ad, i32 noundef %switch.ext37)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, float noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i8 %3, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %switch.ext
  %i.e = load float, ptr %i.d, align 4, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  switch i8 %3, label %default.unreachable [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit.thread
    i8 1, label %bb.c
    i8 2, label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit
    i8 3, label %bb.d
  ]

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit.thread: ; preds = %switch.lookup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit

default.unreachable:                              ; preds = %switch.lookup
  unreachable

bb.c:                                             ; preds = %switch.lookup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit

bb.d:                                             ; preds = %switch.lookup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit

_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit: ; preds = %switch.lookup, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit.thread, %bb.c, %bb.d
  %.pn.in = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ], [ %i.g, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit.thread ], [ %i.f, %switch.lookup ]
  %.0.i37 = phi i64 [ 0, %bb.d ], [ 1, %bb.c ], [ 3, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit.thread ], [ 2, %switch.lookup ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.pn = load float, ptr %.pn.in, align 4, !tbaa !13
  %i.k = fsub float %i.e, %.pn
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.0.i37
  %i.m = load float, ptr %i.l, align 4, !tbaa !13
  %i.n = fsub float %i.k, %i.m                    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.q = tail call noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef 2)
  br i1 %i.q, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 12
  %.not = icmp eq i8 %i.t, 12
  br i1 %.not, label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43, label %switch.lookup72

switch.lookup72:                                  ; preds = %bb.e
  %i.u = zext nneg i8 %3 to i64
  %switch.gep73 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.9, i64 %i.u
  %switch.load74 = load i16, ptr %switch.gep73, align 2
  %switch.ext75 = zext i16 %switch.load74 to i64
  %i.v = zext nneg i8 %3 to i64
  %switch.gep76 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.10, i64 %i.v
  %switch.load77 = load i8, ptr %switch.gep76, align 1
  %switch.ext78 = zext i8 %switch.load77 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext75
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.pn70 = load float, ptr %i.w, align 4, !tbaa !13
  %i.y = fsub float %i.n, %.pn70
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %switch.ext78
  %i.aa = load float, ptr %i.z, align 4, !tbaa !13
  %i.ab = fsub float %i.y, %i.aa
  br label %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43

_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43: ; preds = %switch.lookup72, %bb.e, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit
  %.034 = phi float [ %i.n, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit ], [ %i.ab, %switch.lookup72 ], [ %i.n, %bb.e ]
  %switch = icmp samesign ult i8 %3, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ad = zext i1 %switch to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.ah = tail call noundef float @_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i8 noundef zeroext %3, float noundef %4)
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = fsub float %.034, %i.ai
  %i.ak = fmul float %i.aj, 5.000000e-01
  switch i8 %3, label %default.unreachable66 [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread
    i8 1, label %bb.f
    i8 2, label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit
    i8 3, label %bb.g
  ]

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit

default.unreachable66:                            ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  unreachable

bb.f:                                             ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit

bb.g:                                             ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit

_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit: ; preds = %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread, %bb.f, %bb.g
  %.pn71.in = phi ptr [ %i.an, %bb.g ], [ %i.am, %bb.f ], [ %i.al, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread ], [ %i.f, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43 ]
  %.0.i.i = phi i32 [ 2, %bb.g ], [ 3, %bb.f ], [ 1, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit45.thread ], [ 0, %_ZN8facebook4yoga9dimensionENS0_13FlexDirectionE.exit43 ]
  %.pn71 = load float, ptr %.pn71.in, align 4, !tbaa !13
  %i.ao = fadd float %i.ak, %.pn71
  %i.ap = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i32 noundef %.0.i.i, i8 noundef zeroext %2)
  %i.aq = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ag, i16 %i.ap, float noundef %4) ; 2 uses
  %.inv.i = fcmp ord float %i.aq, 0.000000e+00
  %i.ar = select i1 %.inv.i, float %i.aq, float 0.000000e+00
  %i.as = fadd float %i.ao, %i.ar                 ; 3 uses
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.au = tail call noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef 2)
  br i1 %i.au, label %switch.lookup83, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 12
  %.not35 = icmp eq i8 %i.ax, 12
  br i1 %.not35, label %switch.lookup83, label %switch.lookup79

switch.lookup79:                                  ; preds = %bb.h
  %i.ay = zext nneg i8 %3 to i64
  %switch.gep80 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.ay
  %switch.load81 = load i8, ptr %switch.gep80, align 1
  %switch.ext82 = zext i8 %switch.load81 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %switch.ext82
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13
  %i.bc = fadd float %i.as, %i.bb
  br label %switch.lookup83

switch.lookup83:                                  ; preds = %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit, %bb.h, %switch.lookup79
  %.0 = phi float [ %i.as, %_ZNK8facebook4yoga5Style22computeFlexStartMarginENS0_13FlexDirectionENS0_9DirectionEf.exit ], [ %i.bc, %switch.lookup79 ], [ %i.as, %bb.h ]
  %i.bd = zext nneg i8 %3 to i64
  %switch.gep84 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.bd
  %switch.load85 = load i8, ptr %switch.gep84, align 1
  %switch.ext86 = zext i8 %switch.load85 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %1, float noundef %.0, i32 noundef %switch.ext86)
  ret void
}

declare noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.k) #10
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.promoted9 = load ptr, ptr %i.m, align 8
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !40 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next

_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next: ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  store ptr %.promoted9, ptr %i.v, align 8, !tbaa !42
  store ptr %i.v, ptr %i.m, align 8, !tbaa !42
  store ptr %.0.peel, ptr %0, align 8, !tbaa !31
  store i64 0, ptr %i.b, align 8, !tbaa !92
  br label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.e, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next
  %1 = phi ptr [ %i.v, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next ], [ %i.ag, %bb.e ]
  %i.x = phi ptr [ %.0.peel, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next ], [ %.0, %bb.e ]
  %.0.in = phi ptr [ %i.u, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next ], [ %i.aj, %bb.e ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !40  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 12
  %i.ab = icmp eq i8 %i.aa, 8
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.x, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %1, ptr %i.ag, align 8, !tbaa !42
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !42
  store ptr %.0, ptr %0, align 8, !tbaa !31
  store i64 0, ptr %i.b, align 8, !tbaa !92
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i6.not, label %.loopexit11, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !99

.loopexit11:                                      ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 0) #10
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7, %_ZNK8facebook4yoga4Node8getChildEm.exit, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !94

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  store ptr %i.q, ptr %0, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !97
  store i64 %i.s, ptr %i.a, align 8, !tbaa !92
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !42
  store ptr %i.t, ptr %i.m, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #12
  %i.u = load i64, ptr %i.a, align 8, !tbaa !92
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !30  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !41

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { "function-inline-cost-multiplier"="2" }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 int", !17, i64 0}
!21 = !{!19, !20, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!25 = distinct !{!25, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!26 = !{!27, !28, i64 8}
!27 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !29, i64 0}
!29 = !{!"any p2 pointer", !17, i64 0}
!30 = !{!27, !28, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !33, i64 0, !34, i64 8, !35, i64 16}
!33 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !17, i64 0}
!34 = !{!"long", !7, i64 0}
!35 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !36, i64 0}
!36 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !37, i64 0}
!37 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !38, i64 0}
!38 = !{!"_ZTSSt19_Fwd_list_node_base", !39, i64 0}
!39 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !17, i64 0}
!40 = !{!33, !33, i64 0}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!38, !39, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !90, i64 720}
!46 = !{!"_ZTSN8facebook4yoga4NodeE", !47, i64 0, !47, i64 0, !47, i64 0, !47, i64 0, !48, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !49, i64 32, !49, i64 36, !17, i64 40, !17, i64 48, !50, i64 56, !81, i64 336, !34, i64 672, !34, i64 680, !33, i64 688, !87, i64 696, !90, i64 720, !91, i64 728}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !7, i64 0}
!49 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !14, i64 0}
!50 = !{!"_ZTSN8facebook4yoga5StyleE", !51, i64 0, !52, i64 0, !53, i64 0, !53, i64 1, !53, i64 1, !54, i64 2, !54, i64 2, !54, i64 3, !55, i64 3, !56, i64 3, !57, i64 4, !58, i64 4, !59, i64 4, !10, i64 5, !10, i64 7, !10, i64 9, !10, i64 11, !60, i64 13, !60, i64 31, !60, i64 49, !60, i64 67, !61, i64 85, !62, i64 91, !62, i64 95, !62, i64 99, !10, i64 103, !63, i64 112, !63, i64 136, !63, i64 160, !63, i64 184, !68, i64 208, !68, i64 216, !68, i64 224, !68, i64 232, !70, i64 240}
!51 = !{!"_ZTSN8facebook4yoga9DirectionE", !7, i64 0}
!52 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !7, i64 0}
!53 = !{!"_ZTSN8facebook4yoga7JustifyE", !7, i64 0}
!54 = !{!"_ZTSN8facebook4yoga5AlignE", !7, i64 0}
!55 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !7, i64 0}
!56 = !{!"_ZTSN8facebook4yoga4WrapE", !7, i64 0}
!57 = !{!"_ZTSN8facebook4yoga8OverflowE", !7, i64 0}
!58 = !{!"_ZTSN8facebook4yoga7DisplayE", !7, i64 0}
!59 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !7, i64 0}
!60 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !7, i64 0}
!61 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !7, i64 0}
!62 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !7, i64 0}
!63 = !{!"_ZTSSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EE", !64, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE12_Vector_implE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!67 = !{!"p1 _ZTSN8facebook4yoga13GridTrackSizeE", !17, i64 0}
!68 = !{!"_ZTSN8facebook4yoga8GridLineE", !69, i64 0, !6, i64 4}
!69 = !{!"_ZTSN8facebook4yoga12GridLineTypeE", !7, i64 0}
!70 = !{!"_ZTSN8facebook4yoga14StyleValuePoolE", !71, i64 0}
!71 = !{!"_ZTSN8facebook4yoga16SmallValueBufferILm4EEE", !11, i64 0, !72, i64 4, !73, i64 24, !75, i64 32}
!72 = !{!"_ZTSSt5arrayIjLm4EE", !7, i64 0}
!73 = !{!"_ZTSSt6bitsetILm4EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Base_bitsetILm1EE", !34, i64 0}
!75 = !{!"_ZTSSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !76, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_ELb1ELb1EE", !77, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !78, i64 0}
!78 = !{!"_ZTSSt5tupleIJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !79, i64 0}
!79 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !80, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook4yoga16SmallValueBufferILm4EE8OverflowELb0EE", !16, i64 0}
!81 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !6, i64 0, !49, i64 4, !49, i64 8, !6, i64 12, !6, i64 16, !51, i64 20, !6, i64 24, !82, i64 28, !83, i64 220, !51, i64 244, !47, i64 244, !85, i64 248, !85, i64 256, !85, i64 264, !86, i64 272, !86, i64 288, !86, i64 304, !86, i64 320}
!82 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !7, i64 0}
!83 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !14, i64 0, !14, i64 4, !84, i64 8, !84, i64 12, !14, i64 16, !14, i64 20}
!84 = !{!"_ZTSN8facebook4yoga10SizingModeE", !7, i64 0}
!85 = !{!"_ZTSSt5arrayIfLm2EE", !7, i64 0}
!86 = !{!"_ZTSSt5arrayIfLm4EE", !7, i64 0}
!87 = !{!"_ZTSSt6vectorIPN8facebook4yoga4NodeESaIS3_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE12_Vector_implE", !27, i64 0}
!90 = !{!"p1 _ZTSN8facebook4yoga6ConfigE", !17, i64 0}
!91 = !{!"_ZTSSt5arrayIN8facebook4yoga15StyleSizeLengthELm2EE", !7, i64 0}
!92 = !{!32, !34, i64 8}
!93 = !{!36, !39, i64 0}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!96, !33, i64 0}
end_hunk_2
