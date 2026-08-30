Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.msdfgen::EdgeHolder" = type { ptr }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors = private unnamed_addr constant [3 x i32] [i32 3, i32 6, i32 5], align 4
@_ZZN7msdfgenL9initColorERyE6colors = internal unnamed_addr constant [3 x i32] [i32 6, i32 5, i32 3], align 4
@_ZZN7msdfgenL10tryAddEdgeEPiPKS0_iiiS0_E20FIRST_POSSIBLE_COLOR = internal unnamed_addr constant [8 x i32] [i32 -1, i32 0, i32 1, i32 0, i32 2, i32 2, i32 1, i32 0], align 16
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen18edgeColoringSimpleERNS_5ShapeEdy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, double noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [7 x ptr], align 16               ; 17 uses
  %3 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %i.c = tail call double @sin(double noundef %1) #16
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %.not168256 = icmp eq ptr %i.d, %i.f
  br i1 %.not168256, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.a
  %i.g = urem i64 %2, 3
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL9initColorERyE6colors, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = udiv i64 %2, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

._crit_edge267:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.0120.5, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge267
  %i.r = ptrtoint ptr %.sroa.23.5 to i64
  %i.s = ptrtoint ptr %.sroa.0120.5 to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.5, i64 noundef %i.t) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge267, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph266, %.loopexit
  %.0153264 = phi i64 [ %i.j, %.lr.ph266 ], [ %.3, %.loopexit ] ; 7 uses
  %.0155263 = phi i32 [ %i.i, %.lr.ph266 ], [ %.3158, %.loopexit ] ; 4 uses
  %.sroa.0120.0262 = phi ptr [ null, %.lr.ph266 ], [ %.sroa.0120.5, %.loopexit ] ; 6 uses
  %.sroa.15.0261 = phi ptr [ null, %.lr.ph266 ], [ %.sroa.15.3, %.loopexit ] ; 3 uses
  %.sroa.0101.0258 = phi ptr [ %i.d, %.lr.ph266 ], [ %i.ip, %.loopexit ] ; 13 uses
  %.sroa.23.0257 = phi ptr [ null, %.lr.ph266 ], [ %.sroa.23.5, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %.sroa.0101.0258, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0101.0258, i64 8 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.15.0261, %.sroa.0120.0262
  %spec.select = select i1 %.not.i.i, ptr %.sroa.15.0261, ptr %.sroa.0120.0262 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.z = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke { double, double } %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.z, double noundef 1.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %.sroa.0101.0258, align 8, !tbaa !13 ; 3 uses
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not170227 = icmp eq ptr %i.ae, %i.af
  br i1 %.not170227, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p
  %i.ag = icmp eq ptr %.sroa.0120.2, %.sroa.15.2
  br i1 %i.ag, label %._crit_edge.thread, label %bb.t

bb.f:                                             ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.lr.ph:                                           ; preds = %bb.e, %bb.p
  %.sroa.0120.1233 = phi ptr [ %.sroa.0120.2, %bb.p ], [ %.sroa.0120.0262, %bb.e ] ; 9 uses
  %.sroa.093.0232 = phi ptr [ %i.cd, %bb.p ], [ %i.ae, %bb.e ] ; 3 uses
  %.0159231 = phi i32 [ %i.ce, %bb.p ], [ 0, %bb.e ] ; 3 uses
  %.pn230 = phi { double, double } [ %i.cc, %bb.p ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.15.1229 = phi ptr [ %.sroa.15.2, %bb.p ], [ %spec.select, %bb.e ] ; 7 uses
  %.sroa.23.1228 = phi ptr [ %.sroa.23.2, %bb.p ], [ %.sroa.23.0257, %bb.e ] ; 4 uses
  %.sroa.099.0 = extractvalue { double, double } %.pn230, 0 ; 3 uses
  %.sroa.6.0 = extractvalue { double, double } %.pn230, 1 ; 3 uses
  %i.ai = fmul double %.sroa.6.0, %.sroa.6.0
  %i.aj = call double @llvm.fmuladd.f64(double %.sroa.099.0, double %.sroa.099.0, double %i.ai) ; 2 uses
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.aj) ; 2 uses
  %i.ak = fcmp une double %i.aj, 0.000000e+00     ; 2 uses
  %i.al = fdiv double %.sroa.099.0, %sqrt.i.i
  %i.am = fdiv double %.sroa.6.0, %sqrt.i.i
  %.sroa.3.1.i = select i1 %i.ak, double %i.am, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.ak, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.093.0232)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke { double, double } %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.an, double noundef 0.000000e+00)
          to label %bb.h unwind label %bb.n       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.as = extractvalue { double, double } %i.ar, 0 ; 3 uses
  %i.at = extractvalue { double, double } %i.ar, 1 ; 3 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.au) ; 2 uses
  %sqrt.i.i70 = call noundef double @llvm.sqrt.f64(double %i.av) ; 2 uses
  %i.aw = fcmp une double %i.av, 0.000000e+00     ; 2 uses
  %i.ax = fdiv double %i.as, %sqrt.i.i70
  %i.ay = fdiv double %i.at, %sqrt.i.i70
  %.sroa.3.1.i71 = select i1 %i.aw, double %i.ay, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i72 = select i1 %i.aw, double %i.ax, double 0.000000e+00 ; 2 uses
  %i.az = fmul double %.sroa.3.1.i, %.sroa.3.1.i71
  %i.ba = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i72, double %i.az)
  %i.bb = fcmp ugt double %i.ba, 0.000000e+00
  br i1 %i.bb, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.h
  %i.bc = fneg double %.sroa.0.1.i72
  %i.bd = fmul double %.sroa.3.1.i, %i.bc
  %i.be = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i71, double %i.bd)
  %i.bf = call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ogt double %i.bf, %i.c
  br i1 %i.bg, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.h, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.15.1229, %.sroa.23.1228
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.0159231, ptr %.sroa.15.1229, align 4, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.15.1229, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.bi = ptrtoint ptr %.sroa.15.1229 to i64
  %i.bj = ptrtoint ptr %.sroa.0120.1233 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 6 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bm = ashr exact i64 %i.bk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951)
  %i.bq = select i1 %i.bo, i64 2305843009213693951, i64 %i.bp ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #19
          to label %.noexc76 unwind label %.loopexit174 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  store i32 %.0159231, ptr %i.bt, align 4, !tbaa !17
  %i.bu = icmp sgt i64 %i.bk, 0
  br i1 %i.bu, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %.sroa.0120.1233, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc76
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0120.1233, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.1233, i64 noundef %i.bk) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.g, %.lr.ph
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit174:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.i, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.23.2 = phi ptr [ %.sroa.23.1228, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.bw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.1228, %bb.i ] ; 8 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.1229, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bh, %bb.i ] ; 7 uses
  %.sroa.0120.2 = phi ptr [ %.sroa.0120.1233, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.bs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0120.1233, %bb.i ] ; 13 uses
  %i.by = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.093.0232)
          to label %bb.o unwind label %bb.q       ; 2 uses

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke { double, double } %i.cb(ptr noundef nonnull align 8 dereferenceable(12) %i.by, double noundef 1.000000e+00)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.093.0232, i64 8 ; 6 uses
  %i.ce = add nuw nsw i32 %.0159231, 1
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not170.a = icmp eq ptr %i.cd, %i.cf
  br i1 %.not170.a, label %._crit_edge, label %.lr.ph, !llvm.loop !18

bb.q:                                             ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.sroa.0120.1.lcssa352 = phi ptr [ %.sroa.0120.2, %._crit_edge ], [ %.sroa.0120.0262, %bb.e ] ; 3 uses
  %.sroa.15.1.lcssa351 = phi ptr [ %.sroa.15.2, %._crit_edge ], [ %spec.select, %bb.e ] ; 2 uses
  %.sroa.23.1.lcssa348 = phi ptr [ %.sroa.23.2, %._crit_edge ], [ %.sroa.23.0257, %bb.e ] ; 3 uses
  %i.ch = phi ptr [ %i.cd, %._crit_edge ], [ %i.ae, %bb.e ]
  %i.ci = trunc i64 %.0153264 to i32
  %i.cj = and i32 %i.ci, 1
  %i.ck = lshr i64 %.0153264, 1                   ; 2 uses
  %i.cl = add nuw nsw i32 %i.cj, 1
  %i.cm = shl i32 %.0155263, %i.cl                ; 2 uses
  %i.cn = lshr i32 %i.cm, 3
  %i.co = or i32 %i.cn, %i.cm
  %i.cp = and i32 %i.co, 7                        ; 3 uses
  %i.cq = load ptr, ptr %.sroa.0101.0258, align 8, !tbaa !13 ; 2 uses
  %.not171252 = icmp eq ptr %i.cq, %i.ch
  br i1 %.not171252, label %.loopexit, label %.lr.ph255

.lr.ph255:                                        ; preds = %._crit_edge.thread, %bb.r
  %.sroa.083.0253 = phi ptr [ %i.ct, %bb.r ], [ %i.cq, %._crit_edge.thread ] ; 2 uses
  %i.cr = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.083.0253)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph255
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cp, ptr %i.cs, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.083.0253, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not171 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not171, label %.loopexit, label %.lr.ph255, !llvm.loop !22

bb.s:                                             ; preds = %.lr.ph255
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.t:                                             ; preds = %._crit_edge
  %i.cw = ptrtoint ptr %.sroa.15.2 to i64
  %i.cx = ptrtoint ptr %.sroa.0120.2 to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4
  br i1 %i.cz, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.da = trunc i64 %.0153264 to i32              ; 2 uses
  %i.db = and i32 %i.da, 1
  %i.dc = add nuw nsw i32 %i.db, 1
  %i.dd = shl i32 %.0155263, %i.dc                ; 2 uses
  %i.de = lshr i32 %i.dd, 3
  %i.df = or i32 %i.de, %i.dd
  %i.dg = and i32 %i.df, 7                        ; 5 uses
  store i32 %i.dg, ptr %i.a, align 4, !tbaa !11
  store i32 7, ptr %i.k, align 4, !tbaa !11
  %i.dh = lshr i32 %i.da, 1
  %i.di = and i32 %i.dh, 1
  %i.dj = lshr i64 %.0153264, 2
  %i.dk = add nuw nsw i32 %i.di, 1
  %i.dl = shl nuw nsw i32 %i.dg, %i.dk            ; 2 uses
  %i.dm = lshr i32 %i.dl, 3
  %.masked = and i32 %i.dl, 6
  %i.dn = or i32 %i.dm, %.masked                  ; 4 uses
  store i32 %i.dn, ptr %i.l, align 4, !tbaa !11
  %i.do = load i32, ptr %.sroa.0120.2, align 4, !tbaa !17 ; 2 uses
  %i.dp = load ptr, ptr %.sroa.0101.0258, align 8, !tbaa !23 ; 3 uses
  %i.dq = ptrtoint ptr %i.cd to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3                 ; 2 uses
  %i.du = icmp ugt i64 %i.dt, 2
  br i1 %i.du, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dv = trunc i64 %i.dt to i32                  ; 4 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph251, label %.loopexit172

.lr.ph251:                                        ; preds = %bb.v, %bb.w
  %.039249 = phi i32 [ %i.ek, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.dx = mul nuw nsw i32 %.039249, 3
  %i.dy = add nuw nsw i32 %i.dx, 1
  %i.dz = udiv i32 %i.dy, %i.dv
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr [4 x i8], ptr %i.a, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !11
  %i.ed = add nsw i32 %.039249, %i.do
  %i.ee = srem i32 %i.ed, %i.dv
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %.sroa.0101.0258, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.lr.ph251
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %i.ec, ptr %i.ej, align 8, !tbaa !20
  %i.ek = add nuw nsw i32 %.039249, 1             ; 2 uses
  %exitcond318.not = icmp eq i32 %i.ek, %i.dv
  br i1 %exitcond318.not, label %.loopexit172, label %.lr.ph251, !llvm.loop !25

bb.x:                                             ; preds = %.lr.ph251
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.y:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.cd, %i.dp
  br i1 %.not, label %.loopexit172, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.em = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %bb.aa unwind label %bb.af     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.en = mul nsw i32 %i.do, 3                    ; 4 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.eo ; 3 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 8
  %i.er = getelementptr i8, ptr %i.ep, i64 16
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 120
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(12) %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ev = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.ew = load ptr, ptr %.sroa.0101.0258, align 8, !tbaa !23 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
end_hunk_0
begin_hunk_1_@_ZN7msdfgen18edgeColoringSimpleERNS_5ShapeEdy:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.6, i64 noundef %i.it) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

_ZNSt6vectorIiSaIiEED2Ev.exit82:                  ; preds = %bb.aw, %.thread
  resume { ptr, i32 } %.pn63.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19edgeColoringInkTrapERNS_5ShapeEdy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, double noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [7 x ptr], align 16               ; 17 uses
  %3 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %i.c = tail call double @sin(double noundef %1) #16
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %.not257375 = icmp eq ptr %i.d, %i.f
  br i1 %.not257375, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit, label %.lr.ph385

.lr.ph385:                                        ; preds = %bb.a
  %i.g = urem i64 %2, 3
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL9initColorERyE6colors, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = udiv i64 %2, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

._crit_edge386:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.0191.5, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge386
  %i.r = ptrtoint ptr %.sroa.38.5 to i64
  %i.s = ptrtoint ptr %.sroa.0191.5 to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.5, i64 noundef %i.t) #17
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit: ; preds = %bb.a, %._crit_edge386, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph385, %.loopexit
  %.0238383 = phi i64 [ %i.j, %.lr.ph385 ], [ %.3241, %.loopexit ] ; 7 uses
  %.0243382 = phi i32 [ %i.i, %.lr.ph385 ], [ %.7, %.loopexit ] ; 4 uses
  %.sroa.0191.0381 = phi ptr [ null, %.lr.ph385 ], [ %.sroa.0191.5, %.loopexit ] ; 6 uses
  %.sroa.29.0380 = phi ptr [ null, %.lr.ph385 ], [ %.sroa.29.3, %.loopexit ] ; 3 uses
  %.sroa.38.0379 = phi ptr [ null, %.lr.ph385 ], [ %.sroa.38.5, %.loopexit ] ; 4 uses
  %.sroa.0172.0376 = phi ptr [ %i.d, %.lr.ph385 ], [ %i.nq, %.loopexit ] ; 13 uses
  %i.u = load ptr, ptr %.sroa.0172.0376, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0172.0376, i64 8 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.29.0380, %.sroa.0191.0381
  %spec.select256 = select i1 %.not.i.i, ptr %.sroa.29.0380, ptr %.sroa.0191.0381 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.z = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke { double, double } %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.z, double noundef 1.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %.sroa.0172.0376, align 8, !tbaa !13 ; 3 uses
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not259330 = icmp eq ptr %i.ae, %i.af
  br i1 %.not259330, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s
  %i.ag = icmp eq ptr %.sroa.0191.2, %.sroa.29.2
  br i1 %i.ag, label %._crit_edge.thread, label %bb.x

