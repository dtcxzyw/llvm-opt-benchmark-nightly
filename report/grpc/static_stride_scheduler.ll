Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/static_stride_scheduler?download=true
inline.NumInlined: 121
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [15 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<grpc_core::StaticStrideScheduler>::_Storage", i8 }>
%"union.std::_Optional_payload_base<grpc_core::StaticStrideScheduler>::_Storage" = type { %"class.grpc_core::StaticStrideScheduler" }
%"class.grpc_core::StaticStrideScheduler" = type { %"class.absl::lts_20250512::AnyInvocable", %"class.std::vector", [8 x i8] }
%"class.absl::lts_20250512::AnyInvocable" = type { %"class.absl::lts_20250512::internal_any_invocable::Impl" }
%"class.absl::lts_20250512::internal_any_invocable::Impl" = type { %"class.absl::lts_20250512::internal_any_invocable::CoreImpl" }
%"class.absl::lts_20250512::internal_any_invocable::CoreImpl" = type { %"union.absl::lts_20250512::internal_any_invocable::TypeErasedState", ptr, ptr }
%"union.absl::lts_20250512::internal_any_invocable::TypeErasedState" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.3" }
%"struct.std::_Head_base.3" = type { ptr }

$_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_ = comdat any

@.str = private unnamed_addr constant [98 x i8] c"/opt-bench/work/grpc/grpc/src/core/load_balancing/weighted_round_robin/static_stride_scheduler.cc\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"weights.size() == float_weights.size()\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"next_sequence_func_ != nullptr\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN9grpc_core21StaticStrideSchedulerC1ESt6vectorItSaItEEN4absl12lts_2025051212AnyInvocableIFjvEEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN9grpc_core21StaticStrideSchedulerC2ESt6vectorItSaItEEN4absl12lts_2025051212AnyInvocableIFjvEEE

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core21StaticStrideScheduler4MakeEN4absl12lts_202505124SpanIKfEENS2_12AnyInvocableIFjvEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 16 %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef align 16 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %5 = alloca %"class.grpc_core::StaticStrideScheduler", align 16 ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AnyInvocable", align 16 ; 7 uses
  switch i64 %2, label %.lr.ph.preheader [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 16, !tbaa !27
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.b, align 16, !tbaa !27
  br label %bb.x

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %2, 4611686018427387903          ; 2 uses
  %i.d = and i64 %i.c, 4611686018427387903        ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.g = and i64 %i.c, 1
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.037155.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.unr-lcssa ]
  %.038154.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.x, %._crit_edge.unr-lcssa ]
  %.039153.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.unr-lcssa ]
  %.0152.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.speculated107.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod239 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %i.h = load float, ptr %.037155.epil.init, align 4, !tbaa !29 ; 4 uses
  %i.i = fpext float %i.h to double
  %i.j = fadd double %.038154.epil.init, %i.i
  %i.k = fcmp olt float %.0152.epil.init, %i.h
  %.sroa.speculated107.epil = select i1 %i.k, float %i.h, float %.0152.epil.init
  %i.l = fcmp oeq float %i.h, 0.000000e+00
  %i.m = zext i1 %i.l to i64
  %spec.select.epil = add i64 %.039153.epil.init, %i.m
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi double [ %i.x, %._crit_edge.unr-lcssa ], [ %i.j, %.lr.ph.epil.preheader ]
  %.sroa.speculated107.lcssa = phi float [ %.sroa.speculated107.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated107.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %spec.select.lcssa = phi i64 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp eq i64 %spec.select.lcssa, %2
  br i1 %i.n, label %bb.d, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.037155 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ] ; 3 uses
  %.038154 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ]
  %.039153 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.0152 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.sroa.speculated107.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load float, ptr %.037155, align 4, !tbaa !29 ; 4 uses
  %i.p = fpext float %i.o to double
  %i.q = fadd double %.038154, %i.p
  %i.r = fcmp olt float %.0152, %i.o
  %.sroa.speculated107 = select i1 %i.r, float %i.o, float %.0152 ; 2 uses
  %i.s = fcmp oeq float %i.o, 0.000000e+00
  %i.t = zext i1 %i.s to i64
  %spec.select = add i64 %.039153, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %.037155, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !29 ; 4 uses
  %i.w = fpext float %i.v to double
  %i.x = fadd double %i.q, %i.w                   ; 3 uses
  %i.y = fcmp olt float %.sroa.speculated107, %i.v
  %.sroa.speculated107.1 = select i1 %i.y, float %i.v, float %.sroa.speculated107 ; 3 uses
  %i.z = fcmp oeq float %i.v, 0.000000e+00
  %i.aa = zext i1 %i.z to i64
  %spec.select.1 = add i64 %spec.select, %i.aa    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.037155, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ac, align 16, !tbaa !27
  br label %bb.x

