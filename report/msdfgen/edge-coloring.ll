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
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not159250 = icmp eq ptr %i.d, %i.f
  br i1 %.not159250, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.a
  %i.g = urem i64 %2, 3
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL9initColorERyE6colors, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = udiv i64 %2, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

._crit_edge261:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.0119.6, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge261
  %i.r = ptrtoint ptr %.sroa.23.6 to i64
  %i.s = ptrtoint ptr %.sroa.0119.6 to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.6, i64 noundef %i.t) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge261, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph260, %.loopexit
  %.0152258 = phi i64 [ %i.j, %.lr.ph260 ], [ %.3, %.loopexit ] ; 7 uses
  %.0154257 = phi i32 [ %i.i, %.lr.ph260 ], [ %.3157, %.loopexit ] ; 4 uses
  %.sroa.0119.0256 = phi ptr [ null, %.lr.ph260 ], [ %.sroa.0119.6, %.loopexit ] ; 6 uses
  %.sroa.15.0255 = phi ptr [ null, %.lr.ph260 ], [ %.sroa.15.3, %.loopexit ] ; 3 uses
  %.sroa.0100.0252 = phi ptr [ %i.d, %.lr.ph260 ], [ %i.in, %.loopexit ] ; 13 uses
  %.sroa.23.0251 = phi ptr [ null, %.lr.ph260 ], [ %.sroa.23.6, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %.sroa.0100.0252, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0100.0252, i64 8 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.15.0255, %.sroa.0119.0256
  %spec.select = select i1 %.not.i.i, ptr %.sroa.15.0255, ptr %.sroa.0119.0256 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.z = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke { double, double } %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.z, double noundef 1.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %.sroa.0100.0252, align 8, !tbaa !16 ; 3 uses
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !16
  %.not161221 = icmp eq ptr %i.ae, %i.af
  br i1 %.not161221, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o
  %i.ag = icmp eq ptr %.sroa.0119.2, %.sroa.15.2
  br i1 %i.ag, label %._crit_edge.thread, label %bb.q

bb.f:                                             ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.e, %bb.o
  %.sroa.0119.1227 = phi ptr [ %.sroa.0119.2, %bb.o ], [ %.sroa.0119.0256, %bb.e ] ; 9 uses
  %.sroa.092.0226 = phi ptr [ %i.ce, %bb.o ], [ %i.ae, %bb.e ] ; 3 uses
  %.0158225 = phi i32 [ %i.cf, %bb.o ], [ 0, %bb.e ] ; 3 uses
  %.pn224 = phi { double, double } [ %i.cd, %bb.o ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.15.1223 = phi ptr [ %.sroa.15.2, %bb.o ], [ %spec.select, %bb.e ] ; 7 uses
  %.sroa.23.1222 = phi ptr [ %.sroa.23.2, %bb.o ], [ %.sroa.23.0251, %bb.e ] ; 4 uses
  %.sroa.098.0 = extractvalue { double, double } %.pn224, 0 ; 3 uses
  %.sroa.6.0 = extractvalue { double, double } %.pn224, 1 ; 3 uses
  %i.ai = fmul double %.sroa.6.0, %.sroa.6.0
  %i.aj = call double @llvm.fmuladd.f64(double %.sroa.098.0, double %.sroa.098.0, double %i.ai)
  %i.ak = call noundef double @sqrt(double noundef %i.aj) #16 ; 3 uses
  %i.al = fcmp une double %i.ak, 0.000000e+00     ; 2 uses
  %i.am = fdiv double %.sroa.098.0, %i.ak
  %i.an = fdiv double %.sroa.6.0, %i.ak
  %.sroa.3.1.i = select i1 %i.al, double %i.an, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.al, double %i.am, double 0.000000e+00 ; 2 uses
  %i.ao = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.092.0226)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke { double, double } %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, double noundef 0.000000e+00)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.at = extractvalue { double, double } %i.as, 0 ; 3 uses
  %i.au = extractvalue { double, double } %i.as, 1 ; 3 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.av)
  %i.ax = call noundef double @sqrt(double noundef %i.aw) #16 ; 3 uses
  %i.ay = fcmp une double %i.ax, 0.000000e+00     ; 2 uses
  %i.az = fdiv double %i.at, %i.ax
  %i.ba = fdiv double %i.au, %i.ax
  %.sroa.3.1.i70 = select i1 %i.ay, double %i.ba, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i71 = select i1 %i.ay, double %i.az, double 0.000000e+00 ; 2 uses
  %i.bb = fmul double %.sroa.3.1.i, %.sroa.3.1.i70
  %i.bc = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i71, double %i.bb)
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.h
  %i.be = fneg double %.sroa.0.1.i71
  %i.bf = fmul double %.sroa.3.1.i, %i.be
  %i.bg = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i70, double %i.bf)
  %i.bh = call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.c
  br i1 %i.bi, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.h, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.15.1223, %.sroa.23.1222
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.0158225, ptr %.sroa.15.1223, align 4, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.15.1223, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.bk = ptrtoint ptr %.sroa.15.1223 to i64
  %i.bl = ptrtoint ptr %.sroa.0119.1227 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775804
  br i1 %i.bn, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp170

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bo = ashr exact i64 %i.bm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 2305843009213693951)
  %i.bs = select i1 %i.bq, i64 2305843009213693951, i64 %i.br ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i74)
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #19
          to label %.noexc75 unwind label %.loopexit169 ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store i32 %.0158225, ptr %i.bv, align 4, !tbaa !19
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %.noexc75
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %.sroa.0119.1227, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %.noexc75
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0119.1227, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1227, i64 noundef %i.bm) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.i, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.23.2 = phi ptr [ %.sroa.23.1222, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.1222, %bb.i ] ; 9 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.1223, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.bx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bj, %bb.i ] ; 7 uses
  %.sroa.0119.2 = phi ptr [ %.sroa.0119.1227, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.bu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0119.1227, %bb.i ] ; 14 uses
  %i.bz = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.092.0226)
          to label %bb.n unwind label %.loopexit169 ; 2 uses

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke { double, double } %i.cc(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, double noundef 1.000000e+00)
          to label %bb.o unwind label %.loopexit169

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.092.0226, i64 8 ; 6 uses
  %i.cf = add nuw nsw i32 %.0158225, 1
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !16
  %.not161 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not161, label %._crit_edge, label %.lr.ph, !llvm.loop !52

.loopexit169:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.23.3.ph = phi ptr [ %.sroa.15.1223, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.23.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.23.2, %bb.n ]
  %.sroa.0119.3.ph = phi ptr [ %.sroa.0119.1227, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0119.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0119.2, %bb.n ]
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp170:                            ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.sroa.0119.1.lcssa339 = phi ptr [ %.sroa.0119.2, %._crit_edge ], [ %.sroa.0119.0256, %bb.e ] ; 3 uses
  %.sroa.15.1.lcssa338 = phi ptr [ %.sroa.15.2, %._crit_edge ], [ %spec.select, %bb.e ] ; 2 uses
  %.sroa.23.1.lcssa335 = phi ptr [ %.sroa.23.2, %._crit_edge ], [ %.sroa.23.0251, %bb.e ] ; 3 uses
  %i.ch = phi ptr [ %i.ce, %._crit_edge ], [ %i.ae, %bb.e ]
  %i.ci = trunc i64 %.0152258 to i32
  %i.cj = and i32 %i.ci, 1
  %i.ck = lshr i64 %.0152258, 1                   ; 2 uses
  %i.cl = add nuw nsw i32 %i.cj, 1
  %i.cm = shl i32 %.0154257, %i.cl                ; 2 uses
  %i.cn = lshr i32 %i.cm, 3
  %i.co = or i32 %i.cn, %i.cm
  %i.cp = and i32 %i.co, 7                        ; 3 uses
  %i.cq = load ptr, ptr %.sroa.0100.0252, align 8, !tbaa !16 ; 2 uses
  %.not162246 = icmp eq ptr %i.cq, %i.ch
  br i1 %.not162246, label %.loopexit, label %.lr.ph249

.lr.ph249:                                        ; preds = %._crit_edge.thread, %bb.p
  %.sroa.082.0247 = phi ptr [ %i.ct, %bb.p ], [ %i.cq, %._crit_edge.thread ] ; 2 uses
  %i.cr = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.082.0247)
          to label %bb.p unwind label %.loopexit163

bb.p:                                             ; preds = %.lr.ph249
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cp, ptr %i.cs, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.082.0247, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !16
  %.not162 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not162, label %.loopexit, label %.lr.ph249, !llvm.loop !53

bb.q:                                             ; preds = %._crit_edge
  %i.cv = ptrtoint ptr %.sroa.15.2 to i64
  %i.cw = ptrtoint ptr %.sroa.0119.2 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4
  br i1 %i.cy, label %bb.r, label %bb.al

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cz = trunc i64 %.0152258 to i32              ; 2 uses
  %i.da = and i32 %i.cz, 1
  %i.db = add nuw nsw i32 %i.da, 1
  %i.dc = shl i32 %.0154257, %i.db                ; 2 uses
  %i.dd = lshr i32 %i.dc, 3
  %i.de = or i32 %i.dd, %i.dc
  %i.df = and i32 %i.de, 7                        ; 5 uses
  store i32 %i.df, ptr %i.a, align 4, !tbaa !14
  store i32 7, ptr %i.k, align 4, !tbaa !14
  %i.dg = lshr i32 %i.cz, 1
  %i.dh = and i32 %i.dg, 1
  %i.di = lshr i64 %.0152258, 2
  %i.dj = add nuw nsw i32 %i.dh, 1
  %i.dk = shl nuw nsw i32 %i.df, %i.dj            ; 2 uses
  %i.dl = lshr i32 %i.dk, 3
  %.masked = and i32 %i.dk, 6
  %i.dm = or i32 %i.dl, %.masked                  ; 4 uses
  store i32 %i.dm, ptr %i.l, align 4, !tbaa !14
  %i.dn = load i32, ptr %.sroa.0119.2, align 4, !tbaa !19 ; 2 uses
  %i.do = load ptr, ptr %.sroa.0100.0252, align 8, !tbaa !24 ; 3 uses
  %i.dp = ptrtoint ptr %i.ce to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3                 ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, 2
  br i1 %i.dt, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.du = trunc i64 %i.ds to i32                  ; 4 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph245, label %.loopexit164.a