bb.f:                                             ; preds = %bb.d, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.lr.ph:                                           ; preds = %bb.e, %bb.s
  %.081337 = phi i32 [ %i.eh, %bb.s ], [ 0, %bb.e ] ; 3 uses
  %.095336 = phi double [ %i.ea, %bb.s ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.0191.1335 = phi ptr [ %.sroa.0191.2, %bb.s ], [ %.sroa.0191.0381, %bb.e ] ; 9 uses
  %.sroa.29.1334 = phi ptr [ %.sroa.29.2, %bb.s ], [ %spec.select256, %bb.e ] ; 10 uses
  %.sroa.0164.0333 = phi ptr [ %i.eg, %bb.s ], [ %i.ae, %bb.e ] ; 4 uses
  %.pn332 = phi { double, double } [ %i.ef, %bb.s ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.38.1331 = phi ptr [ %.sroa.38.2, %bb.s ], [ %.sroa.38.0379, %bb.e ] ; 4 uses
  %.sroa.0169.0 = extractvalue { double, double } %.pn332, 0 ; 3 uses
  %.sroa.6170.0 = extractvalue { double, double } %.pn332, 1 ; 3 uses
  %i.ai = fmul double %.sroa.6170.0, %.sroa.6170.0
  %i.aj = call double @llvm.fmuladd.f64(double %.sroa.0169.0, double %.sroa.0169.0, double %i.ai) ; 2 uses
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.aj) ; 2 uses
  %i.ak = fcmp une double %i.aj, 0.000000e+00     ; 2 uses
  %i.al = fdiv double %.sroa.0169.0, %sqrt.i.i
  %i.am = fdiv double %.sroa.6170.0, %sqrt.i.i
  %.sroa.3.1.i = select i1 %i.ak, double %i.am, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.ak, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0333)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke { double, double } %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.an, double noundef 0.000000e+00)
          to label %bb.h unwind label %bb.n       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.as = extractvalue { double, double } %i.ar, 0 ; 3 uses
  %i.at = extractvalue { double, double } %i.ar, 1 ; 3 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %i.au) ; 2 uses
  %sqrt.i.i121 = call noundef double @llvm.sqrt.f64(double %i.av) ; 2 uses
  %i.aw = fcmp une double %i.av, 0.000000e+00     ; 2 uses
  %i.ax = fdiv double %i.as, %sqrt.i.i121
  %i.ay = fdiv double %i.at, %sqrt.i.i121
  %.sroa.3.1.i122 = select i1 %i.aw, double %i.ay, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i123 = select i1 %i.aw, double %i.ax, double 0.000000e+00 ; 2 uses
  %i.az = fmul double %.sroa.3.1.i, %.sroa.3.1.i122
  %i.ba = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i123, double %i.az)
  %i.bb = fcmp ugt double %i.ba, 0.000000e+00
  br i1 %i.bb, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.h
  %i.bc = fneg double %.sroa.0.1.i123
  %i.bd = fmul double %.sroa.3.1.i, %i.bc
  %i.be = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i122, double %i.bd)
  %i.bf = call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp ogt double %i.bf, %i.c
  br i1 %i.bg, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %bb.o

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.h, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.29.1334, %.sroa.38.1331
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.081337, ptr %.sroa.29.1334, align 8, !tbaa !17
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.1334, i64 8
  store double %.095336, ptr %.sroa.6148.0..sroa_idx, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.1334, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !38
  %.sroa.8154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.1334, i64 20
  store i32 0, ptr %.sroa.8154.0..sroa_idx, align 4, !tbaa !11
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.bh = ptrtoint ptr %.sroa.29.1334 to i64
  %i.bi = ptrtoint ptr %.sroa.0191.1335 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.k, label %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bl = sdiv exact i64 %i.bj, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 384307168202282325)
  %i.bp = select i1 %i.bn, i64 384307168202282325, i64 %i.bo ; 2 uses
  %i.bq = mul nuw nsw i64 %i.bp, 24
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #19
          to label %.noexc127 unwind label %.loopexit265 ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 5 uses
  store i32 %.081337, ptr %i.bs, align 8, !tbaa !17
  %.sroa.6148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store double %.095336, ptr %.sroa.6148.0..sroa_idx149, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx151, align 8, !tbaa !38
  %.sroa.8154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  store i32 0, ptr %.sroa.8154.0..sroa_idx155, align 4, !tbaa !11
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.l, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %.sroa.0191.1335, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %.noexc127
  %.not.i17.i.i = icmp eq ptr %.sroa.0191.1335, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.1335, i64 noundef %i.bj) #17
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  %.sroa.38.7 = phi ptr [ %i.bu, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.1331, %bb.i ]
  %.pn261 = phi ptr [ %i.bs, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.29.1334, %bb.i ]
  %.sroa.0191.7 = phi ptr [ %i.br, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0191.1335, %bb.i ]
  %.sroa.29.5 = getelementptr inbounds nuw i8, ptr %.pn261, i64 24
  br label %bb.o

bb.n:                                             ; preds = %bb.g, %.lr.ph
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit265:                                     ; preds = %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.o:                                             ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.38.2 = phi ptr [ %.sroa.38.7, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.38.1331, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ] ; 9 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.5, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.29.1334, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ] ; 7 uses
  %.sroa.0191.2 = phi ptr [ %.sroa.0191.7, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0191.1335, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ] ; 27 uses
  %.196 = phi double [ 0.000000e+00, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.095336, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ]
  %i.bw = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0333)
          to label %bb.p unwind label %bb.t       ; 10 uses

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke { double, double } %i.bz(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, double noundef 0.000000e+00)
          to label %.noexc129.a unwind label %bb.t, !inline_history !40 ; 2 uses

.noexc129.a:                                      ; preds = %bb.p
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke { double, double } %i.cd(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, double noundef 2.500000e-01)
          to label %.noexc130.a unwind label %bb.t, !inline_history !40 ; 2 uses

.noexc130.a:                                      ; preds = %.noexc129.a
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke { double, double } %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, double noundef 5.000000e-01)
          to label %.noexc131.a unwind label %bb.t, !inline_history !40 ; 2 uses

.noexc131.a:                                      ; preds = %.noexc130.a
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke { double, double } %i.cl(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, double noundef 7.500000e-01)
          to label %.noexc132 unwind label %bb.t, !inline_history !40 ; 2 uses

.noexc132:                                        ; preds = %.noexc131.a
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke { double, double } %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, double noundef 1.000000e+00)
          to label %bb.q unwind label %bb.t, !inline_history !40 ; 2 uses

bb.q:                                             ; preds = %.noexc132
  %i.cr = extractvalue { double, double } %i.ce, 0
  %i.cs = extractvalue { double, double } %i.ca, 0
  %i.ct = extractvalue { double, double } %i.ce, 1
  %i.cu = extractvalue { double, double } %i.ca, 1
  %i.cv = extractvalue { double, double } %i.ci, 0
  %i.cw = extractvalue { double, double } %i.ci, 1
  %i.cx = extractvalue { double, double } %i.cm, 0
  %i.cy = extractvalue { double, double } %i.cm, 1
  %i.cz = extractvalue { double, double } %i.cq, 0
  %i.da = extractvalue { double, double } %i.cq, 1
  %i.db = insertelement <4 x double> poison, double %i.cr, i64 0
  %i.dc = insertelement <4 x double> %i.db, double %i.cv, i64 1
  %i.dd = insertelement <4 x double> %i.dc, double %i.cx, i64 2 ; 2 uses
  %i.de = insertelement <4 x double> %i.dd, double %i.cz, i64 3
  %i.df = insertelement <4 x double> poison, double %i.cs, i64 0
  %i.dg = shufflevector <4 x double> %i.df, <4 x double> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.dh = fsub <4 x double> %i.de, %i.dg          ; 2 uses
  %i.di = insertelement <4 x double> poison, double %i.ct, i64 0
  %i.dj = insertelement <4 x double> %i.di, double %i.cw, i64 1
  %i.dk = insertelement <4 x double> %i.dj, double %i.cy, i64 2 ; 2 uses
  %i.dl = insertelement <4 x double> %i.dk, double %i.da, i64 3
  %i.dm = insertelement <4 x double> poison, double %i.cu, i64 0
  %i.dn = shufflevector <4 x double> %i.dm, <4 x double> %i.dk, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.do = fsub <4 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = fmul <4 x double> %i.do, %i.do
  %i.dq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dh, <4 x double> %i.dh, <4 x double> %i.dp)
  %i.dr = call <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.dq) ; 4 uses
  %i.ds = extractelement <4 x double> %i.dr, i64 0
  %i.dt = fadd double %i.ds, 0.000000e+00
  %i.du = extractelement <4 x double> %i.dr, i64 1
  %i.dv = fadd double %i.dt, %i.du
  %i.dw = extractelement <4 x double> %i.dr, i64 2
  %i.dx = fadd double %i.dv, %i.dw
  %i.dy = extractelement <4 x double> %i.dr, i64 3
  %i.dz = fadd double %i.dx, %i.dy
  %i.ea = fadd double %.196, %i.dz                ; 2 uses
  %i.eb = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0333)
          to label %bb.r unwind label %bb.u       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke { double, double } %i.ee(ptr noundef nonnull align 8 dereferenceable(12) %i.eb, double noundef 1.000000e+00)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0333, i64 8 ; 6 uses
  %i.eh = add nuw nsw i32 %.081337, 1
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not259.a = icmp eq ptr %i.eg, %i.ei
  br i1 %.not259.a, label %._crit_edge, label %.lr.ph, !llvm.loop !41

bb.t:                                             ; preds = %.noexc132, %.noexc131.a, %.noexc130.a, %.noexc129.a, %bb.p, %bb.o
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.sroa.0191.1.lcssa500 = phi ptr [ %.sroa.0191.2, %._crit_edge ], [ %.sroa.0191.0381, %bb.e ] ; 3 uses
  %.sroa.29.1.lcssa499 = phi ptr [ %.sroa.29.2, %._crit_edge ], [ %spec.select256, %bb.e ] ; 2 uses
  %.sroa.38.1.lcssa496 = phi ptr [ %.sroa.38.2, %._crit_edge ], [ %.sroa.38.0379, %bb.e ] ; 3 uses
  %i.el = phi ptr [ %i.eg, %._crit_edge ], [ %i.ae, %bb.e ]
  %i.em = trunc i64 %.0238383 to i32
  %i.en = and i32 %i.em, 1
  %i.eo = lshr i64 %.0238383, 1                   ; 2 uses
  %i.ep = add nuw nsw i32 %i.en, 1
  %i.eq = shl i32 %.0243382, %i.ep                ; 2 uses
  %i.er = lshr i32 %i.eq, 3
  %i.es = or i32 %i.er, %i.eq
  %i.et = and i32 %i.es, 7                        ; 3 uses
  %i.eu = load ptr, ptr %.sroa.0172.0376, align 8, !tbaa !13 ; 2 uses
  %.not260371 = icmp eq ptr %i.eu, %i.el
  br i1 %.not260371, label %.loopexit, label %.lr.ph374

.lr.ph374:                                        ; preds = %._crit_edge.thread, %bb.v
  %.sroa.0141.0372 = phi ptr [ %i.ex, %bb.v ], [ %i.eu, %._crit_edge.thread ] ; 2 uses
  %i.ev = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0141.0372)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph374
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.et, ptr %i.ew, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0141.0372, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not260 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not260, label %.loopexit, label %.lr.ph374, !llvm.loop !42

bb.w:                                             ; preds = %.lr.ph374
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.x:                                             ; preds = %._crit_edge
  %i.fa = ptrtoint ptr %.sroa.29.2 to i64
  %i.fb = ptrtoint ptr %.sroa.0191.2 to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7msdfgen19edgeColoringInkTrapERNS_5ShapeEdy:bb.a
  br i1 %i.ls, label %bb.be, label %._crit_edge357

bb.be:                                            ; preds = %.lr.ph356.peel
  %i.lt = add nuw nsw i64 %i.ln, 1                ; 2 uses
  %i.lu = icmp eq i64 %i.lt, %i.ku
  %i.lv = select i1 %i.lu, i64 0, i64 %i.lt
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0191.2, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 20
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !53
  %i.lz = and i32 %i.ly, %i.lo
  %i.ma = xor i32 %i.lz, 7
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !53
  br label %._crit_edge357

._crit_edge357:                                   ; preds = %.lr.ph356.peel, %bb.be, %.loopexit264
  %.1239.lcssa505 = phi i64 [ %.0238383, %.loopexit264 ], [ %.2240, %bb.be ], [ %.2240, %.lr.ph356.peel ] ; 2 uses
  %i.mc = load i32, ptr %.sroa.0191.2, align 8, !tbaa !43
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0191.2, i64 20
  %i.me = load i32, ptr %i.md, align 4, !tbaa !53 ; 2 uses
  %i.mf = load ptr, ptr %.sroa.0172.0376, align 8, !tbaa !23
  %i.mg = ptrtoint ptr %i.eg to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = lshr exact i64 %i.mi, 3
  %i.mk = trunc i64 %i.mj to i32                  ; 3 uses
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %.lr.ph362, label %.loopexit

.lr.ph356:                                        ; preds = %.lr.ph356.preheader.split, %bb.bh
  %indvars.iv451 = phi i64 [ 0, %.lr.ph356.preheader.split ], [ %indvars.iv.next452.pre-phi, %bb.bh ] ; 3 uses
  %.3246354 = phi i32 [ %.2245, %.lr.ph356.preheader.split ], [ %.4247, %bb.bh ] ; 2 uses
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0191.2, i64 %indvars.iv451 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !48, !range !51, !noundef !52
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph356
  %i.mq = add i64 %indvars.iv451, 1               ; 2 uses
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0191.2, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !53
  %i.mu = and i32 %i.mt, %.3246354
  %i.mv = xor i32 %i.mu, 7
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !53
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph356
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !53
  %.pre461 = add nuw nsw i64 %indvars.iv451, 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %indvars.iv.next452.pre-phi = phi i64 [ %i.mq, %bb.bf ], [ %.pre461, %bb.bg ] ; 3 uses
  %.4247 = phi i32 [ %.3246354, %bb.bf ], [ %i.my, %bb.bg ] ; 2 uses
  %exitcond455.not.a = icmp eq i64 %indvars.iv.next452.pre-phi, %i.kv
  br i1 %exitcond455.not.a, label %.lr.ph356.peel, label %.lr.ph356, !llvm.loop !55

.lr.ph362:                                        ; preds = %._crit_edge357, %bb.bl
  %.0360 = phi i32 [ %i.no, %bb.bl ], [ 0, %._crit_edge357 ] ; 2 uses
  %.071359 = phi i32 [ %.1, %bb.bl ], [ 0, %._crit_edge357 ] ; 3 uses
  %.5358 = phi i32 [ %.6, %bb.bl ], [ %i.me, %._crit_edge357 ] ; 2 uses
  %i.mz = add nsw i32 %.0360, %i.mc
  %i.na = srem i32 %i.mz, %i.mk                   ; 2 uses
  %i.nb = add nsw i32 %.071359, 1                 ; 3 uses
  %i.nc = icmp slt i32 %i.nb, %i.ja
  br i1 %i.nc, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.lr.ph362
  %i.nd = sext i32 %i.nb to i64
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0191.2, i64 %i.nd ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !43
  %i.ng = icmp eq i32 %i.nf, %i.na
  br i1 %i.ng, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 20
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !53
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %.lr.ph362
  %.6 = phi i32 [ %i.ni, %bb.bj ], [ %.5358, %bb.bi ], [ %.5358, %.lr.ph362 ] ; 3 uses
  %.1 = phi i32 [ %i.nb, %bb.bj ], [ %.071359, %bb.bi ], [ %.071359, %.lr.ph362 ]
  %i.nj = sext i32 %i.na to i64
  %i.nk = load ptr, ptr %.sroa.0172.0376, align 8, !tbaa !23
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nl)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store i32 %.6, ptr %i.nn, align 8, !tbaa !20
  %i.no = add nuw nsw i32 %.0360, 1               ; 2 uses
  %exitcond456.not = icmp eq i32 %i.no, %i.mk
  br i1 %exitcond456.not, label %.loopexit, label %.lr.ph362, !llvm.loop !56

