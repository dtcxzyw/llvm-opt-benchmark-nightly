Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/FlexLine?download=true
inline.NumInlined: 434
inline.NumDeleted: 188
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.facebook::yoga::FlexLine" = type <{ %"class.std::vector", float, [4 x i8], i64, %"struct.facebook::yoga::FlexLineRunningLayout", [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<facebook::yoga::Node *, std::allocator<facebook::yoga::Node *>>::_Vector_impl" }
%"struct.std::_Vector_base<facebook::yoga::Node *, std::allocator<facebook::yoga::Node *>>::_Vector_impl" = type { %"struct.std::_Vector_base<facebook::yoga::Node *, std::allocator<facebook::yoga::Node *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<facebook::yoga::Node *, std::allocator<facebook::yoga::Node *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.facebook::yoga::FlexLineRunningLayout" = type { float, float, float, float, float }
%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator" = type { ptr, i64, %"class.std::forward_list" }
%"class.std::forward_list" = type { %"struct.std::_Fwd_list_base" }
%"struct.std::_Fwd_list_base" = type { %"struct.std::_Fwd_list_base<std::pair<const facebook::yoga::Node *, unsigned long>, std::allocator<std::pair<const facebook::yoga::Node *, unsigned long>>>::_Fwd_list_impl" }
%"struct.std::_Fwd_list_base<std::pair<const facebook::yoga::Node *, unsigned long>, std::allocator<std::pair<const facebook::yoga::Node *, unsigned long>>>::_Fwd_list_impl" = type { %"struct.std::_Fwd_list_node_base" }
%"struct.std::_Fwd_list_node_base" = type { ptr }

$_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff = comdat any

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi = comdat any

$_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf = comdat any

$_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE = comdat any

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv = comdat any

$_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid physical edge\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm = private unnamed_addr constant [4 x i8] c"\01\03\00\02", align 4
@switch.table._ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm.1 = private unnamed_addr constant [4 x i8] c"\03\01\02\00", align 4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.facebook::yoga::FlexLine") align 8 captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.0151.5 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 6 uses
  %.sroa.22.5 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %i.k = invoke noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744) %1, i8 noundef zeroext %2)
          to label %bb.c unwind label %bb.l       ; 2 uses

bb.c:                                             ; preds = %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = trunc i32 %i.m to i8
  %i.o = lshr i8 %i.n, 2
  %i.p = and i8 %i.o, 3                           ; 2 uses
  %i.q = icmp eq i8 %i.k, 2
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  switch i8 %i.p, label %bb.f [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
    i8 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  br label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ %i.p, %bb.f ], [ 2, %bb.e ], [ 3, %bb.d ] ; 4 uses
  %i.r = icmp ult i32 %i.m, 1073741824
  %.not193 = icmp samesign ult i8 %.0.i, 2        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 145
  %.val.i.i = load i16, ptr %i.s, align 1
  %..i = select i1 %.not193, i64 87, i64 85
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i
  %i.u = load i16, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = and i16 %i.u, 7
  %.not.i3.i = icmp eq i16 %i.v, 0
  %.sroa.0.0.i5.i = select i1 %.not.i3.i, i16 %.val.i.i, i16 %i.u
  %i.w = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.l, i16 %.sroa.0.0.i5.i, float noundef %6)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %.sink.i.inv.i = fcmp ult float %i.w, 0.000000e+00
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !27     ; 2 uses
  %.not.i278 = icmp ne ptr %i.y, null
  %i.z = load i64, ptr %i.x, align 8              ; 2 uses
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = select i1 %.not.i278, i1 true, i1 %i.aa
  br i1 %i.ab, label %.lr.ph, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit

.lr.ph:                                           ; preds = %bb.g
  %.0.i.i.i = zext i1 %.not193 to i32
  %.0.i.i4.i = select i1 %.not193, i32 3, i32 2
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = zext nneg i8 %.0.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm, i64 %i.ad
  %i.ae = zext nneg i8 %.0.i to i64
  %switch.gep411 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm.1, i64 %i.ae
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  %i.af = phi i64 [ %i.z, %.lr.ph ], [ %i.dh, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %i.ag = phi ptr [ %i.y, %.lr.ph ], [ %i.dg, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %.063287 = phi float [ 0.000000e+00, %.lr.ph ], [ %.265.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 4 uses
  %.066286 = phi ptr [ null, %.lr.ph ], [ %.268.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 4 uses
  %.069285 = phi i64 [ 0, %.lr.ph ], [ %.372.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %.074284 = phi float [ 0.000000e+00, %.lr.ph ], [ %.377.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 5 uses
  %.079283 = phi float [ 0.000000e+00, %.lr.ph ], [ %.382.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 5 uses
  %.084282 = phi float [ 0.000000e+00, %.lr.ph ], [ %.286.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 4 uses
  %.sroa.22.0281 = phi ptr [ %.sroa.22.5, %.lr.ph ], [ %.sroa.22.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 12 uses
  %.sroa.14.0280 = phi ptr [ %.sroa.0151.5, %.lr.ph ], [ %.sroa.14.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 7 uses
  %.sroa.0151.0279 = phi ptr [ %.sroa.0151.5, %.lr.ph ], [ %.sroa.0151.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 15 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 696
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 704
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.ao
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.af, i64 noundef %i.ao) #10
          to label %.noexc109 unwind label %.loopexit.split-lp

.noexc109:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.af
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, 12
  %i.av = icmp eq i8 %i.au, 4
  br i1 %i.av, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load i32, ptr %i.ar, align 8
  %i.ax = and i32 %i.aw, 805306368
  %i.ay = icmp eq i32 %i.ax, 536870912
  br i1 %i.ay, label %bb.ae, label %switch.lookup

bb.l:                                             ; preds = %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

bb.m:                                             ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

bb.n:                                             ; preds = %bb.ae
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

.loopexit:                                        ; preds = %switch.lookup, %switch.lookup410
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

switch.lookup:                                    ; preds = %bb.k
  %i.bc = icmp eq ptr %.066286, null
  %spec.select = select i1 %i.bc, ptr %i.aq, ptr %.066286 ; 3 uses
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bd = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i32 noundef %switch.ext, i8 noundef zeroext %2)
          to label %switch.lookup410 unwind label %.loopexit

switch.lookup410:                                 ; preds = %switch.lookup
  %switch.load412 = load i8, ptr %switch.gep411, align 1
  %switch.ext413 = zext i8 %switch.load412 to i32
  %i.be = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i32 noundef %switch.ext413, i8 noundef zeroext %2)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %switch.lookup410
  %i.bf = and i16 %i.bd, 7
  %i.bg = icmp eq i16 %i.bf, 4
  %i.bh = zext i1 %i.bg to i64
  %spec.select105 = add i64 %.069285, %i.bh
  %i.bi = and i16 %i.be, 7
  %i.bj = icmp eq i16 %i.bi, 4
  %i.bk = zext i1 %i.bj to i64
  %spec.select106 = add i64 %spec.select105, %i.bk ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 672
  store i64 %8, ptr %i.bl, align 8, !tbaa !88
  %i.bm = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i32 noundef %.0.i.i.i, i8 noundef zeroext 1)
          to label %.noexc115 unwind label %bb.r

.noexc115:                                        ; preds = %bb.o
  %i.bn = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i16 %i.bm, float noundef %5)
          to label %.noexc116 unwind label %bb.r  ; 2 uses

.noexc116:                                        ; preds = %.noexc115
  %.inv.i.i = fcmp ord float %i.bn, 0.000000e+00
  %i.bo = select i1 %.inv.i.i, float %i.bn, float 0.000000e+00
  %i.bp = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i32 noundef %.0.i.i4.i, i8 noundef zeroext 1)
          to label %.noexc117 unwind label %bb.r

.noexc117:                                        ; preds = %.noexc116
  %i.bq = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ar, i16 %i.bp, float noundef %5)
          to label %bb.p unwind label %bb.r       ; 2 uses

bb.p:                                             ; preds = %.noexc117
  %.inv.i5.i = fcmp ord float %i.bq, 0.000000e+00
  %i.br = select i1 %.inv.i5.i, float %i.bq, float 0.000000e+00
  %i.bs = fadd float %i.bo, %i.br                 ; 2 uses
  %i.bt = icmp eq ptr %i.aq, %spec.select
  %i.bu = select i1 %i.bt, i1 true, i1 %.sink.i.inv.i
  %i.bv = select i1 %i.bu, float 0.000000e+00, float %i.w ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 340 ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.bw, align 4, !tbaa !89
  %i.bx = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.aq, i8 noundef zeroext %i.k, i8 noundef zeroext %.0.i, float %.sroa.0.0.copyload, float noundef %4, float noundef %3)
          to label %bb.q unwind label %bb.s       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.by = fadd float %.063287, %i.bx
  %i.bz = fadd float %i.bs, %i.by
  %i.ca = fadd float %i.bv, %i.bz
  %i.cb = fcmp ule float %i.ca, %6
  %or.cond.not196 = or i1 %i.r, %i.cb
  %i.cc = icmp eq ptr %.sroa.0151.0279, %.sroa.14.0280
  %or.cond192 = select i1 %or.cond.not196, i1 true, i1 %i.cc
  br i1 %or.cond192, label %bb.t, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit

bb.r:                                             ; preds = %.noexc117, %.noexc116, %.noexc115, %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

bb.s:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

bb.t:                                             ; preds = %bb.q
  %i.cf = fadd float %i.bs, %i.bx
  %i.cg = fadd float %i.bv, %i.cf                 ; 2 uses
  %10 = fadd float %.063287, %i.cg                ; 2 uses
  %11 = fadd float %.084282, %i.cg                ; 2 uses
  %i.ch = invoke noundef zeroext i1 @_ZN8facebook4yoga4Node14isNodeFlexibleEv(ptr noundef nonnull align 8 dereferenceable(744) %i.aq)
          to label %bb.u unwind label %.loopexit197

bb.u:                                             ; preds = %bb.t
  br i1 %i.ch, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ci = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.aq)
          to label %bb.w unwind label %.loopexit197

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.aq)
          to label %bb.x unwind label %.loopexit197

bb.x:                                             ; preds = %bb.w
  %i.ck = fadd float %.079283, %i.ci
  %i.cl = fneg float %i.cj
  %i.cm = load float, ptr %i.bw, align 4, !tbaa !90
  %i.cn = call float @llvm.fmuladd.f32(float %i.cl, float %i.cm, float %.074284)
  br label %bb.y

.loopexit197:                                     ; preds = %bb.t, %bb.v, %bb.w, %_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

.loopexit.split-lp198:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133

bb.y:                                             ; preds = %bb.x, %bb.u
  %.180 = phi float [ %i.ck, %bb.x ], [ %.079283, %bb.u ] ; 2 uses
  %.175 = phi float [ %i.cn, %bb.x ], [ %.074284, %bb.u ] ; 2 uses
  %.not.i119 = icmp eq ptr %.sroa.14.0280, %.sroa.22.0281
  br i1 %.not.i119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.aq, ptr %.sroa.14.0280, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.14.0280, i64 8
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cp = ptrtoint ptr %.sroa.22.0281 to i64
  %i.cq = ptrtoint ptr %.sroa.0151.0279 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 6 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.ab, label %_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
          to label %.noexc120 unwind label %.loopexit.split-lp198

.noexc120:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #11
          to label %.noexc121 unwind label %.loopexit197 ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store ptr %i.aq, ptr %i.da, align 8, !tbaa !28
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.ac, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ac:                                            ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %.sroa.0151.0279, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ac, %.noexc121
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0151.0279, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.0279, i64 noundef %i.cr) #12
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %bb.k, %bb.z, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0151.1.ph = phi ptr [ %.sroa.0151.0279, %bb.z ], [ %i.cz, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0151.0279, %bb.k ], [ %.sroa.0151.0279, %bb.j ] ; 3 uses
  %.sroa.14.1.ph = phi ptr [ %i.co, %bb.z ], [ %i.dc, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.0280, %bb.k ], [ %.sroa.14.0280, %bb.j ] ; 2 uses
  %.sroa.22.1.ph = phi ptr [ %.sroa.22.0281, %bb.z ], [ %i.dd, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.22.0281, %bb.k ], [ %.sroa.22.0281, %bb.j ] ; 3 uses
  %.286.ph = phi float [ %11, %bb.z ], [ %11, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.084282, %bb.k ], [ %.084282, %bb.j ] ; 2 uses
  %.382.ph = phi float [ %.180, %bb.z ], [ %.180, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.079283, %bb.k ], [ %.079283, %bb.j ] ; 2 uses
  %.377.ph = phi float [ %.175, %bb.z ], [ %.175, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.074284, %bb.k ], [ %.074284, %bb.j ] ; 2 uses
  %.372.ph = phi i64 [ %spec.select106, %bb.z ], [ %spec.select106, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.069285, %bb.k ], [ %.069285, %bb.j ] ; 2 uses
  %.268.ph = phi ptr [ %spec.select, %bb.z ], [ %spec.select, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.066286, %bb.k ], [ %.066286, %bb.j ]
  %.265.ph = phi float [ %10, %bb.z ], [ %10, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.063287, %bb.k ], [ %.063287, %bb.j ]
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 0)
          to label %bb.af unwind label %bb.n

