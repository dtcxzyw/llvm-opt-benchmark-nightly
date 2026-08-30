Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/FlexLine?download=true
inline.NumInlined: 439
inline.NumDeleted: 186
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

$_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf = comdat any

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %.sroa.0147.5 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 6 uses
  %.sroa.22.5 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %i.k = invoke noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744) %1, i8 noundef zeroext %2)
          to label %bb.c unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %.fr387 = freeze i32 %i.m                       ; 2 uses
  %i.n = trunc i32 %.fr387 to i8
  %i.o = lshr i8 %i.n, 2
  %i.p = and i8 %i.o, 3                           ; 4 uses
  %i.q = icmp eq i8 %i.k, 2
  br i1 %i.q, label %bb.d, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit

bb.d:                                             ; preds = %bb.c
  switch i8 %i.p, label %.sink.split [
    i8 2, label %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread
    i8 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread: ; preds = %bb.d
  br label %.sink.split

_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit: ; preds = %bb.c
  %.not189 = icmp samesign ult i8 %i.p, 2
  %spec.select384 = select i1 %.not189, i64 87, i64 85
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread, %bb.d, %bb.e, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit
  %.0.i344 = phi i8 [ %i.p, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit ], [ %i.p, %bb.d ], [ 2, %bb.e ], [ 3, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ] ; 4 uses
  %i.r = phi i64 [ %spec.select384, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit ], [ 87, %bb.d ], [ 85, %bb.e ], [ 85, %_ZN8facebook4yoga16resolveDirectionENS0_13FlexDirectionENS0_9DirectionE.exit.thread ]
  %i.s = icmp ult i32 %.fr387, 1073741824
  %.val.i.i345.in = getelementptr inbounds nuw i8, ptr %1, i64 145
  %.val.i.i345 = load i16, ptr %.val.i.i345.in, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.u = load i16, ptr %i.t, align 1, !tbaa !15   ; 2 uses
  %i.v = and i16 %i.u, 7
  %.not.i3.i = icmp eq i16 %i.v, 0
  %.sroa.0.0.i5.i = select i1 %.not.i3.i, i16 %.val.i.i345, i16 %i.u
  %i.w = invoke float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.l, i16 %.sroa.0.0.i5.i, float noundef %6)
          to label %bb.f unwind label %bb.l       ; 4 uses

bb.f:                                             ; preds = %.sink.split
  %or.cond.i.i = fcmp ord float %i.w, 0.000000e+00
  %i.x = fcmp uno float %i.w, 0.000000e+00
  %i.y = fcmp olt float %i.w, 0.000000e+00
  %.sink.i.i = select i1 %or.cond.i.i, i1 %i.y, i1 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %.not.i274 = icmp ne ptr %i.aa, null
  %i.ab = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = select i1 %.not.i274, i1 true, i1 %i.ac
  br i1 %i.ad, label %.lr.ph, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit

.lr.ph:                                           ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.af = zext nneg i8 %.0.i344 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm, i64 %i.af
  %i.ag = zext nneg i8 %.0.i344 to i64
  %switch.gep422 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yoga17calculateFlexLineEPNS0_4NodeENS0_9DirectionEffffRNS0_18LayoutableChildrenIS1_E8IteratorEm.1, i64 %i.ag
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  %i.ah = phi i64 [ %i.ab, %.lr.ph ], [ %i.df, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %i.ai = phi ptr [ %i.aa, %.lr.ph ], [ %i.de, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %.063283 = phi float [ 0.000000e+00, %.lr.ph ], [ %.265.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 4 uses
  %.066282 = phi ptr [ null, %.lr.ph ], [ %.268.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 4 uses
  %.069281 = phi i64 [ 0, %.lr.ph ], [ %.372.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %.074280 = phi float [ 0.000000e+00, %.lr.ph ], [ %.377.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 5 uses
  %.079279 = phi float [ 0.000000e+00, %.lr.ph ], [ %.382.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 5 uses
  %.084278 = phi float [ 0.000000e+00, %.lr.ph ], [ %.286.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 4 uses
  %.sroa.22.0277 = phi ptr [ %.sroa.22.5, %.lr.ph ], [ %.sroa.22.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 12 uses
  %.sroa.14.0276 = phi ptr [ %.sroa.0147.5, %.lr.ph ], [ %.sroa.14.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 7 uses
  %.sroa.0147.0275 = phi ptr [ %.sroa.0147.5, %.lr.ph ], [ %.sroa.0147.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 696
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 704
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ah, %i.aq
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ah, i64 noundef %i.aq) #9
          to label %.noexc109 unwind label %.loopexit.split-lp

.noexc109:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ah
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, 12
  %i.ax = icmp eq i8 %i.aw, 4
  br i1 %i.ax, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = and i32 %i.ay, 805306368
  %i.ba = icmp eq i32 %i.az, 536870912
  br i1 %i.ba, label %bb.ad, label %switch.lookup

bb.k:                                             ; preds = %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE7reserveEm.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

bb.l:                                             ; preds = %.sink.split
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

bb.m:                                             ; preds = %bb.ad
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

.loopexit:                                        ; preds = %switch.lookup, %switch.lookup421
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

switch.lookup:                                    ; preds = %bb.j
  %i.be = icmp eq ptr %.066282, null
  %spec.select = select i1 %i.be, ptr %i.as, ptr %.066282 ; 3 uses
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bf = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.at, i32 noundef %switch.ext, i8 noundef zeroext %2)
          to label %switch.lookup421 unwind label %.loopexit

switch.lookup421:                                 ; preds = %switch.lookup
  %switch.load423 = load i8, ptr %switch.gep422, align 1
  %switch.ext424 = zext i8 %switch.load423 to i32
  %i.bg = invoke i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.at, i32 noundef %switch.ext424, i8 noundef zeroext %2)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %switch.lookup421
  %i.bh = and i16 %i.bf, 7
  %i.bi = icmp eq i16 %i.bh, 4
  %i.bj = zext i1 %i.bi to i64
  %spec.select105 = add i64 %.069281, %i.bj
  %i.bk = and i16 %i.bg, 7
  %i.bl = icmp eq i16 %i.bk, 4
  %i.bm = zext i1 %i.bl to i64
  %spec.select106 = add i64 %spec.select105, %i.bm ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 672
  store i64 %8, ptr %i.bn, align 8, !tbaa !28
  %i.bo = invoke noundef float @_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %i.at, i8 noundef zeroext %.0.i344, float noundef %5)
          to label %bb.o unwind label %bb.q       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp eq ptr %i.as, %spec.select
  %i.bq = select i1 %i.bp, i1 true, i1 %.sink.i.i
  %i.br = select i1 %i.bq, float 0.000000e+00, float %i.w ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 340 ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.bs, align 4, !tbaa !77
  %i.bt = invoke float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef nonnull %i.as, i8 noundef zeroext %i.k, i8 noundef zeroext %.0.i344, float %.sroa.0.0.copyload, float noundef %4, float noundef %3)
          to label %bb.p unwind label %bb.r       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bu = fadd float %.063283, %i.bt
  %i.bv = fadd float %i.bo, %i.bu
  %i.bw = fadd float %i.br, %i.bv
  %i.bx = fcmp ule float %i.bw, %6
  %or.cond.not192 = or i1 %i.s, %i.bx
  %i.by = icmp eq ptr %.sroa.0147.0275, %.sroa.14.0276
  %or.cond188 = select i1 %or.cond.not192, i1 true, i1 %i.by
  br i1 %or.cond188, label %bb.s, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

bb.r:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

bb.s:                                             ; preds = %bb.p
  %i.cb = fadd float %i.bo, %i.bt
  %i.cc = fadd float %i.br, %i.cb                 ; 2 uses
  %i.cd = fadd float %.063283, %i.cc              ; 2 uses
  %i.ce = fadd float %.084278, %i.cc              ; 2 uses
  %i.cf = invoke noundef zeroext i1 @_ZN8facebook4yoga4Node14isNodeFlexibleEv(ptr noundef nonnull align 8 dereferenceable(744) %i.as)
          to label %bb.t unwind label %.loopexit193

bb.t:                                             ; preds = %bb.s
  br i1 %i.cf, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cg = invoke noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744) %i.as)
          to label %bb.v unwind label %.loopexit193

bb.v:                                             ; preds = %bb.u
  %i.ch = invoke noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744) %i.as)
          to label %bb.w unwind label %.loopexit193

bb.w:                                             ; preds = %bb.v
  %i.ci = fadd float %.079279, %i.cg
  %i.cj = fneg float %i.ch
  %i.ck = load float, ptr %i.bs, align 4, !tbaa !78
  %i.cl = call float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %.074280)
  br label %bb.x

.loopexit193:                                     ; preds = %bb.s, %bb.u, %bb.v, %_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

.loopexit.split-lp194:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp196 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129

bb.x:                                             ; preds = %bb.w, %bb.t
  %.180 = phi float [ %i.ci, %bb.w ], [ %.079279, %bb.t ] ; 2 uses
  %.175 = phi float [ %i.cl, %bb.w ], [ %.074280, %bb.t ] ; 2 uses
  %.not.i115 = icmp eq ptr %.sroa.14.0276, %.sroa.22.0277
  br i1 %.not.i115, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.as, ptr %.sroa.14.0276, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.14.0276, i64 8
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.cn = ptrtoint ptr %.sroa.22.0277 to i64
  %i.co = ptrtoint ptr %.sroa.0147.0275 to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 6 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.aa, label %_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #9
          to label %.noexc116 unwind label %.loopexit.split-lp194

.noexc116:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #10
          to label %.noexc117 unwind label %.loopexit193 ; 4 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorIPN8facebook4yoga4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store ptr %i.as, ptr %i.cy, align 8, !tbaa !27
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.ab, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ab:                                            ; preds = %.noexc117
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %.sroa.0147.0275, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ab, %.noexc117
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0147.0275, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0275, i64 noundef %i.cp) #11
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %bb.j, %bb.y, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0147.1.ph = phi ptr [ %.sroa.0147.0275, %bb.y ], [ %i.cx, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0147.0275, %bb.j ], [ %.sroa.0147.0275, %bb.i ] ; 3 uses
  %.sroa.14.1.ph = phi ptr [ %i.cm, %bb.y ], [ %i.da, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.0276, %bb.j ], [ %.sroa.14.0276, %bb.i ] ; 2 uses
  %.sroa.22.1.ph = phi ptr [ %.sroa.22.0277, %bb.y ], [ %i.db, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.22.0277, %bb.j ], [ %.sroa.22.0277, %bb.i ] ; 3 uses
  %.286.ph = phi float [ %i.ce, %bb.y ], [ %i.ce, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.084278, %bb.j ], [ %.084278, %bb.i ] ; 2 uses
  %.382.ph = phi float [ %.180, %bb.y ], [ %.180, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.079279, %bb.j ], [ %.079279, %bb.i ] ; 2 uses
  %.377.ph = phi float [ %.175, %bb.y ], [ %.175, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.074280, %bb.j ], [ %.074280, %bb.i ] ; 2 uses
  %.372.ph = phi i64 [ %spec.select106, %bb.y ], [ %spec.select106, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.069281, %bb.j ], [ %.069281, %bb.i ] ; 2 uses
  %.268.ph = phi ptr [ %spec.select, %bb.y ], [ %spec.select, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.066282, %bb.j ], [ %.066282, %bb.i ]
  %.265.ph = phi float [ %i.cd, %bb.y ], [ %i.cd, %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.063283, %bb.j ], [ %.063283, %bb.i ]
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 0)
          to label %bb.ae unwind label %bb.m

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not12.i.i.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i ], [ %i.dc, %bb.ae ] ; 2 uses
  %i.dd = load ptr, ptr %.013.i.i.i, align 8, !tbaa !79 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 24) #11
  %.not.i.i.i118 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i118, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !80

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %.lr.ph.i.i.i, %bb.ae
  %i.de = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %.not.i = icmp ne ptr %i.de, null
  %i.df = load i64, ptr %i.z, align 8             ; 2 uses
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = select i1 %.not.i, i1 true, i1 %i.dg
  br i1 %i.dh, label %bb.g, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit, !llvm.loop !82

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %bb.p, %bb.f
  %.sroa.0147.0.lcssa = phi ptr [ %.sroa.0147.5, %bb.f ], [ %.sroa.0147.0275, %bb.p ], [ %.sroa.0147.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.sroa.14.0.lcssa = phi ptr [ %.sroa.0147.5, %bb.f ], [ %.sroa.14.0276, %bb.p ], [ %.sroa.14.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.sroa.22.0.lcssa = phi ptr [ %.sroa.22.5, %bb.f ], [ %.sroa.22.0277, %bb.p ], [ %.sroa.22.1.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.084.lcssa = phi float [ 0.000000e+00, %bb.f ], [ %.084278, %bb.p ], [ %.286.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %.079.lcssa = phi float [ 0.000000e+00, %bb.f ], [ %.079279, %bb.p ], [ %.382.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %.074.lcssa = phi float [ 0.000000e+00, %bb.f ], [ %.074280, %bb.p ], [ %.377.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 3 uses
  %.473 = phi i64 [ 0, %bb.f ], [ %spec.select106, %bb.p ], [ %.372.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ]
  %i.di = fcmp ogt float %.079.lcssa, 0.000000e+00
  %i.dj = fcmp olt float %.079.lcssa, 1.000000e+00
  %or.cond3 = and i1 %i.di, %i.dj
  %spec.store.select = select i1 %or.cond3, float 1.000000e+00, float %.079.lcssa
  %i.dk = fcmp ogt float %.074.lcssa, 0.000000e+00
  %i.dl = fcmp olt float %.074.lcssa, 1.000000e+00
  %or.cond5 = and i1 %i.dk, %i.dl
  %spec.store.select6 = select i1 %or.cond5, float 1.000000e+00, float %.074.lcssa
  store ptr %.sroa.0147.0.lcssa, ptr %0, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.14.0.lcssa, ptr %i.dm, align 8, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.22.0.lcssa, ptr %i.dn, align 8, !tbaa !83
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.084.lcssa, ptr %i.do, align 8, !tbaa !84
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.473, ptr %i.dp, align 8, !tbaa !87
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %spec.store.select, ptr %i.dq, align 8, !tbaa !88
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %spec.store.select6, ptr %i.dr, align 4, !tbaa !89
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> zeroinitializer, ptr %i.ds, align 8, !tbaa !77
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.dt, align 8, !tbaa !90
  ret void

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129: ; preds = %.loopexit193, %.loopexit.split-lp194, %.loopexit, %.loopexit.split-lp, %bb.r, %bb.q, %bb.m, %bb.k, %bb.l
  %.sroa.0147.4 = phi ptr [ %.sroa.0147.5, %bb.l ], [ %.sroa.0147.5, %bb.k ], [ %.sroa.0147.1.ph, %bb.m ], [ %.sroa.0147.0275, %bb.q ], [ %.sroa.0147.0275, %.loopexit.split-lp ], [ %.sroa.0147.0275, %bb.r ], [ %.sroa.0147.0275, %.loopexit ], [ %.sroa.0147.0275, %.loopexit193 ], [ %.sroa.0147.0275, %.loopexit.split-lp194 ] ; 3 uses
  %.sroa.22.4 = phi ptr [ %.sroa.22.5, %bb.l ], [ %.sroa.22.5, %bb.k ], [ %.sroa.22.1.ph, %bb.m ], [ %.sroa.22.0277, %bb.q ], [ %.sroa.22.0277, %.loopexit.split-lp ], [ %.sroa.22.0277, %bb.r ], [ %.sroa.22.0277, %.loopexit ], [ %.sroa.22.0277, %.loopexit193 ], [ %.sroa.22.0277, %.loopexit.split-lp194 ]
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.bb, %bb.k ], [ %i.bd, %bb.m ], [ %i.bz, %bb.q ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ca, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit195, %.loopexit193 ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp194 ]
  %.not.i.i.i130 = icmp eq ptr %.sroa.0147.4, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit131, label %bb.af

bb.af:                                            ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129
  %i.du = ptrtoint ptr %.sroa.22.4 to i64
  %i.dv = ptrtoint ptr %.sroa.0147.4 to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.4, i64 noundef %i.dw) #11
  br label %_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit131

_ZNSt6vectorIPN8facebook4yoga4NodeESaIS3_EED2Ev.exit131: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit129, %bb.af
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i8 @_ZN8facebook4yoga4Node16resolveDirectionENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(744), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK8facebook4yoga5Style20computeMarginForAxisENS0_13FlexDirectionEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i8 %1, -2
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.d = load i16, ptr %i.c, align 1, !tbaa !15   ; 2 uses
  %i.e = and i16 %i.d, 7
  %.not14.i.i = icmp eq i16 %i.e, 0
  br i1 %.not14.i.i, label %bb.c, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.g = load i16, ptr %i.f, align 1, !tbaa !15   ; 2 uses
  %i.h = and i16 %i.g, 7
  %.not15.i.i = icmp eq i16 %i.h, 0
  br i1 %.not15.i.i, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread29: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load i16, ptr %i.i, align 1, !tbaa !15   ; 2 uses
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
  %i.o = load i16, ptr %i.n, align 1, !tbaa !15   ; 2 uses
  %i.p = and i16 %i.o, 7
  %.not14.i12.i14 = icmp eq i16 %i.p, 0
  br i1 %.not14.i12.i14, label %bb.d, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26

bb.d:                                             ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.r = load i16, ptr %i.q, align 1, !tbaa !15   ; 2 uses
  %i.s = and i16 %i.r, 7
  %.not15.i8.i15 = icmp eq i16 %i.s, 0
  br i1 %.not15.i8.i15, label %bb.e, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit26

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.u = load i16, ptr %i.t, align 1, !tbaa !15
  %i.v = and i16 %i.u, 7
  %.not16.i9.i16 = icmp eq i16 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i10.i17 = select i1 %.not16.i9.i16, ptr %i.w, ptr %i.t
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split.i10

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.y = load i16, ptr %i.x, align 1, !tbaa !15
  %i.z = and i16 %i.y, 7
  %.not.i3.i = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = and i16 %i.ab, 7
  %.not7.i.i = icmp eq i16 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i4.i = select i1 %.not7.i.i, ptr %i.ad, ptr %i.aa
  %.sroa.0.0.in.i.i = select i1 %.not.i3.i, ptr %spec.select.i4.i, ptr %i.x
  %.sroa.0.0.pre.i11.i = load i16, ptr %.sroa.0.0.in.i.i, align 1, !tbaa !91
  %i.ae = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %.sroa.0.0.pre.i11.i, float noundef %2)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !15
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
  %.sroa.0.0.pre.i11.i12 = load i16, ptr %spec.select.i10.sink.i11, align 1, !tbaa !91
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden float @_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, float %3, float noundef %4, float noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i8 %2, 2
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.d = load i16, ptr %i.c, align 1, !tbaa !91   ; 2 uses
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
  %i.n = load i16, ptr %i.m, align 1, !tbaa !15
  %i.o = and i16 %i.n, 7
  %.not.i3.i78 = icmp eq i16 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 119 ; 4 uses
  %i.q = load i16, ptr %i.p, align 1
  %i.r = and i16 %i.q, 7
  %.not7.i.i79 = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %spec.select.i4.i80 = select i1 %.not7.i.i79, ptr %i.s, ptr %i.p
  %.sroa.0.0.in.i.i81 = select i1 %.not.i3.i78, ptr %spec.select.i4.i80, ptr %i.m
  %.sroa.0.0.pre.i11.i82 = load i16, ptr %.sroa.0.0.in.i.i81, align 1, !tbaa !91
  %i.t = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.pre.i11.i82, float noundef %5)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !15
  %i.w = and i16 %i.v, 7
  %.not.i3.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.y = load i16, ptr %i.x, align 1
  %i.z = and i16 %i.y, 7
  %.not7.i.i = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %spec.select.i4.i = select i1 %.not7.i.i, ptr %i.aa, ptr %i.x
  %.sroa.0.0.in.i.i = select i1 %.not.i3.i, ptr %spec.select.i4.i, ptr %i.u
  %.sroa.0.0.pre.i11.i76 = load i16, ptr %.sroa.0.0.in.i.i, align 1, !tbaa !91
  %i.ab = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.pre.i11.i76, float noundef 0.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !15
  %i.ae = and i16 %i.ad, 7
  %.not.i13.i70 = icmp eq i16 %i.ae, 0
  %i.af = load i16, ptr %i.p, align 1
  %i.ag = and i16 %i.af, 7
  %.not7.i14.i71 = icmp eq i16 %i.ag, 0
  %spec.select.i15.i72 = select i1 %.not7.i14.i71, ptr %i.s, ptr %i.p
  %.sroa.0.0.in.i16.i73 = select i1 %.not.i13.i70, ptr %spec.select.i15.i72, ptr %i.ac
  %.sroa.0.0.pre.i11.i74 = load i16, ptr %.sroa.0.0.in.i16.i73, align 1, !tbaa !91
  %i.ah = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.pre.i11.i74, float noundef %5)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !15
  %i.ak = and i16 %i.aj, 7
  %.not.i13.i = icmp eq i16 %i.ak, 0
  %i.al = load i16, ptr %i.x, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i14.i = icmp eq i16 %i.am, 0
  %spec.select.i15.i = select i1 %.not7.i14.i, ptr %i.aa, ptr %i.x
  %.sroa.0.0.in.i16.i = select i1 %.not.i13.i, ptr %spec.select.i15.i, ptr %i.ai
  %.sroa.0.0.pre.i11.i = load i16, ptr %.sroa.0.0.in.i16.i, align 1, !tbaa !91
  %i.an = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.b, i16 %.sroa.0.0.pre.i11.i, float noundef 0.000000e+00)
  %i.ao = insertelement <4 x float> poison, float %i.t, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.ab, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.ah, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 3 ; 4 uses
  %i.as = fcmp ord <4 x float> %i.ar, zeroinitializer
  %i.at = fcmp uno <4 x float> %i.ar, zeroinitializer
  %i.au = fcmp olt <4 x float> %i.ar, zeroinitializer
  %i.av = select <4 x i1> %i.as, <4 x i1> %i.au, <4 x i1> %i.at
  %i.aw = select <4 x i1> %i.av, <4 x float> zeroinitializer, <4 x float> %i.ar ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.az = fadd <2 x float> %i.ax, %i.ay           ; 2 uses
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.az, %shift
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bb = fcmp ord float %i.ba, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZN8facebook4yoga24boundAxisWithinMinAndMaxEPKNS0_4NodeENS0_9DirectionENS0_13FlexDirectionENS0_13FloatOptionalEff:bb.a
bb.ai:                                            ; preds = %bb.ah, %bb.ag, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit159
  %i.kk = phi ptr [ %i.ka, %bb.ah ], [ %i.jq, %bb.ag ], [ %i.jp, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit159 ]
  %i.kl = phi float [ %i.kb, %bb.ah ], [ %i.jr, %bb.ag ], [ %i.jo, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit159 ]
  %i.km = load i16, ptr %i.kk, align 1, !tbaa !15 ; 2 uses
  %i.kn = and i16 %i.km, 7
  %.not15.i.i146 = icmp eq i16 %i.kn, 0
  br i1 %.not15.i.i146, label %bb.aj, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151