bb.bm:                                            ; preds = %bb.bk
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit:                                        ; preds = %bb.bl, %bb.v, %._crit_edge357, %._crit_edge.thread, %.loopexit262, %bb.c
  %.sroa.38.5 = phi ptr [ %.sroa.38.0379, %bb.c ], [ %.sroa.38.1.lcssa496, %._crit_edge.thread ], [ %.sroa.38.2, %.loopexit262 ], [ %.sroa.38.2, %._crit_edge357 ], [ %.sroa.38.1.lcssa496, %bb.v ], [ %.sroa.38.2, %bb.bl ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.0380, %bb.c ], [ %.sroa.29.1.lcssa499, %._crit_edge.thread ], [ %.sroa.29.2, %.loopexit262 ], [ %.sroa.29.2, %._crit_edge357 ], [ %.sroa.29.1.lcssa499, %bb.v ], [ %.sroa.29.2, %bb.bl ]
  %.sroa.0191.5 = phi ptr [ %.sroa.0191.0381, %bb.c ], [ %.sroa.0191.1.lcssa500, %._crit_edge.thread ], [ %.sroa.0191.2, %.loopexit262 ], [ %.sroa.0191.2, %._crit_edge357 ], [ %.sroa.0191.1.lcssa500, %bb.v ], [ %.sroa.0191.2, %bb.bl ] ; 4 uses
  %.7 = phi i32 [ %.0243382, %bb.c ], [ %i.et, %._crit_edge.thread ], [ %i.fr, %.loopexit262 ], [ %i.me, %._crit_edge357 ], [ %i.et, %bb.v ], [ %.6, %bb.bl ]
  %.3241 = phi i64 [ %.0238383, %bb.c ], [ %i.eo, %._crit_edge.thread ], [ %i.fn, %.loopexit262 ], [ %.1239.lcssa505, %._crit_edge357 ], [ %i.eo, %bb.v ], [ %.1239.lcssa505, %bb.bl ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0172.0376, i64 24 ; 2 uses
  %i.nr = load ptr, ptr %i.e, align 8, !tbaa !8
  %.not257 = icmp eq ptr %i.nq, %i.nr
  br i1 %.not257, label %._crit_edge386, label %bb.c, !llvm.loop !57

bb.bn:                                            ; preds = %.loopexit265, %.loopexit.split-lp, %bb.f, %bb.n, %bb.u, %bb.t, %bb.bm, %bb.ar, %bb.w
  %.sroa.38.6 = phi ptr [ %.sroa.38.1331, %bb.n ], [ %.sroa.38.1.lcssa496, %bb.w ], [ %.sroa.38.2, %bb.ar ], [ %.sroa.38.2, %bb.bm ], [ %.sroa.38.2, %bb.t ], [ %.sroa.38.0379, %bb.f ], [ %.sroa.38.2, %bb.u ], [ %.sroa.29.1334, %.loopexit265 ], [ %.sroa.29.1334, %.loopexit.split-lp ]
  %.sroa.0191.6 = phi ptr [ %.sroa.0191.1335, %bb.n ], [ %.sroa.0191.1.lcssa500, %bb.w ], [ %.sroa.0191.2, %bb.ar ], [ %.sroa.0191.2, %bb.bm ], [ %.sroa.0191.2, %bb.t ], [ %.sroa.0191.0381, %bb.f ], [ %.sroa.0191.2, %bb.u ], [ %.sroa.0191.1335, %.loopexit265 ], [ %.sroa.0191.1335, %.loopexit.split-lp ] ; 3 uses
  %.pn114.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %i.ez, %bb.w ], [ %.pn109.pn, %bb.ar ], [ %i.np, %bb.bm ], [ %i.ej, %bb.t ], [ %i.ah, %bb.f ], [ %i.ek, %bb.u ], [ %lpad.loopexit, %.loopexit265 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i138 = icmp eq ptr %.sroa.0191.6, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit139, label %.thread

.thread:                                          ; preds = %bb.bn
  %i.ns = ptrtoint ptr %.sroa.38.6 to i64
  %i.nt = ptrtoint ptr %.sroa.0191.6 to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.6, i64 noundef %i.nu) #17
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit139

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit139: ; preds = %bb.bn, %.thread
  resume { ptr, i32 } %.pn114.pn.pn
}

declare noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, double noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::queue", align 8        ; 17 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca [7 x ptr], align 16               ; 19 uses
  %4 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %i.d = tail call double @sin(double noundef %1) #16
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %.not6921345 = icmp eq ptr %i.e, %i.g
  br i1 %.not6921345, label %._crit_edge1359.thread, label %.lr.ph1358

.lr.ph1358:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br label %bb.f

._crit_edge1359:                                  ; preds = %.loopexit728
  %i.m = ptrtoint ptr %.sroa.33.7 to i64
  %i.n = ptrtoint ptr %.sroa.0602.11 to i64       ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, 3                         ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.24.7, %.sroa.43.11
  br i1 %.not.i.i, label %._crit_edge1359.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge1359
  store i32 %i.q, ptr %.sroa.24.7, align 4, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

._crit_edge1359.thread:                           ; preds = %bb.a, %._crit_edge1359
  %i.r = phi i32 [ %i.q, %._crit_edge1359 ], [ 0, %bb.a ] ; 2 uses
  %i.s = phi i64 [ %i.p, %._crit_edge1359 ], [ 0, %bb.a ]
  %i.t = phi i64 [ %i.n, %._crit_edge1359 ], [ 0, %bb.a ]
  %.sroa.0602.0.lcssa1936 = phi ptr [ %.sroa.0602.11, %._crit_edge1359 ], [ null, %bb.a ] ; 2 uses
  %.sroa.67.0.lcssa1927 = phi ptr [ %.sroa.67.11, %._crit_edge1359 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0569.0.lcssa1925 = phi ptr [ %.sroa.0569.11, %._crit_edge1359 ], [ null, %bb.a ] ; 5 uses
  %.sroa.43.0.lcssa1924 = phi ptr [ %.sroa.43.11, %._crit_edge1359 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0552.0.lcssa1916 = phi ptr [ %.sroa.0552.6, %._crit_edge1359 ], [ null, %bb.a ] ; 2 uses
  %.sroa.23.0.lcssa1907 = phi ptr [ %.sroa.23.6, %._crit_edge1359 ], [ null, %bb.a ] ; 2 uses
  %i.u = ptrtoint ptr %.sroa.43.0.lcssa1924 to i64
  %i.v = ptrtoint ptr %.sroa.0569.0.lcssa1925 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge1359.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %bb.dn

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %._crit_edge1359.thread
  %i.y = ashr exact i64 %i.w, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 2305843009213693951)
  %i.ac = select i1 %i.aa, i64 2305843009213693951, i64 %i.ab ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #19
          to label %.noexc191 unwind label %bb.dn ; 4 uses

.noexc191:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store i32 %i.r, ptr %i.af, align 4, !tbaa !17
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.d:                                             ; preds = %.noexc191
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %.sroa.0569.0.lcssa1925, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.d, %.noexc191
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0569.0.lcssa1925, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.0.lcssa1925, i64 noundef %i.w) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %.lr.ph1358, %.loopexit728
  %.sroa.0602.01356 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.0602.11, %.loopexit728 ] ; 31 uses
  %.sroa.33.01355 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.33.7, %.loopexit728 ] ; 18 uses
  %.sroa.67.01354 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.67.11, %.loopexit728 ] ; 23 uses
  %.sroa.0569.01353 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.0569.11, %.loopexit728 ] ; 13 uses
  %.sroa.24.01352 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.24.7, %.loopexit728 ] ; 7 uses
  %.sroa.43.01351 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.43.11, %.loopexit728 ] ; 8 uses
  %.sroa.0552.01350 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.0552.6, %.loopexit728 ] ; 6 uses
  %.sroa.15.01349 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.15.3, %.loopexit728 ] ; 3 uses
  %.sroa.23.01348 = phi ptr [ null, %.lr.ph1358 ], [ %.sroa.23.6, %.loopexit728 ] ; 4 uses
  %.sroa.0532.01346 = phi ptr [ %i.e, %.lr.ph1358 ], [ %i.pz, %.loopexit728 ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0532.01346, i64 8 ; 13 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %.loopexit728, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.f
  %.not.i.i192 = icmp eq ptr %.sroa.15.01349, %.sroa.0552.01350
  %spec.select691 = select i1 %.not.i.i192, ptr %.sroa.15.01349, ptr %.sroa.0552.01350 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.an = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke { double, double } %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.an, double noundef 1.000000e+00)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !13 ; 2 uses
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !13
  %.not7081291 = icmp eq ptr %i.as, %i.at
  br i1 %.not7081291, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.x, %bb.h
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.01348, %bb.h ], [ %.sroa.23.2, %bb.x ] ; 22 uses
  %.sroa.15.1.lcssa = phi ptr [ %spec.select691, %bb.h ], [ %.sroa.15.2, %bb.x ] ; 10 uses
  %.sroa.0552.1.lcssa = phi ptr [ %.sroa.0552.01350, %bb.h ], [ %.sroa.0552.2.a, %bb.x ] ; 27 uses
  %i.au = ptrtoint ptr %.sroa.33.01355 to i64
  %i.av = ptrtoint ptr %.sroa.0602.01356 to i64   ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 11 uses
  %i.ax = ashr exact i64 %i.aw, 3                 ; 7 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %.not.i.i193 = icmp eq ptr %.sroa.24.01352, %.sroa.43.01351
  br i1 %.not.i.i193, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store i32 %i.ay, ptr %.sroa.24.01352, align 4, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202

bb.j:                                             ; preds = %._crit_edge
  %i.az = ptrtoint ptr %.sroa.24.01352 to i64
  %i.ba = ptrtoint ptr %.sroa.0569.01353 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc200.a unwind label %.loopexit.split-lp760

.noexc200.a:                                      ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194: ; preds = %bb.j
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i195, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #19
          to label %.noexc201 unwind label %.loopexit759 ; 4 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i32 %i.ay, ptr %i.bk, align 4, !tbaa !17
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197

bb.l:                                             ; preds = %.noexc201
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %.sroa.0569.01353, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197: ; preds = %bb.l, %.noexc201
  %.not.i17.i.i.i198 = icmp eq ptr %.sroa.0569.01353, null
  br i1 %.not.i17.i.i.i198, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.01353, i64 noundef %i.bb) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202

bb.n:                                             ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.lr.ph:                                           ; preds = %bb.h, %bb.x
  %.sroa.0552.11297 = phi ptr [ %.sroa.0552.2.a, %bb.x ], [ %.sroa.0552.01350, %bb.h ] ; 9 uses
  %.sroa.15.11296 = phi ptr [ %.sroa.15.2, %bb.x ], [ %spec.select691, %bb.h ] ; 7 uses
  %.sroa.0523.01295 = phi ptr [ %i.dj, %bb.x ], [ %i.as, %bb.h ] ; 3 uses
  %.06561294 = phi i32 [ %i.dk, %bb.x ], [ 0, %bb.h ] ; 3 uses
  %.pn7061293 = phi { double, double } [ %i.di, %bb.x ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.23.11292 = phi ptr [ %.sroa.23.2, %bb.x ], [ %.sroa.23.01348, %bb.h ] ; 4 uses
  %.sroa.0530.0 = extractvalue { double, double } %.pn7061293, 0 ; 3 uses
  %.sroa.6.0 = extractvalue { double, double } %.pn7061293, 1 ; 3 uses
  %i.bo = fmul double %.sroa.6.0, %.sroa.6.0
  %i.bp = call double @llvm.fmuladd.f64(double %.sroa.0530.0, double %.sroa.0530.0, double %i.bo) ; 2 uses
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.bp) ; 2 uses
  %i.bq = fcmp une double %i.bp, 0.000000e+00     ; 2 uses
  %i.br = fdiv double %.sroa.0530.0, %sqrt.i.i
  %i.bs = fdiv double %.sroa.6.0, %sqrt.i.i
  %.sroa.3.1.i = select i1 %i.bq, double %i.bs, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.bq, double %i.br, double 0.000000e+00 ; 2 uses
  %i.bt = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0523.01295)
          to label %bb.o unwind label %bb.v       ; 2 uses

bb.o:                                             ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke { double, double } %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, double noundef 0.000000e+00)
          to label %bb.p unwind label %bb.v       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.by = extractvalue { double, double } %i.bx, 0 ; 3 uses
  %i.bz = extractvalue { double, double } %i.bx, 1 ; 3 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.ca) ; 2 uses
  %sqrt.i.i203 = call noundef double @llvm.sqrt.f64(double %i.cb) ; 2 uses
  %i.cc = fcmp une double %i.cb, 0.000000e+00     ; 2 uses
  %i.cd = fdiv double %i.by, %sqrt.i.i203
  %i.ce = fdiv double %i.bz, %sqrt.i.i203
  %.sroa.3.1.i204 = select i1 %i.cc, double %i.ce, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i205 = select i1 %i.cc, double %i.cd, double 0.000000e+00 ; 2 uses
  %i.cf = fmul double %.sroa.3.1.i, %.sroa.3.1.i204
  %i.cg = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i205, double %i.cf)
  %i.ch = fcmp ugt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.p
  %i.ci = fneg double %.sroa.0.1.i205
  %i.cj = fmul double %.sroa.3.1.i, %i.ci
  %i.ck = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i204, double %i.cj)
  %i.cl = call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ogt double %i.cl, %i.d
  br i1 %i.cm, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.p, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.15.11296, %.sroa.23.11292
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.06561294, ptr %.sroa.15.11296, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.15.11296, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.r:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.co = ptrtoint ptr %.sroa.15.11296 to i64
  %i.cp = ptrtoint ptr %.sroa.0552.11297 to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 6 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775804
  br i1 %i.cr, label %bb.s, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc208.a unwind label %.loopexit.split-lp755

.noexc208.a:                                      ; preds = %bb.s
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.cs = ashr exact i64 %i.cq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 2305843009213693951)
  %i.cw = select i1 %i.cu, i64 2305843009213693951, i64 %i.cv ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #19
          to label %.noexc209 unwind label %.loopexit754 ; 4 uses

.noexc209:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store i32 %.06561294, ptr %i.cz, align 4, !tbaa !17
  %i.da = icmp sgt i64 %i.cq, 0
  br i1 %i.da, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.t:                                             ; preds = %.noexc209
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr align 4 %.sroa.0552.11297, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.t, %.noexc209
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0552.11297, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0552.11297, i64 noundef %i.cq) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.o, %.lr.ph
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit754:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit756 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp755:                            ; preds = %bb.s
  %lpad.loopexit.split-lp757 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.q, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.23.2 = phi ptr [ %.sroa.23.11292, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.11292, %bb.q ] ; 3 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.11296, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.db, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.cn, %bb.q ] ; 2 uses
  %.sroa.0552.2.a = phi ptr [ %.sroa.0552.11297, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.cy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0552.11297, %bb.q ] ; 3 uses
  %i.de = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0523.01295)
          to label %bb.w unwind label %bb.y       ; 2 uses

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(12) %i.de, double noundef 1.000000e+00)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0523.01295, i64 8 ; 2 uses
  %i.dk = add nuw nsw i32 %.06561294, 1
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !13
  %.not708 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not708, label %._crit_edge, label %.lr.ph, !llvm.loop !58

bb.y:                                             ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

_ZNSt6vectorIiSaIiEE9push_backEOi.exit202:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199, %bb.i
  %.sroa.43.14 = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.43.01351, %bb.i ] ; 28 uses
  %.pn709 = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.24.01352, %bb.i ] ; 3 uses
  %.sroa.0569.14 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.0569.01353, %bb.i ] ; 32 uses
  %.sroa.24.9 = getelementptr inbounds nuw i8, ptr %.pn709, i64 4 ; 11 uses
  %i.dn = icmp eq ptr %.sroa.0552.1.lcssa, %.sroa.15.1.lcssa
  br i1 %i.dn, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202
  %i.do = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !13 ; 2 uses
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !13
  %.not7141335 = icmp eq ptr %i.do, %i.dp
  br i1 %.not7141335, label %.loopexit728, label %.lr.ph1341

.loopexit759:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194
  %lpad.loopexit761 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp760:                            ; preds = %bb.k
  %lpad.loopexit.split-lp762 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.lr.ph1341:                                       ; preds = %bb.z, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit
  %.sroa.0602.11339 = phi ptr [ %.sroa.0602.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0602.01356, %bb.z ] ; 7 uses
  %.sroa.33.11338 = phi ptr [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.01355, %bb.z ] ; 6 uses
  %.sroa.67.11337 = phi ptr [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.01354, %bb.z ] ; 3 uses
  %.sroa.0511.01336 = phi ptr [ %i.ef, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %i.do, %bb.z ] ; 2 uses
  %i.dq = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0511.01336)
          to label %bb.aa unwind label %.loopexit729 ; 2 uses

bb.aa:                                            ; preds = %.lr.ph1341
  %.not.i.i210 = icmp eq ptr %.sroa.33.11338, %.sroa.67.11337
  br i1 %.not.i.i210, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dq, ptr %.sroa.33.11338, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dr = ptrtoint ptr %.sroa.33.11338 to i64
  %i.ds = ptrtoint ptr %.sroa.0602.11339 to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 6 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.ad, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc214 unwind label %.loopexit.split-lp730

.noexc214:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211 = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i211, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #19
          to label %.noexc215 unwind label %.loopexit729 ; 4 uses

