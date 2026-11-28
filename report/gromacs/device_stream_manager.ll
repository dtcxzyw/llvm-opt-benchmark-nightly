Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/device_stream_manager?download=true
inline.NumInlined: 121
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::SimulationWorkload" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

$__clang_call_terminate = comdat any

$_ZN3gmx16EnumerationArrayINS_16DeviceStreamTypeESt10unique_ptrI12DeviceStreamSt14default_deleteIS3_EELS1_5EED2Ev = comdat any

@_ZTISt9exception = external constant ptr
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [56 x i8] c"Error detected when destroying DeviceStreamManager: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"stream(DeviceStreamType::NonBondedNonLocal).isValid()\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"GPU non-bonded non-local stream should be valid in order to use GPU version of bonded forces with domain decomposition.\00", align 1
@"__PRETTY_FUNCTION__._ZZNK3gmx19DeviceStreamManager12bondedStreamEvENK3$_0clEv" = private unnamed_addr constant [76 x i8] c"auto gmx::DeviceStreamManager::bondedStream()::(lambda)::operator()() const\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/gpu_utils/device_stream_manager.cpp\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"stream(DeviceStreamType::NonBondedLocal).isValid()\00", align 1
@.str.5 = private unnamed_addr constant [119 x i8] c"GPU non-bonded local stream should be valid in order to use GPU version of bonded forces without domain decomposition.\00", align 1

@_ZN3gmx19DeviceStreamManager4ImplC1ERK17DeviceInformationNS_18SimulationWorkloadEb = unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN3gmx19DeviceStreamManager4ImplC2ERK17DeviceInformationNS_18SimulationWorkloadEb
@_ZN3gmx19DeviceStreamManager4ImplD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx19DeviceStreamManager4ImplD2Ev
@_ZN3gmx19DeviceStreamManagerC1ERK17DeviceInformationNS_18SimulationWorkloadEb = unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN3gmx19DeviceStreamManagerC2ERK17DeviceInformationNS_18SimulationWorkloadEb
@_ZN3gmx19DeviceStreamManagerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx19DeviceStreamManagerD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DeviceStreamManager4ImplC2ERK17DeviceInformationNS_18SimulationWorkloadEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef readonly byval(%"class.gmx::SimulationWorkload") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13DeviceContextC1ERK17DeviceInformation(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36, !range !12, !noundef !13 ; 2 uses
  store i8 %i.d, ptr %i.b, align 8, !tbaa !18
  %i.e = load ptr, ptr %0, align 8, !tbaa !19
  invoke void @_Z15setActiveDeviceRK17DeviceInformation(ptr noundef nonnull align 1 %i.e)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  invoke void @_Z30pmallocSetDefaultDeviceContextPK13DeviceContext(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNK13DeviceContext8activateEv.exit unwind label %bb.e

_ZNK13DeviceContext8activateEv.exit:              ; preds = %.noexc
  %i.f = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #15
          to label %.noexc15 unwind label %bb.l, !noalias !37 ; 3 uses

.noexc15:                                         ; preds = %_ZNK13DeviceContext8activateEv.exit
  invoke void @_ZN12DeviceStreamC1ERK13DeviceContext20DeviceStreamPriorityb(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, i1 noundef zeroext %3)
          to label %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !37

bb.b:                                             ; preds = %.noexc15
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 1) #16, !noalias !37
  br label %.body

_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc15
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !20
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.h) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !38, !range !12, !noundef !13
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit25

bb.c:                                             ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit
  %i.l = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #15
          to label %.noexc16 unwind label %bb.l, !noalias !39 ; 3 uses

.noexc16:                                         ; preds = %bb.c
  invoke void @_ZN12DeviceStreamC1ERK13DeviceContext20DeviceStreamPriorityb(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i1 noundef zeroext %3)
          to label %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit19 unwind label %bb.d, !noalias !39

