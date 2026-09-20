Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/csolve_VPSC?download=true
inline.NumInlined: 134
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<Rectangle, std::allocator<Rectangle>>::_Vector_impl" }
%"struct.std::_Vector_base<Rectangle, std::allocator<Rectangle>>::_Vector_impl" = type { %"struct.std::_Vector_base<Rectangle, std::allocator<Rectangle>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Rectangle, std::allocator<Rectangle>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt6vectorI9RectangleSaIS0_EE17_M_realloc_insertIJRdS4_S4_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

@_ZTIPKc = external constant ptr
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @newVariable(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #18 ; 6 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %1, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %2, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.d, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @newConstraint(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN10ConstraintC1EP8VariableS1_d(ptr noundef nonnull align 8 dereferenceable(42) %i.a, ptr noundef %0, ptr noundef %1, double noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN10ConstraintC1EP8VariableS1_d(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef, ptr noundef, double noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @newIncVPSC(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #18 ; 3 uses
  invoke void @_ZN7IncVPSCC1EjPP8VariablejPP10Constraint(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #19
  resume { ptr, i32 } %i.b
}

declare void @_ZN7IncVPSCC1EjPP8VariablejPP10Constraint(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @genXConstraints(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.3", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit, %bb.a
  %i.d = invoke noundef i32 @_Z20generateXConstraintsRKSt6vectorI9RectangleSaIS0_EEPP8VariableRPP10Constraintb(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
          to label %bb.f unwind label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.e, align 8, !tbaa !24
  %i.l = load double, ptr %i.f, align 8, !tbaa !24
  %i.m = load double, ptr %i.g, align 8, !tbaa !24
  %i.n = load double, ptr %i.h, align 8, !tbaa !24
  invoke void @_ZN9RectangleC1Edddd(ptr noundef nonnull align 8 dereferenceable(32) %i.i, double noundef %i.k, double noundef %i.l, double noundef %i.m, double noundef %i.n)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorI9RectangleSaIS0_EE17_M_realloc_insertIJRdS4_S4_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit unwind label %bb.e

_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit: ; preds = %bb.d, %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !41

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %5, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #19
  br label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit

_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit:         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i32 %i.d

bb.h:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.x, %bb.h ]
  %i.y = load ptr, ptr %5, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #19
  br label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit21

_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit21:       ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef i32 @_Z20generateXConstraintsRKSt6vectorI9RectangleSaIS0_EEPP8VariableRPP10Constraintb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @genYConstraints(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.3", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit, %bb.a
  %i.d = invoke noundef i32 @_Z20generateYConstraintsRKSt6vectorI9RectangleSaIS0_EEPP8VariableRPP10Constraint(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.e, align 8, !tbaa !24
  %i.l = load double, ptr %i.f, align 8, !tbaa !24
  %i.m = load double, ptr %i.g, align 8, !tbaa !24
  %i.n = load double, ptr %i.h, align 8, !tbaa !24
  invoke void @_ZN9RectangleC1Edddd(ptr noundef nonnull align 8 dereferenceable(32) %i.i, double noundef %i.k, double noundef %i.l, double noundef %i.m, double noundef %i.n)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.p, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorI9RectangleSaIS0_EE17_M_realloc_insertIJRdS4_S4_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit unwind label %bb.e

_ZNSt6vectorI9RectangleSaIS0_EE12emplace_backIJRdS4_S4_S4_EEERS0_DpOT_.exit: ; preds = %bb.d, %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !42

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %4, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #19
  br label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit

_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit:         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %i.d

bb.h:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.x, %bb.h ]
  %i.y = load ptr, ptr %4, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #19
  br label %_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit20

_ZNSt6vectorI9RectangleSaIS0_EED2Ev.exit20:       ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_Z20generateYConstraintsRKSt6vectorI9RectangleSaIS0_EEPP8VariableRPP10Constraint(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @newConstraints(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %0 to i64
  %i.b = icmp slt i32 %0, 0
  %i.c = shl nuw nsw i64 %i.a, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #18
  ret ptr %i.e
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @deleteConstraints(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN10ConstraintD1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %i.d) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #19
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !43

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %1) #19
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10ConstraintD1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @deleteConstraint(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10ConstraintD1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @deleteVariable(ptr noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #19
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i:    ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN8VariableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #19
  br label %_ZN8VariableD2Ev.exit

_ZN8VariableD2Ev.exit:                            ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN8VariableD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @satisfyVPSC(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %i.a, align 8
  invoke void %i.b(ptr noundef nonnull align 8 dereferenceable(84) %0)
          to label %bb.g unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc                      ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #20
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i32 } %i.c, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #20
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.h)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  tail call void @exit(i32 noundef 1) #21
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #20
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %bb.f, %bb.b
  %.merged = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define void @deleteVPSC(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(84) %0) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @solveVPSC(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(84) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @setVariableDesiredPos(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, double noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @getVariablePos(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !52
  %i.g = fadd double %i.d, %i.f
  ret double %i.g
}

; Function Attrs: mustprogress uwtable
define void @remapInConstraints(ptr nofree noundef captures(none) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !35
  %.pre13 = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %.pre15 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.h = icmp eq ptr %.pre15, %.pre14
  br i1 %i.h, label %_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre14, ptr %i.c, align 8, !tbaa !35
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit:  ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit
  %i.i = phi ptr [ %.pre13, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.08.012, align 8, !tbaa !28 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !38
  %i.o = fadd double %2, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.j, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.v  ; 2 uses
  %i.w = icmp ult i64 %3, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #18 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.t ; 2 uses
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !28
  %i.ac = icmp sgt i64 %i.t, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ag) #19
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ai = phi ptr [ %i.i, %bb.c ], [ %i.ah, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.aj = phi ptr [ %i.p, %bb.c ], [ %i.ad, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @remapOutConstraints(ptr nofree noundef captures(none) %0, ptr noundef %1, double noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.d
  br i1 %.not11, label %_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !35
  %.pre13 = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit
  %.pre14 = load ptr, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %.pre15 = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.h = icmp eq ptr %.pre15, %.pre14
  br i1 %i.h, label %_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre14, ptr %i.c, align 8, !tbaa !35
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE5clearEv.exit:  ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPP10ConstraintS1_EvT_S3_RSaIT0_E.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit
  %i.i = phi ptr [ %.pre13, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %i.j = phi ptr [ %.pre, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.08.012, align 8, !tbaa !28 ; 4 uses
  store ptr %1, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !38
  %i.n = fadd double %2, %i.m
  store double %i.n, ptr %i.l, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.j, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !35
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.u  ; 2 uses
  %i.v = icmp ult i64 %3, %i.u
  %i.w = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #18 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.s ; 2 uses
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !28
  %i.ab = icmp sgt i64 %i.s, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP10ConstraintSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.af) #19
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP10ConstraintSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.z, ptr %i.e, align 8, !tbaa !29
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  store ptr %i.ag, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10ConstraintSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ah = phi ptr [ %i.i, %bb.c ], [ %i.ag, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ai = phi ptr [ %i.o, %bb.c ], [ %i.ac, %_ZNSt6vectorIP10ConstraintSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI9RectangleSaIS0_EE17_M_realloc_insertIJRdS4_S4_S4_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI9RectangleSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorI9RectangleSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %6, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %6, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #18 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.q = load double, ptr %2, align 8, !tbaa !24
  %i.r = load double, ptr %3, align 8, !tbaa !24
  %i.s = load double, ptr %4, align 8, !tbaa !24
  %i.t = load double, ptr %5, align 8, !tbaa !24
  invoke void @_ZN9RectangleC1Edddd(ptr noundef nonnull align 8 dereferenceable(32) %i.p, double noundef %i.q, double noundef %i.r, double noundef %i.s, double noundef %i.t)
          to label %_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorI9RectangleSaIS0_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !62, !alias.scope !63
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !58

_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaI9RectangleEE9constructIS0_JRdS4_S4_S4_EEEvRS1_PT_DpOT0_.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %i.w, %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.x, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i31, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i32, i64 32, i1 false), !tbaa.struct !62, !alias.scope !64
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !58

_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.w, %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.y, %.lr.ph.i.i.i30 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI9RectangleSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #19
  br label %_ZNSt12_Vector_baseI9RectangleSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI9RectangleSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI9RectangleSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !23
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorI9RectangleSaIS0_EE12_M_check_lenEmPKc.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #19
  invoke void @__cxa_rethrow() #22
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ae

bb.g:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #23
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN9RectangleC1Edddd(ptr noundef nonnull align 8 dereferenceable(32), double noundef, double noundef, double noundef, double noundef) unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS5Block", !9, i64 0}
!11 = !{!"bool", !4, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 _ZTS10Constraint", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"_ZTSNSt12_Vector_baseIP10ConstraintSaIS1_EE12_Vector_implE", !14, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIP10ConstraintSaIS1_EE", !15, i64 0}
!17 = !{!"_ZTSSt6vectorIP10ConstraintSaIS1_EE", !16, i64 0}
!18 = !{!"_ZTS8Variable", !5, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !10, i64 32, !11, i64 40, !17, i64 48, !17, i64 72}
!19 = !{!18, !8, i64 8}
!20 = !{!"p1 _ZTS9Rectangle", !9, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseI9RectangleSaIS0_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !20, i64 16}
!24 = !{!8, !8, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!21, !20, i64 0}
!27 = !{!"p1 _ZTS10Constraint", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!14, !13, i64 0}
!30 = !{!14, !13, i64 16}
!31 = !{!"vtable pointer", !3, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"long", !4, i64 0}
!34 = !{!13, !13, i64 0}
!35 = !{!14, !13, i64 8}
!36 = !{!"p1 _ZTS8Variable", !9, i64 0}
!37 = !{!"_ZTS10Constraint", !36, i64 0, !36, i64 8, !8, i64 16, !8, i64 24, !33, i64 32, !11, i64 40, !11, i64 41}
!38 = !{!37, !8, i64 16}
!39 = !{!18, !5, i64 0}
!40 = !{!18, !8, i64 16}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = !{!18, !10, i64 32}
!45 = !{!"p2 _ZTS8Variable", !12, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIP8VariableSaIS1_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIP8VariableSaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIP8VariableSaIS1_EE", !48, i64 0}
!50 = !{!"_ZTS5Block", !49, i64 0, !8, i64 24, !8, i64 32, !8, i64 40, !11, i64 48, !33, i64 56, !17, i64 64, !17, i64 88}
!51 = !{!50, !8, i64 24}
!52 = !{!18, !8, i64 24}
!53 = !{!37, !36, i64 8}
!54 = !{!37, !36, i64 0}
!55 = distinct !{!55, !"_ZSt19__relocate_object_aI9RectangleS0_SaIS0_EEvPT_PT0_RT1_"}
!56 = distinct !{!56, !55, !"_ZSt19__relocate_object_aI9RectangleS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aI9RectangleS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !"_ZSt19__relocate_object_aI9RectangleS0_SaIS0_EEvPT_PT0_RT1_"}
!60 = distinct !{!60, !59, !"_ZSt19__relocate_object_aI9RectangleS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!61 = distinct !{!61, !59, !"_ZSt19__relocate_object_aI9RectangleS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!62 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 8, !24, i64 24, i64 8, !24}
!63 = !{!57, !56}
!64 = !{!61, !60}
end_hunk_0