.noexc215:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store ptr %i.dq, ptr %i.ec, align 8, !tbaa !27
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.ae, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc215
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %.sroa.0602.11339, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ae, %.noexc215
  %.not.i17.i.i.i213 = icmp eq ptr %.sroa.0602.11339, null
  br i1 %.not.i17.i.i.i213, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.11339, i64 noundef %i.dt) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ab
  %.sroa.67.13 = phi ptr [ %i.ee, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.67.11337, %bb.ab ] ; 2 uses
  %.pn715 = phi ptr [ %i.ec, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.33.11338, %bb.ab ]
  %.sroa.0602.13 = phi ptr [ %i.eb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0602.11339, %bb.ab ] ; 2 uses
  %.sroa.33.8 = getelementptr inbounds nuw i8, ptr %.pn715, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0511.01336, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.aj, align 8, !tbaa !13
  %.not714 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not714, label %.loopexit728, label %.lr.ph1341, !llvm.loop !59

.loopexit729:                                     ; preds = %.lr.ph1341, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.67.11337.lcssa = phi ptr [ %.sroa.67.11337, %.lr.ph1341 ], [ %.sroa.33.11338, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit731 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp730:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp732 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202
  %i.eh = ptrtoint ptr %.sroa.15.1.lcssa to i64
  %i.ei = ptrtoint ptr %.sroa.0552.1.lcssa to i64 ; 3 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4
  br i1 %i.ek, label %bb.ah, label %bb.cz

bb.ah:                                            ; preds = %bb.ag
  %i.el = load i32, ptr %.sroa.0552.1.lcssa, align 4, !tbaa !17 ; 2 uses
  %i.em = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.en = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23 ; 3 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 3                 ; 2 uses
  %i.es = icmp ugt i64 %i.er, 2
  br i1 %i.es, label %bb.ai, label %bb.ba

bb.ai:                                            ; preds = %bb.ah
  %i.et = trunc i64 %i.er to i32                  ; 5 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph1328, label %.loopexit728

.lr.ph1328:                                       ; preds = %bb.ai
  %i.ev = lshr i32 %i.et, 1
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1328, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235
  %.01391326 = phi i32 [ 0, %.lr.ph1328 ], [ %i.gu, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 4 uses
  %.sroa.0602.21325 = phi ptr [ %.sroa.0602.01356, %.lr.ph1328 ], [ %.sroa.0602.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 12 uses
  %.sroa.33.21324 = phi ptr [ %.sroa.33.01355, %.lr.ph1328 ], [ %.sroa.33.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 8 uses
  %.sroa.67.21323 = phi ptr [ %.sroa.67.01354, %.lr.ph1328 ], [ %.sroa.67.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 7 uses
  %.sroa.0569.11322 = phi ptr [ %.sroa.0569.14, %.lr.ph1328 ], [ %.sroa.0569.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 8 uses
  %.sroa.24.11321 = phi ptr [ %.sroa.24.9, %.lr.ph1328 ], [ %.sroa.24.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 7 uses
  %.sroa.43.11320 = phi ptr [ %.sroa.43.14, %.lr.ph1328 ], [ %.sroa.43.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ] ; 3 uses
  %i.ew = icmp eq i32 %.01391326, %i.ev
  br i1 %i.ew, label %bb.ak, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225

bb.ak:                                            ; preds = %bb.aj
  %i.ex = ptrtoint ptr %.sroa.33.21324 to i64
  %i.ey = ptrtoint ptr %.sroa.0602.21325 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 3
  %i.fb = trunc i64 %i.fa to i32                  ; 2 uses
  %.not.i.i216 = icmp eq ptr %.sroa.24.11321, %.sroa.43.11320
  br i1 %.not.i.i216, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.fb, ptr %.sroa.24.11321, align 4, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.24.11321, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225

bb.am:                                            ; preds = %bb.ak
  %i.fd = ptrtoint ptr %.sroa.24.11321 to i64
  %i.fe = ptrtoint ptr %.sroa.0569.11322 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 6 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775804
  br i1 %i.fg, label %bb.an, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc223 unwind label %.loopexit.split-lp736

.noexc223:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217: ; preds = %bb.am
  %i.fh = ashr exact i64 %i.ff, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i218 = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i218, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 2305843009213693951)
  %i.fl = select i1 %i.fj, i64 2305843009213693951, i64 %i.fk ; 2 uses
  %i.fm = shl nuw nsw i64 %i.fl, 2
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #19
          to label %.noexc224 unwind label %.loopexit735 ; 4 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store i32 %i.fb, ptr %i.fo, align 4, !tbaa !17
  %i.fp = icmp sgt i64 %i.ff, 0
  br i1 %i.fp, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220

bb.ao:                                            ; preds = %.noexc224
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fn, ptr align 4 %.sroa.0569.11322, i64 %i.ff, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220: ; preds = %bb.ao, %.noexc224
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.not.i17.i.i.i221 = icmp eq ptr %.sroa.0569.11322, null
  br i1 %.not.i17.i.i.i221, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.11322, i64 noundef %i.ff) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i220
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fl
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225

.loopexit735:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i217
  %lpad.loopexit737 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp736:                            ; preds = %bb.an
  %lpad.loopexit.split-lp738 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

_ZNSt6vectorIiSaIiEE9push_backEOi.exit225:        ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222, %bb.aj
  %.sroa.43.2 = phi ptr [ %.sroa.43.11320, %bb.aj ], [ %i.fr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222 ], [ %.sroa.43.11320, %bb.al ] ; 5 uses
  %.sroa.24.2 = phi ptr [ %.sroa.24.11321, %bb.aj ], [ %i.fq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222 ], [ %i.fc, %bb.al ] ; 2 uses
  %.sroa.0569.2 = phi ptr [ %.sroa.0569.11322, %bb.aj ], [ %i.fn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i222 ], [ %.sroa.0569.11322, %bb.al ] ; 5 uses
  %i.fs = mul nuw nsw i32 %.01391326, 3
  %i.ft = add nuw nsw i32 %i.fs, 1
  %i.fu = udiv i32 %i.ft, %i.et
  %.not177 = icmp eq i32 %i.fu, 1
  %i.fv = add nsw i32 %.01391326, %i.el
  %i.fw = srem i32 %i.fv, %i.et
  %i.fx = sext i32 %i.fw to i64
  %i.fy = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx ; 2 uses
  br i1 %.not177, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225
  %i.ga = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.ar unwind label %.loopexit740 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i226 = icmp eq ptr %.sroa.33.21324, %.sroa.67.21323
  br i1 %.not.i.i226, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ga, ptr %.sroa.33.21324, align 8, !tbaa !27
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.33.21324, i64 8
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235

bb.at:                                            ; preds = %bb.ar
  %i.gc = ptrtoint ptr %.sroa.33.21324 to i64
  %i.gd = ptrtoint ptr %.sroa.0602.21325 to i64
  %i.ge = sub i64 %i.gc, %i.gd                    ; 6 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.au, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc233 unwind label %.loopexit.split-lp741

.noexc233:                                        ; preds = %bb.au
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227: ; preds = %bb.at
  %i.gg = ashr exact i64 %i.ge, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i.i.i228, %i.gg ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gg
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 1152921504606846975)
  %i.gk = select i1 %i.gi, i64 1152921504606846975, i64 %i.gj ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #19
          to label %.noexc234 unwind label %.loopexit740 ; 4 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %i.ge ; 2 uses
  store ptr %i.ga, ptr %i.gn, align 8, !tbaa !27
  %i.go = icmp sgt i64 %i.ge, 0
  br i1 %i.go, label %bb.av, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230

bb.av:                                            ; preds = %.noexc234
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr align 8 %.sroa.0602.21325, i64 %i.ge, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230: ; preds = %bb.av, %.noexc234
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.not.i17.i.i.i231 = icmp eq ptr %.sroa.0602.21325, null
  br i1 %.not.i17.i.i.i231, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.21325, i64 noundef %i.ge) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232: ; preds = %bb.aw, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i230
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gk
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235

bb.ax:                                            ; preds = %bb.ay
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit740:                                     ; preds = %bb.aq, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227
  %.sroa.67.21323.lcssa1464 = phi ptr [ %.sroa.67.21323, %bb.aq ], [ %.sroa.33.21324, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i227 ]
  %lpad.loopexit742 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp741:                            ; preds = %bb.au
  %lpad.loopexit.split-lp743 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit225
  %i.gs = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 7, ptr %i.gt, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235: ; preds = %bb.as, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232, %bb.az
  %.sroa.67.3 = phi ptr [ %.sroa.67.21323, %bb.az ], [ %i.gq, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232 ], [ %.sroa.67.21323, %bb.as ] ; 2 uses
  %.sroa.33.3 = phi ptr [ %.sroa.33.21324, %bb.az ], [ %i.gp, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232 ], [ %i.gb, %bb.as ] ; 2 uses
  %.sroa.0602.3 = phi ptr [ %.sroa.0602.21325, %bb.az ], [ %i.gm, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i232 ], [ %.sroa.0602.21325, %bb.as ] ; 2 uses
  %i.gu = add nuw nsw i32 %.01391326, 1           ; 2 uses
  %exitcond1783.not.a = icmp eq i32 %i.gu, %i.et
  br i1 %exitcond1783.not.a, label %.loopexit728, label %bb.aj, !llvm.loop !60

bb.ba:                                            ; preds = %bb.ah
  %.not173 = icmp eq ptr %i.em, %i.en
  br i1 %.not173, label %.loopexit728, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  %i.gv = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en)
          to label %bb.bc unwind label %.loopexit764 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.gw = mul nsw i32 %i.el, 3                    ; 4 uses
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %i.ha = getelementptr i8, ptr %i.gy, i64 16
  %i.hb = load ptr, ptr %i.gv, align 8, !tbaa !15
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  %i.hd = load ptr, ptr %i.hc, align 8
  invoke void %i.hd(ptr noundef nonnull align 8 dereferenceable(12) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull align 8 dereferenceable(8) %i.ha)
          to label %bb.bd unwind label %.loopexit764

bb.bd:                                            ; preds = %bb.bc
  %i.he = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.hf = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23 ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = icmp ugt i64 %i.hi, 8
  br i1 %i.hj, label %bb.be, label %bb.cf

bb.be:                                            ; preds = %bb.bd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hl = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hk)
          to label %bb.bf unwind label %.loopexit764 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.hm = sub nsw i32 3, %i.gw
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hn
  %i.hp = sub nsw i32 4, %i.gw
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hq
  %i.hs = sub nsw i32 5, %i.gw
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ht
  %i.hv = load ptr, ptr %i.hl, align 8, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 120
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(12) %i.hl, ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %bb.bg unwind label %.loopexit764

bb.bg:                                            ; preds = %bb.bf
  %.not.i236 = icmp eq ptr %.sroa.33.01355, %.sroa.67.01354
  br i1 %.not.i236, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hy = load ptr, ptr %i.c, align 16, !tbaa !27
  store ptr %i.hy, ptr %.sroa.33.01355, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.hz = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.hz, label %.invoke, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.bi, %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.cont unwind label %.loopexit.split-lp765

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bi
  %.sroa.speculated.i.i.i237 = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i237, %i.ax ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.ax
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 1152921504606846975)
  %i.id = select i1 %i.ib, i64 1152921504606846975, i64 %i.ic ; 2 uses
  %i.ie = shl nuw nsw i64 %i.id, 3
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #19
          to label %.noexc241 unwind label %.loopexit764 ; 4 uses

.noexc241:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.aw ; 2 uses
  %i.ih = load ptr, ptr %i.c, align 16, !tbaa !27
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !27
  %i.ii = icmp sgt i64 %i.aw, 0
  br i1 %i.ii, label %bb.bj, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.bj:                                            ; preds = %.noexc241
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.if, ptr align 8 %.sroa.0602.01356, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.bj, %.noexc241
  %.not.i17.i.i239 = icmp eq ptr %.sroa.0602.01356, null
  br i1 %.not.i17.i.i239, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.01356, i64 noundef %i.aw) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bk, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bh
  %.sroa.67.15 = phi ptr [ %i.ij, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.67.01354, %bb.bh ] ; 5 uses
  %.pn712 = phi ptr [ %i.ig, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.33.01355, %bb.bh ] ; 2 uses
  %.sroa.0602.15 = phi ptr [ %i.if, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0602.01356, %bb.bh ] ; 7 uses
  %.sroa.33.10 = getelementptr inbounds nuw i8, ptr %.pn712, i64 8 ; 2 uses
  %.not.i242 = icmp eq ptr %.sroa.33.10, %.sroa.67.15
  br i1 %.not.i242, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit
  %i.ik = load ptr, ptr %i.h, align 8, !tbaa !27
  store ptr %i.ik, ptr %.sroa.33.10, align 8, !tbaa !27
  %i.il = getelementptr inbounds nuw i8, ptr %.pn712, i64 16
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit251

bb.bm:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit
  %i.im = ptrtoint ptr %.sroa.67.15 to i64
  %i.in = ptrtoint ptr %.sroa.0602.15 to i64
  %i.io = sub i64 %i.im, %i.in                    ; 6 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.bn, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc249 unwind label %.loopexit.split-lp765

.noexc249:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243: ; preds = %bb.bm
  %i.iq = ashr exact i64 %i.io, 3                 ; 3 uses
  %.sroa.speculated.i.i.i244 = call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i244, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = call i64 @llvm.umin.i64(i64 %i.ir, i64 1152921504606846975)
  %i.iu = select i1 %i.is, i64 1152921504606846975, i64 %i.it ; 2 uses
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #19
          to label %.noexc250 unwind label %.loopexit764 ; 4 uses

.noexc250:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 2 uses
  %i.iy = load ptr, ptr %i.h, align 8, !tbaa !27
  store ptr %i.iy, ptr %i.ix, align 8, !tbaa !27
  %i.iz = icmp sgt i64 %i.io, 0
  br i1 %i.iz, label %bb.bo, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i246

bb.bo:                                            ; preds = %.noexc250
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr align 8 %.sroa.0602.15, i64 %i.io, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i246

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i246: ; preds = %bb.bo, %.noexc250
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.not.i17.i.i247 = icmp eq ptr %.sroa.0602.15, null
  br i1 %.not.i17.i.i247, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i246
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.15, i64 noundef %i.io) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248: ; preds = %bb.bp, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i246
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iu
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit251

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit251: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248, %bb.bl
  %.sroa.67.16 = phi ptr [ %i.jb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248 ], [ %.sroa.67.15, %bb.bl ] ; 7 uses
  %.sroa.33.11 = phi ptr [ %i.ja, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248 ], [ %i.il, %bb.bl ] ; 4 uses
  %.sroa.0602.16 = phi ptr [ %i.iw, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i248 ], [ %.sroa.0602.15, %bb.bl ] ; 9 uses
  %i.jc = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i32 7, ptr %i.jd, align 8, !tbaa !20
  %i.je = load ptr, ptr %i.i, align 16, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 7, ptr %i.jf, align 8, !tbaa !20
  %i.jg = ptrtoint ptr %.sroa.33.11 to i64
  %i.jh = ptrtoint ptr %.sroa.0602.16 to i64      ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 5 uses
  %i.jj = ashr exact i64 %i.ji, 3                 ; 4 uses
  %i.jk = trunc i64 %i.jj to i32                  ; 2 uses
  %.not.i.i252 = icmp eq ptr %.sroa.24.9, %.sroa.43.14
  br i1 %.not.i.i252, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit251
  store i32 %i.jk, ptr %.sroa.24.9, align 4, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.pn709, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261

bb.br:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit251
  %i.jm = ptrtoint ptr %.sroa.43.14 to i64
  %i.jn = ptrtoint ptr %.sroa.0569.14 to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 6 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775804
  br i1 %i.jp, label %bb.bs, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc259 unwind label %.loopexit.split-lp779

.noexc259:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.br
  %i.jq = ashr exact i64 %i.jo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 2305843009213693951)
  %i.ju = select i1 %i.js, i64 2305843009213693951, i64 %i.jt ; 2 uses
  %i.jv = shl nuw nsw i64 %i.ju, 2
  %i.jw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #19
          to label %.noexc260 unwind label %.loopexit778 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.jo ; 2 uses
  store i32 %i.jk, ptr %i.jx, align 4, !tbaa !17
  %i.jy = icmp sgt i64 %i.jo, 0
  br i1 %i.jy, label %bb.bt, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256