.lr.ph245:                                        ; preds = %bb.s, %bb.t
  %.039243 = phi i32 [ %i.ej, %bb.t ], [ 0, %bb.s ] ; 3 uses
  %i.dw = mul nuw nsw i32 %.039243, 3
  %i.dx = add nuw nsw i32 %i.dw, 1
  %i.dy = udiv i32 %i.dx, %i.du
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr [4 x i8], ptr %i.a, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !14
  %i.ec = add nsw i32 %.039243, %i.dn
  %i.ed = srem i32 %i.ec, %i.du
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load ptr, ptr %.sroa.0100.0252, align 8, !tbaa !24
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph245
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.eb, ptr %i.ei, align 8, !tbaa !22
  %i.ej = add nuw nsw i32 %.039243, 1             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7msdfgen18edgeColoringSimpleERNS_5ShapeEdy:bb.a
  switch i32 %i.hx, label %bb.aq [
    i32 4, label %bb.ap
    i32 2, label %bb.ap
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  %i.hy = xor i32 %i.hx, 7
  br label %_ZN7msdfgenL11switchColorERNS_9EdgeColorERyS0_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hz = trunc i64 %.1153232 to i32
  %i.ia = and i32 %i.hz, 1
  %i.ib = lshr i64 %.1153232, 1
  %i.ic = add nuw nsw i32 %i.ia, 1
  %i.id = shl nuw nsw i32 %.1155231, %i.ic        ; 2 uses
  %i.ie = lshr i32 %i.id, 3
  %i.if = or i32 %i.ie, %i.id
  %i.ig = and i32 %i.if, 7
  br label %_ZN7msdfgenL11switchColorERNS_9EdgeColorERyS0_.exit

.loopexit163:                                     ; preds = %.lr.ph249
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZN7msdfgenL11switchColorERNS_9EdgeColorERyS0_.exit
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph, %bb.g
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN7msdfgenL11switchColorERNS_9EdgeColorERyS0_.exit: ; preds = %bb.aq, %bb.ap, %bb.an, %bb.am
  %.2156 = phi i32 [ %.1155231, %bb.am ], [ %.1155231, %bb.an ], [ %i.hy, %bb.ap ], [ %i.ig, %bb.aq ] ; 3 uses
  %.2 = phi i64 [ %.1153232, %bb.am ], [ %.1153232, %bb.an ], [ %.1153232, %bb.ap ], [ %i.ib, %bb.aq ] ; 2 uses
  %.1 = phi i32 [ %.037233, %bb.am ], [ %.037233, %bb.an ], [ %i.hp, %bb.ap ], [ %i.hp, %bb.aq ]
  %i.ih = sext i32 %i.ho to i64
  %i.ii = load ptr, ptr %.sroa.0100.0252, align 8, !tbaa !24
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ih
  %i.ik = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ij)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit

bb.ar:                                            ; preds = %_ZN7msdfgenL11switchColorERNS_9EdgeColorERyS0_.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i32 %.2156, ptr %i.il, align 8, !tbaa !22
  %i.im = add nuw nsw i32 %.0234, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.im, %i.hc
  br i1 %exitcond.not, label %.loopexit, label %bb.am, !llvm.loop !56

.loopexit:                                        ; preds = %bb.ar, %bb.p, %bb.al, %._crit_edge.thread, %.loopexit164.a, %bb.c
  %.sroa.23.6 = phi ptr [ %.sroa.23.0251, %bb.c ], [ %.sroa.23.1.lcssa335, %._crit_edge.thread ], [ %.sroa.23.2, %.loopexit164.a ], [ %.sroa.23.2, %bb.al ], [ %.sroa.23.1.lcssa335, %bb.p ], [ %.sroa.23.2, %bb.ar ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.0255, %bb.c ], [ %.sroa.15.1.lcssa338, %._crit_edge.thread ], [ %.sroa.15.2, %.loopexit164.a ], [ %.sroa.15.2, %bb.al ], [ %.sroa.15.1.lcssa338, %bb.p ], [ %.sroa.15.2, %bb.ar ]
  %.sroa.0119.6 = phi ptr [ %.sroa.0119.0256, %bb.c ], [ %.sroa.0119.1.lcssa339, %._crit_edge.thread ], [ %.sroa.0119.2, %.loopexit164.a ], [ %.sroa.0119.2, %bb.al ], [ %.sroa.0119.1.lcssa339, %bb.p ], [ %.sroa.0119.2, %bb.ar ] ; 4 uses
  %.3157 = phi i32 [ %.0154257, %bb.c ], [ %i.cp, %._crit_edge.thread ], [ %i.dm, %.loopexit164.a ], [ %i.hk, %bb.al ], [ %i.cp, %bb.p ], [ %.2156, %bb.ar ]
  %.3 = phi i64 [ %.0152258, %bb.c ], [ %i.ck, %._crit_edge.thread ], [ %i.di, %.loopexit164.a ], [ %i.hf, %bb.al ], [ %i.ck, %bb.p ], [ %.2, %bb.ar ]
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0100.0252, i64 24 ; 2 uses
  %i.io = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not159 = icmp eq ptr %i.in, %i.io
  br i1 %.not159, label %._crit_edge261, label %bb.c, !llvm.loop !57

.loopexit.split-lp:                               ; preds = %.loopexit163, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit169, %.loopexit.split-lp170, %bb.f, %bb.ak
  %.sroa.23.7 = phi ptr [ %.sroa.15.1223, %.loopexit.split-lp170 ], [ %.sroa.23.0251, %bb.f ], [ %.sroa.23.2, %bb.ak ], [ %.sroa.23.3.ph, %.loopexit169 ], [ %.sroa.23.1.lcssa335, %.loopexit163 ], [ %.sroa.23.2, %.loopexit.split-lp.loopexit ], [ %.sroa.23.1222, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0119.7 = phi ptr [ %.sroa.0119.1227, %.loopexit.split-lp170 ], [ %.sroa.0119.0256, %bb.f ], [ %.sroa.0119.2, %bb.ak ], [ %.sroa.0119.3.ph, %.loopexit169 ], [ %.sroa.0119.1.lcssa339, %.loopexit163 ], [ %.sroa.0119.2, %.loopexit.split-lp.loopexit ], [ %.sroa.0119.1227, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn63.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp170 ], [ %i.ah, %bb.f ], [ %.pn58.pn, %bb.ak ], [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit, %.loopexit163 ], [ %lpad.loopexit166, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i80 = icmp eq ptr %.sroa.0119.7, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIiSaIiEED2Ev.exit81, label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp
  %i.ip = ptrtoint ptr %.sroa.23.7 to i64
  %i.iq = ptrtoint ptr %.sroa.0119.7 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.7, i64 noundef %i.ir) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit81

_ZNSt6vectorIiSaIiEED2Ev.exit81:                  ; preds = %.loopexit.split-lp, %bb.as
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
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not247358 = icmp eq ptr %i.d, %i.f
  br i1 %.not247358, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.a
  %i.g = urem i64 %2, 3
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7msdfgenL9initColorERyE6colors, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = udiv i64 %2, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

._crit_edge369:                                   ; preds = %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.0189.5, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge369
  %i.r = ptrtoint ptr %.sroa.38.5 to i64
  %i.s = ptrtoint ptr %.sroa.0189.5 to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0189.5, i64 noundef %i.t) #17
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EED2Ev.exit: ; preds = %bb.a, %._crit_edge369, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph368, %.loopexit
  %.0236366 = phi i64 [ %i.j, %.lr.ph368 ], [ %.3239, %.loopexit ] ; 7 uses
  %.0241365 = phi i32 [ %i.i, %.lr.ph368 ], [ %.7, %.loopexit ] ; 4 uses
  %.sroa.0189.0364 = phi ptr [ null, %.lr.ph368 ], [ %.sroa.0189.5, %.loopexit ] ; 6 uses
  %.sroa.29.0363 = phi ptr [ null, %.lr.ph368 ], [ %.sroa.29.3, %.loopexit ] ; 3 uses
  %.sroa.38.0362 = phi ptr [ null, %.lr.ph368 ], [ %.sroa.38.5, %.loopexit ] ; 4 uses
  %.sroa.0170.0359 = phi ptr [ %i.d, %.lr.ph368 ], [ %i.lm, %.loopexit ] ; 13 uses
  %i.u = load ptr, ptr %.sroa.0170.0359, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0170.0359, i64 8 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit: ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.29.0363, %.sroa.0189.0364
  %spec.select246 = select i1 %.not.i.i, ptr %.sroa.29.0363, ptr %.sroa.0189.0364 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.z = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke { double, double } %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.z, double noundef 1.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %.sroa.0170.0359, align 8, !tbaa !16 ; 3 uses
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !16
  %.not249313 = icmp eq ptr %i.ae, %i.af
  br i1 %.not249313, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.ag = icmp eq ptr %.sroa.0189.2, %.sroa.29.2
  br i1 %i.ag, label %._crit_edge.thread, label %bb.t

bb.f:                                             ; preds = %bb.d, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE5clearEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph:                                           ; preds = %bb.e, %bb.r
  %.081320 = phi i32 [ %i.dc, %bb.r ], [ 0, %bb.e ] ; 3 uses
  %.095319 = phi double [ %i.cv, %bb.r ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.0189.1318 = phi ptr [ %.sroa.0189.2, %bb.r ], [ %.sroa.0189.0364, %bb.e ] ; 8 uses
  %.sroa.29.1317 = phi ptr [ %.sroa.29.2, %bb.r ], [ %spec.select246, %bb.e ] ; 10 uses
  %.sroa.0162.0316 = phi ptr [ %i.db, %bb.r ], [ %i.ae, %bb.e ] ; 4 uses
  %.pn315 = phi { double, double } [ %i.da, %bb.r ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.38.1314 = phi ptr [ %.sroa.38.2, %bb.r ], [ %.sroa.38.0362, %bb.e ] ; 5 uses
  %.sroa.0167.0 = extractvalue { double, double } %.pn315, 0 ; 3 uses
  %.sroa.6168.0 = extractvalue { double, double } %.pn315, 1 ; 3 uses
  %i.ai = fmul double %.sroa.6168.0, %.sroa.6168.0
  %i.aj = call double @llvm.fmuladd.f64(double %.sroa.0167.0, double %.sroa.0167.0, double %i.ai)
  %i.ak = call noundef double @sqrt(double noundef %i.aj) #16 ; 3 uses
  %i.al = fcmp une double %i.ak, 0.000000e+00     ; 2 uses
  %i.am = fdiv double %.sroa.0167.0, %i.ak
  %i.an = fdiv double %.sroa.6168.0, %i.ak
  %.sroa.3.1.i = select i1 %i.al, double %i.an, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.al, double %i.am, double 0.000000e+00 ; 2 uses
  %i.ao = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0162.0316)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.g:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke { double, double } %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, double noundef 0.000000e+00)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.at = extractvalue { double, double } %i.as, 0 ; 3 uses
  %i.au = extractvalue { double, double } %i.as, 1 ; 3 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.av)
  %i.ax = call noundef double @sqrt(double noundef %i.aw) #16 ; 3 uses
  %i.ay = fcmp une double %i.ax, 0.000000e+00     ; 2 uses
  %i.az = fdiv double %i.at, %i.ax
  %i.ba = fdiv double %i.au, %i.ax
  %.sroa.3.1.i121 = select i1 %i.ay, double %i.ba, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i122 = select i1 %i.ay, double %i.az, double 0.000000e+00 ; 2 uses
  %i.bb = fmul double %.sroa.3.1.i, %.sroa.3.1.i121
  %i.bc = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i122, double %i.bb)
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.h
  %i.be = fneg double %.sroa.0.1.i122
  %i.bf = fmul double %.sroa.3.1.i, %i.be
  %i.bg = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i121, double %i.bf)
  %i.bh = call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.c
  br i1 %i.bi, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %bb.n

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.h, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.29.1317, %.sroa.38.1314
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.081320, ptr %.sroa.29.1317, align 8, !tbaa !19
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.1317, i64 8
  store double %.095319, ptr %.sroa.6146.0..sroa_idx, align 8, !tbaa !32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.1317, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !69
  %.sroa.8152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.1317, i64 20
  store i32 0, ptr %.sroa.8152.0..sroa_idx, align 4, !tbaa !14
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.bj = ptrtoint ptr %.sroa.29.1317 to i64
  %i.bk = ptrtoint ptr %.sroa.0189.1318 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.k, label %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bn = sdiv exact i64 %i.bl, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 384307168202282325)
  %i.br = select i1 %i.bp, i64 384307168202282325, i64 %i.bq ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #19
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 5 uses
  store i32 %.081320, ptr %i.bu, align 8, !tbaa !19
  %.sroa.6146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store double %.095319, ptr %.sroa.6146.0..sroa_idx147, align 8, !tbaa !32
  %.sroa.7.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx149, align 8, !tbaa !69
  %.sroa.8152.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 0, ptr %.sroa.8152.0..sroa_idx153, align 4, !tbaa !14
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.l, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %.noexc126
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %.sroa.0189.1318, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %.noexc126
  %.not.i17.i.i = icmp eq ptr %.sroa.0189.1318, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0189.1318, i64 noundef %i.bl) #17
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.br
  br label %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  %.sroa.38.7 = phi ptr [ %i.bw, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.1314, %bb.i ]
  %.pn251 = phi ptr [ %i.bu, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.29.1317, %bb.i ]
  %.sroa.0189.7 = phi ptr [ %i.bt, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0189.1318, %bb.i ]
  %.sroa.29.5 = getelementptr inbounds nuw i8, ptr %.pn251, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.38.2 = phi ptr [ %.sroa.38.7, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.38.1314, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ] ; 7 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.5, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.29.1317, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ] ; 7 uses
  %.sroa.0189.2 = phi ptr [ %.sroa.0189.7, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0189.1318, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ] ; 22 uses
  %.196 = phi double [ 0.000000e+00, %_ZNSt6vectorIN7msdfgen25EdgeColoringInkTrapCornerESaIS1_EE9push_backERKS1_.exit ], [ %.095319, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ]
  %i.bx = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0162.0316)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp ; 10 uses

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke { double, double } %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, double noundef 0.000000e+00)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !58 ; 2 uses