bb.e:                                             ; preds = %._crit_edge
  %i.ad = sub i64 %2, %spec.select.lcssa
  %i.ae = uitofp i64 %i.ad to double
  %i.af = fdiv double %.lcssa, %i.ae              ; 3 uses
  %i.ag = fpext float %.sroa.speculated107.lcssa to double
  %i.ah = fdiv double %i.ag, %i.af
  %i.ai = fcmp ogt double %i.ah, 1.000000e+01
  %i.aj = fmul double %i.af, 1.000000e+01
  %i.ak = fptrunc double %i.aj to float
  %.1 = select i1 %i.ai, float %i.ak, float %.sroa.speculated107.lcssa ; 3 uses
  %i.al = fdiv float 6.553500e+04, %.1
  %i.am = fpext float %i.al to double             ; 2 uses
  %i.an = fmul double %i.af, %i.am
  %i.ao = tail call i64 @lround(double noundef %i.an) #13 ; 2 uses
  %i.ap = trunc i64 %i.ao to i16                  ; 2 uses
  %i.aq = trunc i64 %i.ao to i32
  %i.ar = and i32 %i.aq, 65535
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = fmul nnan double %i.as, 1.000000e-02
  %i.au = tail call i64 @lround(double noundef %i.at) #13
  %i.av = trunc i64 %i.au to i16
  %.sroa.speculated96 = tail call i16 @llvm.umax.i16(i16 %i.av, i16 1) ; 2 uses
  %i.aw = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.aw, label %.noexc.a, label %.lr.ph162.preheader

.noexc.a:                                         ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

.lr.ph162.preheader:                              ; preds = %bb.e
  %8 = shl nuw nsw i64 %2, 1
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #15 ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %2
  br label %.lr.ph162

._crit_edge163:                                   ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %i.ay = ptrtoint ptr %.sroa.16.1 to i64
  %i.az = ptrtoint ptr %.sroa.074.1 to i64        ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 1
  %.not42.not = icmp eq i64 %i.bb, %2
  br i1 %.not42.not, label %.critedge, label %bb.p, !prof !30

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %.032161 = phi i64 [ %i.cq, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ 0, %.lr.ph162.preheader ] ; 2 uses
  %.sroa.27.0160 = phi ptr [ %.sroa.27.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %i.ax, %.lr.ph162.preheader ] ; 6 uses
  %.sroa.16.0159 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %9, %.lr.ph162.preheader ] ; 6 uses
  %.sroa.074.0158 = phi ptr [ %.sroa.074.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %9, %.lr.ph162.preheader ] ; 12 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.032161
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !29 ; 3 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph162
  %.not.i = icmp eq ptr %.sroa.16.0159, %.sroa.27.0160
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i16 %i.ap, ptr %.sroa.16.0159, align 2, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.16.0159, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = ptrtoint ptr %.sroa.27.0160 to i64
  %i.bh = ptrtoint ptr %.sroa.074.0158 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775806
  br i1 %i.bj, label %bb.i, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc47 unwind label %.loopexit.split-lp129

.noexc47:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bk = ashr exact i64 %i.bi, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add i64 %.sroa.speculated.i.i.i, %i.bk  ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 4611686018427387903)
  %i.bo = select i1 %i.bm, i64 4611686018427387903, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #15
          to label %.noexc48 unwind label %.loopexit128 ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store i16 %i.ap, ptr %i.br, align 2, !tbaa !11
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.j, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