bb.bt:                                            ; preds = %.noexc260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jw, ptr align 4 %.sroa.0569.14, i64 %i.jo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256: ; preds = %bb.bt, %.noexc260
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %.not.i17.i.i.i257 = icmp eq ptr %.sroa.0569.14, null
  br i1 %.not.i17.i.i.i257, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.14, i64 noundef %i.jo) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258: ; preds = %bb.bu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.ju
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261

_ZNSt6vectorIiSaIiEE9push_backEOi.exit261:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258, %bb.bq
  %.sroa.43.16 = phi ptr [ %i.ka, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258 ], [ %.sroa.43.14, %bb.bq ] ; 6 uses
  %.sroa.24.11 = phi ptr [ %i.jz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258 ], [ %i.jl, %bb.bq ] ; 2 uses
  %.sroa.0569.16 = phi ptr [ %i.jw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258 ], [ %.sroa.0569.14, %bb.bq ] ; 6 uses
  %.not.i262 = icmp eq ptr %.sroa.33.11, %.sroa.67.16
  br i1 %.not.i262, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261
  %i.kb = load ptr, ptr %i.k, align 16, !tbaa !27
  store ptr %i.kb, ptr %.sroa.33.11, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit261
  %i.kc = icmp eq i64 %i.ji, 9223372036854775800
  br i1 %i.kc, label %bb.bx, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc269 unwind label %.loopexit.split-lp765

.noexc269:                                        ; preds = %bb.bx
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263: ; preds = %bb.bw
  %.sroa.speculated.i.i.i264 = call i64 @llvm.umax.i64(i64 %i.jj, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i264, %i.jj ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.jj
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 2 uses
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #19
          to label %.noexc270.a unwind label %.loopexit764 ; 4 uses

.noexc270.a:                                      ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 %i.ji ; 2 uses
  %i.kk = load ptr, ptr %i.k, align 16, !tbaa !27
  store ptr %i.kk, ptr %i.kj, align 8, !tbaa !27
  %i.kl = icmp sgt i64 %i.ji, 0
  br i1 %i.kl, label %bb.by, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266

bb.by:                                            ; preds = %.noexc270.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr align 8 %.sroa.0602.16, i64 %i.ji, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266: ; preds = %bb.by, %.noexc270.a
  %.not.i17.i.i267 = icmp eq ptr %.sroa.0602.16, null
  br i1 %.not.i17.i.i267, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266
  %i.km = ptrtoint ptr %.sroa.67.16 to i64
  %i.kn = sub i64 %i.km, %i.jh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.16, i64 noundef %i.kn) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268: ; preds = %bb.bz, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i266
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268, %bb.bv
  %.sroa.67.17 = phi ptr [ %i.ko, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268 ], [ %.sroa.67.16, %bb.bv ] ; 5 uses
  %.pn713 = phi ptr [ %i.kj, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268 ], [ %.sroa.33.11, %bb.bv ] ; 2 uses
  %.sroa.0602.17 = phi ptr [ %i.ki, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i268 ], [ %.sroa.0602.16, %bb.bv ] ; 7 uses
  %.sroa.33.12 = getelementptr inbounds nuw i8, ptr %.pn713, i64 8 ; 2 uses
  %.not.i272 = icmp eq ptr %.sroa.33.12, %.sroa.67.17
  br i1 %.not.i272, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271
  %i.kp = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.kp, ptr %.sroa.33.12, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn713, i64 16
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

bb.cb:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit271
  %i.kr = ptrtoint ptr %.sroa.67.17 to i64
  %i.ks = ptrtoint ptr %.sroa.0602.17 to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 6 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775800
  br i1 %i.ku, label %bb.cc, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc279 unwind label %.loopexit.split-lp765

.noexc279:                                        ; preds = %bb.cc
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273: ; preds = %bb.cb
  %i.kv = ashr exact i64 %i.kt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i274 = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i274, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 1152921504606846975)
  %i.kz = select i1 %i.kx, i64 1152921504606846975, i64 %i.ky ; 2 uses
  %i.la = shl nuw nsw i64 %i.kz, 3
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #19
          to label %.noexc280.a unwind label %.loopexit764 ; 4 uses

.noexc280.a:                                      ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.kt ; 2 uses
  %i.ld = load ptr, ptr %i.l, align 8, !tbaa !27
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !27
  %i.le = icmp sgt i64 %i.kt, 0
  br i1 %i.le, label %bb.cd, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276.a

bb.cd:                                            ; preds = %.noexc280.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lb, ptr align 8 %.sroa.0602.17, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276.a

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276.a: ; preds = %bb.cd, %.noexc280.a
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %.not.i17.i.i277.a = icmp eq ptr %.sroa.0602.17, null
  br i1 %.not.i17.i.i277.a, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.17, i64 noundef %i.kt) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a: ; preds = %bb.ce, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i276.a
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.kz
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

.loopexit764:                                     ; preds = %bb.bb, %bb.bc, %bb.be, %bb.bf, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303
  %.sroa.43.3.ph = phi ptr [ %.sroa.43.14, %bb.bb ], [ %.sroa.43.14, %bb.bc ], [ %.sroa.43.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.43.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.43.14, %bb.be ], [ %.sroa.43.14, %bb.bf ], [ %.sroa.43.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.43.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.43.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.43.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %.sroa.0569.3.ph = phi ptr [ %.sroa.0569.14, %bb.bb ], [ %.sroa.0569.14, %bb.bc ], [ %.sroa.0569.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.0569.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.0569.14, %bb.be ], [ %.sroa.0569.14, %bb.bf ], [ %.sroa.0569.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0569.14, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.0569.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0569.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %.sroa.67.4.ph = phi ptr [ %.sroa.67.01354, %bb.bb ], [ %.sroa.67.01354, %bb.bc ], [ %.sroa.33.01355, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.67.19, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.67.01354, %bb.be ], [ %.sroa.67.01354, %bb.bf ], [ %.sroa.33.01355, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.67.15, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.67.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.67.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %.sroa.0602.4.ph = phi ptr [ %.sroa.0602.01356, %bb.bb ], [ %.sroa.0602.01356, %bb.bc ], [ %.sroa.0602.01356, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283 ], [ %.sroa.0602.19, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303 ], [ %.sroa.0602.01356, %bb.be ], [ %.sroa.0602.01356, %bb.bf ], [ %.sroa.0602.01356, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0602.15, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i243 ], [ %.sroa.0602.16, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i263 ], [ %.sroa.0602.17, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i273 ]
  %lpad.loopexit770 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp765:                            ; preds = %.invoke, %bb.bn, %bb.bx, %bb.cc, %bb.cr
  %.sroa.43.3.ph766 = phi ptr [ %.sroa.43.17, %bb.cr ], [ %.sroa.43.14, %.invoke ], [ %.sroa.43.16, %bb.cc ], [ %.sroa.43.16, %bb.bx ], [ %.sroa.43.14, %bb.bn ]
  %.sroa.0569.3.ph767 = phi ptr [ %.sroa.0569.17, %bb.cr ], [ %.sroa.0569.14, %.invoke ], [ %.sroa.0569.16, %bb.cc ], [ %.sroa.0569.16, %bb.bx ], [ %.sroa.0569.14, %bb.bn ]
  %.sroa.67.4.ph768 = phi ptr [ %.sroa.67.19, %bb.cr ], [ %.sroa.33.01355, %.invoke ], [ %.sroa.67.17, %bb.cc ], [ %.sroa.67.16, %bb.bx ], [ %.sroa.67.15, %bb.bn ]
  %.sroa.0602.4.ph769 = phi ptr [ %.sroa.0602.19, %bb.cr ], [ %.sroa.0602.01356, %.invoke ], [ %.sroa.0602.17, %bb.cc ], [ %.sroa.0602.16, %bb.bx ], [ %.sroa.0602.15, %bb.bn ]
  %lpad.loopexit.split-lp771 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit778:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253
  %lpad.loopexit780 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp779:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp781 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cf:                                            ; preds = %bb.bd
  %.not.i282 = icmp eq ptr %.sroa.33.01355, %.sroa.67.01354
  br i1 %.not.i282, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lh = load ptr, ptr %i.c, align 16, !tbaa !27
  store ptr %i.lh, ptr %.sroa.33.01355, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291

bb.ch:                                            ; preds = %bb.cf
  %i.li = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.li, label %.invoke, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283: ; preds = %bb.ch
  %.sroa.speculated.i.i.i284 = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.lj = add nsw i64 %.sroa.speculated.i.i.i284, %i.ax ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.ax
  %i.ll = call i64 @llvm.umin.i64(i64 %i.lj, i64 1152921504606846975)
  %i.lm = select i1 %i.lk, i64 1152921504606846975, i64 %i.ll ; 2 uses
  %i.ln = shl nuw nsw i64 %i.lm, 3
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #19
          to label %.noexc290 unwind label %.loopexit764 ; 5 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i283
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %i.aw ; 2 uses
  %i.lq = load ptr, ptr %i.c, align 16, !tbaa !27
  store ptr %i.lq, ptr %i.lp, align 8, !tbaa !27
  %i.lr = icmp sgt i64 %i.aw, 0
  br i1 %i.lr, label %bb.ci, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286

bb.ci:                                            ; preds = %.noexc290
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lo, ptr align 8 %.sroa.0602.01356, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286: ; preds = %bb.ci, %.noexc290
  %.not.i17.i.i287 = icmp eq ptr %.sroa.0602.01356, null
  br i1 %.not.i17.i.i287, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.01356, i64 noundef %i.aw) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288: ; preds = %bb.cj, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i286
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lm
  %.pre1833 = ptrtoint ptr %i.lo to i64
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288, %bb.cg
  %.pre-phi = phi i64 [ %.pre1833, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %i.av, %bb.cg ] ; 2 uses
  %.sroa.67.19 = phi ptr [ %i.ls, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %.sroa.67.01354, %bb.cg ] ; 7 uses
  %.pn711 = phi ptr [ %i.lp, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %.sroa.33.01355, %bb.cg ] ; 2 uses
  %.sroa.0602.19 = phi ptr [ %i.lo, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i288 ], [ %.sroa.0602.01356, %bb.cg ] ; 8 uses
  %.sroa.33.14 = getelementptr inbounds nuw i8, ptr %.pn711, i64 8 ; 3 uses
  %i.lt = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 7, ptr %i.lu, align 8, !tbaa !20
  %i.lv = ptrtoint ptr %.sroa.33.14 to i64
  %i.lw = sub i64 %i.lv, %.pre-phi                ; 5 uses
  %i.lx = ashr exact i64 %i.lw, 3                 ; 4 uses
  %i.ly = trunc i64 %i.lx to i32                  ; 2 uses
  %.not.i.i292 = icmp eq ptr %.sroa.24.9, %.sroa.43.14
  br i1 %.not.i.i292, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291
  store i32 %i.ly, ptr %.sroa.24.9, align 4, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %.pn709, i64 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301

bb.cl:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit291
  %i.ma = ptrtoint ptr %.sroa.43.14 to i64
  %i.mb = ptrtoint ptr %.sroa.0569.14 to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 6 uses
  %i.md = icmp eq i64 %i.mc, 9223372036854775804
  br i1 %i.md, label %bb.cm, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc299 unwind label %.loopexit.split-lp774

.noexc299:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293: ; preds = %bb.cl
  %i.me = ashr exact i64 %i.mc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i294 = call i64 @llvm.umax.i64(i64 %i.me, i64 1)
  %i.mf = add nsw i64 %.sroa.speculated.i.i.i.i294, %i.me ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.me
  %i.mh = call i64 @llvm.umin.i64(i64 %i.mf, i64 2305843009213693951)
  %i.mi = select i1 %i.mg, i64 2305843009213693951, i64 %i.mh ; 2 uses
  %i.mj = shl nuw nsw i64 %i.mi, 2
  %i.mk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mj) #19
          to label %.noexc300 unwind label %.loopexit773 ; 4 uses

.noexc300:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.mc ; 2 uses
  store i32 %i.ly, ptr %i.ml, align 4, !tbaa !17
  %i.mm = icmp sgt i64 %i.mc, 0
  br i1 %i.mm, label %bb.cn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296

bb.cn:                                            ; preds = %.noexc300
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr align 4 %.sroa.0569.14, i64 %i.mc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296: ; preds = %bb.cn, %.noexc300
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %.not.i17.i.i.i297 = icmp eq ptr %.sroa.0569.14, null
  br i1 %.not.i17.i.i.i297, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.14, i64 noundef %i.mc) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298: ; preds = %bb.co, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mi
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301

_ZNSt6vectorIiSaIiEE9push_backEOi.exit301:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298, %bb.ck
  %.sroa.43.17 = phi ptr [ %i.mo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298 ], [ %.sroa.43.14, %bb.ck ] ; 4 uses
  %.sroa.24.12 = phi ptr [ %i.mn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298 ], [ %i.lz, %bb.ck ] ; 2 uses
  %.sroa.0569.17 = phi ptr [ %i.mk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298 ], [ %.sroa.0569.14, %bb.ck ] ; 4 uses
  %.not.i302 = icmp eq ptr %.sroa.33.14, %.sroa.67.19
  br i1 %.not.i302, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301
  %i.mp = load ptr, ptr %i.i, align 16, !tbaa !27
  store ptr %i.mp, ptr %.sroa.33.14, align 8, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %.pn711, i64 16
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

bb.cq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301
  %i.mr = icmp eq i64 %i.lw, 9223372036854775800
  br i1 %i.mr, label %bb.cr, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc309 unwind label %.loopexit.split-lp765

.noexc309:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303: ; preds = %bb.cq
  %.sroa.speculated.i.i.i304 = call i64 @llvm.umax.i64(i64 %i.lx, i64 1)
  %i.ms = add nsw i64 %.sroa.speculated.i.i.i304, %i.lx ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.lx
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 1152921504606846975)
  %i.mv = select i1 %i.mt, i64 1152921504606846975, i64 %i.mu ; 2 uses
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #19
          to label %.noexc310.a unwind label %.loopexit764 ; 4 uses

.noexc310.a:                                      ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i303
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.lw ; 2 uses
  %i.mz = load ptr, ptr %i.i, align 16, !tbaa !27
  store ptr %i.mz, ptr %i.my, align 8, !tbaa !27
  %i.na = icmp sgt i64 %i.lw, 0
  br i1 %i.na, label %bb.cs, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306

bb.cs:                                            ; preds = %.noexc310.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mx, ptr align 8 %.sroa.0602.19, i64 %i.lw, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306: ; preds = %bb.cs, %.noexc310.a
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.not.i17.i.i307 = icmp eq ptr %.sroa.0602.19, null
  br i1 %.not.i17.i.i307, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306
  %i.nc = ptrtoint ptr %.sroa.67.19 to i64
  %i.nd = sub i64 %i.nc, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.19, i64 noundef %i.nd) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308: ; preds = %bb.ct, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i306
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mv
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281