.noexc127:                                        ; preds = %bb.o
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke { double, double } %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, double noundef 2.500000e-01)
          to label %.noexc128 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !58 ; 2 uses

.noexc128:                                        ; preds = %.noexc127
  %4 = extractvalue { double, double } %i.cb, 1
  %5 = extractvalue { double, double } %i.cb, 0
  %6 = extractvalue { double, double } %i.cf, 0   ; 2 uses
  %7 = extractvalue { double, double } %i.cf, 1   ; 2 uses
  %8 = fsub double %6, %5                         ; 2 uses
  %9 = fsub double %7, %4                         ; 2 uses
  %10 = fmul double %9, %9
  %11 = call double @llvm.fmuladd.f64(double %8, double %8, double %10)
  %12 = call noundef double @sqrt(double noundef %11) #16
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke { double, double } %i.ci(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, double noundef 5.000000e-01)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !58 ; 2 uses

.noexc129:                                        ; preds = %.noexc128
  %13 = extractvalue { double, double } %i.cj, 0  ; 2 uses
  %14 = extractvalue { double, double } %i.cj, 1  ; 2 uses
  %15 = fsub double %13, %6                       ; 2 uses
  %16 = fsub double %14, %7                       ; 2 uses
  %17 = fmul double %16, %16
  %18 = call double @llvm.fmuladd.f64(double %15, double %15, double %17)
  %19 = call noundef double @sqrt(double noundef %18) #16
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke { double, double } %i.cm(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, double noundef 7.500000e-01)
          to label %.noexc130 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !58 ; 2 uses

.noexc130:                                        ; preds = %.noexc129
  %20 = extractvalue { double, double } %i.cn, 0  ; 2 uses
  %21 = extractvalue { double, double } %i.cn, 1  ; 2 uses
  %22 = fsub double %20, %13                      ; 2 uses
  %23 = fsub double %21, %14                      ; 2 uses
  %24 = fmul double %23, %23
  %25 = call double @llvm.fmuladd.f64(double %22, double %22, double %24)
  %26 = call noundef double @sqrt(double noundef %25) #16
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke { double, double } %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, double noundef 1.000000e+00)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !58 ; 2 uses

bb.p:                                             ; preds = %.noexc130
  %27 = fadd double %12, 0.000000e+00
  %28 = fadd double %27, %19
  %29 = fadd double %28, %26
  %i.cs = extractvalue { double, double } %i.cr, 0
  %i.ct = extractvalue { double, double } %i.cr, 1
  %30 = fsub double %i.cs, %20                    ; 2 uses
  %31 = fsub double %i.ct, %21                    ; 2 uses
  %32 = fmul double %31, %31
  %33 = call double @llvm.fmuladd.f64(double %30, double %30, double %32)
  %34 = call noundef double @sqrt(double noundef %33) #16
  %i.cu = fadd double %29, %34
  %i.cv = fadd double %.196, %i.cu                ; 2 uses
  %i.cw = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0162.0316)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke { double, double } %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %i.cw, double noundef 1.000000e+00)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0162.0316, i64 8 ; 6 uses
  %i.dc = add nuw nsw i32 %.081320, 1
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !16
  %.not249.a = icmp eq ptr %i.db, %i.dd
  br i1 %.not249.a, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.sroa.0189.1.lcssa473 = phi ptr [ %.sroa.0189.2, %._crit_edge ], [ %.sroa.0189.0364, %bb.e ] ; 3 uses
  %.sroa.29.1.lcssa472 = phi ptr [ %.sroa.29.2, %._crit_edge ], [ %spec.select246, %bb.e ] ; 2 uses
  %.sroa.38.1.lcssa469 = phi ptr [ %.sroa.38.2, %._crit_edge ], [ %.sroa.38.0362, %bb.e ] ; 3 uses
  %i.de = phi ptr [ %i.db, %._crit_edge ], [ %i.ae, %bb.e ]
  %i.df = trunc i64 %.0236366 to i32
  %i.dg = and i32 %i.df, 1
  %i.dh = lshr i64 %.0236366, 1                   ; 2 uses
  %i.di = add nuw nsw i32 %i.dg, 1
  %i.dj = shl i32 %.0241365, %i.di                ; 2 uses
  %i.dk = lshr i32 %i.dj, 3
  %i.dl = or i32 %i.dk, %i.dj
  %i.dm = and i32 %i.dl, 7                        ; 3 uses
  %i.dn = load ptr, ptr %.sroa.0170.0359, align 8, !tbaa !16 ; 2 uses
  %.not250354 = icmp eq ptr %i.dn, %i.de
  br i1 %.not250354, label %.loopexit, label %.lr.ph357

.lr.ph357:                                        ; preds = %._crit_edge.thread, %bb.s
  %.sroa.0139.0355 = phi ptr [ %i.dq, %bb.s ], [ %i.dn, %._crit_edge.thread ] ; 2 uses
  %i.do = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0139.0355)
          to label %bb.s unwind label %.loopexit252

bb.s:                                             ; preds = %.lr.ph357
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %i.dm, ptr %i.dp, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0139.0355, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.v, align 8, !tbaa !16
  %.not250 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not250, label %.loopexit, label %.lr.ph357, !llvm.loop !60

bb.t:                                             ; preds = %._crit_edge
  %i.ds = ptrtoint ptr %.sroa.29.2 to i64
  %i.dt = ptrtoint ptr %.sroa.0189.2 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = icmp eq i64 %i.du, 24
  br i1 %i.dv, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.dw = trunc i64 %.0236366 to i32              ; 2 uses
  %i.dx = and i32 %i.dw, 1
  %i.dy = add nuw nsw i32 %i.dx, 1
  %i.dz = shl i32 %.0241365, %i.dy                ; 2 uses
  %i.ea = lshr i32 %i.dz, 3
  %i.eb = or i32 %i.ea, %i.dz
  %i.ec = and i32 %i.eb, 7                        ; 5 uses
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !14
  store i32 7, ptr %i.k, align 4, !tbaa !14
  %i.ed = lshr i32 %i.dw, 1
  %i.ee = and i32 %i.ed, 1
  %i.ef = lshr i64 %.0236366, 2
  %i.eg = add nuw nsw i32 %i.ee, 1
  %i.eh = shl nuw nsw i32 %i.ec, %i.eg            ; 2 uses
  %i.ei = lshr i32 %i.eh, 3
  %.masked = and i32 %i.eh, 6
  %i.ej = or i32 %i.ei, %.masked                  ; 4 uses
  store i32 %i.ej, ptr %i.l, align 4, !tbaa !14
  %i.ek = load i32, ptr %.sroa.0189.2, align 8, !tbaa !71 ; 2 uses
  %i.el = load ptr, ptr %.sroa.0170.0359, align 8, !tbaa !24 ; 3 uses
  %i.em = ptrtoint ptr %i.db to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 3                 ; 2 uses
  %i.eq = icmp ugt i64 %i.ep, 2
  br i1 %i.eq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.er = trunc i64 %i.ep to i32                  ; 4 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph353, label %.loopexit253