bb.af:                                            ; preds = %bb.ae
  %i.de = load ptr, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not12.i.i.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %i.de, %bb.af ] ; 2 uses
  %i.df = load ptr, ptr %.013.i.i.i, align 8, !tbaa !30 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 24) #12
  %.not.i.i.i122 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i122, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %.lr.ph.i.i.i, %bb.af
  %i.dg = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %.not.i = icmp ne ptr %i.dg, null
  %i.dh = load i64, ptr %i.x, align 8             ; 2 uses
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = select i1 %.not.i, i1 true, i1 %i.di
  br i1 %i.dj, label %bb.h, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit, !llvm.loop !40

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %bb.q, %bb.g
  %.sroa.0151.0.lcssa = phi ptr [ %.sroa.0151.5, %bb.g ], [ %.sroa.0151.0279, %bb.q ], [ %.sroa.0151.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.sroa.14.0.lcssa = phi ptr [ %.sroa.0151.5, %bb.g ], [ %.sroa.14.0280, %bb.q ], [ %.sroa.14.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.sroa.22.0.lcssa = phi ptr [ %.sroa.22.5, %bb.g ], [ %.sroa.22.0281, %bb.q ], [ %.sroa.22.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.084.lcssa = phi float [ 0.000000e+00, %bb.g ], [ %.084282, %bb.q ], [ %.286.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.079.lcssa = phi float [ 0.000000e+00, %bb.g ], [ %.079283, %bb.q ], [ %.382.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %.074.lcssa = phi float [ 0.000000e+00, %bb.g ], [ %.074284, %bb.q ], [ %.377.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %.473 = phi i64 [ 0, %bb.g ], [ %spec.select106, %bb.q ], [ %.372.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %i.dk = fcmp ogt float %.079.lcssa, 0.000000e+00
  %i.dl = fcmp olt float %.079.lcssa, 1.000000e+00
  %or.cond3 = and i1 %i.dk, %i.dl
  %spec.store.select = select i1 %or.cond3, float 1.000000e+00, float %.079.lcssa
  %i.dm = fcmp ogt float %.074.lcssa, 0.000000e+00
  %i.dn = fcmp olt float %.074.lcssa, 1.000000e+00
  %or.cond5 = and i1 %i.dm, %i.dn
  %spec.store.select6 = select i1 %or.cond5, float 1.000000e+00, float %.074.lcssa
  store ptr %.sroa.0151.0.lcssa, ptr %0, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.0.lcssa, ptr %i.do, align 8, !tbaa !14
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.22.0.lcssa, ptr %i.dp, align 8, !tbaa !91
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.084.lcssa, ptr %i.dq, align 8, !tbaa !94
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.473, ptr %i.dr, align 8, !tbaa !95
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %spec.store.select, ptr %i.ds, align 8, !tbaa !96
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %spec.store.select6, ptr %i.dt, align 4, !tbaa !97
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> zeroinitializer, ptr %i.du, align 8, !tbaa !89
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.dv, align 8, !tbaa !98
  ret void

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133: ; preds = %.loopexit197, %.loopexit.split-lp198, %.loopexit, %.loopexit.split-lp, %bb.s, %bb.r, %bb.n, %bb.l, %bb.m
  %.sroa.0151.4 = phi ptr [ %.sroa.0151.5, %bb.m ], [ %.sroa.0151.5, %bb.l ], [ %.sroa.0151.1.ph, %bb.n ], [ %.sroa.0151.0279, %bb.r ], [ %.sroa.0151.0279, %.loopexit.split-lp ], [ %.sroa.0151.0279, %bb.s ], [ %.sroa.0151.0279, %.loopexit ], [ %.sroa.0151.0279, %.loopexit197 ], [ %.sroa.0151.0279, %.loopexit.split-lp198 ] ; 3 uses
  %.sroa.22.4 = phi ptr [ %.sroa.22.5, %bb.m ], [ %.sroa.22.5, %bb.l ], [ %.sroa.22.1.ph, %bb.n ], [ %.sroa.22.0281, %bb.r ], [ %.sroa.22.0281, %.loopexit.split-lp ], [ %.sroa.22.0281, %bb.s ], [ %.sroa.22.0281, %.loopexit ], [ %.sroa.22.0281, %.loopexit197 ], [ %.sroa.22.0281, %.loopexit.split-lp198 ]
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.az, %bb.l ], [ %i.bb, %bb.n ], [ %i.cd, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ce, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit199, %.loopexit197 ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp198 ]
  %.not.i.i.i134 = icmp eq ptr %.sroa.0151.4, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit135, label %bb.ag

bb.ag:                                            ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133
  %i.dw = ptrtoint ptr %.sroa.22.4 to i64
  %i.dx = ptrtoint ptr %.sroa.0151.4 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.4, i64 noundef %i.dy) #12
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit135

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit135: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit133, %bb.ag
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float %3, float noundef %4, float noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i8 %2, 2
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.d = load i16, ptr %i.c, align 1, !tbaa !32   ; 2 uses
  %i.e = and i16 %i.d, 7
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.d, float noundef %4) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 16
  %i.k = icmp ne i8 %i.j, 0
  %i.l = fcmp ord float %i.g, 0.000000e+00
  %or.cond.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !18
  %i.o = and i16 %i.n, 7
  %.not.i3.i61 = icmp eq i16 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 119 ; 4 uses
  %i.q = load i16, ptr %i.p, align 1
  %i.r = and i16 %i.q, 7
  %.not7.i.i62 = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %spec.select.i.i63 = select i1 %.not7.i.i62, ptr %i.s, ptr %i.p
  %.sroa.0.0.in.i.i64 = select i1 %.not.i3.i61, ptr %spec.select.i.i63, ptr %i.m
  %.sroa.0.0.i4.i65 = load i16, ptr %.sroa.0.0.in.i.i64, align 1, !tbaa !32
  %i.t = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i4.i65, float noundef %5)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !18
  %i.w = and i16 %i.v, 7
  %.not.i3.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.y = load i16, ptr %i.x, align 1
  %i.z = and i16 %i.y, 7
  %.not7.i.i = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %spec.select.i.i = select i1 %.not7.i.i, ptr %i.aa, ptr %i.x
  %.sroa.0.0.in.i.i = select i1 %.not.i3.i, ptr %spec.select.i.i, ptr %i.u
  %.sroa.0.0.i4.i = load i16, ptr %.sroa.0.0.in.i.i, align 1, !tbaa !32
  %i.ab = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i4.i, float noundef 0.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !18
  %i.ae = and i16 %i.ad, 7
  %.not.i12.i54 = icmp eq i16 %i.ae, 0
  %i.af = load i16, ptr %i.p, align 1
  %i.ag = and i16 %i.af, 7
  %.not7.i13.i55 = icmp eq i16 %i.ag, 0
  %spec.select.i14.i56 = select i1 %.not7.i13.i55, ptr %i.s, ptr %i.p
  %.sroa.0.0.in.i15.i57 = select i1 %.not.i12.i54, ptr %spec.select.i14.i56, ptr %i.ac
  %.sroa.0.0.i16.i58 = load i16, ptr %.sroa.0.0.in.i15.i57, align 1, !tbaa !32
  %i.ah = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i16.i58, float noundef %5)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !18
  %i.ak = and i16 %i.aj, 7
  %.not.i12.i = icmp eq i16 %i.ak, 0
  %i.al = load i16, ptr %i.x, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i13.i = icmp eq i16 %i.am, 0
  %spec.select.i14.i = select i1 %.not7.i13.i, ptr %i.aa, ptr %i.x
  %.sroa.0.0.in.i15.i = select i1 %.not.i12.i, ptr %spec.select.i14.i, ptr %i.ai
  %.sroa.0.0.i16.i = load i16, ptr %.sroa.0.0.in.i15.i, align 1, !tbaa !32
  %i.an = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i16.i, float noundef 0.000000e+00)
  %i.ao = insertelement <4 x float> poison, float %i.t, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.ab, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ah, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 3 ; 2 uses
  %i.as = fcmp oge <4 x float> %i.ar, zeroinitializer
  %i.at = select <4 x i1> %i.as, <4 x float> %i.ar, <4 x float> zeroinitializer ; 2 uses
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.av = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aw = fadd <2 x float> %i.au, %i.av           ; 2 uses
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aw, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ay = fcmp ord float %i.ax, 0.000000e+00
  %.sroa.0.0.i = select i1 %i.ay, float %i.ax, float 0.000000e+00
  %i.az = fadd float %i.g, %.sroa.0.0.i
  br label %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.010.1.i = phi float [ +qnan, %bb.b ], [ %i.az, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !32 ; 2 uses
  %i.bc = and i16 %i.bb, 7
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread185, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit
  %i.be = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %i.bb, float noundef %4) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, 16
  %i.bi = icmp ne i8 %i.bh, 0
  %i.bj = fcmp ord float %i.be, 0.000000e+00
  %or.cond.i29 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.i29, label %bb.f, label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !18
  %i.bm = and i16 %i.bl, 7
  %.not.i3.i85 = icmp eq i16 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 119 ; 4 uses
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = and i16 %i.bo, 7
  %.not7.i.i86 = icmp eq i16 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %spec.select.i.i87 = select i1 %.not7.i.i86, ptr %i.bq, ptr %i.bn
  %.sroa.0.0.in.i.i88 = select i1 %.not.i3.i85, ptr %spec.select.i.i87, ptr %i.bk
  %.sroa.0.0.i4.i89 = load i16, ptr %.sroa.0.0.in.i.i88, align 1, !tbaa !32
  %i.br = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i4.i89, float noundef %5)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !18
  %i.bu = and i16 %i.bt, 7
  %.not.i3.i79 = icmp eq i16 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = and i16 %i.bw, 7
  %.not7.i.i80 = icmp eq i16 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %spec.select.i.i81 = select i1 %.not7.i.i80, ptr %i.by, ptr %i.bv
  %.sroa.0.0.in.i.i82 = select i1 %.not.i3.i79, ptr %spec.select.i.i81, ptr %i.bs
  %.sroa.0.0.i4.i83 = load i16, ptr %.sroa.0.0.in.i.i82, align 1, !tbaa !32
  %i.bz = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i4.i83, float noundef 0.000000e+00)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !18
  %i.cc = and i16 %i.cb, 7
  %.not.i12.i73 = icmp eq i16 %i.cc, 0
  %i.cd = load i16, ptr %i.bn, align 1
  %i.ce = and i16 %i.cd, 7
  %.not7.i13.i74 = icmp eq i16 %i.ce, 0
  %spec.select.i14.i75 = select i1 %.not7.i13.i74, ptr %i.bq, ptr %i.bn
  %.sroa.0.0.in.i15.i76 = select i1 %.not.i12.i73, ptr %spec.select.i14.i75, ptr %i.ca
  %.sroa.0.0.i16.i77 = load i16, ptr %.sroa.0.0.in.i15.i76, align 1, !tbaa !32
  %i.cf = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.i16.i77, float noundef %5)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !18
end_hunk_0