.loopexit773:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293
  %lpad.loopexit775 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp774:                            ; preds = %bb.cm
  %lpad.loopexit.split-lp776 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308, %bb.cp, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a, %bb.ca
  %.sroa.43.4 = phi ptr [ %.sroa.43.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a ], [ %.sroa.43.16, %bb.ca ], [ %.sroa.43.17, %bb.cp ], [ %.sroa.43.17, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %.sroa.24.3 = phi ptr [ %.sroa.24.11, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a ], [ %.sroa.24.11, %bb.ca ], [ %.sroa.24.12, %bb.cp ], [ %.sroa.24.12, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ]
  %.sroa.0569.4 = phi ptr [ %.sroa.0569.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a ], [ %.sroa.0569.16, %bb.ca ], [ %.sroa.0569.17, %bb.cp ], [ %.sroa.0569.17, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %.sroa.67.5 = phi ptr [ %i.lg, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a ], [ %.sroa.67.17, %bb.ca ], [ %.sroa.67.19, %bb.cp ], [ %i.ne, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %.sroa.33.4 = phi ptr [ %i.lf, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a ], [ %i.kq, %bb.ca ], [ %i.mq, %bb.cp ], [ %i.nb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ]
  %.sroa.0602.5 = phi ptr [ %i.lb, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i278.a ], [ %.sroa.0602.17, %bb.ca ], [ %.sroa.0602.19, %bb.cp ], [ %i.mx, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i308 ] ; 2 uses
  %i.nf = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23 ; 3 uses
  %i.ng = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not.i.i312 = icmp eq ptr %i.ng, %i.nf
  br i1 %.not.i.i312, label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i.i ], [ %i.nf, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281 ] ; 2 uses
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #16
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i313 = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i.i.i313, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.nf, ptr %i.aj, align 8, !tbaa !26
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backERKS2_.exit281, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ni = load ptr, ptr %i.c, align 16, !tbaa !27 ; 2 uses
  %.not1741316 = icmp eq ptr %i.ni, null
  br i1 %.not1741316, label %._crit_edge1319, label %.lr.ph1318

.lr.ph1318:                                       ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0532.01346, i64 16
  br label %bb.cu

._crit_edge1319:                                  ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.loopexit728

bb.cu:                                            ; preds = %.lr.ph1318, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph1318 ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit ]
  %i.nk = phi ptr [ %i.ni, %.lr.ph1318 ], [ %i.nq, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.nk, ptr %4, align 8, !tbaa !30
  %i.nl = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 3 uses
  %i.nm = load ptr, ptr %i.nj, align 8, !tbaa !32
  %.not.i.i314 = icmp eq ptr %i.nl, %i.nm
  br i1 %.not.i.i314, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.nl, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc315 unwind label %bb.cx

.noexc315:                                        ; preds = %bb.cv
  %i.nn = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store ptr %i.no, ptr %i.aj, align 8, !tbaa !26
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0532.01346, ptr %i.nl, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit unwind label %bb.cx

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc315, %bb.cw
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !27 ; 2 uses
  %.not174 = icmp eq ptr %i.nq, null
  br i1 %.not174, label %._crit_edge1319, label %bb.cu, !llvm.loop !61

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit773, %.loopexit.split-lp774, %.loopexit778, %.loopexit.split-lp779, %.loopexit764, %.loopexit.split-lp765, %bb.cx
  %.sroa.43.5 = phi ptr [ %.sroa.43.14, %.loopexit.split-lp779 ], [ %.sroa.43.3.ph766, %.loopexit.split-lp765 ], [ %.sroa.43.4, %bb.cx ], [ %.sroa.43.3.ph, %.loopexit764 ], [ %.sroa.43.14, %.loopexit778 ], [ %.sroa.43.14, %.loopexit773 ], [ %.sroa.43.14, %.loopexit.split-lp774 ]
  %.sroa.0569.5 = phi ptr [ %.sroa.0569.14, %.loopexit.split-lp779 ], [ %.sroa.0569.3.ph767, %.loopexit.split-lp765 ], [ %.sroa.0569.4, %bb.cx ], [ %.sroa.0569.3.ph, %.loopexit764 ], [ %.sroa.0569.14, %.loopexit778 ], [ %.sroa.0569.14, %.loopexit773 ], [ %.sroa.0569.14, %.loopexit.split-lp774 ]
  %.sroa.67.6 = phi ptr [ %.sroa.67.16, %.loopexit.split-lp779 ], [ %.sroa.67.4.ph768, %.loopexit.split-lp765 ], [ %.sroa.67.5, %bb.cx ], [ %.sroa.67.4.ph, %.loopexit764 ], [ %.sroa.67.16, %.loopexit778 ], [ %.sroa.67.19, %.loopexit773 ], [ %.sroa.67.19, %.loopexit.split-lp774 ]
  %.sroa.0602.6 = phi ptr [ %.sroa.0602.16, %.loopexit.split-lp779 ], [ %.sroa.0602.4.ph769, %.loopexit.split-lp765 ], [ %.sroa.0602.5, %bb.cx ], [ %.sroa.0602.4.ph, %.loopexit764 ], [ %.sroa.0602.16, %.loopexit778 ], [ %.sroa.0602.19, %.loopexit773 ], [ %.sroa.0602.19, %.loopexit.split-lp774 ]
  %.pn175 = phi { ptr, i32 } [ %lpad.loopexit.split-lp781, %.loopexit.split-lp779 ], [ %lpad.loopexit.split-lp771, %.loopexit.split-lp765 ], [ %i.nr, %bb.cx ], [ %lpad.loopexit770, %.loopexit764 ], [ %lpad.loopexit780, %.loopexit778 ], [ %lpad.loopexit775, %.loopexit773 ], [ %lpad.loopexit.split-lp776, %.loopexit.split-lp774 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.gd

bb.cz:                                            ; preds = %bb.ag
  %i.ns = lshr exact i64 %i.ej, 2
  %i.nt = trunc i64 %i.ns to i32
  %i.nu = load i32, ptr %.sroa.0552.1.lcssa, align 4, !tbaa !17
  %i.nv = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.nw = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = lshr exact i64 %i.nz, 3
  %i.ob = trunc i64 %i.oa to i32                  ; 3 uses
  %i.oc = icmp sgt i32 %i.ob, 0
  br i1 %i.oc, label %.lr.ph1309, label %.loopexit728

.lr.ph1309:                                       ; preds = %bb.cz, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336
  %.01351307 = phi i32 [ %i.py, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ 0, %bb.cz ] ; 2 uses
  %.01361306 = phi i32 [ %.1137, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ 0, %bb.cz ] ; 3 uses
  %.sroa.0602.71305 = phi ptr [ %.sroa.0602.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ %.sroa.0602.01356, %bb.cz ] ; 10 uses
  %.sroa.33.51304 = phi ptr [ %.sroa.33.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ %.sroa.33.01355, %bb.cz ] ; 7 uses
  %.sroa.67.71303 = phi ptr [ %.sroa.67.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ %.sroa.67.01354, %bb.cz ] ; 5 uses
  %.sroa.0569.61302 = phi ptr [ %.sroa.0569.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ %.sroa.0569.14, %bb.cz ] ; 9 uses
  %.sroa.24.41301 = phi ptr [ %.sroa.24.5, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ %.sroa.24.9, %bb.cz ] ; 8 uses
  %.sroa.43.61300 = phi ptr [ %.sroa.43.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ], [ %.sroa.43.14, %bb.cz ] ; 4 uses
  %i.od = add nsw i32 %.01351307, %i.nu
  %i.oe = srem i32 %i.od, %i.ob                   ; 2 uses
  %i.of = add nsw i32 %.01361306, 1               ; 4 uses
  %i.og = icmp slt i32 %i.of, %i.nt
  br i1 %i.og, label %bb.da, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

bb.da:                                            ; preds = %.lr.ph1309
  %i.oh = sext i32 %i.of to i64
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0552.1.lcssa, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !17
  %i.ok = icmp eq i32 %i.oj, %i.oe
  br i1 %i.ok, label %bb.db, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

bb.db:                                            ; preds = %bb.da
  %i.ol = ptrtoint ptr %.sroa.33.51304 to i64
  %i.om = ptrtoint ptr %.sroa.0602.71305 to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = lshr exact i64 %i.on, 3
  %i.op = trunc i64 %i.oo to i32                  ; 2 uses
  %.not.i.i317 = icmp eq ptr %.sroa.24.41301, %.sroa.43.61300
  br i1 %.not.i.i317, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 %i.op, ptr %.sroa.24.41301, align 4, !tbaa !17
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.24.41301, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

bb.dd:                                            ; preds = %bb.db
  %i.or = ptrtoint ptr %.sroa.24.41301 to i64
  %i.os = ptrtoint ptr %.sroa.0569.61302 to i64
  %i.ot = sub i64 %i.or, %i.os                    ; 6 uses
  %i.ou = icmp eq i64 %i.ot, 9223372036854775804
  br i1 %i.ou, label %bb.de, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc324 unwind label %.thread670.loopexit.split-lp

.noexc324:                                        ; preds = %bb.de
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318: ; preds = %bb.dd
  %i.ov = ashr exact i64 %i.ot, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i319 = call i64 @llvm.umax.i64(i64 %i.ov, i64 1)
  %i.ow = add nsw i64 %.sroa.speculated.i.i.i.i319, %i.ov ; 2 uses
  %i.ox = icmp ult i64 %i.ow, %i.ov
  %i.oy = call i64 @llvm.umin.i64(i64 %i.ow, i64 2305843009213693951)
  %i.oz = select i1 %i.ox, i64 2305843009213693951, i64 %i.oy ; 2 uses
  %i.pa = shl nuw nsw i64 %i.oz, 2
  %i.pb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pa) #19
          to label %.noexc325 unwind label %.thread670.loopexit ; 4 uses

.noexc325:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %i.ot ; 2 uses
  store i32 %i.op, ptr %i.pc, align 4, !tbaa !17
  %i.pd = icmp sgt i64 %i.ot, 0
  br i1 %i.pd, label %bb.df, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321

bb.df:                                            ; preds = %.noexc325
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pb, ptr align 4 %.sroa.0569.61302, i64 %i.ot, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321: ; preds = %bb.df, %.noexc325
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %.not.i17.i.i.i322 = icmp eq ptr %.sroa.0569.61302, null
  br i1 %.not.i17.i.i.i322, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0569.61302, i64 noundef %i.ot) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323: ; preds = %bb.dg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i321
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.oz
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326

.thread670.loopexit:                              ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i318
  %lpad.loopexit746 = landingpad { ptr, i32 }
          cleanup
  br label %.thread670

.thread670.loopexit.split-lp:                     ; preds = %bb.de
  %lpad.loopexit.split-lp747 = landingpad { ptr, i32 }
          cleanup
  br label %.thread670

_ZNSt6vectorIiSaIiEE9push_backEOi.exit326:        ; preds = %bb.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323, %bb.da, %.lr.ph1309
  %.sroa.43.7 = phi ptr [ %.sroa.43.61300, %.lr.ph1309 ], [ %.sroa.43.61300, %bb.da ], [ %i.pf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %.sroa.43.61300, %bb.dc ] ; 4 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.41301, %.lr.ph1309 ], [ %.sroa.24.41301, %bb.da ], [ %i.pe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %i.oq, %bb.dc ] ; 2 uses
  %.sroa.0569.7 = phi ptr [ %.sroa.0569.61302, %.lr.ph1309 ], [ %.sroa.0569.61302, %bb.da ], [ %i.pb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %.sroa.0569.61302, %bb.dc ] ; 4 uses
  %.1137 = phi i32 [ %.01361306, %.lr.ph1309 ], [ %.01361306, %bb.da ], [ %i.of, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i323 ], [ %i.of, %bb.dc ]
  %i.pg = sext i32 %i.oe to i64
  %i.ph = load ptr, ptr %.sroa.0532.01346, align 8, !tbaa !23
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pg
  %i.pj = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pi)
          to label %bb.dh unwind label %.loopexit749 ; 2 uses

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326
  %.not.i.i327 = icmp eq ptr %.sroa.33.51304, %.sroa.67.71303
  br i1 %.not.i.i327, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store ptr %i.pj, ptr %.sroa.33.51304, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336

bb.dj:                                            ; preds = %bb.dh
  %i.pk = ptrtoint ptr %.sroa.33.51304 to i64
  %i.pl = ptrtoint ptr %.sroa.0602.71305 to i64
  %i.pm = sub i64 %i.pk, %i.pl                    ; 6 uses
  %i.pn = icmp eq i64 %i.pm, 9223372036854775800
  br i1 %i.pn, label %bb.dk, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc334.a unwind label %.loopexit.split-lp750

.noexc334.a:                                      ; preds = %bb.dk
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328: ; preds = %bb.dj
  %i.po = ashr exact i64 %i.pm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i329 = call i64 @llvm.umax.i64(i64 %i.po, i64 1)
  %i.pp = add nsw i64 %.sroa.speculated.i.i.i.i329, %i.po ; 2 uses
  %i.pq = icmp ult i64 %i.pp, %i.po
  %i.pr = call i64 @llvm.umin.i64(i64 %i.pp, i64 1152921504606846975)
  %i.ps = select i1 %i.pq, i64 1152921504606846975, i64 %i.pr ; 2 uses
  %i.pt = shl nuw nsw i64 %i.ps, 3
  %i.pu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #19
          to label %.noexc335.a unwind label %.loopexit749 ; 4 uses

.noexc335.a:                                      ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328
  %i.pv = getelementptr inbounds i8, ptr %i.pu, i64 %i.pm ; 2 uses
  store ptr %i.pj, ptr %i.pv, align 8, !tbaa !27
  %i.pw = icmp sgt i64 %i.pm, 0
  br i1 %i.pw, label %bb.dl, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331

bb.dl:                                            ; preds = %.noexc335.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pu, ptr align 8 %.sroa.0602.71305, i64 %i.pm, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331: ; preds = %bb.dl, %.noexc335.a
  %.not.i17.i.i.i332 = icmp eq ptr %.sroa.0602.71305, null
  br i1 %.not.i17.i.i.i332, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0602.71305, i64 noundef %i.pm) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333: ; preds = %bb.dm, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i331
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.ps
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333, %bb.di
  %.sroa.67.21 = phi ptr [ %i.px, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.67.71303, %bb.di ] ; 2 uses
  %.pn710 = phi ptr [ %i.pv, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.33.51304, %bb.di ]
  %.sroa.0602.21 = phi ptr [ %i.pu, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i333 ], [ %.sroa.0602.71305, %bb.di ] ; 2 uses
  %.sroa.33.16 = getelementptr inbounds nuw i8, ptr %.pn710, i64 8 ; 2 uses
  %i.py = add nuw nsw i32 %.01351307, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.py, %i.ob
  br i1 %exitcond.not, label %.loopexit728, label %.lr.ph1309, !llvm.loop !62