.lr.ph353:                                        ; preds = %bb.v, %bb.w
  %.080351 = phi i32 [ %i.fg, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.et = mul nuw nsw i32 %.080351, 3
  %i.eu = add nuw nsw i32 %i.et, 1
  %i.ev = udiv i32 %i.eu, %i.er
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr [4 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = add nsw i32 %.080351, %i.ek
  %i.fa = srem i32 %i.ez, %i.er
  %i.fb = sext i32 %i.fa to i64
  %i.fc = load ptr, ptr %.sroa.0170.0359, align 8, !tbaa !24
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.lr.ph353
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.ey, ptr %i.ff, align 8, !tbaa !22
  %i.fg = add nuw nsw i32 %.080351, 1             ; 2 uses
  %exitcond431.not = icmp eq i32 %i.fg, %i.er
  br i1 %exitcond431.not, label %.loopexit253, label %.lr.ph353, !llvm.loop !61

bb.x:                                             ; preds = %.lr.ph353
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.y:                                             ; preds = %bb.u
  %.not105 = icmp eq ptr %i.db, %i.el
  br i1 %.not105, label %.loopexit253, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.fi = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %bb.aa unwind label %bb.af     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.fj = mul nsw i32 %i.ek, 3                    ; 4 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fk ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %i.fn = getelementptr i8, ptr %i.fl, i64 16
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(12) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fr = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.fs = load ptr, ptr %.sroa.0170.0359, align 8, !tbaa !24 ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp ugt i64 %i.fv, 8
  br i1 %i.fw, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fy = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.fz = sub nsw i32 3, %i.fj
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ga
  %i.gc = sub nsw i32 4, %i.fj
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gd
  %i.gf = sub nsw i32 5, %i.fj
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gg
  %i.gi = load ptr, ptr %i.fy, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 120
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(12) %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 %i.ec, ptr %i.gm, align 8, !tbaa !22
  %i.gn = load ptr, ptr %i.b, align 16, !tbaa !27 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %i.ec, ptr %i.go, align 8, !tbaa !22
  %i.gp = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i32 7, ptr %i.gq, align 8, !tbaa !22
  %i.gr = load ptr, ptr %i.n, align 16, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 7, ptr %i.gs, align 8, !tbaa !22
  %i.gt = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i32 %i.ej, ptr %i.gu, align 8, !tbaa !22
  %i.gv = load ptr, ptr %i.q, align 16, !tbaa !27
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.gx = load ptr, ptr %i.b, align 16, !tbaa !27 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 %i.ec, ptr %i.gy, align 8, !tbaa !22
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 7, ptr %i.ha, align 8, !tbaa !22
end_hunk_1
begin_hunk_2_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
  %i.c = alloca [7 x ptr], align 16               ; 19 uses
  %4 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %i.d = tail call double @sin(double noundef %1) #16
  %i.e = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %.not6771320 = icmp eq ptr %i.e, %i.g
  br i1 %.not6771320, label %._crit_edge1334.thread, label %.lr.ph1333

.lr.ph1333:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br label %bb.f

._crit_edge1334:                                  ; preds = %.loopexit716
  %i.m = ptrtoint ptr %.sroa.33.7 to i64
  %i.n = ptrtoint ptr %.sroa.0601.11 to i64       ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, 3                         ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.24.7, %.sroa.43.11
  br i1 %.not.i.i, label %._crit_edge1334.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge1334
  store i32 %i.q, ptr %.sroa.24.7, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

._crit_edge1334.thread:                           ; preds = %bb.a, %._crit_edge1334
  %i.r = phi i32 [ %i.q, %._crit_edge1334 ], [ 0, %bb.a ] ; 2 uses
  %i.s = phi i64 [ %i.p, %._crit_edge1334 ], [ 0, %bb.a ]
  %i.t = phi i64 [ %i.n, %._crit_edge1334 ], [ 0, %bb.a ]
  %.sroa.0601.0.lcssa1865 = phi ptr [ %.sroa.0601.11, %._crit_edge1334 ], [ null, %bb.a ] ; 2 uses
  %.sroa.67.0.lcssa1862.a = phi ptr [ %.sroa.67.11, %._crit_edge1334 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0568.0.lcssa1860 = phi ptr [ %.sroa.0568.11, %._crit_edge1334 ], [ null, %bb.a ] ; 5 uses
  %.sroa.43.0.lcssa1859 = phi ptr [ %.sroa.43.11, %._crit_edge1334 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0551.0.lcssa1857 = phi ptr [ %.sroa.0551.7, %._crit_edge1334 ], [ null, %bb.a ] ; 2 uses
  %.sroa.23.0.lcssa1854.a = phi ptr [ %.sroa.23.7, %._crit_edge1334 ], [ null, %bb.a ] ; 2 uses
  %i.u = ptrtoint ptr %.sroa.43.0.lcssa1859 to i64
  %i.v = ptrtoint ptr %.sroa.0568.0.lcssa1860 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.c, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge1334.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp753

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %._crit_edge1334.thread
  %i.y = ashr exact i64 %i.w, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 2305843009213693951)
  %i.ac = select i1 %i.aa, i64 2305843009213693951, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #19
          to label %.noexc191 unwind label %.loopexit.split-lp753 ; 4 uses

.noexc191:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store i32 %i.r, ptr %i.af, align 4, !tbaa !19
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.d:                                             ; preds = %.noexc191
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %.sroa.0568.0.lcssa1860, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.d, %.noexc191
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0568.0.lcssa1860, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0568.0.lcssa1860, i64 noundef %i.w) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.f:                                             ; preds = %.lr.ph1333, %.loopexit716
  %.sroa.0601.01331 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.0601.11, %.loopexit716 ] ; 29 uses
  %.sroa.33.01330 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.33.7, %.loopexit716 ] ; 18 uses
  %.sroa.67.01329 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.67.11, %.loopexit716 ] ; 21 uses
  %.sroa.0568.01328 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.0568.11, %.loopexit716 ] ; 11 uses
  %.sroa.24.01327 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.24.7, %.loopexit716 ] ; 6 uses
  %.sroa.43.01326 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.43.11, %.loopexit716 ] ; 7 uses
  %.sroa.0551.01325 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.0551.7, %.loopexit716 ] ; 6 uses
  %.sroa.15.01324 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.15.3, %.loopexit716 ] ; 3 uses
  %.sroa.23.01323 = phi ptr [ null, %.lr.ph1333 ], [ %.sroa.23.7, %.loopexit716 ] ; 4 uses
  %.sroa.0531.01321 = phi ptr [ %i.e, %.lr.ph1333 ], [ %i.px, %.loopexit716 ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.0531.01321, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0531.01321, i64 8 ; 13 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %.loopexit716, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.f
  %.not.i.i192 = icmp eq ptr %.sroa.15.01324, %.sroa.0551.01325
  %spec.select676 = select i1 %.not.i.i192, ptr %.sroa.15.01324, ptr %.sroa.0551.01325 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.an = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.g unwind label %.loopexit752 ; 2 uses

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke { double, double } %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %i.an, double noundef 1.000000e+00)
          to label %bb.h unwind label %.loopexit752

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %.sroa.0531.01321, align 8, !tbaa !16 ; 2 uses
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not6931266 = icmp eq ptr %i.as, %i.at
  br i1 %.not6931266, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.h
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.01323, %bb.h ], [ %.sroa.23.2, %bb.v ] ; 18 uses
  %.sroa.15.1.lcssa = phi ptr [ %spec.select676, %bb.h ], [ %.sroa.15.2, %bb.v ] ; 10 uses
  %.sroa.0551.1.lcssa = phi ptr [ %.sroa.0551.01325, %bb.h ], [ %.sroa.0551.2, %bb.v ] ; 23 uses
  %i.au = ptrtoint ptr %.sroa.33.01330 to i64
  %i.av = ptrtoint ptr %.sroa.0601.01331 to i64   ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 11 uses
  %i.ax = ashr exact i64 %i.aw, 3                 ; 7 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %.not.i.i193 = icmp eq ptr %.sroa.24.01327, %.sroa.43.01326
  br i1 %.not.i.i193, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store i32 %i.ay, ptr %.sroa.24.01327, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202

bb.j:                                             ; preds = %._crit_edge
  %i.az = ptrtoint ptr %.sroa.24.01327 to i64
  %i.ba = ptrtoint ptr %.sroa.0568.01328 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc200 unwind label %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp

.noexc200:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194: ; preds = %bb.j
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i195, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i.i.i.i196 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i196)
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #19
          to label %.noexc201 unwind label %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i32 %i.ay, ptr %i.bk, align 4, !tbaa !19
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197

bb.l:                                             ; preds = %.noexc201
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %.sroa.0568.01328, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197: ; preds = %bb.l, %.noexc201
  %.not.i17.i.i.i198 = icmp eq ptr %.sroa.0568.01328, null
  br i1 %.not.i17.i.i.i198, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0568.01328, i64 noundef %i.bb) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i197
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202

.lr.ph:                                           ; preds = %bb.h, %bb.v
  %.sroa.0551.11272 = phi ptr [ %.sroa.0551.2, %bb.v ], [ %.sroa.0551.01325, %bb.h ] ; 9 uses
  %.sroa.15.11271 = phi ptr [ %.sroa.15.2, %bb.v ], [ %spec.select676, %bb.h ] ; 7 uses
  %.sroa.0522.01270 = phi ptr [ %i.dj, %bb.v ], [ %i.as, %bb.h ] ; 3 uses
  %.06551269 = phi i32 [ %i.dk, %bb.v ], [ 0, %bb.h ] ; 3 uses
  %.pn6911268 = phi { double, double } [ %i.di, %bb.v ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.23.11267 = phi ptr [ %.sroa.23.2, %bb.v ], [ %.sroa.23.01323, %bb.h ] ; 4 uses
  %.sroa.0529.0 = extractvalue { double, double } %.pn6911268, 0 ; 3 uses
  %.sroa.6.0 = extractvalue { double, double } %.pn6911268, 1 ; 3 uses
  %i.bn = fmul double %.sroa.6.0, %.sroa.6.0
  %i.bo = call double @llvm.fmuladd.f64(double %.sroa.0529.0, double %.sroa.0529.0, double %i.bn)
  %i.bp = call noundef double @sqrt(double noundef %i.bo) #16 ; 3 uses
  %i.bq = fcmp une double %i.bp, 0.000000e+00     ; 2 uses
  %i.br = fdiv double %.sroa.0529.0, %i.bp
  %i.bs = fdiv double %.sroa.6.0, %i.bp
  %.sroa.3.1.i = select i1 %i.bq, double %i.bs, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i = select i1 %i.bq, double %i.br, double 0.000000e+00 ; 2 uses
  %i.bt = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0522.01270)
          to label %bb.n unwind label %.loopexit742 ; 2 uses

bb.n:                                             ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke { double, double } %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, double noundef 0.000000e+00)
          to label %bb.o unwind label %.loopexit742 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.by = extractvalue { double, double } %i.bx, 0 ; 3 uses
  %i.bz = extractvalue { double, double } %i.bx, 1 ; 3 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.ca)
  %i.cc = call noundef double @sqrt(double noundef %i.cb) #16 ; 3 uses
  %i.cd = fcmp une double %i.cc, 0.000000e+00     ; 2 uses
  %i.ce = fdiv double %i.by, %i.cc
  %i.cf = fdiv double %i.bz, %i.cc
  %.sroa.3.1.i203 = select i1 %i.cd, double %i.cf, double 1.000000e+00 ; 2 uses
  %.sroa.0.1.i204 = select i1 %i.cd, double %i.ce, double 0.000000e+00 ; 2 uses
  %i.cg = fmul double %.sroa.3.1.i, %.sroa.3.1.i203
  %i.ch = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.0.1.i204, double %i.cg)
  %i.ci = fcmp ugt double %i.ch, 0.000000e+00
  br i1 %i.ci, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit:    ; preds = %bb.o
  %i.cj = fneg double %.sroa.0.1.i204
  %i.ck = fmul double %.sroa.3.1.i, %i.cj
  %i.cl = call noundef double @llvm.fmuladd.f64(double %.sroa.0.1.i, double %.sroa.3.1.i203, double %i.ck)
  %i.cm = call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fcmp ogt double %i.cm, %i.d
  br i1 %i.cn, label %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread: ; preds = %bb.o, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.not.i = icmp eq ptr %.sroa.15.11271, %.sroa.23.11267
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  store i32 %.06551269, ptr %.sroa.15.11271, align 4, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.15.11271, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit.thread
  %i.cp = ptrtoint ptr %.sroa.15.11271 to i64
  %i.cq = ptrtoint ptr %.sroa.0551.11272 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 6 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775804
  br i1 %i.cs, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc207 unwind label %.loopexit.split-lp748

.noexc207:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ct = ashr exact i64 %i.cr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 2305843009213693951)
  %i.cx = select i1 %i.cv, i64 2305843009213693951, i64 %i.cw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #19
          to label %.noexc208 unwind label %.loopexit747 ; 4 uses

.noexc208:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i32 %.06551269, ptr %i.da, align 4, !tbaa !19
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc208
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %.sroa.0551.11272, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc208
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0551.11272, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0551.11272, i64 noundef %i.cr) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cx
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.p, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit
  %.sroa.23.2 = phi ptr [ %.sroa.23.11267, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.dd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.23.11267, %bb.p ] ; 4 uses
  %.sroa.15.2 = phi ptr [ %.sroa.15.11271, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.co, %bb.p ] ; 2 uses
  %.sroa.0551.2 = phi ptr [ %.sroa.0551.11272, %_ZN7msdfgenL8isCornerERKNS_7Vector2ES2_d.exit ], [ %i.cz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0551.11272, %bb.p ] ; 4 uses
  %i.de = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0522.01270)
          to label %bb.u unwind label %.loopexit747 ; 2 uses

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke { double, double } %i.dh(ptr noundef nonnull align 8 dereferenceable(12) %i.de, double noundef 1.000000e+00)
          to label %bb.v unwind label %.loopexit747

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0522.01270, i64 8 ; 2 uses
  %i.dk = add nuw nsw i32 %.06551269, 1
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not693 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not693, label %._crit_edge, label %.lr.ph, !llvm.loop !78