bb.aj:                                            ; preds = %bb.ai
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 1, !tbaa !15
  %i.kq = and i16 %i.kp, 7
  %.not16.i.i147 = icmp eq i16 %i.kq, 0
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 139
  %spec.select.i.i148 = select i1 %.not16.i.i147, ptr %i.kr, ptr %i.ko
  %.sroa.0.0.pre.i11.i149 = load i16, ptr %spec.select.i.i148, align 1, !tbaa !91
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151: ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.i145 = phi i16 [ %.sroa.0.0.pre.i11.i149, %bb.aj ], [ %i.km, %bb.ai ]
  %i.ks = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %.sroa.0.0.i145, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i67 = fcmp ord float %i.ks, 0.000000e+00
  %i.kt = fcmp uno float %i.ks, 0.000000e+00
  %i.ku = fcmp olt float %i.ks, 0.000000e+00
  %.sink.i.i7.i68 = select i1 %or.cond.i.i6.i67, i1 %i.ku, i1 %i.kt
  %i.kv = select i1 %.sink.i.i7.i68, float 0.000000e+00, float %i.ks
  %i.kw = fadd float %i.kl, %i.kv                 ; 3 uses
  switch i8 %1, label %bb.am [
    i8 1, label %bb.ak
    i8 2, label %bb.al
  ]