.loopexit749:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328
  %.sroa.67.71303.lcssa1440 = phi ptr [ %.sroa.67.71303, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit326 ], [ %.sroa.33.51304, %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i328 ]
  %lpad.loopexit751 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp750:                            ; preds = %bb.dk
  %lpad.loopexit.split-lp752 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit728:                                     ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit, %bb.cz, %bb.ai, %bb.z, %bb.ba, %._crit_edge1319, %bb.f
  %.sroa.23.6 = phi ptr [ %.sroa.23.01348, %bb.f ], [ %.sroa.23.1.lcssa, %bb.ai ], [ %.sroa.23.1.lcssa, %bb.z ], [ %.sroa.23.1.lcssa, %._crit_edge1319 ], [ %.sroa.23.1.lcssa, %bb.ba ], [ %.sroa.23.1.lcssa, %bb.cz ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.01349, %bb.f ], [ %.sroa.15.1.lcssa, %bb.ai ], [ %.sroa.15.1.lcssa, %bb.z ], [ %.sroa.15.1.lcssa, %._crit_edge1319 ], [ %.sroa.15.1.lcssa, %bb.ba ], [ %.sroa.15.1.lcssa, %bb.cz ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.15.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ]
  %.sroa.0552.6 = phi ptr [ %.sroa.0552.01350, %bb.f ], [ %.sroa.0552.1.lcssa, %bb.ai ], [ %.sroa.0552.1.lcssa, %bb.z ], [ %.sroa.0552.1.lcssa, %._crit_edge1319 ], [ %.sroa.0552.1.lcssa, %bb.ba ], [ %.sroa.0552.1.lcssa, %bb.cz ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0552.1.lcssa, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.43.11 = phi ptr [ %.sroa.43.01351, %bb.f ], [ %.sroa.43.14, %bb.ai ], [ %.sroa.43.14, %bb.z ], [ %.sroa.43.4, %._crit_edge1319 ], [ %.sroa.43.14, %bb.ba ], [ %.sroa.43.14, %bb.cz ], [ %.sroa.43.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.43.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.43.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %.sroa.24.7 = phi ptr [ %.sroa.24.01352, %bb.f ], [ %.sroa.24.9, %bb.ai ], [ %.sroa.24.9, %bb.z ], [ %.sroa.24.3, %._crit_edge1319 ], [ %.sroa.24.9, %bb.ba ], [ %.sroa.24.9, %bb.cz ], [ %.sroa.24.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.24.9, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.24.5, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %.sroa.0569.11 = phi ptr [ %.sroa.0569.01353, %bb.f ], [ %.sroa.0569.14, %bb.ai ], [ %.sroa.0569.14, %bb.z ], [ %.sroa.0569.4, %._crit_edge1319 ], [ %.sroa.0569.14, %bb.ba ], [ %.sroa.0569.14, %bb.cz ], [ %.sroa.0569.2, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0569.14, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0569.7, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.67.11 = phi ptr [ %.sroa.67.01354, %bb.f ], [ %.sroa.67.01354, %bb.ai ], [ %.sroa.67.01354, %bb.z ], [ %.sroa.67.5, %._crit_edge1319 ], [ %.sroa.67.01354, %bb.ba ], [ %.sroa.67.01354, %bb.cz ], [ %.sroa.67.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 3 uses
  %.sroa.33.7 = phi ptr [ %.sroa.33.01355, %bb.f ], [ %.sroa.33.01355, %bb.ai ], [ %.sroa.33.01355, %bb.z ], [ %.sroa.33.4, %._crit_edge1319 ], [ %.sroa.33.01355, %bb.ba ], [ %.sroa.33.01355, %bb.cz ], [ %.sroa.33.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.16, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 2 uses
  %.sroa.0602.11 = phi ptr [ %.sroa.0602.01356, %bb.f ], [ %.sroa.0602.01356, %bb.ai ], [ %.sroa.0602.01356, %bb.z ], [ %.sroa.0602.5, %._crit_edge1319 ], [ %.sroa.0602.01356, %bb.ba ], [ %.sroa.0602.01356, %bb.cz ], [ %.sroa.0602.3, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit235 ], [ %.sroa.0602.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0602.21, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit336 ] ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0532.01346, i64 24 ; 2 uses
  %i.qa = load ptr, ptr %i.f, align 8, !tbaa !8
  %.not692 = icmp eq ptr %i.pz, %i.qa
  br i1 %.not692, label %._crit_edge1359, label %bb.f, !llvm.loop !63

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %i.qb = phi i32 [ %i.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.q, %bb.b ]
  %i.qc = phi i64 [ %i.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.b ] ; 4 uses
  %i.qd = phi i64 [ %i.t, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.n, %bb.b ]
  %.sroa.0602.0.lcssa1935 = phi ptr [ %.sroa.0602.0.lcssa1936, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0602.11, %bb.b ] ; 9 uses
  %.sroa.67.0.lcssa1926 = phi ptr [ %.sroa.67.0.lcssa1927, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.67.11, %bb.b ] ; 3 uses
  %.sroa.0552.0.lcssa1915 = phi ptr [ %.sroa.0552.0.lcssa1916, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0552.6, %bb.b ] ; 5 uses
  %.sroa.23.0.lcssa1906 = phi ptr [ %.sroa.23.0.lcssa1907, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.23.6, %bb.b ] ; 3 uses
  %.sroa.43.13 = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.43.11, %bb.b ] ; 3 uses
  %.pn693 = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.24.7, %bb.b ]
  %.sroa.0569.13 = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0569.11, %bb.b ] ; 12 uses
  %.sroa.24.8 = getelementptr inbounds nuw i8, ptr %.pn693, i64 4
  %i.qe = ptrtoint ptr %.sroa.24.8 to i64
  %i.qf = ptrtoint ptr %.sroa.0569.13 to i64      ; 2 uses
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = lshr exact i64 %i.qg, 2
  %i.qi = trunc i64 %i.qh to i32                  ; 5 uses
  %i.qj = add nsw i32 %i.qi, -1                   ; 21 uses
  %.not = icmp eq i32 %i.qj, 0
  br i1 %.not, label %bb.fx, label %bb.do

bb.dn:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.c
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ql = mul nsw i32 %i.qj, %i.qj
  %i.qm = zext nneg i32 %i.ql to i64              ; 3 uses
  %i.qn = shl nuw nsw i64 %i.qm, 3                ; 3 uses
  %i.qo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qn) #19
          to label %.noexc338.a unwind label %bb.dq ; 11 uses

.noexc338.a:                                      ; preds = %bb.do
  store double 0.000000e+00, ptr %i.qo, align 8, !tbaa !36
  %i.qp = add nsw i64 %i.qm, -1                   ; 3 uses
  %i.qq = icmp eq i64 %i.qp, 0                    ; 2 uses
  br i1 %i.qq, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc338.a
  %i.qr = getelementptr i8, ptr %i.qo, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.qp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qr, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !36
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc338.a
  %i.qs = sext i32 %i.qj to i64                   ; 15 uses
  %i.qt = icmp slt i32 %i.qi, 1
  br i1 %i.qt, label %bb.dp, label %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.dp:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc342.a unwind label %bb.dr

.noexc342.a:                                      ; preds = %bb.dp
  unreachable

_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.qu = shl nuw nsw i64 %i.qs, 3                ; 6 uses
  %i.qv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #19
          to label %.noexc343.a unwind label %bb.dr ; 12 uses

.noexc343.a:                                      ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.qv, align 8, !tbaa !64
  %i.qw = add nsw i64 %i.qs, -1                   ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 0                    ; 2 uses
  br i1 %i.qx, label %.lr.ph1369.preheader, label %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc343.a
  %i.qy = getelementptr i8, ptr %i.qv, i64 8
  %.idx.i.i.i.i.i.i.i340 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.qy, i8 0, i64 %.idx.i.i.i.i.i.i.i340, i1 false), !tbaa !64
  br label %.lr.ph1369.preheader

.lr.ph1369.preheader:                             ; preds = %.noexc343.a, %_ZSt6fill_nIPPdmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %wide.trip.count = zext nneg i32 %i.qj to i64   ; 7 uses
  %i.qz = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ra = icmp ult i32 %i.qi, 5
  br i1 %i.ra, label %.lr.ph1369.epil.preheader, label %.lr.ph1369.preheader.new

.lr.ph1369.preheader.new:                         ; preds = %.lr.ph1369.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph1369

.lr.ph1374.preheader.unr-lcssa:                   ; preds = %.lr.ph1369
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil.preheader

.lr.ph1369.epil.preheader:                        ; preds = %.lr.ph1374.preheader.unr-lcssa, %.lr.ph1369.preheader
  %indvars.iv1784.epil.init = phi i64 [ 0, %.lr.ph1369.preheader ], [ %indvars.iv.next1785.3, %.lr.ph1374.preheader.unr-lcssa ]
  %lcmp.mod3334 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3334)
  br label %.lr.ph1369.epil

.lr.ph1369.epil:                                  ; preds = %.lr.ph1369.epil, %.lr.ph1369.epil.preheader
  %indvars.iv1784.epil = phi i64 [ %indvars.iv1784.epil.init, %.lr.ph1369.epil.preheader ], [ %indvars.iv.next1785.epil, %.lr.ph1369.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1369.epil.preheader ], [ %epil.iter.next, %.lr.ph1369.epil ]
  %i.rb = mul nsw i64 %indvars.iv1784.epil, %i.qs
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rb
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784.epil
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !64
  %indvars.iv.next1785.epil = add nuw nsw i64 %indvars.iv1784.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph1374.preheader, label %.lr.ph1369.epil, !llvm.loop !66

.lr.ph1374.preheader:                             ; preds = %.lr.ph1369.epil, %.lr.ph1374.preheader.unr-lcssa
  %wide.trip.count1799 = zext nneg i32 %i.qj to i64
  %wide.trip.count1793 = zext i32 %i.qj to i64
  br label %.lr.ph1374

bb.dq:                                            ; preds = %bb.do
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.dr:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %bb.dp
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit425

.lr.ph1369:                                       ; preds = %.lr.ph1369, %.lr.ph1369.preheader.new
  %indvars.iv1784.a = phi i64 [ 0, %.lr.ph1369.preheader.new ], [ %indvars.iv.next1785.3, %.lr.ph1369 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1369.preheader.new ], [ %niter.next.3, %.lr.ph1369 ]
  %i.rg = mul nsw i64 %indvars.iv1784.a, %i.qs
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1784.a
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !64
  %indvars.iv.next1785.a = or disjoint i64 %indvars.iv1784.a, 1 ; 2 uses
  %i.rj = mul nsw i64 %indvars.iv.next1785.a, %i.qs
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rj
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.a
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !64
  %indvars.iv.next1785.1 = or disjoint i64 %indvars.iv1784.a, 2 ; 2 uses
  %i.rm = mul nsw i64 %indvars.iv.next1785.1, %i.qs
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next1785.1
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !64
end_hunk_2
begin_hunk_3_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %i.vg = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = invoke { double, double } %i.vi(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef 0.000000e+00)
          to label %.noexc354 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc354:                                        ; preds = %bb.dz
  %i.vk = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 40
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = invoke { double, double } %i.vm(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef 0.000000e+00)
          to label %.noexc355 unwind label %.loopexit.split-lp719.loopexit.split-lp, !inline_history !71 ; 2 uses