bb.d:                                             ; preds = %.noexc16
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 1) #16, !noalias !39
  br label %.body

_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit19: ; preds = %.noexc16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 3 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !20
  %.not.i.i.i.i20 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i20, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit25, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i21

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i21: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit19
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.o) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit25

bb.e:                                             ; preds = %.noexc, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit25: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit19, %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i21, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit
  %i.q = trunc nuw i8 %i.d to i1
  br i1 %i.q, label %bb.f, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit35

bb.f:                                             ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit25
  %i.r = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #15
          to label %.noexc26 unwind label %bb.l, !noalias !40 ; 3 uses

.noexc26:                                         ; preds = %bb.f
  invoke void @_ZN12DeviceStreamC1ERK13DeviceContext20DeviceStreamPriorityb(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i1 noundef zeroext %3)
          to label %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit29 unwind label %bb.g, !noalias !40

bb.g:                                             ; preds = %.noexc26
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1) #16, !noalias !40
  br label %.body

_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit29: ; preds = %.noexc26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20   ; 3 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !20
  %.not.i.i.i.i30 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i30, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit35, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i31

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i31: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit29
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.u) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit35

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit35: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit29, %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i31, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit25
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.w = load i8, ptr %i.v, align 1, !range !12
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %i.k, i1 true, i1 %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.z = load i8, ptr %i.y, align 2, !range !12
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.aa
  br i1 %or.cond5, label %bb.h, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit45

bb.h:                                             ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit35
  %i.ab = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #15
          to label %.noexc36 unwind label %bb.l, !noalias !41 ; 3 uses

.noexc36:                                         ; preds = %bb.h
  invoke void @_ZN12DeviceStreamC1ERK13DeviceContext20DeviceStreamPriorityb(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i1 noundef zeroext %3)
          to label %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit39 unwind label %bb.i, !noalias !41

bb.i:                                             ; preds = %.noexc36
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 1) #16, !noalias !41
  br label %.body

_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit39: ; preds = %.noexc36
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 3 uses
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !20
  %.not.i.i.i.i40 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i40, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit45, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i41

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i41: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit39
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.ae) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit45

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit45: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit39, %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i41, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit35
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !42, !range !12, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit55

bb.j:                                             ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit45
  %i.ai = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #15
          to label %.noexc46 unwind label %bb.l, !noalias !43 ; 3 uses

.noexc46:                                         ; preds = %bb.j
  invoke void @_ZN12DeviceStreamC1ERK13DeviceContext20DeviceStreamPriorityb(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, i1 noundef zeroext %3)
          to label %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit49 unwind label %bb.k, !noalias !43

bb.k:                                             ; preds = %.noexc46
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 1) #16, !noalias !43
  br label %.body

_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit49: ; preds = %.noexc46
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 3 uses
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !20
  %.not.i.i.i.i50 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i50, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit55, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i51

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i51: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit49
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.al) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit55

bb.l:                                             ; preds = %bb.h, %bb.f, %bb.c, %_ZNK13DeviceContext8activateEv.exit, %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body

.body:                                            ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.s, %bb.g ], [ %i.m, %bb.d ], [ %i.g, %bb.b ], [ %i.aj, %bb.k ], [ %i.am, %bb.l ] ; 3 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.an = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.ao = icmp eq i32 %.0, %i.an
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.body
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %.011) #17
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #18
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit55: ; preds = %_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit49, %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.i.i.i51, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit45
  ret void

bb.p:                                             ; preds = %bb.o, %.body, %bb.e
  %.merged = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn, %.body ], [ %i.aq, %bb.o ]
  tail call void @_ZN3gmx16EnumerationArrayINS_16DeviceStreamTypeESt10unique_ptrI12DeviceStreamSt14default_deleteIS3_EELS1_5EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #17
  tail call void @_ZN13DeviceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #19
  unreachable
}