bb.ak:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151.thread, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151
  %i.kx = phi float [ %i.jz, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151.thread ], [ %i.kw, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.kz = load i16, ptr %i.ky, align 1, !tbaa !15 ; 2 uses
  %i.la = and i16 %i.kz, 7
  %.not14.i12.i142 = icmp eq i16 %i.la, 0
  br i1 %.not14.i12.i142, label %bb.am, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread: ; preds = %bb.ak
  %i.lb = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %i.kz, float noundef %5) ; 4 uses
  %or.cond.i.i.i61199 = fcmp ord float %i.lb, 0.000000e+00
  %i.lc = fcmp olt float %i.lb, 0.000000e+00
  %i.ld = fcmp uno float %i.lb, 0.000000e+00
  %.sink.i.i.i62200 = select i1 %or.cond.i.i.i61199, i1 %i.lc, i1 %i.ld
  %i.le = select i1 %.sink.i.i.i62200, float 0.000000e+00, float %i.lb
  br label %bb.ao

bb.al:                                            ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151.thread194, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151
  %i.lf = phi float [ %i.kj, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151.thread194 ], [ %i.kw, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.lh = load i16, ptr %i.lg, align 1, !tbaa !15 ; 2 uses
  %i.li = and i16 %i.lh, 7
  %.not.i6.i136 = icmp eq i16 %i.li, 0
  br i1 %.not.i6.i136, label %bb.am, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread201

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread201: ; preds = %bb.al
  %i.lj = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %i.lh, float noundef %5) ; 4 uses
  %or.cond.i.i.i61203 = fcmp ord float %i.lj, 0.000000e+00
  %i.lk = fcmp olt float %i.lj, 0.000000e+00
  %i.ll = fcmp uno float %i.lj, 0.000000e+00
  %.sink.i.i.i62204 = select i1 %or.cond.i.i.i61203, i1 %i.lk, i1 %i.ll
  %i.lm = select i1 %.sink.i.i.i62204, float 0.000000e+00, float %i.lj
  br label %bb.ap

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151
  %i.ln = phi float [ %i.lf, %bb.al ], [ %i.kx, %bb.ak ], [ %i.kw, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit151 ] ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.lp = load i16, ptr %i.lo, align 1, !tbaa !15 ; 2 uses
  %i.lq = and i16 %i.lp, 7
  %.not15.i8.i138 = icmp eq i16 %i.lq, 0
  br i1 %.not15.i8.i138, label %bb.an, label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143