bb.j:                                             ; preds = %.noexc48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bq, ptr align 2 %.sroa.074.0158, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.j, %.noexc48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0158, i64 noundef %i.bi) #16
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bo
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit128:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp129:                            ; preds = %bb.i
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %.lr.ph162
  %i.bv = fcmp olt float %.1, %i.bd
  %.sroa.speculated112 = select i1 %i.bv, float %.1, float %i.bd
  %i.bw = fpext float %.sroa.speculated112 to double
  %i.bx = fmul double %i.am, %i.bw
  %i.by = tail call i64 @lround(double noundef %i.bx) #13
  %i.bz = trunc i64 %i.by to i16                  ; 2 uses
  %.not.i51 = icmp eq ptr %.sroa.16.0159, %.sroa.27.0160
  br i1 %.not.i51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.speculated71 = tail call i16 @llvm.umax.i16(i16 %.sroa.speculated96, i16 %i.bz)
  store i16 %.sroa.speculated71, ptr %.sroa.16.0159, align 2, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.16.0159, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.m:                                             ; preds = %bb.k
  %i.cb = ptrtoint ptr %.sroa.27.0160 to i64
  %i.cc = ptrtoint ptr %.sroa.074.0158 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 7 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775806
  br i1 %i.ce, label %bb.n, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i52

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc58 unwind label %.loopexit.split-lp.a

.noexc58:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i52: ; preds = %bb.m
  %i.cf = ashr exact i64 %i.cd, 1                 ; 3 uses
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add i64 %.sroa.speculated.i.i.i53, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 4611686018427387903)
  %i.cj = select i1 %i.ch, i64 4611686018427387903, i64 %i.ci ; 3 uses
  %.not.i.i.i54 = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i54)
  %i.ck = shl nuw nsw i64 %i.cj, 1
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #15
          to label %.noexc59 unwind label %.loopexit ; 4 uses

.noexc59:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i52
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %.sroa.speculated96, i16 %i.bz)
  store i16 %.sroa.speculated, ptr %i.cm, align 2, !tbaa !11
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.o, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57

bb.o:                                             ; preds = %.noexc59
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cl, ptr align 2 %.sroa.074.0158, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57: ; preds = %bb.o, %.noexc59
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0158, i64 noundef %i.cd) #16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i52
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp.a:                             ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %bb.l, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.g
  %.sroa.074.1 = phi ptr [ %.sroa.074.0158, %bb.g ], [ %i.bq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.cl, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57 ], [ %.sroa.074.0158, %bb.l ] ; 4 uses
  %.sroa.16.1 = phi ptr [ %i.bf, %bb.g ], [ %i.bt, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.co, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57 ], [ %i.ca, %bb.l ] ; 3 uses
  %.sroa.27.1 = phi ptr [ %.sroa.27.0160, %bb.g ], [ %i.bu, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.cp, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i57 ], [ %.sroa.27.0160, %bb.l ] ; 3 uses
  %i.cq = add nuw nsw i64 %.032161, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cq, %2
  br i1 %exitcond.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !23

bb.p:                                             ; preds = %._crit_edge163
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @.str.1) #17
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.s

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.q
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pre = ptrtoint ptr %.sroa.27.1 to i64
  %.pre207 = sub i64 %.pre, %i.az
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  unreachable

.critedge:                                        ; preds = %._crit_edge163
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %.sroa.074.1, ptr %6, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.16.1, ptr %i.ct, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %.sroa.27.1, ptr %i.cu, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !19
  call void %i.cw(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %7) #13, !inline_history !0
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cz = load <2 x ptr>, ptr %i.cv, align 16, !tbaa !20
  store <2 x ptr> %i.cz, ptr %i.cx, align 16, !tbaa !20
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.cv, align 16, !tbaa !19
  store ptr null, ptr %i.cy, align 8, !tbaa !21
  invoke void @_ZN9grpc_core21StaticStrideSchedulerC1ESt6vectorItSaItEEN4absl12lts_2025051212AnyInvocableIFjvEEE(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 16 %7)
          to label %_ZN9grpc_core21StaticStrideSchedulerD2Ev.exit unwind label %bb.u

_ZN9grpc_core21StaticStrideSchedulerD2Ev.exit:    ; preds = %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 16, !tbaa !19
  call void %i.db(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(80) %0) #13, !inline_history !24
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.de = load <2 x ptr>, ptr %i.da, align 16, !tbaa !20
  store <2 x ptr> %i.de, ptr %i.dc, align 16, !tbaa !20
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.da, align 16, !tbaa !19
  store ptr null, ptr %i.dd, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.dg, align 16, !tbaa !22
  store <2 x ptr> %i.dh, ptr %i.df, align 16, !tbaa !22
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dk = load ptr, ptr %i.dj, align 16, !tbaa !17
  store ptr %i.dk, ptr %i.di, align 16, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.dl, align 16, !tbaa !27
  %i.dm = load ptr, ptr %i.cx, align 16, !tbaa !19
  call void %i.dm(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %7) #13, !inline_history !1
  %i.dn = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorItSaItEED2Ev.exit64, label %bb.t