declare void @_ZN13DeviceContextC1ERK17DeviceInformation(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #2

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayINS_16DeviceStreamTypeESt10unique_ptrI12DeviceStreamSt14default_deleteIS3_EELS1_5EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i: ; preds = %bb.a
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.1, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.1

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.1: ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.1

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.1, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.2, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.2

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.2: ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.1
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.f) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.2

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.2: ; preds = %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.2, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.3, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.3

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.3: ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.2
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.h) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.3

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.3: ; preds = %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.3, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.2
  %i.i = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %.not.i.4 = icmp eq ptr %i.i, null
  br i1 %.not.i.4, label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.4, label %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.4

_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.4: ; preds = %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.3
  tail call void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.i) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 1) #16
  br label %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.4

_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.4: ; preds = %_ZNKSt14default_deleteI12DeviceStreamEclEPS0_.exit.i.4, %_ZNSt10unique_ptrI12DeviceStreamSt14default_deleteIS0_EED2Ev.exit.3
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13DeviceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_Z15setActiveDeviceRK17DeviceInformation(ptr noundef nonnull align 1) local_unnamed_addr #1

declare void @_Z30pmallocSetDefaultDeviceContextPK13DeviceContext(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN12DeviceStreamC1ERK13DeviceContext20DeviceStreamPriorityb(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN12DeviceStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx19DeviceStreamManager4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.a = load ptr, ptr %.0.ptr, align 8, !tbaa !20 ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK12DeviceStream11synchronizeEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #17 ; 2 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #17
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str, ptr noundef %i.l) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.v

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %.0.ptr.1, align 8, !tbaa !20 ; 2 uses
  %.not13.1 = icmp eq ptr %i.n, null
  br i1 %.not13.1, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK12DeviceStream11synchronizeEv(ptr noundef nonnull align 1 dereferenceable(1) %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.o, 1
  %i.r = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.p) #17 ; 2 uses
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #17
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, ptr noundef %i.y) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %.0.ptr.2, align 8, !tbaa !20 ; 2 uses
  %.not13.2 = icmp eq ptr %i.aa, null
  br i1 %.not13.2, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK12DeviceStream11synchronizeEv(ptr noundef nonnull align 1 dereferenceable(1) %i.aa)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, i32 } %i.ab, 1
  %i.ae = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.ac) #17 ; 2 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #17
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str, ptr noundef %i.al) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %.0.ptr.3, align 8, !tbaa !20 ; 2 uses
  %.not13.3 = icmp eq ptr %i.an, null
  br i1 %.not13.3, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK12DeviceStream11synchronizeEv(ptr noundef nonnull align 1 dereferenceable(1) %i.an)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, i32 } %i.ao, 1
  %i.ar = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.at = tail call ptr @__cxa_begin_catch(ptr %i.ap) #17 ; 2 uses
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #17
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str, ptr noundef %i.ay) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %.0.ptr.4, align 8, !tbaa !20 ; 2 uses
  %.not13.4 = icmp eq ptr %i.ba, null
  br i1 %.not13.4, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK12DeviceStream11synchronizeEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ba)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { ptr, i32 } %i.bb, 1
  %i.be = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #17
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bc) #17 ; 2 uses
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !45
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #17
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str, ptr noundef %i.bl) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  tail call void @_ZN3gmx16EnumerationArrayINS_16DeviceStreamTypeESt10unique_ptrI12DeviceStreamSt14default_deleteIS3_EELS1_5EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.0.ptr) #17
  tail call void @_ZN13DeviceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void

bb.v:                                             ; preds = %bb.t, %bb.p, %bb.l, %bb.h, %bb.d
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #19
  unreachable

bb.w:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.g, %bb.c
  %.lcssa = phi ptr [ %i.c, %bb.c ], [ %i.p, %bb.g ], [ %i.ac, %bb.k ], [ %i.ap, %bb.o ], [ %i.bc, %bb.s ]
  tail call void @__clang_call_terminate(ptr %.lcssa) #19
  unreachable
}

