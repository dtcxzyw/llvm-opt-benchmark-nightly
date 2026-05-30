inline.NumInlined: 202
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.moments = type { double, double, double, double, double, double, double }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_ = comdat any

$_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

@.str = private unnamed_addr constant [24 x i8] c"n:                  %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"median:             %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"mean:               %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"average_deviation:  %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"standard_deviation: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"variance:           %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"skew:               %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"kurtosis:           %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.moments, align 8            ; 11 uses
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #12, !inline_history !11
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %.not37 = icmp eq i32 %i.e, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 5000000, %bb.a ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %bb.b
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.15.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.10.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %.sroa.017.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.017.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  invoke void @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %.sroa.017.0.lcssa, ptr %.sroa.10.0.lcssa)
          to label %bb.h unwind label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.041 = phi i32 [ %i.v, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.017.040 = phi ptr [ %.sroa.017.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ null, %.lr.ph.preheader ] ; 7 uses
  %.sroa.10.039 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.15.038 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ], [ null, %.lr.ph.preheader ] ; 2 uses
  %i.g = uitofp i32 %.041 to double               ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.10.039, %.sroa.15.038
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store double %i.g, ptr %.sroa.10.039, align 8, !tbaa !12
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.d:                                             ; preds = %.lr.ph
  %i.h = ptrtoint ptr %.sroa.10.039 to i64
  %i.i = ptrtoint ptr %.sroa.017.040 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #13
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #14
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store double %i.g, ptr %i.s, align 8, !tbaa !12
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %.sroa.017.040, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc12
  %.not.i17.i.i.i = icmp eq ptr %.sroa.017.040, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.040, i64 noundef %i.j) #15
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.c
  %.sroa.15.1 = phi ptr [ %i.u, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.15.038, %bb.c ] ; 2 uses
  %.pn26 = phi ptr [ %i.s, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.10.039, %bb.c ]
  %.sroa.017.1 = phi ptr [ %i.r, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.017.040, %bb.c ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn26, i64 8 ; 2 uses
  %i.v = add nuw i32 %.041, 1                     ; 2 uses
  %.not = icmp eq i32 %i.v, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.w = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.x = ptrtoint ptr %.sroa.017.0.lcssa to i64   ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %i.z) ; 0 uses
  %i.ab = load double, ptr %2, align 8, !tbaa !16
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.ae) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %i.ah) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !20
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !21
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !22
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.aq) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = load double, ptr %i.as, align 8, !tbaa !23
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.at) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not.i.i.i = icmp eq ptr %.sroa.017.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.aw = sub i64 %i.av, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.0.lcssa, i64 noundef %i.aw) #15
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  ret i32 0

bb.j:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.sroa.15.035 = phi ptr [ %.sroa.15.0.lcssa, %bb.j ], [ %.sroa.10.039, %.loopexit ], [ %.sroa.10.039, %.loopexit.split-lp ]
  %.sroa.017.029 = phi ptr [ %.sroa.017.0.lcssa, %bb.j ], [ %.sroa.017.040, %.loopexit ], [ %.sroa.017.040, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %.sroa.017.029, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIdSaIdEED2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %.sroa.15.035 to i64
  %i.az = ptrtoint ptr %.sroa.017.029 to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.029, i64 noundef %i.ba) #15
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit14