bb.an:                                            ; preds = %bb.am
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  %i.ls = load i16, ptr %i.lr, align 1, !tbaa !15
  %i.lt = and i16 %i.ls, 7
  %.not16.i9.i139 = icmp eq i16 %i.lt, 0
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 121
  %spec.select.i10.i140 = select i1 %.not16.i9.i139, ptr %i.lu, ptr %i.lr
  %.sroa.0.0.pre.i11.i141 = load i16, ptr %spec.select.i10.i140, align 1, !tbaa !91
  br label %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143

_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143: ; preds = %bb.am, %bb.an
  %.sroa.0.0.i137 = phi i16 [ %i.lp, %bb.am ], [ %.sroa.0.0.pre.i11.i141, %bb.an ]
  %i.lv = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %.sroa.0.0.i137, float noundef %5) ; 4 uses
  %or.cond.i.i.i61 = fcmp ord float %i.lv, 0.000000e+00
  %i.lw = fcmp olt float %i.lv, 0.000000e+00
  %i.lx = fcmp uno float %i.lv, 0.000000e+00
  %.sink.i.i.i62 = select i1 %or.cond.i.i.i61, i1 %i.lw, i1 %i.lx
  %i.ly = select i1 %.sink.i.i.i62, float 0.000000e+00, float %i.lv ; 3 uses
  switch i8 %1, label %bb.aq [
    i8 1, label %bb.ao
    i8 2, label %bb.ap
  ]