bb.t:                                             ; preds = %_ZN9grpc_core21StaticStrideSchedulerD2Ev.exit
  %i.do = load ptr, ptr %i.cu, align 8, !tbaa !17
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit64

_ZNSt6vectorItSaItEED2Ev.exit64:                  ; preds = %bb.t, %_ZN9grpc_core21StaticStrideSchedulerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.x

bb.u:                                             ; preds = %.critedge
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %i.cx, align 16, !tbaa !19
  call void %i.dt(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) %7) #13, !inline_history !1
  %i.du = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorItSaItEED2Ev.exit66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !17
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit66

_ZNSt6vectorItSaItEED2Ev.exit66:                  ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %_ZNSt6vectorItSaItEED2Ev.exit68

bb.w:                                             ; preds = %bb.r, %.loopexit.split-lp129, %.loopexit128, %.loopexit.split-lp.a, %.loopexit
  %.pre-phi208 = phi i64 [ %.pre207, %bb.r ], [ 9223372036854775806, %.loopexit.split-lp129 ], [ %i.bi, %.loopexit128 ], [ 9223372036854775806, %.loopexit.split-lp.a ], [ %i.cd, %.loopexit ]
  %.sroa.074.0148 = phi ptr [ %.sroa.074.1, %bb.r ], [ %.sroa.074.0158, %.loopexit.split-lp129 ], [ %.sroa.074.0158, %.loopexit128 ], [ %.sroa.074.0158, %.loopexit.split-lp.a ], [ %.sroa.074.0158, %.loopexit ]
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.r ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp129 ], [ %lpad.loopexit130, %.loopexit128 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.a ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0148, i64 noundef %.pre-phi208) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit68

_ZNSt6vectorItSaItEED2Ev.exit68:                  ; preds = %_ZNSt6vectorItSaItEED2Ev.exit66, %bb.w
  %.pn.pn127 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.ds, %_ZNSt6vectorItSaItEED2Ev.exit66 ]
  resume { ptr, i32 } %.pn.pn127

bb.x:                                             ; preds = %bb.d, %_ZNSt6vectorItSaItEED2Ev.exit64, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core21StaticStrideSchedulerC2ESt6vectorItSaItEEN4absl12lts_2025051212AnyInvocableIFjvEEE(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr nofree noundef align 8 captures(none) %1, ptr noundef align 16 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !19
  tail call void %i.b(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %0) #13, !inline_history !0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x ptr>, ptr %i.a, align 16, !tbaa !20
  store <2 x ptr> %i.f, ptr %i.c, align 16, !tbaa !20
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.a, align 16, !tbaa !19
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !22
  store <2 x ptr> %i.h, ptr %i.g, align 16, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  store ptr %i.k, ptr %i.i, align 16, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @.str.2) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.n = load ptr, ptr %i.g, align 16, !tbaa !15  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 16, !tbaa !17
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  %i.s = load ptr, ptr %i.c, align 16, !tbaa !19
  call void %i.s(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %0) #13, !inline_history !1
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  unreachable

.critedge:                                        ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, 4294967296) i64 @_ZNK9grpc_core21StaticStrideScheduler4PickEv(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 16 dereferenceable(32) %0), !inline_history !33
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.h = load ptr, ptr %i.b, align 16, !tbaa !15  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = urem i64 %i.f, %i.l                      ; 3 uses
  %i.n = udiv i64 %i.f, %i.l
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.m
  %i.p = load i16, ptr %i.o, align 2, !tbaa !11
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = mul nuw nsw i64 %i.n, %i.q
  %i.s = mul nuw nsw i64 %i.m, 32767
  %i.t = add nuw nsw i64 %i.r, %i.s
  %i.u = urem i64 %i.t, 65535
  %i.v = xor i64 %i.q, 65535
  %i.w = icmp samesign ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  ret i64 %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #5 comdat {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
end_hunk_0