declare void @_ZNK12DeviceStream11synchronizeEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx19DeviceStreamManagerC2ERK17DeviceInformationNS_18SimulationWorkloadEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef readonly byval(%"class.gmx::SimulationWorkload") align 8 captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15 ; 3 uses
  invoke void @_ZN3gmx19DeviceStreamManager4ImplC1ERK17DeviceInformationNS_18SimulationWorkloadEb(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 1 %1, ptr noundef nonnull byval(%"class.gmx::SimulationWorkload") align 8 %2, i1 noundef zeroext %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx19DeviceStreamManagerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx19DeviceStreamManager4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx19DeviceStreamManager4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx19DeviceStreamManager4ImplEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN3gmx19DeviceStreamManager4ImplD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.a) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #16
  br label %_ZNSt10unique_ptrIN3gmx19DeviceStreamManager4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx19DeviceStreamManager4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx19DeviceStreamManager4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 1 ptr @_ZNK3gmx19DeviceStreamManager10deviceInfoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3gmx19DeviceStreamManager7contextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 1 dereferenceable(1) ptr @_ZNK3gmx19DeviceStreamManager6streamENS_16DeviceStreamTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 1 dereferenceable(1) ptr @_ZNK3gmx19DeviceStreamManager12bondedStreamEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !18, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call noundef zeroext i1 @_ZNK12DeviceStream7isValidEv(ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx19DeviceStreamManager12bondedStreamEvENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 179) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = tail call noundef zeroext i1 @_ZNK12DeviceStream7isValidEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx19DeviceStreamManager12bondedStreamEvENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 186) #18
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sink3 = phi i64 [ 16, %bb.b ], [ 8, %bb.d ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink3
  %.0 = load ptr, ptr %i.l, align 8, !tbaa !20
  ret ptr %.0
}

declare noundef zeroext i1 @_ZNK12DeviceStream7isValidEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3gmx19DeviceStreamManager13streamIsValidENS_16DeviceStreamTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK12DeviceStream7isValidEv(ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS12DeviceStream", !9, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!"p1 _ZTS17DeviceInformation", !9, i64 0}
!15 = !{!"_ZTS13DeviceContext", !14, i64 0}
!16 = !{!"_ZTSN3gmx16EnumerationArrayINS_16DeviceStreamTypeESt10unique_ptrI12DeviceStreamSt14default_deleteIS3_EELS1_5EEE", !5, i64 0}
!17 = !{!"_ZTSN3gmx19DeviceStreamManager4ImplE", !15, i64 0, !16, i64 8, !11, i64 48}
!18 = !{!17, !11, i64 48}
!19 = !{!15, !14, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!"p1 _ZTSN3gmx19DeviceStreamManager4ImplE", !9, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, i1 true, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!24 = distinct !{!24, !23, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!25 = distinct !{!25, i1 true, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!26 = distinct !{!26, !25, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!27 = distinct !{!27, i1 true, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!28 = distinct !{!28, !27, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!30 = distinct !{!30, !29, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!32 = distinct !{!32, !31, !"_ZSt11make_uniqueI12DeviceStreamJR13DeviceContext20DeviceStreamPriorityRKbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!33 = !{!"_ZTSSt10_Head_baseILm0EP12DeviceStreamLb0EE", !10, i64 0}
!34 = !{!33, !10, i64 0}
!35 = !{!"_ZTSN3gmx18SimulationWorkloadE", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 3, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 16, !11, i64 17, !11, i64 18, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 22, !11, i64 23, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !11, i64 28}
!36 = !{!35, !11, i64 17}
!37 = !{!24}
!38 = !{!35, !11, i64 10}
!39 = !{!26}
!40 = !{!28}
!41 = !{!30}
!42 = !{!35, !11, i64 22}
!43 = !{!32}
!44 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"vtable pointer", !4, i64 0}
!47 = !{!46, !46, i64 0}
end_hunk_0