bb.ao:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143
  %i.lz = phi float [ %i.le, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread ], [ %i.ly, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143 ] ; 2 uses
  %i.ma = phi float [ %i.kx, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread ], [ %i.ln, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.mc = load i16, ptr %i.mb, align 1, !tbaa !15 ; 2 uses
  %i.md = and i16 %i.mc, 7
  %.not14.i12.i134 = icmp eq i16 %i.md, 0
  br i1 %.not14.i12.i134, label %bb.aq, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135

bb.ap:                                            ; preds = %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread201, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143
  %i.me = phi float [ %i.lm, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread201 ], [ %i.ly, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143 ] ; 2 uses
  %i.mf = phi float [ %i.lf, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143.thread201 ], [ %i.ln, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.mh = load i16, ptr %i.mg, align 1, !tbaa !15 ; 2 uses
  %i.mi = and i16 %i.mh, 7
  %.not.i6.i128 = icmp eq i16 %i.mi, 0
  br i1 %.not.i6.i128, label %bb.aq, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143
  %i.mj = phi float [ %i.me, %bb.ap ], [ %i.lz, %bb.ao ], [ %i.ly, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143 ] ; 2 uses
  %i.mk = phi float [ %i.mf, %bb.ap ], [ %i.ma, %bb.ao ], [ %i.ln, %_ZNK8facebook4yoga5Style14computePaddingENS0_12PhysicalEdgeENS0_9DirectionE.exit143 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.mm = load i16, ptr %i.ml, align 1, !tbaa !15 ; 2 uses
  %i.mn = and i16 %i.mm, 7
  %.not15.i8.i130 = icmp eq i16 %i.mn, 0
  br i1 %.not15.i8.i130, label %bb.ar, label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135

bb.ar:                                            ; preds = %bb.aq
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 1, !tbaa !15
  %i.mq = and i16 %i.mp, 7
  %.not16.i9.i131 = icmp eq i16 %i.mq, 0
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 139
  %spec.select.i10.i132 = select i1 %.not16.i9.i131, ptr %i.mr, ptr %i.mo
  %.sroa.0.0.pre.i11.i133 = load i16, ptr %spec.select.i10.i132, align 1, !tbaa !91
  br label %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135

_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135: ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.ms = phi float [ %i.mj, %bb.aq ], [ %i.lz, %bb.ao ], [ %i.mj, %bb.ar ], [ %i.me, %bb.ap ]
  %i.mt = phi float [ %i.mk, %bb.aq ], [ %i.ma, %bb.ao ], [ %i.mk, %bb.ar ], [ %i.mf, %bb.ap ]
  %.sroa.0.0.i129 = phi i16 [ %i.mm, %bb.aq ], [ %i.mc, %bb.ao ], [ %.sroa.0.0.pre.i11.i133, %bb.ar ], [ %i.mh, %bb.ap ]
  %i.mu = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.df, i16 %.sroa.0.0.i129, float noundef 0.000000e+00) ; 4 uses
  %or.cond.i.i6.i63 = fcmp ord float %i.mu, 0.000000e+00
  %i.mv = fcmp uno float %i.mu, 0.000000e+00
  %i.mw = fcmp olt float %i.mu, 0.000000e+00
  %.sink.i.i7.i64 = select i1 %or.cond.i.i6.i63, i1 %i.mw, i1 %i.mv
  %i.mx = select i1 %.sink.i.i7.i64, float 0.000000e+00, float %i.mu
  %i.my = fadd float %i.ms, %i.mx
  %i.mz = fadd float %i.mt, %i.my                 ; 2 uses
  %i.na = fcmp ord float %i.mz, 0.000000e+00
  %.sroa.0.0.i38 = select i1 %i.na, float %i.mz, float 0.000000e+00
  %i.nb = fadd float %i.ii, %.sroa.0.0.i38
  br label %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit

_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit: ; preds = %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135, %bb.aa, %bb.f, %bb.e
  %.sroa.0161.0 = phi float [ %i.ii, %bb.aa ], [ %i.bh, %bb.e ], [ %i.nb, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135 ], [ %i.dd, %bb.f ] ; 3 uses
  %.sroa.0162.0 = phi float [ %.sroa.010.1.i33, %bb.aa ], [ %.sroa.010.1.i, %bb.e ], [ %.sroa.010.1.i33, %_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE.exit135 ], [ %.sroa.010.1.i, %bb.f ]
  %or.cond = fcmp oge float %.sroa.0161.0, 0.000000e+00
  %i.nc = fcmp ogt float %3, %.sroa.0161.0
  %or.cond224 = select i1 %or.cond, i1 %i.nc, i1 false
  br i1 %or.cond224, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread222, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread216

_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread216: ; preds = %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit35
  %.sroa.0162.0210213 = phi float [ %.sroa.010.1.i, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.0162.0, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ], [ %.sroa.010.1.i33, %_ZNK8facebook4yoga5Style20resolvedMinDimensionENS0_9DirectionENS0_9DimensionEff.exit35 ] ; 3 uses
  %or.cond225 = fcmp oge float %.sroa.0162.0210213, 0.000000e+00
  %i.nd = fcmp olt float %3, %.sroa.0162.0210213
  %or.cond226 = select i1 %or.cond225, i1 %i.nd, i1 false
  br i1 %or.cond226, label %bb.as, label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread222

bb.as:                                            ; preds = %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread216
  br label %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread222

_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit40.thread222: ; preds = %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread216, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit, %bb.g, %bb.as
  %.sroa.027.0 = phi float [ %3, %_ZN8facebook4yogageENS0_13FloatOptionalES1_.exit.thread216 ], [ %.sroa.0162.0210213, %bb.as ], [ %3, %bb.g ], [ %.sroa.0161.0, %_ZNK8facebook4yoga5Style20resolvedMaxDimensionENS0_9DirectionENS0_9DimensionEff.exit ]
  ret float %.sroa.027.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef zeroext i1 @_ZN8facebook4yoga4Node14isNodeFlexibleEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

declare noundef float @_ZNK8facebook4yoga4Node15resolveFlexGrowEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

declare noundef float @_ZNK8facebook4yoga4Node17resolveFlexShrinkEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEi(ptr dead_on_unwind noalias writable sret(%"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %.07.i.i.i = phi ptr [ %i.e, %.noexc.i.i ], [ %i.a, %bb.a ]
  %.sroa.03.06.i.i.i = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %.noexc.i.i unwind label %bb.b ; 4 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store ptr %i.e, ptr %.07.i.i.i, align 8, !tbaa !79
  %i.h = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !79 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !93

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !79 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #11
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !80

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i3, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.aw, %.lr.ph.i.i.i3 ], [ %i.aw, %bb.d ], [ %i.j, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit: ; preds = %.noexc.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not11.i.i = icmp ult i64 %i.o, %i.x
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit, %tailrecurse.i.i
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !92   ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !95

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96
  store ptr %i.ab, ptr %1, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !98
  store i64 %i.ad, ptr %i.m, align 8, !tbaa !94
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !79
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !79
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 24) #11, !inline_history !99
  %i.af = load i64, ptr %i.m, align 8, !tbaa !94
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 696
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 704
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !9
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %.not.i.i = icmp ult i64 %i.ag, %i.ap
  br i1 %.not.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit
  %.lcssa6.i.i = phi i64 [ %i.o, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ], [ %i.ag, %tailrecurse.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.t, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorC2ERKS4_.exit ], [ %i.al, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.m, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa6.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  %i.at = load i8, ptr %i.as, align 4
  %i.au = and i8 %i.at, 12
  %i.av = icmp eq i8 %i.au, 8
  br i1 %i.av, label %bb.c, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !100

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #12
          to label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not12.i.i.i, label %common.resume, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %bb.d, %.lr.ph.i.i.i3
  %.013.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i3 ], [ %i.ax, %bb.d ] ; 2 uses
  %i.ay = load ptr, ptr %.013.i.i.i, align 8, !tbaa !79 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 24) #11
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %common.resume, label %.lr.ph.i.i.i3, !llvm.loop !80

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %0, i16 %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i16 %1, 7
  switch i16 %i.a, label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit [
    i16 1, label %bb.b
    i16 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %1, 8
  %.not.i = icmp eq i16 %i.b, 0
  %i.c = lshr i16 %1, 4                           ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i16 %i.c to i64                ; 2 uses
  %i.e = icmp ult i16 %1, 64
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %i.j = add nsw i64 %i.d, -4                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.j, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.j, i64 noundef %i.q) #9
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i:               ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i, %bb.d
  %.0.in.i.i = phi ptr [ %i.g, %bb.d ], [ %i.r, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i ]
  %.0.i4.i = load float, ptr %.0.in.i.i, align 4, !tbaa !106
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

bb.g:                                             ; preds = %bb.b
  %i.s = and i16 %i.c, 2047
  %i.t = zext nneg i16 %i.s to i32                ; 2 uses
  %i.u = sub nsw i32 0, %i.t
  %.not.i3.i = icmp slt i16 %1, 0
  %i.v = select i1 %.not.i3.i, i32 %i.u, i32 %i.t
  %i.w = sitofp i32 %i.v to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

bb.h:                                             ; preds = %bb.a
  %i.x = and i16 %1, 8
  %.not.i3 = icmp eq i16 %i.x, 0
  %i.y = lshr i16 %1, 4                           ; 2 uses
  br i1 %.not.i3, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = zext nneg i16 %i.y to i64                ; 2 uses
  %i.aa = icmp ult i16 %1, 64
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101 ; 2 uses
  %i.af = add nsw i64 %i.z, -4                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2                 ; 2 uses
  %.not.i.i.i.i4 = icmp ult i64 %i.af, %i.am
  br i1 %.not.i.i.i.i4, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.af, i64 noundef %i.am) #9
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5:              ; preds = %bb.k
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.af
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5, %bb.j
  %.0.in.i.i7 = phi ptr [ %i.ac, %bb.j ], [ %i.an, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i5 ]
  %.0.i4.i8 = load float, ptr %.0.in.i.i7, align 4, !tbaa !106
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10

bb.m:                                             ; preds = %bb.h
  %i.ao = and i16 %i.y, 2047
  %i.ap = zext nneg i16 %i.ao to i32              ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %.not.i3.i9 = icmp slt i16 %1, 0
  %i.ar = select i1 %.not.i3.i9, i32 %i.aq, i32 %i.ap
  %i.as = sitofp i32 %i.ar to float
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10: ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6, %bb.m
  %i.at = phi float [ %.0.i4.i8, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i6 ], [ %i.as, %bb.m ]
  %i.au = fmul float %2, %i.at
  %i.av = fmul float %i.au, f0x3C23D70A
  br label %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %bb.g, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10
  %.sroa.014.0 = phi float [ %i.w, %bb.g ], [ %i.av, %_ZNK8facebook4yoga14StyleValuePool14getStoredValueENS0_16StyleValueHandleE.exit10 ], [ %.0.i4.i, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i ], [ +qnan, %bb.a ]
  ret float %.sroa.014.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  switch i8 %2, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.c = load i16, ptr %i.b, align 1, !tbaa !15   ; 2 uses
  %i.d = and i16 %i.c, 7
  %.not14.i = icmp eq i16 %i.d, 0
  br i1 %.not14.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.f = load i16, ptr %i.e, align 1, !tbaa !15   ; 2 uses
  %i.g = and i16 %i.f, 7
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %bb.e, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = load i16, ptr %i.a, align 1, !tbaa !15   ; 2 uses
  %i.i = and i16 %i.h, 7
  %.not15.i = icmp eq i16 %i.i, 0
  br i1 %.not15.i, label %bb.f, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !15
  %i.l = and i16 %i.k, 7
  %.not16.i = icmp eq i16 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i = select i1 %.not16.i, ptr %i.m, ptr %i.j
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1, !tbaa !15
  %i.p = and i16 %i.o, 7
  %.not.i3 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1
  %i.s = and i16 %i.r, 7
  %.not7.i = icmp eq i16 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i4 = select i1 %.not7.i, ptr %i.t, ptr %i.q
  %.sroa.0.0.in.i = select i1 %.not.i3, ptr %spec.select.i4, ptr %i.n
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.h:                                             ; preds = %bb.a
  switch i8 %2, label %bb.k [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.v = load i16, ptr %i.u, align 1, !tbaa !15   ; 2 uses
  %i.w = and i16 %i.v, 7
  %.not14.i12 = icmp eq i16 %i.w, 0
  br i1 %.not14.i12, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.y = load i16, ptr %i.x, align 1, !tbaa !15   ; 2 uses
  %i.z = and i16 %i.y, 7
  %.not.i6 = icmp eq i16 %i.z, 0
  br i1 %.not.i6, label %bb.k, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !15 ; 2 uses
  %i.ac = and i16 %i.ab, 7
  %.not15.i8 = icmp eq i16 %i.ac, 0
  br i1 %.not15.i8, label %bb.l, label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !15
  %i.af = and i16 %i.ae, 7
  %.not16.i9 = icmp eq i16 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i10 = select i1 %.not16.i9, ptr %i.ag, ptr %i.ad
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !15
  %i.aj = and i16 %i.ai, 7
  %.not.i13 = icmp eq i16 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = and i16 %i.al, 7
  %.not7.i14 = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 29
  %spec.select.i15 = select i1 %.not7.i14, ptr %i.an, ptr %i.ak
  %.sroa.0.0.in.i16 = select i1 %.not.i13, ptr %spec.select.i15, ptr %i.ah
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split: ; preds = %bb.g, %bb.m, %bb.f, %bb.l
  %spec.select.i10.sink = phi ptr [ %spec.select.i10, %bb.l ], [ %spec.select.i, %bb.f ], [ %.sroa.0.0.in.i16, %bb.m ], [ %.sroa.0.0.in.i, %bb.g ]
  %.sroa.0.0.pre.i11 = load i16, ptr %spec.select.i10.sink, align 1, !tbaa !91
  br label %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit

_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit: ; preds = %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split, %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i16 [ %i.ab, %bb.k ], [ %i.v, %bb.i ], [ %i.h, %bb.e ], [ %i.y, %bb.j ], [ %i.c, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.0.0.pre.i11, %_ZNK8facebook4yoga5Style15computeLeftEdgeERKSt5arrayINS0_16StyleValueHandleELm9EENS0_9DirectionE.exit.sink.split ]
  ret i16 %.sroa.0.0
}

; Function Attrs: noreturn
declare void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !95

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96
  store ptr %i.q, ptr %0, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !98
  store i64 %i.s, ptr %i.a, align 8, !tbaa !94
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !79
  store ptr %i.t, ptr %i.m, align 8, !tbaa !79
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #11
  %i.u = load i64, ptr %i.a, align 8, !tbaa !94
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !14  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !100

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.c, i64 noundef %i.k) #9
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !27 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !14
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !79
  store ptr %i.x, ptr %i.v, align 8, !tbaa !79
  store ptr %i.v, ptr %i.m, align 8, !tbaa !79
  store ptr %.0.peel, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i6.not.peel, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %bb.d, %bb.f
  %i.aa = phi ptr [ %.0, %bb.f ], [ %.0.peel, %bb.d ]
  %.0.in = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !27  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 12
  %i.ae = icmp eq i8 %i.ad, 8
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !14
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aa, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !79
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !79
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !79
  store ptr %.0, ptr %0, align 8, !tbaa !18
  store i64 0, ptr %i.b, align 8, !tbaa !94
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i6.not, label %.loopexit12, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !107