_ZNSt6vectorIdSaIdEED2Ev.exit14:                  ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not5.i = icmp eq ptr %1, %2                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread, label %.lr.ph.i

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread: ; preds = %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = uitofp i64 %i.j to double                ; 2 uses
  %i.l = fdiv double 0.000000e+00, %i.k
  store double %i.l, ptr %i.a, align 8, !tbaa !18
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi double [ %i.n, %.lr.ph.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i = phi ptr [ %i.o, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %i.m = load double, ptr %.sroa.02.06.i, align 8, !tbaa !12
  %i.n = fadd double %.07.i, %i.m                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %2
  br i1 %.not.i, label %.lr.ph.preheader, label %.lr.ph.i, !llvm.loop !24

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %2 to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = uitofp i64 %i.s to double                ; 2 uses
  %i.u = fdiv double %i.n, %i.t                   ; 2 uses
  store double %i.u, ptr %i.a, align 8, !tbaa !18
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread
  %i.v = phi double [ %i.k, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.w = phi i64 [ %i.j, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.x = phi i64 [ %i.i, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.y = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.au, %.lr.ph ]
  %i.z = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.at, %.lr.ph ]
  %i.aa = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ar, %.lr.ph ]
  %i.ab = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ap, %.lr.ph ]
  %i.ac = fdiv double %i.ab, %i.v
  store double %i.ac, ptr %i.b, align 8, !tbaa !19
  %i.ad = add nsw i64 %i.w, -1
  %i.ae = uitofp i64 %i.ad to double
  %i.af = fdiv double %i.aa, %i.ae                ; 5 uses
  store double %i.af, ptr %i.d, align 8, !tbaa !21
  %i.ag = tail call double @sqrt(double noundef %i.af) #12, !tbaa !4 ; 2 uses
  store double %i.ag, ptr %i.c, align 8, !tbaa !20
  %i.ah = fcmp une double %i.af, 0.000000e+00
  br i1 %i.ah, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.025.036 = phi ptr [ %i.av, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.ai = phi double [ %i.ap, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.aj = phi double [ %i.ar, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.ak = phi double [ %i.at, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.al = phi double [ %i.au, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.am = load double, ptr %.sroa.025.036, align 8, !tbaa !12
  %i.an = fsub double %i.am, %i.u                 ; 5 uses
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = fadd double %i.ai, %i.ao                ; 3 uses
  store double %i.ap, ptr %i.b, align 8, !tbaa !19
  %i.aq = fmul double %i.an, %i.an                ; 2 uses
  %i.ar = fadd double %i.aq, %i.aj                ; 3 uses
  store double %i.ar, ptr %i.d, align 8, !tbaa !21
  %i.as = fmul double %i.an, %i.aq                ; 2 uses
  %i.at = fadd double %i.as, %i.ak                ; 3 uses
  store double %i.at, ptr %i.e, align 8, !tbaa !22
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.an, double %i.al) ; 3 uses
  store double %i.au, ptr %i.f, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.b:                                             ; preds = %._crit_edge
  %i.aw = fmul double %i.af, %i.v                 ; 2 uses
  %i.ax = fmul double %i.aw, %i.ag
  %i.ay = fdiv double %i.z, %i.ax
  store double %i.ay, ptr %i.e, align 8, !tbaa !22
  %i.az = fmul double %i.af, %i.aw
  %i.ba = fdiv double %i.y, %i.az
  %i.bb = fadd double %i.ba, -3.000000e+00
  store double %i.bb, ptr %i.f, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.bc = ashr exact i64 %i.x, 1                  ; 3 uses
  %.idx = and i64 %i.bc, -8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 5 uses
  %i.be = icmp eq ptr %i.bd, %2
  %or.cond.i = select i1 %.not5.i, i1 true, i1 %i.be
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = xor i64 %i.bg, 126
  tail call void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %1, ptr %i.bd, ptr %2, i64 noundef %i.bh)
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %bb.c, %bb.d
  %i.bi = and i64 %i.x, 8
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %or.cond.i.i = icmp ult i64 %i.bc, 16
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre.i.i = load double, ptr %1, align 8, !tbaa !12 ; 2 uses
  %i.bl = add nsw i64 %i.bc, -16                  ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.bo = phi double [ %i.bs, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bt, %.lr.ph.i.i.prol ], [ %i.bk, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %1, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  %i.br = fcmp olt double %i.bo, %i.bq            ; 2 uses
  %i.bs = select i1 %i.br, double %i.bq, double %i.bo ; 2 uses
  %spec.select.i.i.prol = select i1 %i.br, ptr %i.bp, ptr %.sroa.02.010.i.i.prol ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !26

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi double [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.bs, %.lr.ph.i.i.prol ]
  %.unr54 = phi ptr [ %i.bk, %.lr.ph.preheader.i.i ], [ %i.bt, %.lr.ph.i.i.prol ]
  %.sroa.02.010.i.i.unr = phi ptr [ %1, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bu = icmp ult i64 %i.bl, 24
  br i1 %i.bu, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bv = phi double [ %i.cl, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bw = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %.unr54, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12 ; 2 uses
  %i.by = fcmp olt double %i.bv, %i.bx            ; 2 uses
  %i.bz = select i1 %i.by, double %i.bx, double %i.bv ; 2 uses
  %spec.select.i.i = select i1 %i.by, ptr %i.bw, ptr %.sroa.02.010.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  %i.cc = fcmp olt double %i.bz, %i.cb            ; 2 uses
  %i.cd = select i1 %i.cc, double %i.cb, double %i.bz ; 2 uses
  %spec.select.i.i.1 = select i1 %i.cc, ptr %i.ca, ptr %spec.select.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !12 ; 2 uses
  %i.cg = fcmp olt double %i.cd, %i.cf            ; 2 uses
  %i.ch = select i1 %i.cg, double %i.cf, double %i.cd ; 2 uses
  %spec.select.i.i.2 = select i1 %i.cg, ptr %i.ce, ptr %spec.select.i.i.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !12 ; 2 uses
  %i.ck = fcmp olt double %i.ch, %i.cj            ; 2 uses
  %i.cl = select i1 %i.ck, double %i.cj, double %i.ch
  %spec.select.i.i.3 = select i1 %i.ck, ptr %i.ci, ptr %spec.select.i.i.2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.cm, %i.bd
  br i1 %.not.i.i.3, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.sroa.02.2.i.i = phi ptr [ %1, %bb.e ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.cn = load double, ptr %i.bd, align 8, !tbaa !12
  %i.co = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !12
  %i.cp = fadd double %i.cn, %i.co
  %i.cq = fmul double %i.cp, 5.000000e-01
  br label %bb.g

bb.f:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.cr = load double, ptr %i.bd, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
  %storemerge = phi double [ %i.cr, %bb.f ], [ %i.cq, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit ]
  store double %storemerge, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph58

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.l, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph58, !llvm.loop !29

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.015.023.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ] ; 3 uses
  %.sroa.012.022.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %.sroa.015.023.lcssa, ptr nonnull %i.h, ptr %.sroa.012.022.lcssa)
  %i.i = load double, ptr %.sroa.015.023.lcssa, align 8, !tbaa !12
  %i.j = load double, ptr %1, align 8, !tbaa !12
  store double %i.j, ptr %.sroa.015.023.lcssa, align 8, !tbaa !12
  store double %i.i, ptr %1, align 8, !tbaa !12
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.012.02257 = phi ptr [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.02356 = phi ptr [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.02455 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
end_hunk_0
begin_hunk_1_@_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_:bb.a
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !38

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi double [ %i.ba, %bb.f ], [ %.pre31, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.sroa.0.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load double, ptr %.sroa.0.011.us12, align 8, !tbaa !12 ; 3 uses
  %i.az = fcmp olt double %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store double %i.ax, ptr %.sroa.0.011.us12, align 8, !tbaa !12
  store double %i.ay, ptr %0, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi double [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us12, i64 8 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi double [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.sroa.0.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load double, ptr %.sroa.0.011, align 8, !tbaa !12 ; 3 uses
  %i.bf = fcmp olt double %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store double %i.bd, ptr %.sroa.0.011, align 8, !tbaa !12
  store double %i.be, ptr %0, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi double [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.011, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !38
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.07.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.07.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %i.r = icmp slt i64 %.07.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.034.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.07.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.034.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load double, ptr %i.u, align 8, !tbaa !12
  %i.y = load double, ptr %i.w, align 8, !tbaa !12
  %i.z = fcmp olt double %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !12
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !36

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.07.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !12
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.07.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !37

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.07.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store double %i.q, ptr %i.ak, align 8, !tbaa !12
  %.not.us = icmp eq i64 %.07.us, 0
  %i.al = add nsw i64 %.07.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !39

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.07 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.07
  %i.an = load double, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.ao = icmp slt i64 %.07, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.034.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.07, %.split ] ; 2 uses
  %i.ap = shl i64 %.034.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load double, ptr %i.ar, align 8, !tbaa !12
  %i.av = load double, ptr %i.at, align 8, !tbaa !12
  %i.aw = fcmp olt double %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !12
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i
  store double %i.ay, ptr %i.az, align 8, !tbaa !12
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.07, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load double, ptr %i.n, align 8, !tbaa !12
  store double %i.bc, ptr %i.o, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.07
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !12 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  store double %i.bf, ptr %i.bh, align 8, !tbaa !12
  %i.bi = icmp sgt i64 %.0920.i.i, %.07
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !37

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store double %i.an, ptr %i.bj, align 8, !tbaa !12
  %.not = icmp eq i64 %.07, 0
  %i.bk = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !39

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{null}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !13, i64 0}
!17 = !{!"_ZTS7momentsIdE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!18 = !{!17, !13, i64 8}
!19 = !{!17, !13, i64 16}
!20 = !{!17, !13, i64 24}
!21 = !{!17, !13, i64 32}
!22 = !{!17, !13, i64 40}
!23 = !{!17, !13, i64 48}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
end_hunk_1
