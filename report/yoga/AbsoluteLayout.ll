Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
inline.NumInlined: 725
inline.NumDeleted: 178
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
  %.fr457 = freeze i32 %i.g
  %10 = lshr i32 %.fr457, 2
  %11 = trunc i32 %10 to i8                       ; 2 uses
  %i.h = and i8 %11, 3                            ; 3 uses
  %i.i = icmp eq i8 %6, 2
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  switch i8 %i.h, label %.thread390 [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
    i8 3, label %bb.e
  ]

.thread390:                                       ; preds = %bb.d
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.c
  %i.j = and i8 %11, 2
  %spec.select450 = xor i8 %i.j, 2
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit: ; preds = %bb.f, %bb.b, %bb.e, %bb.d, %.thread390
  %i.k = phi i8 [ 3, %bb.d ], [ 2, %bb.e ], [ %spec.select, %bb.b ], [ %i.h, %bb.f ], [ %i.h, %.thread390 ] ; 2 uses
  %i.l = phi i8 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ %spec.select450, %bb.f ], [ 3, %.thread390 ]
  %i.m = icmp samesign ult i8 %i.k, 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 28 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 77 ; 2 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !11   ; 2 uses
  %i.q = and i16 %i.p, 7
  %.not14.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not14.i.i.i, label %bb.g, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

bb.g:                                             ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 69
  %i.s = load i16, ptr %i.r, align 1, !tbaa !11   ; 2 uses
  %i.t = and i16 %i.s, 7
  %.not15.i.i.i = icmp eq i16 %i.t, 0
  br i1 %.not15.i.i.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.v = load i16, ptr %i.u, align 1, !tbaa !11   ; 2 uses
  %i.w = and i16 %i.v, 7
  %.not16.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 85
  %.val.i = load i16, ptr %i.x, align 1
  %.sroa.0.0.pre.i11.i31.i = select i1 %.not16.i.i.i, i16 %.val.i, i16 %i.v
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i, %bb.g, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %.sroa.0.0.pre.i11.i31.sink.i = phi i16 [ %.sroa.0.0.pre.i11.i31.i, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29.i ], [ %i.s, %bb.g ], [ %i.p, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit ]
  %i.y = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.n, i16 %.sroa.0.0.pre.i11.i31.sink.i, float noundef %3)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 79 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !11  ; 2 uses
  %i.ab = and i16 %i.aa, 7
  %.not14.i12.i14.i = icmp eq i16 %i.ab, 0
  br i1 %.not14.i12.i14.i, label %bb.h, label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit

bb.h:                                             ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !11 ; 2 uses
  %i.ae = and i16 %i.ad, 7
  %.not15.i8.i15.i = icmp eq i16 %i.ae, 0
  br i1 %.not15.i8.i15.i, label %bb.i, label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 81 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !11
  %i.ah = and i16 %i.ag, 7
  %.not16.i9.i16.i = icmp eq i16 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 85
  %spec.select.i10.i17.i = select i1 %.not16.i9.i16.i, ptr %i.ai, ptr %i.af
  %.sroa.0.0.pre.i11.i12.i = load i16, ptr %spec.select.i10.i17.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit

_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i, %bb.h, %bb.i
  %.sroa.0.0.i13.i = phi i16 [ %i.ad, %bb.h ], [ %i.aa, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i ], [ %.sroa.0.0.pre.i11.i12.i, %bb.i ]
  %i.aj = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.n, i16 %.sroa.0.0.i13.i, float noundef %3)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 71 ; 4 uses
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !11
  %i.am = and i16 %i.al, 7
  %.not.i3.i.i = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 83 ; 8 uses
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = and i16 %i.ao, 7
  %.not7.i.i.i = icmp eq i16 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 85 ; 6 uses
  %spec.select.i4.i.i = select i1 %.not7.i.i.i, ptr %i.aq, ptr %i.an
  %.sroa.0.0.in.i.i.i = select i1 %.not.i3.i.i, ptr %spec.select.i4.i.i, ptr %i.ak
  %.sroa.0.0.pre.i11.i.i = load i16, ptr %.sroa.0.0.in.i.i.i, align 1, !tbaa !12
  %i.ar = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.n, i16 %.sroa.0.0.pre.i11.i.i, float noundef %3)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 75 ; 4 uses
  %i.at = load i16, ptr %i.as, align 1, !tbaa !11
  %i.au = and i16 %i.at, 7
  %.not.i13.i6.i = icmp eq i16 %i.au, 0
  %i.av = load i16, ptr %i.an, align 1
  %i.aw = and i16 %i.av, 7
  %.not7.i14.i7.i = icmp eq i16 %i.aw, 0
  %spec.select.i15.i8.i = select i1 %.not7.i14.i7.i, ptr %i.aq, ptr %i.an
  %.sroa.0.0.in.i16.i9.i = select i1 %.not.i13.i6.i, ptr %spec.select.i15.i8.i, ptr %i.as
  %.sroa.0.0.pre.i11.i12.i147 = load i16, ptr %.sroa.0.0.in.i16.i9.i, align 1, !tbaa !12
  %i.ax = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.n, i16 %.sroa.0.0.pre.i11.i12.i147, float noundef %3)
  %i.ay = insertelement <4 x float> poison, float %i.y, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.aj, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.ar, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = fcmp ord <4 x float> %i.bb, zeroinitializer
  %i.bd = select <4 x i1> %i.bc, <4 x float> %i.bb, <4 x float> zeroinitializer ; 4 uses
  %shift = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bd, %shift
  %i.be = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift495 = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop496 = fadd <4 x float> %i.bd, %shift495
  %i.bf = extractelement <4 x float> %foldExtExtBinop496, i64 2 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 728
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bg, align 4 ; 2 uses
  %i.bh = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %i.bi = trunc i64 %i.bh to i8                   ; 2 uses
  %i.bj = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.bk = bitcast i32 %i.bj to float              ; 4 uses
  switch i8 %i.bi, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread [
    i8 1, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit
    i8 2, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit
  %i.bl = fmul float %3, %i.bk
  %i.bm = fmul float %i.bl, f0x3C23D70A
  br label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit

_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit: ; preds = %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit, %bb.j
  %.sroa.0.0.i.i = phi float [ %i.bm, %bb.j ], [ %i.bk, %_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf.exit ]
  %i.bn = fcmp ult float %.sroa.0.0.i.i, 0.000000e+00
  br i1 %i.bn, label %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit.thread, label %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i152

_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i152: ; preds = %_ZN8facebook4yoga4Node17hasDefiniteLengthENS0_9DimensionEf.exit
  %i.bo = icmp eq i8 %i.bi, 1
  %i.bp = fmul float %3, %i.bk
  %i.bq = fmul float %i.bp, f0x3C23D70A
  %.sroa.0.0.i.i153 = select i1 %i.bo, float %i.bk, float %i.bq ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %_ZNK8facebook4yoga4Node20getResolvedDimensionENS0_9DirectionENS0_9DimensionEff.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK8facebook4yoga15StyleSizeLength7resolveEf.exit.i152
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 105
  switch i8 %6, label %bb.n [
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 113
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !11 ; 2 uses
  %i.by = and i16 %i.bx, 7
  %.not14.i.i356 = icmp eq i16 %i.by, 0
  br i1 %.not14.i.i356, label %bb.n, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread: ; preds = %bb.l
  %i.bz = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.n, i16 %i.bx, float noundef %3) ; 4 uses
  %or.cond.i.i.i223395 = fcmp ord float %i.bz, 0.000000e+00
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %i.cb = fcmp uno float %i.bz, 0.000000e+00
  %.sink.i.i.i224396 = select i1 %or.cond.i.i.i223395, i1 %i.ca, i1 %i.cb
  %i.cc = select i1 %.sink.i.i.i224396, float 0.000000e+00, float %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 123
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 115
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !11 ; 2 uses
  %i.cg = and i16 %i.cf, 7
  %.not.i.i350 = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i350, label %bb.n, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357.thread397: ; preds = %bb.m
  %i.ch = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.n, i16 %i.cf, float noundef %3) ; 4 uses
  %or.cond.i.i.i223399 = fcmp ord float %i.ch, 0.000000e+00
  %i.ci = fcmp olt float %i.ch, 0.000000e+00
  %i.cj = fcmp uno float %i.ch, 0.000000e+00
  %.sink.i.i.i224400 = select i1 %or.cond.i.i.i223399, i1 %i.ci, i1 %i.cj
  %i.ck = select i1 %.sink.i.i.i224400, float 0.000000e+00, float %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 123
  br label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cm = load i16, ptr %i.bv, align 1, !tbaa !11 ; 2 uses
  %i.cn = and i16 %i.cm, 7
  %.not15.i.i352 = icmp eq i16 %i.cn, 0
  br i1 %.not15.i.i352, label %bb.o, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit357

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 117 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !11
  %i.cq = and i16 %i.cp, 7
  %.not16.i.i353 = icmp eq i16 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 121
  %spec.select.i.i354 = select i1 %.not16.i.i353, ptr %i.cr, ptr %i.co