.loopexit747:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.23.3.ph = phi ptr [ %.sroa.15.11271, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.23.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.23.2, %bb.u ]
  %.sroa.0551.3.ph = phi ptr [ %.sroa.0551.11272, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0551.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0551.2, %bb.u ]
  %lpad.loopexit749 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

.loopexit.split-lp748:                            ; preds = %bb.r
  %lpad.loopexit.split-lp750 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

_ZNSt6vectorIiSaIiEE9push_backEOi.exit202:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199, %bb.i
  %.sroa.43.14 = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.43.01326, %bb.i ] ; 26 uses
  %.pn694 = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.24.01327, %bb.i ] ; 3 uses
  %.sroa.0568.14 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i199 ], [ %.sroa.0568.01328, %bb.i ] ; 30 uses
  %.sroa.24.9 = getelementptr inbounds nuw i8, ptr %.pn694, i64 4 ; 11 uses
  %i.dm = icmp eq ptr %.sroa.0551.1.lcssa, %.sroa.15.1.lcssa
  br i1 %i.dm, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202
  %i.dn = load ptr, ptr %.sroa.0531.01321, align 8, !tbaa !16 ; 2 uses
  %i.do = load ptr, ptr %i.aj, align 8, !tbaa !16
  %.not6991310 = icmp eq ptr %i.dn, %i.do
  br i1 %.not6991310, label %.loopexit716, label %.lr.ph1316

.loopexit742:                                     ; preds = %bb.n, %.lr.ph
  %lpad.loopexit744 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i194, %bb.k
  %lpad.loopexit.split-lp2767 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp743

.lr.ph1316:                                       ; preds = %bb.w, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit
  %.sroa.0601.11314 = phi ptr [ %.sroa.0601.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.0601.01331, %bb.w ] ; 7 uses
  %.sroa.33.11313 = phi ptr [ %.sroa.33.8, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.33.01330, %bb.w ] ; 6 uses
  %.sroa.67.11312 = phi ptr [ %.sroa.67.13, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %.sroa.67.01329, %bb.w ] ; 3 uses
  %.sroa.0510.01311 = phi ptr [ %i.ee, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit ], [ %i.dn, %bb.w ] ; 2 uses
  %i.dp = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0510.01311)
          to label %bb.x unwind label %.loopexit717.a ; 2 uses

bb.x:                                             ; preds = %.lr.ph1316
  %.not.i.i209 = icmp eq ptr %.sroa.33.11313, %.sroa.67.11312
  br i1 %.not.i.i209, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.dp, ptr %.sroa.33.11313, align 8, !tbaa !27
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.dq = ptrtoint ptr %.sroa.33.11313 to i64
  %i.dr = ptrtoint ptr %.sroa.0601.11314 to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 6 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.aa, label %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc213 unwind label %.loopexit.split-lp718