.noexc355:                                        ; preds = %.noexc354
  %i.vo = extractvalue { double, double } %i.vj, 1
  %i.vp = extractvalue { double, double } %i.vj, 0
  %i.vq = extractvalue { double, double } %i.vn, 0
  %i.vr = extractvalue { double, double } %i.vn, 1
  %i.vs = fsub double %i.vp, %i.vq                ; 2 uses
  %i.vt = fsub double %i.vo, %i.vr                ; 2 uses
  %i.vu = fmul double %i.vt, %i.vt
  %i.vv = call double @llvm.fmuladd.f64(double %i.vs, double %i.vs, double %i.vu)
  %sqrt.i.i.i = call noundef double @llvm.sqrt.f64(double %i.vv)
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc357, %.noexc355
  %.05560.i.i = phi double [ %sqrt.i.i.i, %.noexc355 ], [ %i.wl, %.noexc357 ] ; 2 uses
  %.05659.i.i = phi i32 [ 0, %.noexc355 ], [ %i.wm, %.noexc357 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.vw = uitofp nneg i32 %.05659.i.i to double
  %i.vx = fmul nnan double %i.vw, 6.250000e-02    ; 2 uses
  store double %i.vx, ptr %i.a, align 8, !tbaa !36
  %i.vy = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8
  %i.wb = invoke { double, double } %i.wa(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double noundef %i.vx)
          to label %.noexc356 unwind label %.loopexit.split-lp719.loopexit, !inline_history !71 ; 2 uses

.noexc356:                                        ; preds = %bb.ea
  %i.wc = extractvalue { double, double } %i.wb, 0
  %i.wd = extractvalue { double, double } %i.wb, 1
  %i.we = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 64
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = invoke { double, double } %i.wg(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double %i.wc, double %i.wd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc357 unwind label %.loopexit.split-lp719.loopexit, !inline_history !71

.noexc357:                                        ; preds = %.noexc356
  %i.wi = extractvalue { double, double } %i.wh, 0
  %i.wj = call double @llvm.fabs.f64(double %i.wi) ; 2 uses
  %i.wk = fcmp olt double %i.wj, %.05560.i.i
  %i.wl = select i1 %i.wk, double %i.wj, double %.05560.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.wm = add nuw nsw i32 %.05659.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.wm, 17
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.ea, !llvm.loop !72

.preheader.i.i:                                   ; preds = %.noexc357, %.noexc359
  %.162.i.i = phi double [ %i.xc, %.noexc359 ], [ %i.wl, %.noexc357 ] ; 2 uses
  %.05761.i.i = phi i32 [ %i.xd, %.noexc359 ], [ 0, %.noexc357 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.wn = uitofp nneg i32 %.05761.i.i to double
  %i.wo = fmul nnan double %i.wn, 6.250000e-02    ; 2 uses
  store double %i.wo, ptr %i.b, align 8, !tbaa !36
  %i.wp = load ptr, ptr %i.sv, align 8, !tbaa !15
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = invoke { double, double } %i.wr(ptr noundef nonnull align 8 dereferenceable(12) %i.sv, double noundef %i.wo)
          to label %.noexc358.a unwind label %.loopexit718, !inline_history !71 ; 2 uses

.noexc358.a:                                      ; preds = %.preheader.i.i
  %i.wt = extractvalue { double, double } %i.ws, 0
  %i.wu = extractvalue { double, double } %i.ws, 1
  %i.wv = load ptr, ptr %i.sx, align 8, !tbaa !15
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 64
  %i.wx = load ptr, ptr %i.ww, align 8
  %i.wy = invoke { double, double } %i.wx(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, double %i.wt, double %i.wu, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc359 unwind label %.loopexit718, !inline_history !71

.noexc359:                                        ; preds = %.noexc358.a
  %i.wz = extractvalue { double, double } %i.wy, 0
  %i.xa = call double @llvm.fabs.f64(double %i.wz) ; 2 uses
  %i.xb = fcmp olt double %i.xa, %.162.i.i
  %i.xc = select i1 %i.xb, double %i.xa, double %.162.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.xd = add nuw nsw i32 %.05761.i.i, 1          ; 2 uses
  %exitcond64.not.i.i = icmp eq i32 %i.xd, 17
  br i1 %exitcond64.not.i.i, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %.preheader.i.i, !llvm.loop !73

_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i: ; preds = %.noexc359, %.noexc353.a, %.noexc351, %.noexc349.a, %.noexc347
  %.0.i.i = phi double [ 0.000000e+00, %.noexc347 ], [ 0.000000e+00, %.noexc353.a ], [ 0.000000e+00, %.noexc351 ], [ 0.000000e+00, %.noexc349.a ], [ %i.xc, %.noexc359 ] ; 2 uses
  %i.xe = fcmp olt double %.0.i.i, %.120.i
  %i.xf = select i1 %i.xe, double %.0.i.i, double %.120.i ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.xg = icmp slt i64 %indvars.iv.next.i, %i.sr
  %i.xh = fcmp une double %i.xf, 0.000000e+00
  %i.xi = select i1 %i.xg, i1 %i.xh, i1 false
  br i1 %i.xi, label %bb.dv, label %._crit_edge.i, !llvm.loop !74

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.sb, align 8, !tbaa !64
  br label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit: ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, %bb.du
  %i.xj = phi ptr [ %i.sh, %bb.du ], [ %.pre, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.du ], [ %.1.lcssa.i, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv1790
  store double %.0.lcssa.i, ptr %i.xk, align 8, !tbaa !36
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1790
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xm, i64 %indvars.iv1795
  store double %.0.lcssa.i, ptr %i.xn, align 8, !tbaa !36
  %exitcond1794.not = icmp eq i64 %indvars.iv.next1791, %wide.trip.count1793
  br i1 %exitcond1794.not, label %.loopexit726, label %bb.du, !llvm.loop !75

.loopexit718:                                     ; preds = %.preheader.i.i, %.noexc358.a
  %lpad.loopexit720 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit.split-lp719.loopexit:                   ; preds = %.noexc356, %bb.ea
  %lpad.loopexit723 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit.split-lp719.loopexit.split-lp:          ; preds = %.noexc354, %bb.dz, %.noexc352, %bb.dy, %.noexc350, %bb.dx, %.noexc348.a, %bb.dw, %.noexc346, %bb.dv
  %lpad.loopexit.split-lp724 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.loopexit:                                        ; preds = %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit, %.lr.ph1389
  %.sroa.0455.1.lcssa = phi ptr [ %.sroa.0455.01385, %.lr.ph1389 ], [ %.sroa.0455.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.01386, %.lr.ph1389 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.01387, %.lr.ph1389 ], [ %.sroa.27.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %indvars.iv.next1802 = add nuw nsw i64 %indvars.iv1801, 1
  %exitcond1813.not = icmp eq i64 %indvars.iv.next1809.a, %wide.trip.count1812
  br i1 %exitcond1813.not, label %._crit_edge1390, label %.lr.ph1389, !llvm.loop !76

._crit_edge1390:                                  ; preds = %.loopexit
  %i.xo = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.xp = ptrtoint ptr %.sroa.0455.1.lcssa to i64 ; 3 uses
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = ashr exact i64 %i.xq, 3                 ; 3 uses
  %i.xs = trunc i64 %i.xr to i32                  ; 4 uses
  %i.xt = icmp eq ptr %.sroa.0455.1.lcssa, %.sroa.18.1.lcssa
  br i1 %i.xt, label %bb.ei, label %bb.eh

.thread:                                          ; preds = %bb.ds, %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit423

.lr.ph1389:                                       ; preds = %.lr.ph1389.preheader, %.loopexit
  %indvars.iv1808.a = phi i64 [ 0, %.lr.ph1389.preheader ], [ %indvars.iv.next1809.a, %.loopexit ] ; 2 uses
  %indvars.iv1801 = phi i64 [ 1, %.lr.ph1389.preheader ], [ %indvars.iv.next1802, %.loopexit ] ; 2 uses
  %.sroa.27.01387 = phi ptr [ %.sroa.27.3, %.lr.ph1389.preheader ], [ %.sroa.27.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.01386 = phi ptr [ %.sroa.0455.3, %.lr.ph1389.preheader ], [ %.sroa.18.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0455.01385 = phi ptr [ %.sroa.0455.3, %.lr.ph1389.preheader ], [ %.sroa.0455.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next1809.a = add nuw nsw i64 %indvars.iv1808.a, 1 ; 3 uses
  %i.xv = icmp slt i64 %indvars.iv.next1809.a, %i.qs
  br i1 %i.xv, label %.lr.ph1381, label %.loopexit

.lr.ph1381:                                       ; preds = %.lr.ph1389
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv1808.a
  br label %bb.eb

bb.eb:                                            ; preds = %.lr.ph1381, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit
  %indvars.iv1803.a = phi i64 [ %indvars.iv1801, %.lr.ph1381 ], [ %indvars.iv.next1804.a, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.27.11378 = phi ptr [ %.sroa.27.01387, %.lr.ph1381 ], [ %.sroa.27.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.sroa.18.11377 = phi ptr [ %.sroa.18.01386, %.lr.ph1381 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0455.11376 = phi ptr [ %.sroa.0455.01385, %.lr.ph1381 ], [ %.sroa.0455.4, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 7 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %indvars.iv1803.a ; 2 uses
  %.not.i.i360 = icmp eq ptr %.sroa.18.11377, %.sroa.27.11378
  br i1 %.not.i.i360, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store ptr %i.xy, ptr %.sroa.18.11377, align 8, !tbaa !64
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

bb.ed:                                            ; preds = %bb.eb
  %i.xz = ptrtoint ptr %.sroa.27.11378 to i64
  %i.ya = ptrtoint ptr %.sroa.0455.11376 to i64
  %i.yb = sub i64 %i.xz, %i.ya                    ; 6 uses
  %i.yc = icmp eq i64 %i.yb, 9223372036854775800
  br i1 %i.yc, label %bb.ee, label %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc364 unwind label %.loopexit.split-lp

.noexc364:                                        ; preds = %bb.ee
  unreachable

_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ed
  %i.yd = ashr exact i64 %i.yb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i361 = call i64 @llvm.umax.i64(i64 %i.yd, i64 1)
  %i.ye = add nsw i64 %.sroa.speculated.i.i.i.i361, %i.yd ; 2 uses
  %i.yf = icmp ult i64 %i.ye, %i.yd
  %i.yg = call i64 @llvm.umin.i64(i64 %i.ye, i64 1152921504606846975)
  %i.yh = select i1 %i.yf, i64 1152921504606846975, i64 %i.yg ; 2 uses
  %i.yi = shl nuw nsw i64 %i.yh, 3
  %i.yj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yi) #19
          to label %.noexc365 unwind label %.loopexit717 ; 4 uses

.noexc365:                                        ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.yk = getelementptr inbounds i8, ptr %i.yj, i64 %i.yb ; 2 uses
  store ptr %i.xy, ptr %i.yk, align 8, !tbaa !64
  %i.yl = icmp sgt i64 %i.yb, 0
  br i1 %i.yl, label %bb.ef, label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ef:                                            ; preds = %.noexc365
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yj, ptr align 8 %.sroa.0455.11376, i64 %i.yb, i1 false)
  br label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ef, %.noexc365
  %.not.i17.i.i.i363 = icmp eq ptr %.sroa.0455.11376, null
  br i1 %.not.i17.i.i.i363, label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0455.11376, i64 noundef %i.yb) #17
  br label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eg, %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yh
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ec
  %.sroa.0455.4 = phi ptr [ %i.yj, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0455.11376, %bb.ec ] ; 2 uses
  %.pn703 = phi ptr [ %i.yk, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.11377, %bb.ec ]
  %.sroa.27.4 = phi ptr [ %i.ym, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.27.11378, %bb.ec ] ; 2 uses
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.pn703, i64 8 ; 2 uses
  %indvars.iv.next1804.a = add nuw nsw i64 %indvars.iv1803.a, 1 ; 2 uses
  %exitcond1807.not.a = icmp eq i64 %indvars.iv.next1804.a, %wide.trip.count1806.a
  br i1 %exitcond1807.not.a, label %.loopexit, label %bb.eb, !llvm.loop !77

.loopexit717:                                     ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp:                               ; preds = %bb.ee
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.eh:                                            ; preds = %._crit_edge1390
  invoke void @qsort(ptr noundef nonnull %.sroa.0455.1.lcssa, i64 noundef %i.xr, i64 noundef 8, ptr noundef nonnull @_ZN7msdfgenL12cmpDoublePtrEPKvS1_)
          to label %bb.ei unwind label %.thread662

.thread662:                                       ; preds = %bb.eh
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ei:                                            ; preds = %._crit_edge1390, %bb.eh
  %i.yo = shl nuw nsw i64 %i.qm, 2                ; 3 uses
  %i.yp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yo) #19
          to label %.noexc369 unwind label %bb.ej ; 9 uses

.noexc369:                                        ; preds = %bb.ei
  store i32 0, ptr %i.yp, align 4, !tbaa !17
  br i1 %i.qq, label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc369
  %i.yq = getelementptr i8, ptr %i.yp, i64 4
  %.idx.i.i.i.i.i.i.i367 = shl nuw nsw i64 %i.qp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.yq, i8 0, i64 %.idx.i.i.i.i.i.i.i367, i1 false), !tbaa !17
  br label %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc369
  %i.yr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #19
          to label %.noexc374 unwind label %bb.ek ; 17 uses

.noexc374:                                        ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  store ptr null, ptr %i.yr, align 8, !tbaa !78
  br i1 %i.qx, label %.lr.ph1395.preheader, label %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc374
  %i.ys = getelementptr i8, ptr %i.yr, i64 8
  %.idx.i.i.i.i.i.i.i371 = shl nuw nsw i64 %i.qw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ys, i8 0, i64 %.idx.i.i.i.i.i.i.i371, i1 false), !tbaa !78
  br label %.lr.ph1395.preheader

.lr.ph1395.preheader:                             ; preds = %.noexc374, %_ZSt6fill_nIPPimS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %xtraiter3335 = and i64 %wide.trip.count1812, 3 ; 3 uses
  %i.yt = icmp slt i32 %i.qi, 5
  br i1 %i.yt, label %.lr.ph1395.epil.preheader, label %.lr.ph1395.preheader.new

.lr.ph1395.preheader.new:                         ; preds = %.lr.ph1395.preheader
  %unroll_iter3339 = and i64 %wide.trip.count1812, 2147483644
  br label %.lr.ph1395

.preheader716.unr-lcssa:                          ; preds = %.lr.ph1395
  %lcmp.mod3337.not = icmp eq i64 %xtraiter3335, 0
  br i1 %lcmp.mod3337.not, label %.preheader716, label %.lr.ph1395.epil.preheader

.lr.ph1395.epil.preheader:                        ; preds = %.preheader716.unr-lcssa, %.lr.ph1395.preheader
  %indvars.iv1814.epil.init = phi i64 [ 0, %.lr.ph1395.preheader ], [ %indvars.iv.next1815.3, %.preheader716.unr-lcssa ]
  %lcmp.mod3338 = icmp ne i64 %xtraiter3335, 0
  call void @llvm.assume(i1 %lcmp.mod3338)
  br label %.lr.ph1395.epil

.lr.ph1395.epil:                                  ; preds = %.lr.ph1395.epil, %.lr.ph1395.epil.preheader
  %indvars.iv1814.epil = phi i64 [ %indvars.iv1814.epil.init, %.lr.ph1395.epil.preheader ], [ %indvars.iv.next1815.epil, %.lr.ph1395.epil ] ; 3 uses
  %epil.iter3336 = phi i64 [ 0, %.lr.ph1395.epil.preheader ], [ %epil.iter3336.next, %.lr.ph1395.epil ]
  %i.yu = mul nsw i64 %indvars.iv1814.epil, %i.qs
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.yu
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv1814.epil
  store ptr %i.yv, ptr %i.yw, align 8, !tbaa !78
  %indvars.iv.next1815.epil = add nuw nsw i64 %indvars.iv1814.epil, 1
  %epil.iter3336.next = add i64 %epil.iter3336, 1 ; 2 uses
  %epil.iter3336.cmp.not = icmp eq i64 %epil.iter3336.next, %xtraiter3335
  br i1 %epil.iter3336.cmp.not, label %.preheader716, label %.lr.ph1395.epil, !llvm.loop !80

.preheader716:                                    ; preds = %.lr.ph1395.epil, %.preheader716.unr-lcssa
  %i.yx = icmp sgt i32 %i.xs, 0
  br i1 %i.yx, label %.lr.ph1397, label %.critedge

.lr.ph1397:                                       ; preds = %.preheader716
  %i.yy = ptrtoint ptr %i.qo to i64
  %wide.trip.count1823 = and i64 %i.xr, 2147483647
  br label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ek:                                            ; preds = %_ZNSt6vectorIPiSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit419

.lr.ph1395:                                       ; preds = %.lr.ph1395, %.lr.ph1395.preheader.new
  %indvars.iv1814 = phi i64 [ 0, %.lr.ph1395.preheader.new ], [ %indvars.iv.next1815.3, %.lr.ph1395 ] ; 6 uses
  %niter3340 = phi i64 [ 0, %.lr.ph1395.preheader.new ], [ %niter3340.next.3, %.lr.ph1395 ]
  %i.zb = mul nsw i64 %indvars.iv1814, %i.qs
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zb
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv1814
  store ptr %i.zc, ptr %i.zd, align 8, !tbaa !78
  %indvars.iv.next1815 = or disjoint i64 %indvars.iv1814, 1 ; 2 uses
  %i.ze = mul nsw i64 %indvars.iv.next1815, %i.qs
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815
  store ptr %i.zf, ptr %i.zg, align 8, !tbaa !78
  %indvars.iv.next1815.1 = or disjoint i64 %indvars.iv1814, 2 ; 2 uses
  %i.zh = mul nsw i64 %indvars.iv.next1815.1, %i.qs
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zh
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815.1
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !78
  %indvars.iv.next1815.2 = or disjoint i64 %indvars.iv1814, 3 ; 2 uses
  %i.zk = mul nsw i64 %indvars.iv.next1815.2, %i.qs
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zk
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %indvars.iv.next1815.2
  store ptr %i.zl, ptr %i.zm, align 8, !tbaa !78
  %indvars.iv.next1815.3 = add nuw nsw i64 %indvars.iv1814, 4 ; 2 uses
  %niter3340.next.3 = add i64 %niter3340, 4       ; 2 uses
  %niter3340.ncmp.3 = icmp eq i64 %niter3340.next.3, %unroll_iter3339
  br i1 %niter3340.ncmp.3, label %.preheader716.unr-lcssa, label %.lr.ph1395, !llvm.loop !81

bb.el:                                            ; preds = %.lr.ph1397, %bb.em
  %indvars.iv1820 = phi i64 [ 0, %.lr.ph1397 ], [ %indvars.iv.next1821, %bb.em ] ; 3 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0455.1.lcssa, i64 %indvars.iv1820
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !64 ; 2 uses
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !36
  %i.zq = fcmp oeq double %i.zp, 0.000000e+00
  br i1 %i.zq, label %bb.em, label %.critedge.loopexit.split.loop.exit2411

bb.em:                                            ; preds = %bb.el
  %i.zr = ptrtoint ptr %i.zo to i64
  %i.zs = sub i64 %i.zr, %i.yy
  %i.zt = lshr exact i64 %i.zs, 3
  %i.zu = trunc i64 %i.zt to i32                  ; 2 uses
  %i.zv = sdiv i32 %i.zu, %i.qj
  %i.zw = srem i32 %i.zu, %i.qj
  %i.zx = sext i32 %i.zv to i64                   ; 2 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.zx
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !78
  %i.aaa = sext i32 %i.zw to i64                  ; 2 uses
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aaa
  store i32 1, ptr %i.aab, align 4, !tbaa !17
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.aaa
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !78
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.aad, i64 %i.zx
  store i32 1, ptr %i.aae, align 4, !tbaa !17
  %indvars.iv.next1821 = add nuw nsw i64 %indvars.iv1820, 1 ; 2 uses
  %exitcond1824.not = icmp eq i64 %indvars.iv.next1821, %wide.trip.count1823
  br i1 %exitcond1824.not, label %.critedge, label %bb.el, !llvm.loop !82

.critedge.loopexit.split.loop.exit2411:           ; preds = %bb.el
  %i.aaf = trunc nuw nsw i64 %indvars.iv1820 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.em, %.critedge.loopexit.split.loop.exit2411, %.preheader716
  %.0127.lcssa = phi i32 [ 0, %.preheader716 ], [ %i.aaf, %.critedge.loopexit.split.loop.exit2411 ], [ %i.xs, %bb.em ] ; 2 uses
  %i.aag = shl nsw i32 %i.qj, 1
  %i.aah = sext i32 %i.aag to i64
  %i.aai = shl nsw i64 %i.aah, 2                  ; 4 uses
  %i.aaj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aai) #19
          to label %.preheader.preheader.i383 unwind label %bb.fu ; 19 uses
end_hunk_3
begin_hunk_4_@_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_:bb.a
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !78
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.aq = load i32, ptr %1, align 4, !tbaa !17
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !17
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !95
  store ptr %i.am, ptr %i.o, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !97
  store ptr %i.am, ptr %i.a, align 8, !tbaa !107
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !104  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !101
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !112

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !78
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !78
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !78
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !78
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !113

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !94  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !112

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !78
  store ptr %i.be, ptr %i.av, align 8, !tbaa !78
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !101
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !104
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !101
  store i64 %i.am, ptr %i.k, align 8, !tbaa !104
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !95
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !78   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !95
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !96
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !114

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #16 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #16
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #18
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !114

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #16 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !29

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #17
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !32
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #16 ; 0 uses
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #16 ; 0 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #16
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #16 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #16
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !29

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #17
  invoke void @__cxa_rethrow() #18
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #20
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN7msdfgen7ContourE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"_ZTSN7msdfgen9EdgeColorE", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !7, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !12, i64 8}
!21 = !{!"_ZTSN7msdfgen11EdgeSegmentE", !12, i64 8}
!22 = distinct !{!22, !19}
!23 = !{!24, !14, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!25 = distinct !{!25, !19}
!26 = !{!24, !14, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !10, i64 0}
!29 = distinct !{!29, !19}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN7msdfgen10EdgeHolderE", !28, i64 0}
!32 = !{!24, !14, i64 16}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!37, !37, i64 0}
!37 = !{!"double", !6, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"bool", !6, i64 0}
!40 = distinct !{null}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = !{!44, !5, i64 0}
!44 = !{!"_ZTSN7msdfgen25EdgeColoringInkTrapCornerE", !5, i64 0, !37, i64 8, !39, i64 16, !12, i64 20}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!44, !37, i64 8}
!48 = !{!44, !39, i64 16}
!49 = distinct !{!49, !19, !50}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!44, !12, i64 20}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19, !50}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 double", !10, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{null}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 int", !10, i64 0}
!80 = distinct !{!80, !67}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = !{!87, !79, i64 0}
!87 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !79, i64 0, !79, i64 8, !79, i64 16, !88, i64 24}
!88 = !{!"p2 int", !89, i64 0}
!89 = !{!"any p2 pointer", !10, i64 0}
!90 = !{!91, !79, i64 32}
!91 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !88, i64 0, !92, i64 8, !87, i64 16, !87, i64 48}
!92 = !{!"long", !6, i64 0}
!93 = !{!91, !79, i64 24}
!94 = !{!91, !88, i64 40}
!95 = !{!87, !88, i64 24}
!96 = !{!87, !79, i64 8}
!97 = !{!87, !79, i64 16}
!98 = !{!91, !79, i64 16}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = !{!91, !88, i64 0}
!102 = !{!91, !88, i64 72}
!103 = distinct !{!103, !19}
!104 = !{!91, !92, i64 8}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = !{!91, !79, i64 48}
!108 = !{!91, !79, i64 64}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, !19}
end_hunk_4