end_hunk_0
begin_hunk_1_@_ZN8facebook4yoga9boundAxisEPKNS0_4NodeENS0_13FlexDirectionENS0_9DirectionEfff:bb.a
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
  switch i8 %4, label %bb.f [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i80 = phi i32 [ 2, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.not = icmp eq i32 %.0.i.i, %.0.i80
  br i1 %.not, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
  %switch = icmp samesign ult i8 %4, 2
  %spec.select = zext i1 %switch to i64
  br label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit: ; preds = %bb.c, %bb.g
  %.0.i.i81 = phi i64 [ %spec.select, %bb.g ], [ 1, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0.i.i81
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %switch.i = icmp samesign ult i8 %4, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.ad = zext i1 %switch.i to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !14
  %i.ag = fsub float %i.ab, %i.af
  %i.ah = fsub float %i.ag, %i.y
  br label %switch.lookup

switch.lookup:                                    ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
  %i.ai = phi float [ %i.ah, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit ], [ %i.y, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit ]
  %i.aj = zext nneg i8 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.ai, i32 noundef %switch.ext)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.ak = select i1 %i.e, i32 0, i32 2
  %.0.i.i84 = select i1 %i.b, i32 %i.ak, i32 3    ; 5 uses
  %i.al = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.am = and i16 %i.al, 7
  %.not120 = icmp eq i16 %i.am, 0
  br i1 %.not120, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.ao = and i16 %i.an, 7
  %i.ap = icmp eq i16 %i.ao, 4
  br i1 %i.ap, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ult i8 %4, 4
  br i1 %i.aq, label %switch.lookup122, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

switch.lookup122:                                 ; preds = %bb.j
  %i.ar = zext nneg i8 %4 to i64
  %switch.gep123 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf, i64 %i.ar
  %switch.load124 = load i8, ptr %switch.gep123, align 1
  %switch.ext125 = zext i8 %switch.load124 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %switch.ext125
  %i.au = load float, ptr %i.at, align 4, !tbaa !14
  %switch115 = icmp samesign ult i8 %4, 2
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.aw = zext i1 %switch115 to i64               ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !14
  %i.az = fsub float %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bb = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ba, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.bc = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ba, i16 %i.bb, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i90 = fcmp ord float %i.bc, 0.000000e+00
  %i.bd = fcmp uno float %i.bc, 0.000000e+00
  %i.be = fcmp olt float %i.bc, 0.000000e+00
  %.sink.i.i91 = select i1 %or.cond.i.i90, i1 %i.be, i1 %i.bd
  %i.bf = select i1 %.sink.i.i91, float 0.000000e+00, float %i.bc
  %i.bg = fsub float %i.az, %i.bf
  %i.bh = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.bi = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bh, float noundef %i.c) ; 2 uses
  %.inv.i93 = fcmp ord float %i.bi, 0.000000e+00
  %i.bj = select i1 %.inv.i93, float %i.bi, float 0.000000e+00
  %i.bk = fsub float %i.bg, %i.bj
  %i.bl = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.bm = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bl, float noundef %i.c) ; 2 uses
  %.inv.i95 = fcmp ord float %i.bm, 0.000000e+00
  %i.bn = select i1 %.inv.i95, float %i.bm, float 0.000000e+00
  %i.bo = fsub float %i.bk, %i.bn                 ; 2 uses
  switch i8 %4, label %default.unreachable110 [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit101
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %switch.lookup122
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98

bb.m:                                             ; preds = %switch.lookup122
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98

default.unreachable110:                           ; preds = %switch.lookup122
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98: ; preds = %switch.lookup122, %bb.l, %bb.m
  %.0.i97 = phi i32 [ 2, %bb.m ], [ 1, %switch.lookup122 ], [ 0, %bb.l ]
  %.not74 = icmp eq i32 %.0.i.i, %.0.i97
  br i1 %.not74, label %switch.lookup126, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit101

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit101: ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98, %switch.lookup122
  %.0.i.i99 = phi i64 [ 1, %switch.lookup122 ], [ %i.aw, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98 ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0.i.i99
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !14
  %i.br = load float, ptr %i.ax, align 4, !tbaa !14
  %i.bs = fsub float %i.bq, %i.br
  %i.bt = fsub float %i.bs, %i.bo
  br label %switch.lookup126

switch.lookup126:                                 ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit101, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98
  %i.bu = phi float [ %i.bt, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit101 ], [ %i.bo, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit98 ]
  %i.bv = zext nneg i8 %4 to i64
  %switch.gep127 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.bv
  %switch.load128 = load i8, ptr %switch.gep127, align 1
  %switch.ext129 = zext i8 %switch.load128 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.bu, i32 noundef %switch.ext129)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.n:                                             ; preds = %bb.i, %bb.h
  br i1 %5, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = and i8 %i.by, 12
  %i.ca = icmp eq i8 %i.bz, 12
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load i32, ptr %i.d, align 8
  %i.cc = lshr i32 %i.cb, 12
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 15                        ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink20.i = phi i32 [ 8, %bb.p ], [ 4, %bb.o ]
  %i.cg = load i32, ptr %i.bw, align 8
  %i.ch = lshr i32 %i.cg, %.sink20.i
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 15
  br label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i: ; preds = %bb.q, %bb.p
  %8 = phi i8 [ %i.ce, %bb.p ], [ %i.cj, %bb.q ]
  switch i8 %8, label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit [
    i8 8, label %bb.r
    i8 0, label %bb.r
    i8 7, label %bb.r
    i8 1, label %bb.r
    i8 4, label %bb.r
    i8 9, label %bb.s
    i8 3, label %bb.s
    i8 2, label %bb.t
    i8 5, label %bb.t
    i8 6, label %bb.t
  ]

bb.r:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.s:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.t:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

._crit_edge:                                      ; preds = %bb.n
  %i.ck = load i32, ptr %i.d, align 8
  %i.cl = lshr i32 %i.ck, 24
  %i.cm = trunc nuw i32 %i.cl to i8
  %i.cn = and i8 %i.cm, 15                        ; 2 uses
  %i.co = icmp eq i8 %i.cn, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cq = load i32, ptr %i.cp, align 8            ; 3 uses
  %i.cr = lshr i32 %i.cq, 20
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = and i8 %i.cs, 15
  %i.cu = select i1 %i.co, i8 %i.ct, i8 %i.cn
  %.fr.i = freeze i8 %i.cu                        ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = and i8 %i.cw, 12
  %i.cy = icmp eq i8 %i.cx, 0
  %i.cz = icmp eq i8 %.fr.i, 5
  %or.cond.i.i104 = and i1 %i.cz, %i.cy
  %i.da = and i32 %i.cq, 8
  %.not.not.i.i = icmp eq i32 %i.da, 0
  %or.cond.i = select i1 %or.cond.i.i104, i1 %.not.not.i.i, i1 false
  %i.db = icmp slt i32 %i.cq, -1073741824         ; 2 uses
  br i1 %or.cond.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i: ; preds = %._crit_edge
  br i1 %i.db, label %bb.u, label %bb.v

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i: ; preds = %._crit_edge
  br i1 %i.db, label %.thread33.i, label %.thread30.i

bb.u:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  switch i8 %.fr.i, label %.thread33.i [
    i8 3, label %.thread30.i
    i8 2, label %.thread35.i
  ]

bb.v:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  switch i8 %.fr.i, label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit [
    i8 9, label %.thread30.i
    i8 0, label %.thread30.i
    i8 1, label %.thread30.i
    i8 5, label %.thread30.i
    i8 7, label %.thread30.i
    i8 6, label %.thread30.i
    i8 4, label %.thread30.i
    i8 8, label %.thread30.i
    i8 10, label %.thread33.i
    i8 3, label %.thread33.i
    i8 2, label %.thread35.i
  ]

.thread30.i:                                      ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.u, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i
  tail call fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

.thread33.i:                                      ; preds = %bb.v, %bb.v, %bb.u, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i
  tail call fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

.thread35.i:                                      ; preds = %bb.v, %bb.u
  tail call fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit: ; preds = %.thread35.i, %.thread33.i, %.thread30.i, %bb.v, %bb.t, %bb.s, %bb.r, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %switch.lookup126, %switch.lookup
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook4yoga25layoutAbsoluteDescendantsEPNS0_4NodeES2_NS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjjffff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(60) %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !97
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !97 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %11, align 8, !tbaa !36, !alias.scope !97
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !97
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !37, !noalias !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.i = load i8, ptr %i.h, align 4, !noalias !97
  %i.j = and i8 %i.i, 12
  %i.k = icmp eq i8 %i.j, 8
  br i1 %i.k, label %bb.c, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !38

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge unwind label %bb.d

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %11, align 8, !tbaa !36
  %.pre316 = load i64, ptr %i.e, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !39, !alias.scope !97 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #12
  %.not.i.i.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !96

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.d, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit177
  %common.resume.op = phi { ptr, i32 } [ %.pn110, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit177 ], [ %i.m, %bb.d ], [ %i.m, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !97
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.e
  %i.p = phi i64 [ %.pre316, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i112288 = icmp ne ptr %i.q, null
  %i.s = icmp ne i64 %i.p, 0
  %i.t = select i1 %.not.i112288, i1 true, i1 %i.s
  br i1 %i.t, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.u = phi ptr [ %i.l, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.r, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ] ; 5 uses
  %i.v = phi ptr [ %1, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.q, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.w = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.p, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.x = add i32 %5, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = icmp eq i8 %3, 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ap = insertelement <2 x float> poison, float %7, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %8, i64 1
  br label %bb.g

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.ar = trunc i8 %.2100 to i1
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.098.lcssa = phi i1 [ false, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %i.ar, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not12.i.i.i113 = icmp eq ptr %i.at, null
  br i1 %.not12.i.i.i113, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i114
  %.013.i.i.i115 = phi ptr [ %i.au, %.lr.ph.i.i.i114 ], [ %i.at, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.au = load ptr, ptr %.013.i.i.i115, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i115, i64 noundef 24) #12
  %.not.i.i.i116 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i116, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117, label %.lr.ph.i.i.i114, !llvm.loop !96

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117: ; preds = %.lr.ph.i.i.i114, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret i1 %.098.lcssa

bb.f:                                             ; preds = %bb.br
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.aw = phi i64 [ %i.w, %.lr.ph ], [ %i.li, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ax = phi ptr [ %i.v, %.lr.ph ], [ %i.lj, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 2 uses
  %.098289 = phi i8 [ 0, %.lr.ph ], [ %.2100, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 696
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 704
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !27 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.aw, %i.bf
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.aw, i64 noundef %i.bf) #10
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aw
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 58 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, 12
  %i.bl = icmp eq i8 %i.bk, 4
  br i1 %i.bl, label %bb.bq, label %bb.j

.loopexit:                                        ; preds = %bb.bi
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = lshr i32 %i.bn, 28
  %i.bp = trunc nuw nsw i32 %i.bo to i8
  %i.bq = and i8 %i.bp, 3
  switch i8 %i.bq, label %bb.bq [
    i8 2, label %bb.k
    i8 0, label %bb.bh
  ]

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.bs = invoke noundef zeroext i1 @_ZNK8facebook4yoga6Config9hasErrataENS0_6ErrataE(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i32 noundef 4)
          to label %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit unwind label %bb.ag

_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit: ; preds = %bb.k
  br i1 %i.bs, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit
  %i.bt = load float, ptr %i.z, align 4, !tbaa !14
  %i.bu = load i16, ptr %i.ab, align 1, !tbaa !11 ; 2 uses
  %i.bv = and i16 %i.bu, 7
  %.not14.i.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not14.i.i.i, label %bb.m, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bw = load i16, ptr %i.ac, align 1, !tbaa !11 ; 2 uses
  %i.bx = and i16 %i.bw, 7
  %.not15.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not15.i.i.i, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i: ; preds = %bb.m
  %i.by = load i16, ptr %i.ad, align 1, !tbaa !11 ; 2 uses
  %i.bz = and i16 %i.by, 7
  %.not16.i.i.i = icmp eq i16 %i.bz, 0
  %.val.i = load i16, ptr %i.ae, align 1
  %.sroa.0.0.pre.i11.i30.i = select i1 %.not16.i.i.i, i16 %.val.i, i16 %i.by
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i: ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i, %bb.m, %bb.l
  %.sroa.0.0.pre.i11.i30.sink.i = phi i16 [ %.sroa.0.0.pre.i11.i30.i, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread28.i ], [ %i.bw, %bb.m ], [ %i.bu, %bb.l ]
  %i.ca = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.pre.i11.i30.sink.i, float noundef 0.000000e+00)
          to label %.noexc119 unwind label %bb.ah ; 4 uses

.noexc119:                                        ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.cb = load i16, ptr %i.af, align 1, !tbaa !11 ; 2 uses
  %i.cc = and i16 %i.cb, 7
  %.not14.i12.i13.i = icmp eq i16 %i.cc, 0
  br i1 %.not14.i12.i13.i, label %bb.n, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i

bb.n:                                             ; preds = %.noexc119
  %i.cd = load i16, ptr %i.ag, align 1, !tbaa !11 ; 2 uses
  %i.ce = and i16 %i.cd, 7
  %.not15.i8.i14.i = icmp eq i16 %i.ce, 0
  br i1 %.not15.i8.i14.i, label %bb.o, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i

bb.o:                                             ; preds = %bb.n
  %i.cf = load i16, ptr %i.ad, align 1, !tbaa !11
  %i.cg = and i16 %i.cf, 7
  %.not16.i9.i15.i = icmp eq i16 %i.cg, 0
  %spec.select.i10.i16.i = select i1 %.not16.i9.i15.i, ptr %i.ae, ptr %i.ad
  %.sroa.0.0.pre.i11.i11.i = load i16, ptr %spec.select.i10.i16.i, align 1, !tbaa !12
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i: ; preds = %bb.o, %bb.n, %.noexc119
  %.sroa.0.0.i12.i = phi i16 [ %i.cd, %bb.n ], [ %i.cb, %.noexc119 ], [ %.sroa.0.0.pre.i11.i11.i, %bb.o ]
  %i.ch = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.i12.i, float noundef 0.000000e+00)
          to label %bb.p unwind label %bb.ah      ; 4 uses

bb.p:                                             ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i
  %or.cond.i.i.i = fcmp ord float %i.ca, 0.000000e+00
  %i.ci = fcmp olt float %i.ca, 0.000000e+00
  %i.cj = fcmp uno float %i.ca, 0.000000e+00
  %.sink.i.i.i = select i1 %or.cond.i.i.i, i1 %i.ci, i1 %i.cj
  %i.ck = select i1 %.sink.i.i.i, float 0.000000e+00, float %i.ca
  %or.cond.i.i3.i = fcmp ord float %i.ch, 0.000000e+00
  %i.cl = fcmp uno float %i.ch, 0.000000e+00
  %i.cm = fcmp olt float %i.ch, 0.000000e+00
  %.sink.i.i4.i = select i1 %or.cond.i.i3.i, i1 %i.cm, i1 %i.cl
  %i.cn = select i1 %.sink.i.i4.i, float 0.000000e+00, float %i.ch
  %i.co = fadd float %i.ck, %i.cn
  %i.cp = fsub float %i.bt, %i.co
  %i.cq = load float, ptr %i.ah, align 4, !tbaa !14
  %i.cr = load i16, ptr %i.ai, align 1, !tbaa !11
  %i.cs = and i16 %i.cr, 7
  %.not.i3.i.i = icmp eq i16 %i.cs, 0
  %i.ct = load i16, ptr %i.aj, align 1
  %i.cu = and i16 %i.ct, 7
  %.not7.i.i.i = icmp eq i16 %i.cu, 0
  %spec.select.i4.i.i = select i1 %.not7.i.i.i, ptr %i.ae, ptr %i.aj
  %.sroa.0.0.in.i.i.i = select i1 %.not.i3.i.i, ptr %spec.select.i4.i.i, ptr %i.ai
  %.sroa.0.0.pre.i11.i.i = load i16, ptr %.sroa.0.0.in.i.i.i, align 1, !tbaa !12
  %i.cv = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.pre.i11.i.i, float noundef 0.000000e+00)
          to label %.noexc128 unwind label %bb.ai ; 4 uses

.noexc128:                                        ; preds = %bb.p
  %i.cw = load i16, ptr %i.ak, align 1, !tbaa !11
  %i.cx = and i16 %i.cw, 7
  %.not.i13.i5.i = icmp eq i16 %i.cx, 0
  %i.cy = load i16, ptr %i.aj, align 1
  %i.cz = and i16 %i.cy, 7
  %.not7.i14.i6.i = icmp eq i16 %i.cz, 0
  %spec.select.i15.i7.i = select i1 %.not7.i14.i6.i, ptr %i.ae, ptr %i.aj
  %.sroa.0.0.in.i16.i8.i = select i1 %.not.i13.i5.i, ptr %spec.select.i15.i7.i, ptr %i.ak
  %.sroa.0.0.pre.i11.i11.i121 = load i16, ptr %.sroa.0.0.in.i16.i8.i, align 1, !tbaa !12
  %i.da = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i16 %.sroa.0.0.pre.i11.i11.i121, float noundef 0.000000e+00)
          to label %bb.q unwind label %bb.ai      ; 4 uses

bb.q:                                             ; preds = %.noexc128
  %or.cond.i.i.i124 = fcmp ord float %i.cv, 0.000000e+00
  %i.db = fcmp olt float %i.cv, 0.000000e+00
  %i.dc = fcmp uno float %i.cv, 0.000000e+00
  %.sink.i.i.i125 = select i1 %or.cond.i.i.i124, i1 %i.db, i1 %i.dc
  %i.dd = select i1 %.sink.i.i.i125, float 0.000000e+00, float %i.cv
  %or.cond.i.i3.i126 = fcmp ord float %i.da, 0.000000e+00
  %i.de = fcmp uno float %i.da, 0.000000e+00
  %i.df = fcmp olt float %i.da, 0.000000e+00
  %.sink.i.i4.i127 = select i1 %or.cond.i.i3.i126, i1 %i.df, i1 %i.de
  %i.dg = select i1 %.sink.i.i4.i127, float 0.000000e+00, float %i.da
  %i.dh = fadd float %i.dd, %i.dg
  %i.di = fsub float %i.cq, %i.dh
  br label %.thread

.thread:                                          ; preds = %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit, %bb.q
  %i.dj = phi float [ %i.cp, %bb.q ], [ %9, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ]
  %i.dk = phi float [ %i.di, %bb.q ], [ %10, %_ZNK8facebook4yoga4Node9hasErrataENS0_6ErrataE.exit ]
  invoke void @_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bh, float noundef %i.dj, float noundef %i.dk, i32 noundef %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(60) %4, i32 noundef %5, i32 noundef %6)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %.thread
  %i.dl = trunc i8 %.098289 to i1
  br i1 %i.dl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = load i8, ptr %i.bh, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = phi i8 [ 1, %bb.r ], [ %i.dm, %bb.s ]
  %i.do = load i32, ptr %i.al, align 8
  %12 = lshr i32 %i.do, 2
  %13 = trunc i32 %12 to i8                       ; 3 uses
  %i.dp = and i8 %13, 3                           ; 3 uses
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  switch i8 %i.dp, label %bb.v [
    i8 2, label %.thread187
    i8 3, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit156
  ]

bb.v:                                             ; preds = %bb.t, %bb.u
  %spec.select.i = phi i8 [ 2, %bb.t ], [ 3, %bb.u ]
  %i.dq = icmp samesign ult i8 %i.dp, 2           ; 3 uses
  %i.dr = select i1 %i.dq, i8 %spec.select.i, i8 0 ; 3 uses
  %i.ds = and i8 %13, 1
  %.not237 = icmp eq i8 %i.ds, 0
  br i1 %.not237, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = and i8 %13, 2
  %.not238 = icmp eq i8 %i.dt, 0
  br i1 %.not238, label %bb.ab, label %.thread187

.thread187:                                       ; preds = %bb.u, %bb.w
  %.0.i183190 = phi i8 [ %i.dp, %bb.w ], [ 3, %bb.u ]
  %i.du = phi i1 [ %i.dq, %bb.w ], [ false, %bb.u ]
  %i.dv = phi i8 [ %i.dr, %bb.w ], [ 0, %bb.u ]   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bh, i64 87
  %i.dx = load i16, ptr %i.dw, align 1, !tbaa !11
  %i.dy = and i16 %i.dx, 7
  %.not.i131 = icmp eq i16 %i.dy, 0
  br i1 %.not.i131, label %bb.x, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.x:                                             ; preds = %.thread187
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bh, i64 91
  %i.ea = load i16, ptr %i.dz, align 1, !tbaa !11
  %i.eb = and i16 %i.ea, 7
  %.not1.i = icmp eq i16 %i.eb, 0
  br i1 %.not1.i, label %bb.y, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.ed = load i16, ptr %i.ec, align 1, !tbaa !11
  %i.ee = and i16 %i.ed, 7
  %.not2.i = icmp eq i16 %i.ee, 0
  br i1 %.not2.i, label %bb.z, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bh, i64 99
  %i.eg = load i16, ptr %i.ef, align 1, !tbaa !11
  %i.eh = and i16 %i.eg, 7
  %.not3.i = icmp eq i16 %i.eh, 0
  br i1 %.not3.i, label %bb.aa, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bh, i64 95
  %i.ej = load i16, ptr %i.ei, align 1, !tbaa !11
  %i.ek = and i16 %i.ej, 7
  %.not4.i = icmp eq i16 %i.ek, 0
  br i1 %.not4.i, label %.split, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

.split:                                           ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  %i.em = load i16, ptr %i.el, align 1, !tbaa !11
  %.fr241 = freeze i16 %i.em
  %i.en = and i16 %.fr241, 7
  %.not242 = icmp eq i16 %i.en, 0
  %spec.select = select i1 %.not242, ptr %1, ptr %0
  br label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread

bb.ab:                                            ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
  %i.ep = load i16, ptr %i.eo, align 1, !tbaa !11
  %i.eq = and i16 %i.ep, 7
  %.not.i132 = icmp eq i16 %i.eq, 0
  br i1 %.not.i132, label %bb.ac, label %.thread234

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.bh, i64 93
  %i.es = load i16, ptr %i.er, align 1, !tbaa !11
  %i.et = and i16 %i.es, 7
  %.not1.i133 = icmp eq i16 %i.et, 0
  br i1 %.not1.i133, label %bb.ad, label %.thread234

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.ev = load i16, ptr %i.eu, align 1, !tbaa !11
  %i.ew = and i16 %i.ev, 7
  %.not2.i134 = icmp eq i16 %i.ew, 0
  br i1 %.not2.i134, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit, label %.thread234

_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit: ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bh, i64 101
  %i.ey = load i16, ptr %i.ex, align 1, !tbaa !11
  %.fr239 = freeze i16 %i.ey
  %i.ez = and i16 %.fr239, 7
  %.not240 = icmp eq i16 %i.ez, 0
  br i1 %.not240, label %.thread199, label %.thread234

.thread234:                                       ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit, %bb.ad, %bb.ac, %bb.ab
  br label %.thread199

_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread: ; preds = %.split, %bb.aa, %bb.z, %bb.y, %bb.x, %.thread187
  %i.fa = phi ptr [ %spec.select, %.split ], [ %0, %bb.z ], [ %0, %bb.aa ], [ %0, %bb.y ], [ %0, %.thread187 ], [ %0, %bb.x ]
  %i.fb = icmp eq i8 %.0.i183190, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 592 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  %i.fe = zext i1 %i.du to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  br i1 %i.fb, label %bb.af, label %bb.ae

.thread199:                                       ; preds = %.thread234, %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit
  %.ph203 = phi ptr [ %1, %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit ], [ %0, %.thread234 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bh, i64 620
  %i.fh = getelementptr inbounds nuw i8, ptr %.ph203, i64 596
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bh, i64 592
  %i.fj = zext i1 %i.dq to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

bb.ae:                                            ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bh, i64 608
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

bb.af:                                            ; preds = %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bh, i64 616
  br label %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i

_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i: ; preds = %bb.af, %bb.ae, %.thread199
  %.in = phi ptr [ %i.ff, %bb.af ], [ %i.fk, %.thread199 ], [ %i.ff, %bb.ae ]
  %.in243 = phi ptr [ %i.fc, %bb.af ], [ %i.fh, %.thread199 ], [ %i.fc, %bb.ae ]
  %.in244 = phi ptr [ %i.fm, %bb.af ], [ %i.fg, %.thread199 ], [ %i.fl, %bb.ae ]
  %i.fn = phi i8 [ %i.dv, %bb.af ], [ %i.dr, %.thread199 ], [ %i.dv, %bb.ae ]
  %.0.i6.i = phi i32 [ 0, %bb.af ], [ 1, %.thread199 ], [ 2, %bb.ae ]
  %i.fo = load float, ptr %.in244, align 4, !tbaa !14
  %i.fp = load float, ptr %.in243, align 4, !tbaa !14
  %i.fq = load float, ptr %.in, align 4, !tbaa !14
  %i.fr = fsub float %i.fp, %i.fq
  %i.fs = fsub float %i.fr, %i.fo
  invoke void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %i.bh, float noundef %i.fs, i32 noundef %.0.i6.i)
          to label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit unwind label %bb.aj

bb.ag:                                            ; preds = %bb.k
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.ah:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit25.i, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.ai:                                            ; preds = %.noexc128, %bb.p, %.thread
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

bb.aj:                                            ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit172

_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit: ; preds = %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i, %bb.v
  %i.fx = phi i8 [ %i.fn, %_ZN8facebook4yoga11flexEndEdgeENS0_13FlexDirectionE.exit.i ], [ %i.dr, %bb.v ] ; 3 uses
  %i.fy = and i8 %i.fx, -3
  %i.fz = icmp eq i8 %i.fy, 1
  br i1 %i.fz, label %bb.ak, label %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit156

bb.ak:                                            ; preds = %_ZN8facebook4yoga24setChildTrailingPositionEPKNS0_4NodeEPS1_NS0_13FlexDirectionE.exit
  %.not245 = icmp samesign ult i8 %i.fx, 2
  br i1 %.not245, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bh, i64 87
  %i.gb = load i16, ptr %i.ga, align 1, !tbaa !11
  %i.gc = and i16 %i.gb, 7
  %.not.i137 = icmp eq i16 %i.gc, 0
  br i1 %.not.i137, label %bb.am, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.am:                                            ; preds = %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bh, i64 91
  %i.ge = load i16, ptr %i.gd, align 1, !tbaa !11
  %i.gf = and i16 %i.ge, 7
  %.not1.i138 = icmp eq i16 %i.gf, 0
  br i1 %.not1.i138, label %bb.an, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.an:                                            ; preds = %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bh, i64 103
  %i.gh = load i16, ptr %i.gg, align 1, !tbaa !11
  %i.gi = and i16 %i.gh, 7
  %.not2.i139 = icmp eq i16 %i.gi, 0
  br i1 %.not2.i139, label %bb.ao, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.ao:                                            ; preds = %bb.an
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bh, i64 99
  %i.gk = load i16, ptr %i.gj, align 1, !tbaa !11
  %i.gl = and i16 %i.gk, 7
  %.not3.i140 = icmp eq i16 %i.gl, 0
  br i1 %.not3.i140, label %bb.ap, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bh, i64 95
  %i.gn = load i16, ptr %i.gm, align 1, !tbaa !11
  %i.go = and i16 %i.gn, 7
  %.not4.i141 = icmp eq i16 %i.go, 0
  br i1 %.not4.i141, label %.split219, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

.split219:                                        ; preds = %bb.ap
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bh, i64 97
  %i.gq = load i16, ptr %i.gp, align 1, !tbaa !11
  %.fr248 = freeze i16 %i.gq
  %i.gr = and i16 %.fr248, 7
  %.not249 = icmp eq i16 %i.gr, 0
  br i1 %.not249, label %bb.at, label %_ZNK8facebook4yoga5Style23horizontalInsetsDefinedEv.exit142.thread

bb.aq:                                            ; preds = %bb.ak
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bh, i64 89
  %i.gt = load i16, ptr %i.gs, align 1, !tbaa !11
  %i.gu = and i16 %i.gt, 7
  %.not.i143 = icmp eq i16 %i.gu, 0
end_hunk_1