.noexc213:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i210 = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i210, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.dy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #19
          to label %.noexc214 unwind label %.loopexit717.a ; 4 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store ptr %i.dp, ptr %i.eb, align 8, !tbaa !27
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.ab, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ab:                                            ; preds = %.noexc214
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr align 8 %.sroa.0601.11314, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ab, %.noexc214
  %.not.i17.i.i.i212 = icmp eq ptr %.sroa.0601.11314, null
  br i1 %.not.i17.i.i.i212, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0601.11314, i64 noundef %i.ds) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.y
  %.sroa.67.13 = phi ptr [ %i.ed, %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.67.11312, %bb.y ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a
.noexc343:                                        ; preds = %bb.dn
  unreachable

bb.do:                                            ; preds = %._crit_edge1350
  %i.ru = icmp slt i32 %i.rq, 2
  br i1 %i.ru, label %.lr.ph1364.preheader, label %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.do
  %i.rv = shl nuw nsw i64 %i.rs, 3
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #19
          to label %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.ed ; 2 uses

_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE11_M_allocateEm.exit.i
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rs
  br label %.lr.ph1364.preheader

.lr.ph1364.preheader:                             ; preds = %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.do
  %.sroa.0454.4 = phi ptr [ %i.rw, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.do ] ; 2 uses
  %.sroa.27.4 = phi ptr [ %i.rx, %_ZNSt12_Vector_baseIPKdSaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.do ]
  %wide.trip.count1763 = zext i32 %i.qh to i64    ; 2 uses
  br label %.lr.ph1364

.lr.ph1349:                                       ; preds = %.lr.ph1349.preheader, %.loopexit714
  %indvars.iv1748 = phi i64 [ 0, %.lr.ph1349.preheader ], [ %indvars.iv.next1749, %.loopexit714 ] ; 5 uses
  %indvars.iv1741 = phi i64 [ 1, %.lr.ph1349.preheader ], [ %indvars.iv.next1742, %.loopexit714 ] ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1748 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !34 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv1748
  store double -1.000000e+00, ptr %i.sa, align 8, !tbaa !32
  %indvars.iv.next1749 = add nuw nsw i64 %indvars.iv1748, 1 ; 4 uses
  %i.sb = icmp slt i64 %indvars.iv.next1749, %i.qp
  br i1 %i.sb, label %.lr.ph1347, label %.loopexit714

.lr.ph1347:                                       ; preds = %.lr.ph1349
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv1748
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv.next1749
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph1347, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit
  %i.se = phi ptr [ %i.rz, %.lr.ph1347 ], [ %i.xh, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ]
  %indvars.iv1743 = phi i64 [ %indvars.iv1741, %.lr.ph1347 ], [ %indvars.iv.next1744, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit ] ; 4 uses
  %i.sf = load i32, ptr %i.sc, align 4, !tbaa !19 ; 2 uses
  %i.sg = load i32, ptr %i.sd, align 4, !tbaa !19 ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv1743
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !19 ; 2 uses
  %indvars.iv.next1744 = add nuw nsw i64 %indvars.iv1743, 1 ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %indvars.iv.next1744
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !19 ; 2 uses
  %i.sl = icmp slt i32 %i.sf, %i.sg
  %i.sm = icmp slt i32 %i.si, %i.sk
  %or.cond.i = and i1 %i.sl, %i.sm
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

.preheader.preheader.i:                           ; preds = %bb.dp
  %i.sn = sext i32 %i.si to i64
  %i.so = sext i32 %i.sk to i64
  %i.sp = sext i32 %i.sf to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv29.i = phi i64 [ %i.sp, %.preheader.preheader.i ], [ %indvars.iv.next30.i, %._crit_edge.i ] ; 2 uses
  %.022.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.sq = fcmp une double %.022.i, 0.000000e+00
  br i1 %i.sq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.sr = getelementptr inbounds [8 x i8], ptr %.sroa.0601.0.lcssa1864, i64 %indvars.iv29.i
  br label %bb.dq

._crit_edge.i:                                    ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.022.i, %.preheader.i ], [ %i.xd, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next30.i to i32
  %exitcond.not.i = icmp eq i32 %i.sg, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, label %.preheader.i, !llvm.loop !87

bb.dq:                                            ; preds = %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.sn, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %.120.i = phi double [ %.022.i, %.lr.ph.i ], [ %i.xd, %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i ] ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !27 ; 14 uses
  %i.st = getelementptr inbounds [8 x i8], ptr %.sroa.0601.0.lcssa1864, i64 %indvars.iv.i
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !27 ; 14 uses
  %i.sv = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = invoke { double, double } %i.sx(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc345 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc345:                                        ; preds = %bb.dq
  %i.sz = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = invoke { double, double } %i.tb(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc346 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc346:                                        ; preds = %.noexc345
  %i.td = extractvalue { double, double } %i.sy, 1
  %i.te = extractvalue { double, double } %i.sy, 0
  %i.tf = extractvalue { double, double } %i.tc, 0
  %i.tg = extractvalue { double, double } %i.tc, 1
  %i.th = fcmp oeq double %i.te, %i.tf
  %i.ti = fcmp oeq double %i.td, %i.tg
  %i.tj = select i1 %i.th, i1 %i.ti, i1 false
  br i1 %i.tj, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dr

bb.dr:                                            ; preds = %.noexc346
  %i.tk = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = invoke { double, double } %i.tm(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc347 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc347:                                        ; preds = %bb.dr
  %i.to = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 40
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = invoke { double, double } %i.tq(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 1.000000e+00)
          to label %.noexc348 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc348:                                        ; preds = %.noexc347
  %i.ts = extractvalue { double, double } %i.tn, 1
  %i.tt = extractvalue { double, double } %i.tn, 0
  %i.tu = extractvalue { double, double } %i.tr, 0
  %i.tv = extractvalue { double, double } %i.tr, 1
  %i.tw = fcmp oeq double %i.tt, %i.tu
  %i.tx = fcmp oeq double %i.ts, %i.tv
  %i.ty = select i1 %i.tw, i1 %i.tx, i1 false
  br i1 %i.ty, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.ds

bb.ds:                                            ; preds = %.noexc348
  %i.tz = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = invoke { double, double } %i.ub(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 1.000000e+00)
          to label %.noexc349 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc349:                                        ; preds = %bb.ds
  %i.ud = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = invoke { double, double } %i.uf(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc350 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc350:                                        ; preds = %.noexc349
  %i.uh = extractvalue { double, double } %i.uc, 1
  %i.ui = extractvalue { double, double } %i.uc, 0
  %i.uj = extractvalue { double, double } %i.ug, 0
  %i.uk = extractvalue { double, double } %i.ug, 1
  %i.ul = fcmp oeq double %i.ui, %i.uj
  %i.um = fcmp oeq double %i.uh, %i.uk
  %i.un = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %i.un, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.dt

bb.dt:                                            ; preds = %.noexc350
  %i.uo = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 40
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = invoke { double, double } %i.uq(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 1.000000e+00)
          to label %.noexc351 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc351:                                        ; preds = %bb.dt
  %i.us = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = invoke { double, double } %i.uu(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 1.000000e+00)
          to label %.noexc352 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc352:                                        ; preds = %.noexc351
  %i.uw = extractvalue { double, double } %i.ur, 1
  %i.ux = extractvalue { double, double } %i.ur, 0
  %i.uy = extractvalue { double, double } %i.uv, 0
  %i.uz = extractvalue { double, double } %i.uv, 1
  %i.va = fcmp oeq double %i.ux, %i.uy
  %i.vb = fcmp oeq double %i.uw, %i.uz
  %i.vc = select i1 %i.va, i1 %i.vb, i1 false
  br i1 %i.vc, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %bb.du

bb.du:                                            ; preds = %.noexc352
  %i.vd = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load ptr, ptr %i.ve, align 8
  %i.vg = invoke { double, double } %i.vf(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef 0.000000e+00)
          to label %.noexc353 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc353:                                        ; preds = %bb.du
  %i.vh = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 40
  %i.vj = load ptr, ptr %i.vi, align 8
  %i.vk = invoke { double, double } %i.vj(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef 0.000000e+00)
          to label %.noexc354 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc354:                                        ; preds = %.noexc353
  %i.vl = extractvalue { double, double } %i.vg, 1
  %i.vm = extractvalue { double, double } %i.vg, 0
  %i.vn = extractvalue { double, double } %i.vk, 0
  %i.vo = extractvalue { double, double } %i.vk, 1
  %i.vp = fsub double %i.vm, %i.vn                ; 2 uses
  %i.vq = fsub double %i.vl, %i.vo                ; 2 uses
  %i.vr = fmul double %i.vq, %i.vq
  %i.vs = call double @llvm.fmuladd.f64(double %i.vp, double %i.vp, double %i.vr)
  %i.vt = call noundef double @sqrt(double noundef %i.vs) #16
  br label %bb.dv

bb.dv:                                            ; preds = %.noexc356, %.noexc354
  %.05560.i.i = phi double [ %i.vt, %.noexc354 ], [ %i.wj, %.noexc356 ] ; 2 uses
  %.05659.i.i = phi i32 [ 0, %.noexc354 ], [ %i.wk, %.noexc356 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.vu = uitofp nneg i32 %.05659.i.i to double
  %i.vv = fmul nnan double %i.vu, 6.250000e-02    ; 2 uses
  store double %i.vv, ptr %i.a, align 8, !tbaa !32
  %i.vw = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = invoke { double, double } %i.vy(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double noundef %i.vv)
          to label %.noexc355 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc355:                                        ; preds = %bb.dv
  %i.wa = extractvalue { double, double } %i.vz, 0
  %i.wb = extractvalue { double, double } %i.vz, 1
  %i.wc = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 64
  %i.we = load ptr, ptr %i.wd, align 8
  %i.wf = invoke { double, double } %i.we(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double %i.wa, double %i.wb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc356 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88

.noexc356:                                        ; preds = %.noexc355
  %i.wg = extractvalue { double, double } %i.wf, 0
  %i.wh = call double @llvm.fabs.f64(double %i.wg) ; 2 uses
  %i.wi = fcmp olt double %i.wh, %.05560.i.i
  %i.wj = select i1 %i.wi, double %i.wh, double %.05560.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.wk = add nuw nsw i32 %.05659.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.wk, 17
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.dv, !llvm.loop !89

.preheader.i.i:                                   ; preds = %.noexc356, %.noexc358
  %.162.i.i = phi double [ %i.xa, %.noexc358 ], [ %i.wj, %.noexc356 ] ; 2 uses
  %.05761.i.i = phi i32 [ %i.xb, %.noexc358 ], [ 0, %.noexc356 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.wl = uitofp nneg i32 %.05761.i.i to double
  %i.wm = fmul nnan double %i.wl, 6.250000e-02    ; 2 uses
  store double %i.wm, ptr %i.b, align 8, !tbaa !32
  %i.wn = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8
  %i.wq = invoke { double, double } %i.wp(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, double noundef %i.wm)
          to label %.noexc357 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88 ; 2 uses

.noexc357:                                        ; preds = %.preheader.i.i
  %i.wr = extractvalue { double, double } %i.wq, 0
  %i.ws = extractvalue { double, double } %i.wq, 1
  %i.wt = load ptr, ptr %i.su, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 64
  %i.wv = load ptr, ptr %i.wu, align 8
  %i.ww = invoke { double, double } %i.wv(ptr noundef nonnull align 8 dereferenceable(12) %i.su, double %i.wr, double %i.ws, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc358 unwind label %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !88

.noexc358:                                        ; preds = %.noexc357
  %i.wx = extractvalue { double, double } %i.ww, 0
  %i.wy = call double @llvm.fabs.f64(double %i.wx) ; 2 uses
  %i.wz = fcmp olt double %i.wy, %.162.i.i
  %i.xa = select i1 %i.wz, double %i.wy, double %.162.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.xb = add nuw nsw i32 %.05761.i.i, 1          ; 2 uses
  %exitcond64.not.i.i = icmp eq i32 %i.xb, 17
  br i1 %exitcond64.not.i.i, label %_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i, label %.preheader.i.i, !llvm.loop !90

_ZN7msdfgenL18edgeToEdgeDistanceERKNS_11EdgeSegmentES2_i.exit.i: ; preds = %.noexc358, %.noexc352, %.noexc350, %.noexc348, %.noexc346
  %.0.i.i = phi double [ 0.000000e+00, %.noexc346 ], [ 0.000000e+00, %.noexc352 ], [ 0.000000e+00, %.noexc350 ], [ 0.000000e+00, %.noexc348 ], [ %i.xa, %.noexc358 ] ; 2 uses
  %i.xc = fcmp olt double %.0.i.i, %.120.i
  %i.xd = select i1 %i.xc, double %.0.i.i, double %.120.i ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.xe = icmp slt i64 %indvars.iv.next.i, %i.so
  %i.xf = fcmp une double %i.xd, 0.000000e+00
  %i.xg = select i1 %i.xe, i1 %i.xf, i1 false
  br i1 %i.xg, label %bb.dq, label %._crit_edge.i, !llvm.loop !91

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.ry, align 8, !tbaa !34
  br label %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit

_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit: ; preds = %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit, %bb.dp
  %i.xh = phi ptr [ %i.se, %bb.dp ], [ %.pre, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.dp ], [ %.1.lcssa.i, %_ZN7msdfgenL22splineToSplineDistanceEPKPNS_11EdgeSegmentEiiiii.exit.loopexit ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv1743
  store double %.0.lcssa.i, ptr %i.xi, align 8, !tbaa !32
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1743
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !34
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv1748
  store double %.0.lcssa.i, ptr %i.xl, align 8, !tbaa !32
  %exitcond1747.not = icmp eq i64 %indvars.iv.next1744, %wide.trip.count1751
  br i1 %exitcond1747.not, label %.loopexit714, label %bb.dp, !llvm.loop !92

.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc357, %.preheader.i.i, %.noexc355, %bb.dv, %.noexc353, %bb.du, %.noexc351, %bb.dt, %.noexc349, %bb.ds, %.noexc347, %bb.dr, %.noexc345, %bb.dq
  %lpad.loopexit.split-lp2753 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit422

.loopexit:                                        ; preds = %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit, %.lr.ph1364
  %.sroa.0454.1.lcssa = phi ptr [ %.sroa.0454.01360, %.lr.ph1364 ], [ %.sroa.0454.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.01361, %.lr.ph1364 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.27.1.lcssa = phi ptr [ %.sroa.27.01362, %.lr.ph1364 ], [ %.sroa.27.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %indvars.iv.next1754 = add nuw nsw i64 %indvars.iv1753, 1
  %exitcond1764.not = icmp eq i64 %indvars.iv.next1761, %wide.trip.count1763
  br i1 %exitcond1764.not, label %._crit_edge1365, label %.lr.ph1364, !llvm.loop !93

._crit_edge1365:                                  ; preds = %.loopexit
  %i.xm = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.xn = ptrtoint ptr %.sroa.0454.1.lcssa to i64 ; 2 uses
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = ashr exact i64 %i.xo, 3                 ; 3 uses
  %i.xq = trunc i64 %i.xp to i32                  ; 4 uses
  %i.xr = icmp eq ptr %.sroa.0454.1.lcssa, %.sroa.18.1.lcssa
  br i1 %i.xr, label %bb.ee, label %bb.ec

.lr.ph1364:                                       ; preds = %.lr.ph1364.preheader, %.loopexit
  %indvars.iv1760 = phi i64 [ 0, %.lr.ph1364.preheader ], [ %indvars.iv.next1761, %.loopexit ] ; 2 uses
  %indvars.iv1753 = phi i64 [ 1, %.lr.ph1364.preheader ], [ %indvars.iv.next1754, %.loopexit ] ; 2 uses
  %.sroa.27.01362 = phi ptr [ %.sroa.27.4, %.lr.ph1364.preheader ], [ %.sroa.27.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.18.01361 = phi ptr [ %.sroa.0454.4, %.lr.ph1364.preheader ], [ %.sroa.18.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.0454.01360 = phi ptr [ %.sroa.0454.4, %.lr.ph1364.preheader ], [ %.sroa.0454.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next1761 = add nuw nsw i64 %indvars.iv1760, 1 ; 3 uses
  %i.xs = icmp slt i64 %indvars.iv.next1761, %i.qp
  br i1 %i.xs, label %.lr.ph1356, label %.loopexit

.lr.ph1356:                                       ; preds = %.lr.ph1364
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv1760
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph1356, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit
  %indvars.iv1755 = phi i64 [ %indvars.iv1753, %.lr.ph1356 ], [ %indvars.iv.next1756, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.27.11353 = phi ptr [ %.sroa.27.01362, %.lr.ph1356 ], [ %.sroa.27.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.18.11352 = phi ptr [ %.sroa.18.01361, %.lr.ph1356 ], [ %.sroa.18.3, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.0454.11351 = phi ptr [ %.sroa.0454.01360, %.lr.ph1356 ], [ %.sroa.0454.5, %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !34
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1755 ; 2 uses
  %.not.i.i359 = icmp eq ptr %.sroa.18.11352, %.sroa.27.11353
  br i1 %.not.i.i359, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store ptr %i.xv, ptr %.sroa.18.11352, align 8, !tbaa !34
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

bb.dy:                                            ; preds = %bb.dw
  %i.xw = ptrtoint ptr %.sroa.27.11353 to i64
  %i.xx = ptrtoint ptr %.sroa.0454.11351 to i64
  %i.xy = sub i64 %i.xw, %i.xx                    ; 6 uses
  %i.xz = icmp eq i64 %i.xy, 9223372036854775800
  br i1 %i.xz, label %bb.dz, label %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc363:                                        ; preds = %bb.dz
  unreachable

_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dy
  %i.ya = ashr exact i64 %i.xy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i360 = call i64 @llvm.umax.i64(i64 %i.ya, i64 1)
  %i.yb = add nsw i64 %.sroa.speculated.i.i.i.i360, %i.ya ; 2 uses
  %i.yc = icmp ult i64 %i.yb, %i.ya
  %i.yd = call i64 @llvm.umin.i64(i64 %i.yb, i64 1152921504606846975)
  %i.ye = select i1 %i.yc, i64 1152921504606846975, i64 %i.yd ; 3 uses
  %.not.i.i.i.i361 = icmp ne i64 %i.ye, 0
  call void @llvm.assume(i1 %.not.i.i.i.i361)
  %i.yf = shl nuw nsw i64 %i.ye, 3
  %i.yg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yf) #19
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc364:                                        ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 %i.xy ; 2 uses
  store ptr %i.xv, ptr %i.yh, align 8, !tbaa !34
  %i.yi = icmp sgt i64 %i.xy, 0
  br i1 %i.yi, label %bb.ea, label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ea:                                            ; preds = %.noexc364
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yg, ptr align 8 %.sroa.0454.11351, i64 %i.xy, i1 false)
  br label %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ea, %.noexc364
  %.not.i17.i.i.i362 = icmp eq ptr %.sroa.0454.11351, null
  br i1 %.not.i17.i.i.i362, label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.11351, i64 noundef %i.xy) #17
  br label %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.eb, %_ZNSt6vectorIPKdSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.ye
  br label %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.dx
  %.sroa.0454.5 = phi ptr [ %i.yg, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0454.11351, %bb.dx ] ; 2 uses
  %.pn688 = phi ptr [ %i.yh, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18.11352, %bb.dx ]
  %.sroa.27.5 = phi ptr [ %i.yj, %_ZNSt6vectorIPKdSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.27.11353, %bb.dx ] ; 2 uses
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.pn688, i64 8 ; 2 uses
  %indvars.iv.next1756 = add nuw nsw i64 %indvars.iv1755, 1 ; 2 uses
  %exitcond1759.not = icmp eq i64 %indvars.iv.next1756, %wide.trip.count1763
  br i1 %exitcond1759.not, label %.loopexit, label %bb.dw, !llvm.loop !94

end_hunk_3
begin_hunk_4_@_ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy:bb.a

.lr.ph1380:                                       ; preds = %.lr.ph1380, %.lr.ph1380.preheader.new
  %indvars.iv1778 = phi i64 [ 0, %.lr.ph1380.preheader.new ], [ %indvars.iv.next1779.1, %.lr.ph1380 ] ; 4 uses
  %.01241378 = phi i32 [ -1, %.lr.ph1380.preheader.new ], [ %spec.select.1, %.lr.ph1380 ] ; 2 uses
  %niter3246 = phi i64 [ 0, %.lr.ph1380.preheader.new ], [ %niter3246.next.1, %.lr.ph1380 ]
  %i.ahy = add nsw i32 %.01241378, 1              ; 2 uses
  %i.ahz = sext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !19
  %i.aic = zext i32 %i.aib to i64
  %i.aid = icmp eq i64 %indvars.iv1778, %i.aic
  %spec.select = select i1 %i.aid, i32 %i.ahy, i32 %.01241378 ; 3 uses
  %i.aie = sext i32 %spec.select to i64
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.aie
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !19
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !14
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0601.0.lcssa1864, i64 %indvars.iv1778
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !27
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  store i32 %i.aij, ptr %i.aim, align 8, !tbaa !22
  %indvars.iv.next1779 = or disjoint i64 %indvars.iv1778, 1 ; 2 uses
  %i.ain = add nsw i32 %spec.select, 1            ; 2 uses
  %i.aio = sext i32 %i.ain to i64
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0568.13, i64 %i.aio
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !19
  %i.air = zext i32 %i.aiq to i64
  %i.ais = icmp eq i64 %indvars.iv.next1779, %i.air
  %spec.select.1 = select i1 %i.ais, i32 %i.ain, i32 %spec.select ; 3 uses
  %i.ait = sext i32 %spec.select.1 to i64
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !19
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds [4 x i8], ptr @__const._ZN7msdfgen22edgeColoringByDistanceERNS_5ShapeEdy.colors, i64 %i.aiw
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !14
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0601.0.lcssa1864, i64 %indvars.iv.next1779
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !27
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  store i32 %i.aiy, ptr %i.ajb, align 8, !tbaa !22
  %indvars.iv.next1779.1 = add nuw nsw i64 %indvars.iv1778, 2 ; 2 uses
  %niter3246.next.1 = add i64 %niter3246, 2       ; 2 uses
  %niter3246.ncmp.1 = icmp eq i64 %niter3246.next.1, %unroll_iter3245
  br i1 %niter3246.ncmp.1, label %_ZNSt6vectorIiSaIiEED2Ev.exit406.loopexit.unr-lcssa, label %.lr.ph1380, !llvm.loop !104

bb.fq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i410 = icmp eq ptr %.sroa.0551.0.lcssa1856, null
  br i1 %.not.i.i.i410, label %_ZNSt6vectorIiSaIiEED2Ev.exit411, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ajc = ptrtoint ptr %.sroa.23.0.lcssa1853 to i64
  %i.ajd = ptrtoint ptr %.sroa.0551.0.lcssa1856 to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0551.0.lcssa1856, i64 noundef %i.aje) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit411

_ZNSt6vectorIiSaIiEED2Ev.exit411:                 ; preds = %bb.fq, %bb.fr
  %.not.i.i.i412 = icmp eq ptr %.sroa.0568.13, null
  br i1 %.not.i.i.i412, label %_ZNSt6vectorIiSaIiEED2Ev.exit413, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit411
  %i.ajf = ptrtoint ptr %.sroa.43.13 to i64
  %i.ajg = sub i64 %i.ajf, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0568.13, i64 noundef %i.ajg) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit413

_ZNSt6vectorIiSaIiEED2Ev.exit413:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit411, %bb.fs
  %.not.i.i.i414 = icmp eq ptr %.sroa.0601.0.lcssa1864, null
  br i1 %.not.i.i.i414, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit413
  %i.ajh = ptrtoint ptr %.sroa.67.0.lcssa1861 to i64
  %i.aji = sub i64 %i.ajh, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0601.0.lcssa1864, i64 noundef %i.aji) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit413, %bb.ft
  ret void

_ZNSt6vectorIPiSaIS0_EED2Ev.exit416:              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.fn
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.ahf, %bb.fn ]
  call void @_ZdlPvm(ptr noundef nonnull %i.yo, i64 noundef %i.qr) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit418

_ZNSt6vectorIiSaIiEED2Ev.exit418:                 ; preds = %_ZNSt6vectorIPiSaIS0_EED2Ev.exit416, %bb.eg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPiSaIS0_EED2Ev.exit416 ], [ %i.yx, %bb.eg ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ym, i64 noundef %i.yl) #17
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ef, %_ZNSt6vectorIiSaIiEED2Ev.exit418, %bb.ed
  %.sroa.0454.3 = phi ptr [ %.sroa.0454.2, %bb.ed ], [ %.sroa.0454.1.lcssa, %bb.ef ], [ %.sroa.0454.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit418 ], [ %.sroa.0454.11351, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.2, %bb.ed ], [ %.sroa.27.1.lcssa, %bb.ef ], [ %.sroa.27.1.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit418 ], [ %.sroa.27.11353, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn165 = phi { ptr, i32 } [ %i.yk, %bb.ed ], [ %i.yw, %bb.ef ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit418 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i419 = icmp eq ptr %.sroa.0454.3, null
  br i1 %.not.i.i.i419, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit422, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ajj = ptrtoint ptr %.sroa.27.3 to i64
  %i.ajk = ptrtoint ptr %.sroa.0454.3 to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0454.3, i64 noundef %i.ajl) #17
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit422

_ZNSt6vectorIPdSaIS0_EED2Ev.exit422:              ; preds = %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fv, %bb.fu
  %.pn167 = phi { ptr, i32 } [ %.pn165, %bb.fv ], [ %.pn165, %bb.fu ], [ %lpad.loopexit.split-lp2753, %.loopexit.split-lp707.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qr) #17
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit424

_ZNSt6vectorIdSaIdEED2Ev.exit424:                 ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit422, %bb.dm
  %.pn167.pn = phi { ptr, i32 } [ %.pn167, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit422 ], [ %i.rc, %bb.dm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qk) #17
  br label %.loopexit.split-lp743

.loopexit.split-lp743:                            ; preds = %.loopexit752, %.loopexit.split-lp753, %.loopexit737, %.loopexit.split-lp738, %.loopexit728, %.loopexit.split-lp729, %.loopexit.split-lp724.loopexit.split-lp, %.loopexit717.a, %.loopexit.split-lp718, %.loopexit742, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp, %.loopexit747, %.loopexit.split-lp748, %bb.dl, %_ZNSt6vectorIdSaIdEED2Ev.exit424, %bb.cu
  %.sroa.23.8 = phi ptr [ %.sroa.23.0.lcssa1853, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp738 ], [ %.sroa.23.1.lcssa, %bb.cu ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp729 ], [ %.sroa.15.11271, %.loopexit.split-lp748 ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp718 ], [ %.sroa.23.0.lcssa1853, %bb.dl ], [ %.sroa.23.1.lcssa, %.loopexit.split-lp724.loopexit.split-lp ], [ %.sroa.23.3.ph, %.loopexit747 ], [ %.sroa.23.11267, %.loopexit742 ], [ %.sroa.23.0.lcssa1854.a, %.loopexit.split-lp753 ], [ %.sroa.23.1.lcssa, %.loopexit717.a ], [ %.sroa.23.01323, %.loopexit752 ], [ %.sroa.23.1.lcssa, %.loopexit728 ], [ %.sroa.23.1.lcssa, %.loopexit737 ]
  %.sroa.0551.8 = phi ptr [ %.sroa.0551.0.lcssa1856, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %.sroa.0551.1.lcssa, %.loopexit.split-lp738 ], [ %.sroa.0551.1.lcssa, %bb.cu ], [ %.sroa.0551.1.lcssa, %.loopexit.split-lp729 ], [ %.sroa.0551.11272, %.loopexit.split-lp748 ], [ %.sroa.0551.1.lcssa, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0551.1.lcssa, %.loopexit.split-lp718 ], [ %.sroa.0551.0.lcssa1856, %bb.dl ], [ %.sroa.0551.1.lcssa, %.loopexit.split-lp724.loopexit.split-lp ], [ %.sroa.0551.3.ph, %.loopexit747 ], [ %.sroa.0551.11272, %.loopexit742 ], [ %.sroa.0551.0.lcssa1857, %.loopexit.split-lp753 ], [ %.sroa.0551.1.lcssa, %.loopexit717.a ], [ %.sroa.0551.01325, %.loopexit752 ], [ %.sroa.0551.1.lcssa, %.loopexit728 ], [ %.sroa.0551.1.lcssa, %.loopexit737 ] ; 3 uses
  %.sroa.43.12 = phi ptr [ %.sroa.43.13, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %.sroa.43.7, %.loopexit.split-lp738 ], [ %.sroa.43.5, %bb.cu ], [ %.sroa.43.2, %.loopexit.split-lp729 ], [ %.sroa.43.01326, %.loopexit.split-lp748 ], [ %.sroa.24.01327, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.43.14, %.loopexit.split-lp718 ], [ %.sroa.43.13, %bb.dl ], [ %.sroa.24.11296, %.loopexit.split-lp724.loopexit.split-lp ], [ %.sroa.43.01326, %.loopexit747 ], [ %.sroa.43.01326, %.loopexit742 ], [ %.sroa.43.0.lcssa1859, %.loopexit.split-lp753 ], [ %.sroa.43.14, %.loopexit717.a ], [ %.sroa.43.01326, %.loopexit752 ], [ %.sroa.43.2, %.loopexit728 ], [ %.sroa.43.7, %.loopexit737 ] ; 2 uses
  %.sroa.0568.12 = phi ptr [ %.sroa.0568.13, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %.sroa.0568.7, %.loopexit.split-lp738 ], [ %.sroa.0568.5, %bb.cu ], [ %.sroa.0568.2, %.loopexit.split-lp729 ], [ %.sroa.0568.01328, %.loopexit.split-lp748 ], [ %.sroa.0568.01328, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0568.14, %.loopexit.split-lp718 ], [ %.sroa.0568.13, %bb.dl ], [ %.sroa.0568.11297, %.loopexit.split-lp724.loopexit.split-lp ], [ %.sroa.0568.01328, %.loopexit747 ], [ %.sroa.0568.01328, %.loopexit742 ], [ %.sroa.0568.0.lcssa1860, %.loopexit.split-lp753 ], [ %.sroa.0568.14, %.loopexit717.a ], [ %.sroa.0568.01328, %.loopexit752 ], [ %.sroa.0568.2, %.loopexit728 ], [ %.sroa.0568.7, %.loopexit737 ] ; 2 uses
  %.sroa.67.12 = phi ptr [ %.sroa.67.0.lcssa1861, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %.sroa.33.51279, %.loopexit.split-lp738 ], [ %.sroa.67.6, %bb.cu ], [ %.sroa.33.21299, %.loopexit.split-lp729 ], [ %.sroa.67.01329, %.loopexit.split-lp748 ], [ %.sroa.67.01329, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.33.11313, %.loopexit.split-lp718 ], [ %.sroa.67.0.lcssa1861, %bb.dl ], [ %.sroa.67.21298, %.loopexit.split-lp724.loopexit.split-lp ], [ %.sroa.67.01329, %.loopexit747 ], [ %.sroa.67.01329, %.loopexit742 ], [ %.sroa.67.0.lcssa1862.a, %.loopexit.split-lp753 ], [ %.sroa.67.11312.lcssa, %.loopexit717.a ], [ %.sroa.67.01329, %.loopexit752 ], [ %.sroa.67.21298.lcssa1438, %.loopexit728 ], [ %.sroa.67.71278.lcssa1416, %.loopexit737 ] ; 2 uses
  %.sroa.0601.12 = phi ptr [ %.sroa.0601.0.lcssa1864, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %.sroa.0601.71280, %.loopexit.split-lp738 ], [ %.sroa.0601.6, %bb.cu ], [ %.sroa.0601.21300, %.loopexit.split-lp729 ], [ %.sroa.0601.01331, %.loopexit.split-lp748 ], [ %.sroa.0601.01331, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0601.11314, %.loopexit.split-lp718 ], [ %.sroa.0601.0.lcssa1864, %bb.dl ], [ %.sroa.0601.21300, %.loopexit.split-lp724.loopexit.split-lp ], [ %.sroa.0601.01331, %.loopexit747 ], [ %.sroa.0601.01331, %.loopexit742 ], [ %.sroa.0601.0.lcssa1865, %.loopexit.split-lp753 ], [ %.sroa.0601.11314, %.loopexit717.a ], [ %.sroa.0601.01331, %.loopexit752 ], [ %.sroa.0601.21300, %.loopexit728 ], [ %.sroa.0601.71280, %.loopexit737 ] ; 2 uses
  %.pn183.pn.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit424 ], [ %lpad.loopexit.split-lp740, %.loopexit.split-lp738 ], [ %.pn175, %bb.cu ], [ %lpad.loopexit.split-lp731, %.loopexit.split-lp729 ], [ %lpad.loopexit.split-lp750, %.loopexit.split-lp748 ], [ %lpad.loopexit.split-lp2767, %.loopexit.split-lp743.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp720, %.loopexit.split-lp718 ], [ %i.rb, %bb.dl ], [ %lpad.loopexit.split-lp2759, %.loopexit.split-lp724.loopexit.split-lp ], [ %lpad.loopexit749, %.loopexit747 ], [ %lpad.loopexit744, %.loopexit742 ], [ %lpad.loopexit.split-lp755, %.loopexit.split-lp753 ], [ %lpad.loopexit719, %.loopexit717.a ], [ %lpad.loopexit754, %.loopexit752 ], [ %lpad.loopexit730, %.loopexit728 ], [ %lpad.loopexit739, %.loopexit737 ] ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %.sroa.0551.8, null
  br i1 %.not.i.i.i425, label %_ZNSt6vectorIiSaIiEED2Ev.exit426, label %.loopexit.split-lp743..thread_crit_edge

.loopexit.split-lp743..thread_crit_edge:          ; preds = %.loopexit.split-lp743
  %.pre1784 = ptrtoint ptr %.sroa.0551.8 to i64
  br label %.thread

.thread:                                          ; preds = %.loopexit.split-lp743..thread_crit_edge, %.thread.loopexit.split-lp.loopexit.split-lp
  %.pre-phi1785 = phi i64 [ %.pre1784, %.loopexit.split-lp743..thread_crit_edge ], [ %i.eh, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.pn183.pn.pn.pn674 = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %.loopexit.split-lp743..thread_crit_edge ], [ %lpad.loopexit.split-lp2763, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0601.12672 = phi ptr [ %.sroa.0601.12, %.loopexit.split-lp743..thread_crit_edge ], [ %.sroa.0601.71280, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.67.12670 = phi ptr [ %.sroa.67.12, %.loopexit.split-lp743..thread_crit_edge ], [ %.sroa.67.71278, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0568.12668 = phi ptr [ %.sroa.0568.12, %.loopexit.split-lp743..thread_crit_edge ], [ %.sroa.0568.61277, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.43.12666 = phi ptr [ %.sroa.43.12, %.loopexit.split-lp743..thread_crit_edge ], [ %.sroa.24.41276, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0551.8665 = phi ptr [ %.sroa.0551.8, %.loopexit.split-lp743..thread_crit_edge ], [ %.sroa.0551.1.lcssa, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.23.8664 = phi ptr [ %.sroa.23.8, %.loopexit.split-lp743..thread_crit_edge ], [ %.sroa.23.1.lcssa, %.thread.loopexit.split-lp.loopexit.split-lp ]
  %i.ajm = ptrtoint ptr %.sroa.23.8664 to i64
  %i.ajn = sub i64 %i.ajm, %.pre-phi1785
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0551.8665, i64 noundef %i.ajn) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit426

_ZNSt6vectorIiSaIiEED2Ev.exit426:                 ; preds = %.loopexit.split-lp743, %.thread
  %.pn183.pn.pn.pn675 = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %.loopexit.split-lp743 ], [ %.pn183.pn.pn.pn674, %.thread ]
  %.sroa.0601.12673 = phi ptr [ %.sroa.0601.12, %.loopexit.split-lp743 ], [ %.sroa.0601.12672, %.thread ] ; 3 uses
  %.sroa.67.12671 = phi ptr [ %.sroa.67.12, %.loopexit.split-lp743 ], [ %.sroa.67.12670, %.thread ]
  %.sroa.0568.12669 = phi ptr [ %.sroa.0568.12, %.loopexit.split-lp743 ], [ %.sroa.0568.12668, %.thread ] ; 3 uses
  %.sroa.43.12667 = phi ptr [ %.sroa.43.12, %.loopexit.split-lp743 ], [ %.sroa.43.12666, %.thread ]
  %.not.i.i.i427 = icmp eq ptr %.sroa.0568.12669, null
  br i1 %.not.i.i.i427, label %_ZNSt6vectorIiSaIiEED2Ev.exit428, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit426
  %i.ajo = ptrtoint ptr %.sroa.43.12667 to i64
  %i.ajp = ptrtoint ptr %.sroa.0568.12669 to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0568.12669, i64 noundef %i.ajq) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit428

_ZNSt6vectorIiSaIiEED2Ev.exit428:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit426, %bb.fw
  %.not.i.i.i429 = icmp eq ptr %.sroa.0601.12673, null
  br i1 %.not.i.i.i429, label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit430, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit428
  %i.ajr = ptrtoint ptr %.sroa.67.12671 to i64
  %i.ajs = ptrtoint ptr %.sroa.0601.12673 to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0601.12673, i64 noundef %i.ajt) #17
  br label %_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit430

_ZNSt6vectorIPN7msdfgen11EdgeSegmentESaIS2_EED2Ev.exit430: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit428, %bb.fx
  resume { ptr, i32 } %.pn183.pn.pn.pn675
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN7msdfgenL12cmpDoublePtrEPKvS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = load double, ptr %i.a, align 8, !tbaa !32
  %i.c = load ptr, ptr %1, align 8, !tbaa !34
  %i.d = load double, ptr %i.c, align 8, !tbaa !32
  %i.e = fsub double %i.b, %i.d                   ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  %i.g = zext i1 %i.f to i32
  %i.h = fcmp olt double %i.e, 0.000000e+00
  %.neg.i = sext i1 %i.h to i32
  %i.i = add nsw i32 %.neg.i, %i.g
  ret i32 %i.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL20uncolorSameNeighborsERSt5queueIiSt5dequeIiSaIiEEEPiPKPKiii(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i32 noundef range(i32 -2147483648, 2147483647) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %storemerge22 = add nsw i32 %3, 1               ; 3 uses
  store i32 %storemerge22, ptr %i.a, align 4, !tbaa !19
  %i.c = icmp slt i32 %storemerge22, %4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !19
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %._crit_edge
  %i.j = zext nneg i32 %3 to i64                  ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %storemerge23 = phi i32 [ %storemerge22, %.lr.ph ], [ %storemerge, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.p = sext i32 %storemerge23 to i64            ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19
  %i.u = load i32, ptr %i.f, align 4, !tbaa !19
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.s, align 4, !tbaa !19
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %storemerge23, ptr %i.w, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.z, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit:     ; preds = %bb.f, %bb.e, %bb.b, %bb.c
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !19
  %storemerge = add nsw i32 %i.aa, 1              ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !19
  %i.ab = icmp slt i32 %storemerge, %4
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !108

._crit_edge27:                                    ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void

bb.g:                                             ; preds = %.lr.ph26, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21
  %storemerge1824 = phi i32 [ 0, %.lr.ph26 ], [ %i.ap, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21 ] ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.ad = sext i32 %storemerge1824 to i64         ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !19
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.ag, align 4, !tbaa !19
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !51  ; 3 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %.not.i.i20 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %storemerge1824, ptr %i.ak, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.an, ptr %i.m, align 8, !tbaa !51
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21

bb.k:                                             ; preds = %bb.i
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit21:   ; preds = %bb.k, %bb.j, %bb.g, %bb.h
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !19
  %i.ap = add nsw i32 %i.ao, 1                    ; 3 uses
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !19
  %i.aq = icmp slt i32 %i.ap, %3
  br i1 %i.aq, label %bb.g, label %._crit_edge27, !llvm.loop !109
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !36
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #17
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #17
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %bb.a, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 7                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !50
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !48
  %i.g = load i64, ptr %i.d, align 8, !tbaa !50
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19
          to label %_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIiSaIiEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_.exit, !llvm.loop !111

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #16 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
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
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

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
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !0

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
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #17
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
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
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !0

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
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

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

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7msdfgen7ContourE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN7msdfgen9EdgeColorE", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSN7msdfgen11EdgeSegmentE", !13, i64 8}
!22 = !{!21, !13, i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !15, i64 8}
!26 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN7msdfgen10EdgeHolderE", !26, i64 0}
!29 = !{!28, !26, i64 0}
!30 = !{!23, !15, i64 16}
!31 = !{!"double", !6, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 double", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 int", !10, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"any p2 pointer", !10, i64 0}
!38 = !{!"p2 int", !37, i64 0}
!39 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !35, i64 0, !35, i64 8, !35, i64 16, !38, i64 24}
!40 = !{!39, !35, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !38, i64 0, !41, i64 8, !39, i64 16, !39, i64 48}
!43 = !{!42, !38, i64 40}
!44 = !{!39, !38, i64 24}
!45 = !{!39, !35, i64 8}
!46 = !{!39, !35, i64 16}
!47 = !{!42, !35, i64 16}
!48 = !{!42, !38, i64 0}
!49 = !{!42, !38, i64 72}
!50 = !{!42, !41, i64 8}
!51 = !{!42, !35, i64 48}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{null}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20, !77}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!"bool", !6, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTSN7msdfgen25EdgeColoringInkTrapCornerE", !7, i64 0, !31, i64 8, !68, i64 16, !13, i64 20}
!71 = !{!70, !7, i64 0}
!72 = !{!70, !31, i64 8}
!73 = !{!70, !68, i64 16}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!70, !13, i64 20}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !105}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{null}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !105}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!42, !35, i64 32}
!107 = !{!42, !35, i64 24}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = !{!42, !35, i64 64}
!111 = distinct !{!111, !20}
!112 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, !20}
end_hunk_5