.loopexit12:                                      ; preds = %bb.f, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 0) #9
  unreachable

.loopexit:                                        ; preds = %bb.e, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { "function-inline-cost-multiplier"="2" }

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
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!10, !11, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !17, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !20, i64 0, !21, i64 8, !22, i64 16}
!20 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !23, i64 0}
!23 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !24, i64 0}
!24 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !25, i64 0}
!25 = !{!"_ZTSSt19_Fwd_list_node_base", !26, i64 0}
!26 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !13, i64 0}
!27 = !{!20, !20, i64 0}
!28 = !{!29, !21, i64 672}
!29 = !{!"_ZTSN8facebook4yoga4NodeE", !30, i64 0, !30, i64 0, !30, i64 0, !30, i64 0, !31, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !32, i64 32, !32, i64 36, !13, i64 40, !13, i64 48, !34, i64 56, !66, i64 336, !21, i64 672, !21, i64 680, !20, i64 688, !72, i64 696, !75, i64 720, !76, i64 728}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !7, i64 0}
!32 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !33, i64 0}
!33 = !{!"float", !7, i64 0}
!34 = !{!"_ZTSN8facebook4yoga5StyleE", !35, i64 0, !36, i64 0, !37, i64 0, !37, i64 1, !37, i64 1, !38, i64 2, !38, i64 2, !38, i64 3, !39, i64 3, !40, i64 3, !41, i64 4, !42, i64 4, !43, i64 4, !16, i64 5, !16, i64 7, !16, i64 9, !16, i64 11, !44, i64 13, !44, i64 31, !44, i64 49, !44, i64 67, !45, i64 85, !46, i64 91, !46, i64 95, !46, i64 99, !16, i64 103, !47, i64 112, !47, i64 136, !47, i64 160, !47, i64 184, !52, i64 208, !52, i64 216, !52, i64 224, !52, i64 232, !54, i64 240}
!35 = !{!"_ZTSN8facebook4yoga9DirectionE", !7, i64 0}
!36 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !7, i64 0}
!37 = !{!"_ZTSN8facebook4yoga7JustifyE", !7, i64 0}
!38 = !{!"_ZTSN8facebook4yoga5AlignE", !7, i64 0}
!39 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !7, i64 0}
!40 = !{!"_ZTSN8facebook4yoga4WrapE", !7, i64 0}
!41 = !{!"_ZTSN8facebook4yoga8OverflowE", !7, i64 0}
!42 = !{!"_ZTSN8facebook4yoga7DisplayE", !7, i64 0}
!43 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !7, i64 0}
!44 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !7, i64 0}
!45 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !7, i64 0}
!46 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !7, i64 0}
!47 = !{!"_ZTSSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN8facebook4yoga13GridTrackSizeE", !13, i64 0}
!52 = !{!"_ZTSN8facebook4yoga8GridLineE", !53, i64 0, !6, i64 4}
!53 = !{!"_ZTSN8facebook4yoga12GridLineTypeE", !7, i64 0}
!54 = !{!"_ZTSN8facebook4yoga14StyleValuePoolE", !55, i64 0}
!55 = !{!"_ZTSN8facebook4yoga16SmallValueBufferILm4EEE", !17, i64 0, !56, i64 4, !57, i64 24, !59, i64 32}
!56 = !{!"_ZTSSt5arrayIjLm4EE", !7, i64 0}
!57 = !{!"_ZTSSt6bitsetILm4EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Base_bitsetILm1EE", !21, i64 0}
!59 = !{!"_ZTSSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !60, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_ELb1ELb1EE", !61, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !62, i64 0}
!62 = !{!"_ZTSSt5tupleIJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !63, i64 0}
!63 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !64, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook4yoga16SmallValueBufferILm4EE8OverflowELb0EE", !65, i64 0}
!65 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !13, i64 0}
!66 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !6, i64 0, !32, i64 4, !32, i64 8, !6, i64 12, !6, i64 16, !35, i64 20, !6, i64 24, !67, i64 28, !68, i64 220, !35, i64 244, !30, i64 244, !70, i64 248, !70, i64 256, !70, i64 264, !71, i64 272, !71, i64 288, !71, i64 304, !71, i64 320}
!67 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !7, i64 0}
!68 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !33, i64 0, !33, i64 4, !69, i64 8, !69, i64 12, !33, i64 16, !33, i64 20}
!69 = !{!"_ZTSN8facebook4yoga10SizingModeE", !7, i64 0}
!70 = !{!"_ZTSSt5arrayIfLm2EE", !7, i64 0}
!71 = !{!"_ZTSSt5arrayIfLm4EE", !7, i64 0}
!72 = !{!"_ZTSSt6vectorIPN8facebook4yoga4NodeESaIS3_EE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE12_Vector_implE", !10, i64 0}
!75 = !{!"p1 _ZTSN8facebook4yoga6ConfigE", !13, i64 0}
!76 = !{!"_ZTSSt5arrayIN8facebook4yoga15StyleSizeLengthELm2EE", !7, i64 0}
!77 = !{!33, !33, i64 0}
!78 = !{!32, !33, i64 0}
!79 = !{!25, !26, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = distinct !{!82, !81}
!83 = !{!10, !11, i64 16}
!84 = !{!85, !33, i64 24}
!85 = !{!"_ZTSN8facebook4yoga8FlexLineE", !72, i64 0, !33, i64 24, !21, i64 32, !86, i64 40}
!86 = !{!"_ZTSN8facebook4yoga21FlexLineRunningLayoutE", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16}
!87 = !{!85, !21, i64 32}
!88 = !{!86, !33, i64 0}
!89 = !{!86, !33, i64 4}
!90 = !{!86, !33, i64 16}
!91 = !{!17, !17, i64 0}
!92 = !{!23, !26, i64 0}
!93 = distinct !{!93, !81}
!94 = !{!19, !21, i64 8}
!95 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!96 = !{!97, !20, i64 0}
!97 = !{!"_ZTSSt4pairIPKN8facebook4yoga4NodeEmE", !20, i64 0, !21, i64 8}
!98 = !{!97, !21, i64 8}
!99 = !{ptr @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!101 = !{!65, !65, i64 0}
!102 = !{!103, !104, i64 8}
!103 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p1 int", !13, i64 0}
!105 = !{!103, !104, i64 0}
!106 = !{!6, !6, i64 0}
!107 = distinct !{!107, !81, !108}
!108 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
