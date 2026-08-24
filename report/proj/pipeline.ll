Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/pipeline?download=true
inline.NumInlined: 260
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL13setup_pushpopP8PJconsts:bb.a
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 1, ptr %i.p, align 1, !tbaa !146
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.q, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.r, align 8, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_pop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZL4pushR8PJ_COORDP8PJconsts, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZL3popR8PJ_COORDP8PJconsts, ptr %i.b, align 8, !tbaa !67
  %i.c = tail call fastcc noundef ptr @_ZL13setup_pushpopP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.24, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL7des_pop, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 0, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z32pj_projection_specific_setup_popP8PJconsts(ptr noundef initializes((88, 96), (136, 152)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZL4pushR8PJ_COORDP8PJconsts, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZL3popR8PJ_COORDP8PJconsts, ptr %i.b, align 8, !tbaa !67
  %i.c = tail call fastcc noundef ptr @_ZL13setup_pushpopP8PJconsts(ptr noundef %0)
  ret ptr %i.c
}

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5stackIdSt5dequeIdSaIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !123    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !130
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #19
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit.i.i, !llvm.loop !131

_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !123
  br label %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i.i

_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !132
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #19
  br label %_ZNSt5dequeIdSaIdEED2Ev.exit

_ZNSt5dequeIdSaIdEED2Ev.exit:                     ; preds = %bb.a, %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN12_GLOBAL__N_14StepESaIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_14StepEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN12_GLOBAL__N_14StepEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !108
  %i.d = invoke ptr @proj_destroy(ptr noundef %.0.val.i.i)
          to label %_ZSt8_DestroyIN12_GLOBAL__N_14StepEEvPT_.exit.i.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZSt8_DestroyIN12_GLOBAL__N_14StepEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !117

_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_14StepEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_14StepESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.i = ptrtoint ptr %.val1 to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.k) #19
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_14StepESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_14StepESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_14StepES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z8pj_fwd4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z8pj_inv4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Z18pj_approx_3D_transP8PJconsts12PJ_DIRECTION8PJ_COORD(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #1

declare void @proj_trans(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #1

declare void @_Z18pj_approx_2D_transP8PJconsts12PJ_DIRECTION8PJ_COORD(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #1

declare void @proj_assign_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !132
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !123
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23
          to label %_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_.exit, !llvm.loop !164

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #18 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !130
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #19
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i, !llvm.loop !131

_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #22
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.x = extractvalue { ptr, i32 } %i.u, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #18 ; 0 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !123
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !132
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #22
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ac

_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_.exit: ; preds = %_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !152
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !130 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !154
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !152
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !130 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !154
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !165
  %i.aq = and i64 %1, 63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !142
  ret void

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #24
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare noundef i32 @_Z12pj_ellipsoidP8PJconsts(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @geod_init(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEE16_M_push_back_auxIJRKdEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !148
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !132
  %i.ag = load ptr, ptr %0, align 8, !tbaa !123
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIdSaIdEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #23 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !130
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !142
  %i.aq = load double, ptr %1, align 8, !tbaa !134
  store double %i.aq, ptr %i.ap, align 8, !tbaa !134
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !152
  store ptr %i.am, ptr %i.o, align 8, !tbaa !148
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !154
  store ptr %i.am, ptr %i.a, align 8, !tbaa !142
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIdSaIdEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !123
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
  br i1 %i.y, label %bb.d, label %bb.e, !prof !166

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !130
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !130
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !166

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !130
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !130
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit, !prof !167

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #23 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !166

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !130
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !130
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !123
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #19
  store ptr %i.aq, ptr %0, align 8, !tbaa !123
  store i64 %i.am, ptr %i.k, align 8, !tbaa !132
  br label %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPdS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !152
  %i.be = load ptr, ptr %.0, align 8, !tbaa !130  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !148
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !152
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !130 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !154
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !12, i64 16}
!39 = !{!9, !5, i64 360}
!40 = !{!9, !17, i64 380}
!41 = !{!9, !17, i64 384}
!42 = !{!9, !10, i64 0}
!43 = !{!44, !5, i64 568}
!44 = !{!"_ZTS6pj_ctx", !24, i64 0, !5, i64 32, !5, i64 36, !23, i64 40, !23, i64 41, !11, i64 48, !11, i64 56, !45, i64 64, !5, i64 72, !23, i64 76, !5, i64 80, !24, i64 88, !46, i64 120, !51, i64 144, !11, i64 152, !11, i64 160, !53, i64 168, !23, i64 216, !62, i64 224, !24, i64 312, !24, i64 344, !23, i64 376, !24, i64 384, !63, i64 416, !24, i64 464, !23, i64 496, !64, i64 504, !66, i64 560, !5, i64 564, !5, i64 568}
!45 = !{!"p1 _ZTS14projCppContext", !11, i64 0}
!46 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!51 = !{!"p2 omnipotent char", !52, i64 0}
!52 = !{!"any p2 pointer", !11, i64 0}
!53 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !54, i64 0}
!54 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !55, i64 0}
!55 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !56, i64 0, !58, i64 8}
!56 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !57, i64 0}
!57 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!58 = !{!"_ZTSSt15_Rb_tree_header", !59, i64 0, !26, i64 32}
!59 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!60 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!61 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!62 = !{!"_ZTS26projFileApiCallbackAndData", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80}
!63 = !{!"_ZTS27projNetworkCallbacksAndData", !23, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!64 = !{!"_ZTS18projGridChunkCache", !23, i64 0, !24, i64 8, !65, i64 40, !5, i64 48}
!65 = !{!"long long", !6, i64 0}
!66 = !{!"_ZTS9TMercAlgo", !6, i64 0}
!67 = !{!9, !11, i64 136}
!68 = !{!9, !11, i64 144}
!69 = !{!9, !11, i64 120}
!70 = !{!9, !11, i64 128}
!71 = !{!9, !11, i64 104}
!72 = !{!9, !11, i64 112}
!73 = !{!9, !11, i64 152}
!74 = !{!9, !11, i64 160}
!75 = !{!5, !5, i64 0}
!76 = !{!9, !11, i64 88}
!77 = !{!9, !13, i64 24}
!78 = !{!6, !6, i64 0}
!79 = !{!13, !13, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!12, !12, i64 0}
!83 = distinct !{!83, !81}
!84 = !{!85, !51, i64 0}
!85 = !{!"_ZTSN12_GLOBAL__N_18PipelineE", !51, i64 0, !51, i64 8, !86, i64 16, !6, i64 40}
!86 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_14StepESaIS1_EE", !87, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_14StepESaIS1_EE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_14StepESaIS1_EE12_Vector_implE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_14StepESaIS1_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!90 = !{!"p1 _ZTSN12_GLOBAL__N_14StepE", !11, i64 0}
!91 = !{!85, !51, i64 8}
!92 = distinct !{!92, !81}
!93 = distinct !{!93, !81}
!94 = !{!9, !16, i64 168}
!95 = !{!9, !16, i64 272}
!96 = !{!9, !16, i64 216}
!97 = !{!9, !16, i64 336}
!98 = !{!9, !16, i64 328}
!99 = !{!9, !15, i64 80}
!100 = distinct !{!100, !81}
!101 = distinct !{!101, !81}
!102 = distinct !{!102, !81}
!103 = !{!9, !14, i64 40}
!104 = !{!9, !5, i64 96}
!105 = distinct !{!105, !81}
!106 = !{!89, !90, i64 8}
!107 = !{!89, !90, i64 16}
!108 = !{!109, !14, i64 0}
!109 = !{!"_ZTSN12_GLOBAL__N_14StepE", !14, i64 0, !23, i64 8, !23, i64 9}
!110 = !{!109, !23, i64 8}
!111 = !{!109, !23, i64 9}
!112 = !{!89, !90, i64 0}
!113 = !{!14, !14, i64 0}
!114 = !{i8 0, i8 2}
!115 = !{}
!116 = distinct !{!116, !81}
!117 = distinct !{!117, !81}
!118 = distinct !{!118, !81}
!119 = !{!90, !90, i64 0}
!120 = distinct !{!120, !81}
!121 = distinct !{!121, !81}
!122 = distinct !{!122, !81}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSNSt11_Deque_baseIdSaIdEE16_Deque_impl_dataE", !125, i64 0, !26, i64 8, !126, i64 16, !126, i64 48}
!125 = !{!"p2 double", !52, i64 0}
!126 = !{!"_ZTSSt15_Deque_iteratorIdRdPdE", !127, i64 0, !127, i64 8, !127, i64 16, !125, i64 24}
end_hunk_0
