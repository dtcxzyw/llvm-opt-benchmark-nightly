Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @free(ptr noundef %i.f) #37
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #44
  br label %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EED2Ev.exit

_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6spdlog7details10backtracerC2EOS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) initializes((0, 41), (48, 104)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, i8 0, i64 41, i1 false)
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #43
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load atomic i8, ptr %i.d monotonic, align 8, !range !71, !noundef !72
  store atomic i8 %i.e, ptr %i.c seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 8, !tbaa !70
  store <2 x i64> %i.g, ptr %i.a, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !70
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !tbaa !78
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  store ptr %i.s, ptr %i.p, align 8, !tbaa !79
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.u) #37
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #44
  br label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEaSEOS3_.exit

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i8 0, i64 32, i1 false)
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #37 ; 0 uses
  ret void

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(104) ptr @_ZN6spdlog7details10backtraceraSES1_(ptr noundef nonnull returned align 8 dereferenceable(104) %0, ptr nofree noundef align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #43
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load atomic i8, ptr %i.b monotonic, align 8, !range !71, !noundef !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i8 %i.c, ptr %i.d seq_cst, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !70
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !70
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load <2 x ptr>, ptr %i.k, align 8, !tbaa !78
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  store ptr %i.s, ptr %i.p, align 8, !tbaa !79
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.u) #37
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #44
  br label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEaSEOS3_.exit

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 32, i1 false)
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details10backtracer6enableEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #43
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i8 1, ptr %i.b monotonic, align 8
  %i.c = add i64 %1, 1                            ; 7 uses
  %i.d = icmp ugt i64 %i.c, 24019198012642645
  br i1 %i.d, label %.noexc.i, label %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #43
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit, label %_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.e = mul nuw nsw i64 %i.c, 384
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #45
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %bb.e ; 12 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EEC2EmRKS3_.exit.i.i
  %lcmp.mod.not = trunc i64 %i.c to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.g, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.h, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.m, ptr %i.j, align 8, !tbaa !67
  store i64 250, ptr %i.k, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 384 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.013.i.i.i.i.i.i, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.p, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.q, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.u, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  store ptr %i.v, ptr %i.s, align 8, !tbaa !67
  store i64 250, ptr %i.t, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 384
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.w, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.x, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 408
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.y, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 480
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 496
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 504
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ac, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 512
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !67
  store i64 250, ptr %i.ab, align 8, !tbaa !68
  %i.ae = add nsw i64 %.01012.i.i.i.i.i.i, -2     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !340

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.af, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw [384 x i8], ptr %i.f, i64 %i.c
  br label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit: ; preds = %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.sroa.10.0 = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %i.f, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit ]
  %.sroa.19.0 = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %i.ag, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %.lcssa, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %i.ah, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.10.0, ptr %i.aj, align 8, !tbaa !75
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.al, align 8, !tbaa !76
  store ptr %.sroa.19.0, ptr %i.an, align 8, !tbaa !79
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ak, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.ap) #37
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #44
  br label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev.exit

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.d
  %i.as = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EEC2EmRKS3_.exit.i.i, %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details10backtracer7disableEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #43
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i8 0, ptr %i.b monotonic, align 8
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.spdlog::details::log_msg_buffer", align 8 ; 7 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #43
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZN6spdlog7details14log_msg_bufferC2ERKNS0_7log_msgE(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(384) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.not.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i, label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.d) #37
  br label %_ZN6spdlog7details14log_msg_bufferD2Ev.exit

_ZN6spdlog7details14log_msg_bufferD2Ev.exit:      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.f = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  ret void

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.h = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !91
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = getelementptr inbounds nuw [384 x i8], ptr %i.f, i64 %i.e ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.h, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 96, i1 false), !tbaa.struct !95
end_hunk_0
begin_hunk_1_@_ZN6spdlog7details13mdc_formatterINS0_18null_scoped_padderEE10format_mdcERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEERN3fmt3v1219basic_memory_bufferIcLm250ENSL_6detail9allocatorIcEEEE:bb.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %.pre.i.i18.pre.pre = load i64, ptr %i.e, align 8, !tbaa !69
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60
  %.pre.i.i18.pre = phi i64 [ %.pre.i.i18.pre.pre, %.lr.ph ], [ %.pre.i.i18.pre83, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60 ] ; 2 uses
  %.sroa.068.078 = phi ptr [ %i.d, %.lr.ph ], [ %i.ep, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60 ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.068.078, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.068.078, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.068.078, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.068.078, i64 72
  %.not76 = icmp eq ptr %.sroa.068.078, %i.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.k, 0
  br i1 %.not31.i.i, label %.lr.ph34.i.i17, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.b
  %i.o = ptrtoint ptr %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.p = phi i64 [ %.pre.i.i18.pre, %.lr.ph34.i.i ], [ %i.aw, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.m, %.lr.ph34.i.i ], [ %i.ax, %._crit_edge.i.i ] ; 9 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !68
  %i.r = sub i64 %i.q, %i.p
  %i.s = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.t = sub i64 %i.o, %i.s                       ; 4 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.w = add i64 %i.t, %i.p
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.w), !inline_history !23
  %i.x = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !68
  %i.z = sub i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026.i.i = phi i64 [ %i.x, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aa, %bb.d ], [ %i.t, %bb.c ] ; 13 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check151

iter.check151:                                    ; preds = %bb.e
  %min.iters.check138 = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check138, label %.lr.ph.i.i.preheader, label %vector.memcheck136

vector.memcheck136:                               ; preds = %iter.check151
  %i.ae = add i64 %.026.i.i, %i.ac
  %i.af = sub i64 %i.s, %i.ae
  %diff.check137 = icmp ugt i64 %i.af, -32
  br i1 %diff.check137, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check139

vector.main.loop.iter.check139:                   ; preds = %vector.memcheck136
  %min.iters.check140 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check140, label %vec.epilog.ph155, label %vector.ph141

vector.ph141:                                     ; preds = %vector.main.loop.iter.check139
  %i.ag = and i64 %.025.i.i, 28
  %n.vec142 = and i64 %.025.i.i, -32              ; 4 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.ph141, %vector.body143
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index144 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load145 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !64
  %wide.load146 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index144 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %wide.load145, ptr %i.aj, align 1, !tbaa !64
  store <16 x i8> %wide.load146, ptr %i.ak, align 1, !tbaa !64
  %index.next147 = add nuw i64 %index144, 32      ; 2 uses
  %i.al = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.al, label %middle.block148, label %vector.body143, !llvm.loop !940

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %.025.i.i, %n.vec142
  br i1 %cmp.n149, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154 = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check154, label %.lr.ph.i.i.preheader, label %vec.epilog.ph155, !prof !109

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check139, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec142, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check139 ]
  %n.vec156 = and i64 %.025.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph155
  %index158 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next160, %vec.epilog.vector.body157 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index158
  %wide.load159 = load <4 x i8>, ptr %i.am, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index158
  store <4 x i8> %wide.load159, ptr %i.an, align 1, !tbaa !64
  %index.next160 = add nuw i64 %index158, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next160, %n.vec156
  br i1 %i.ao, label %vec.epilog.middle.block161, label %vec.epilog.vector.body157, !llvm.loop !941

vec.epilog.middle.block161:                       ; preds = %vec.epilog.vector.body157
  %cmp.n162 = icmp eq i64 %.025.i.i, %n.vec156
  br i1 %cmp.n162, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check151, %vector.memcheck136, %vec.epilog.iter.check153, %vec.epilog.middle.block161
  %.030.i.i.ph = phi i64 [ 0, %iter.check151 ], [ 0, %vector.memcheck136 ], [ %n.vec142, %vec.epilog.iter.check153 ], [ %n.vec156, %vec.epilog.middle.block161 ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.030.i.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !64
  %i.as = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !942

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.as, %.lr.ph.i.i.prol ]
  %i.at = sub i64 %.030.i.i.ph, %.025.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block161, %middle.block148
  %.pre37.i.i = load i64, ptr %i.e, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %i.av = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.e ]
  %i.aw = add i64 %i.av, %.025.i.i                ; 3 uses
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.n
  br i1 %.not.i.i, label %.lr.ph34.i.i17, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.030.i.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !64
  %i.bb = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %i.bf = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !64
  %i.bj = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !64
  %i.bn = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bn, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !943

.lr.ph34.i.i17:                                   ; preds = %._crit_edge.i.i, %bb.b
  %.pre.i.i18 = phi i64 [ %.pre.i.i18.pre, %bb.b ], [ %i.aw, %._crit_edge.i.i ] ; 3 uses
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !68
  %i.bp = icmp eq i64 %i.bo, %.pre.i.i18
  br i1 %i.bp, label %.lr.ph126, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30

.lr.ph126:                                        ; preds = %.lr.ph34.i.i17, %._crit_edge.i.i28
  %i.bq = phi i64 [ %i.bt, %._crit_edge.i.i28 ], [ %.pre.i.i18, %.lr.ph34.i.i17 ]
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.bs = add i64 %i.bq, 1
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.bs), !inline_history !23
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !69  ; 6 uses
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !68
  %.not117 = icmp eq i64 %i.bu, %i.bt
  br i1 %.not117, label %._crit_edge.i.i28, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30

._crit_edge.i.i28:                                ; preds = %.lr.ph126
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !69
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !68
  %i.bw = icmp eq i64 %i.bv, %i.bt
  br i1 %i.bw, label %.lr.ph126, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30: ; preds = %.lr.ph126, %._crit_edge.i.i28, %.lr.ph34.i.i17
  %.sink164 = phi i64 [ %.pre.i.i18, %.lr.ph34.i.i17 ], [ %i.bt, %._crit_edge.i.i28 ], [ %i.bt, %.lr.ph126 ]
  %i.bx = load ptr, ptr %2, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink164
  store i8 58, ptr %i.by, align 1, !tbaa !64
  %.pre37.i.i27 = load i64, ptr %i.e, align 8, !tbaa !69
  %i.bz = add i64 %.pre37.i.i27, 1                ; 3 uses
  store i64 %i.bz, ptr %i.e, align 8, !tbaa !69
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !60  ; 2 uses
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !59  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 2 uses
  %.not31.i.i31 = icmp samesign eq i64 %i.cb, 0
  br i1 %.not31.i.i31, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit45, label %.lr.ph34.i.i32

.lr.ph34.i.i32:                                   ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30
  %i.cd = ptrtoint ptr %i.cc to i64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i43, %.lr.ph34.i.i32
  %i.ce = phi i64 [ %i.bz, %.lr.ph34.i.i32 ], [ %i.dl, %._crit_edge.i.i43 ] ; 3 uses
  %.02732.i.i34 = phi ptr [ %i.ca, %.lr.ph34.i.i32 ], [ %i.dm, %._crit_edge.i.i43 ] ; 9 uses
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !68
  %i.cg = sub i64 %i.cf, %i.ce
  %i.ch = ptrtoint ptr %.02732.i.i34 to i64       ; 2 uses
  %i.ci = sub i64 %i.cd, %i.ch                    ; 4 uses
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.cl = add i64 %i.ci, %i.ce
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.cl), !inline_history !23
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.cn = load i64, ptr %i.f, align 8, !tbaa !68
  %i.co = sub i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.co)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i.i35 = phi i64 [ %i.cm, %bb.g ], [ %i.ce, %bb.f ] ; 3 uses
  %.025.i.i36 = phi i64 [ %i.cp, %bb.g ], [ %i.ci, %bb.f ] ; 13 uses
  %i.cq = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.026.i.i35 ; 7 uses
  %.not36.i.i37 = icmp eq i64 %.025.i.i36, 0
  br i1 %.not36.i.i37, label %._crit_edge.i.i43, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.025.i.i36, 4
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ct = add i64 %.026.i.i35, %i.cr
  %i.cu = sub i64 %i.ch, %i.ct
  %diff.check = icmp ugt i64 %i.cu, -32
  br i1 %diff.check, label %.lr.ph.i.i38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check129 = icmp ult i64 %.025.i.i36, 32
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cv = and i64 %.025.i.i36, 28
  %n.vec = and i64 %.025.i.i36, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <16 x i8>, ptr %i.cw, align 1, !tbaa !64
  %wide.load130 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <16 x i8> %wide.load, ptr %i.cy, align 1, !tbaa !64
  store <16 x i8> %wide.load130, ptr %i.cz, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !944

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i36, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i41, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i38.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %.025.i.i36, -4             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %index132
  %wide.load133 = load <4 x i8>, ptr %i.db, align 1, !tbaa !64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %index132
  store <4 x i8> %wide.load133, ptr %i.dc, align 1, !tbaa !64
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next134, %n.vec131
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !945

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %.025.i.i36, %n.vec131
  br i1 %cmp.n135, label %._crit_edge.loopexit.i.i41, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i39.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec131, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter169 = and i64 %.025.i.i36, 3           ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.i38.prol.loopexit, label %.lr.ph.i.i38.prol

.lr.ph.i.i38.prol:                                ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38.prol
  %.030.i.i39.prol = phi i64 [ %i.dh, %.lr.ph.i.i38.prol ], [ %.030.i.i39.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.i38.prol ], [ 0, %.lr.ph.i.i38.preheader ]
  %i.de = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %.030.i.i39.prol
  %i.df = load i8, ptr %i.de, align 1, !tbaa !64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.030.i.i39.prol
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !64
  %i.dh = add nuw i64 %.030.i.i39.prol, 1         ; 2 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %.lr.ph.i.i38.prol.loopexit, label %.lr.ph.i.i38.prol, !llvm.loop !946

.lr.ph.i.i38.prol.loopexit:                       ; preds = %.lr.ph.i.i38.prol, %.lr.ph.i.i38.preheader
  %.030.i.i39.unr = phi i64 [ %.030.i.i39.ph, %.lr.ph.i.i38.preheader ], [ %i.dh, %.lr.ph.i.i38.prol ]
  %i.di = sub i64 %.030.i.i39.ph, %.025.i.i36
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %._crit_edge.loopexit.i.i41, label %.lr.ph.i.i38

._crit_edge.loopexit.i.i41:                       ; preds = %.lr.ph.i.i38.prol.loopexit, %.lr.ph.i.i38, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i42 = load i64, ptr %i.e, align 8, !tbaa !69
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %._crit_edge.loopexit.i.i41, %bb.h
  %i.dk = phi i64 [ %.pre37.i.i42, %._crit_edge.loopexit.i.i41 ], [ %.026.i.i35, %bb.h ]
  %i.dl = add i64 %i.dk, %.025.i.i36              ; 3 uses
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %.025.i.i36 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.dm, %i.cc
  br i1 %.not.i.i44, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit45, label %bb.f, !llvm.loop !3

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.prol.loopexit, %.lr.ph.i.i38
  %.030.i.i39 = phi i64 [ %i.ec, %.lr.ph.i.i38 ], [ %.030.i.i39.unr, %.lr.ph.i.i38.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %.030.i.i39
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.030.i.i39
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !64
  %i.dq = add nuw i64 %.030.i.i39, 1              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !64
  %i.du = add nuw i64 %.030.i.i39, 2              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !64
  %i.dy = add nuw i64 %.030.i.i39, 3              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02732.i.i34, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !64
  %i.ec = add nuw i64 %.030.i.i39, 4              ; 2 uses
  %exitcond.not.i.i40.3 = icmp eq i64 %i.ec, %.025.i.i36
  br i1 %exitcond.not.i.i40.3, label %._crit_edge.loopexit.i.i41, label %.lr.ph.i.i38, !llvm.loop !947

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit45: ; preds = %._crit_edge.i.i43, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30
  %.pre.i.i48 = phi i64 [ %i.bz, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit30 ], [ %i.dl, %._crit_edge.i.i43 ] ; 4 uses
  br i1 %.not76, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60, label %.lr.ph34.i.i47.preheader

.lr.ph34.i.i47.preheader:                         ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit45
  %i.ed = load i64, ptr %i.f, align 8, !tbaa !68
  %i.ee = icmp eq i64 %i.ed, %.pre.i.i48
  br i1 %i.ee, label %.lr.ph127, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60.loopexit

.lr.ph127:                                        ; preds = %.lr.ph34.i.i47.preheader, %._crit_edge.i.i58
  %i.ef = phi i64 [ %i.ei, %._crit_edge.i.i58 ], [ %.pre.i.i48, %.lr.ph34.i.i47.preheader ]
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.eh = add i64 %i.ef, 1
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.eh), !inline_history !23
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !69  ; 6 uses
  %i.ej = load i64, ptr %i.f, align 8, !tbaa !68
  %.not118 = icmp eq i64 %i.ej, %i.ei
  br i1 %.not118, label %._crit_edge.i.i58, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60.loopexit

._crit_edge.i.i58:                                ; preds = %.lr.ph127
  store i64 %i.ei, ptr %i.e, align 8, !tbaa !69
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !68
  %i.el = icmp eq i64 %i.ek, %i.ei
  br i1 %i.el, label %.lr.ph127, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60.loopexit

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60.loopexit: ; preds = %.lr.ph127, %._crit_edge.i.i58, %.lr.ph34.i.i47.preheader
  %.sink165 = phi i64 [ %.pre.i.i48, %.lr.ph34.i.i47.preheader ], [ %i.ei, %._crit_edge.i.i58 ], [ %i.ei, %.lr.ph127 ]
  %i.em = load ptr, ptr %2, align 8, !tbaa !67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink165
  store i8 32, ptr %i.en, align 1, !tbaa !64
  %.pre37.i.i57 = load i64, ptr %i.e, align 8, !tbaa !69
  %i.eo = add i64 %.pre37.i.i57, 1                ; 2 uses
  store i64 %i.eo, ptr %i.e, align 8, !tbaa !69
  br label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60.loopexit, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit45
  %.pre.i.i18.pre83 = phi i64 [ %i.eo, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit60.loopexit ], [ %.pre.i.i48, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit45 ]
  %i.ep = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.068.078) #47 ; 2 uses
  %.not = icmp eq ptr %i.ep, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !948
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #42
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #37

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !950
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !951  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.g) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #44
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #44
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !949

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #38

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(283) %1) local_unnamed_addr #26 comdat {
bb.a:
  %2 = alloca %"class.fmt::v12::format_int", align 8 ; 8 uses
  %i.a = icmp ult i32 %0, 1000
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i32 %0 to i16       ; 2 uses
  %i.b = udiv i16 %.lhs.trunc, 100
  %i.c = urem i16 %.lhs.trunc, 100
  %i.d = trunc nuw nsw i16 %i.b to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !29
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !64
  %.lhs.trunc21 = trunc nuw nsw i16 %i.c to i8    ; 2 uses
  %i.q = udiv i8 %.lhs.trunc21, 10
  %i.r = urem i8 %.lhs.trunc21, 10
  %i.s = or disjoint i8 %i.q, 48
  %i.t = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.i, align 8, !tbaa !68
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u), !inline_history !29
  %.pre.i10 = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i11 = add i64 %.pre.i10, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.d
  %.pre-phi.i9 = phi i64 [ %i.u, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i11, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i10, %bb.d ]
  %i.aa = load ptr, ptr %1, align 8, !tbaa !67
  store i64 %.pre-phi.i9, ptr %i.f, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1, !tbaa !64
  %i.ac = or disjoint i8 %i.r, 48
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !68
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ae), !inline_history !29
  %.pre.i14 = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i15 = add i64 %.pre.i14, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit16: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12, %bb.e
  %.pre-phi.i13 = phi i64 [ %i.ae, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12 ], [ %.pre2.i15, %bb.e ]
  %i.aj = phi i64 [ %i.ad, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit12 ], [ %.pre.i14, %bb.e ]
  %i.ak = load ptr, ptr %1, align 8, !tbaa !67
  store i64 %.pre-phi.i13, ptr %i.f, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 %i.ac, ptr %i.al, align 1, !tbaa !64
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i.i ], [ 21, %bb.f ] ; 3 uses
  %.01819.i.i.i.i = phi i32 [ %i.au, %.lr.ph.i.i.i.i ], [ %0, %bb.f ] ; 4 uses
  %i.am = add i32 %.020.i.i.i.i, -2               ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an
  %i.ap = urem i32 %.01819.i.i.i.i, 100
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  store i16 %i.at, ptr %i.ao, align 1
  %i.au = udiv i32 %.01819.i.i.i.i, 100           ; 3 uses
  %i.av = icmp ugt i32 %.01819.i.i.i.i, 9999
  br i1 %i.av, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !30

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.aw = icmp samesign ugt i32 %.01819.i.i.i.i, 999
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = add i32 %.020.i.i.i.i, -4
end_hunk_1
begin_hunk_2_@_ZN6spdlog7details13mdc_formatterINS0_13scoped_padderEE10format_mdcERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEERN3fmt3v1219basic_memory_bufferIcLm250ENSL_6detail9allocatorIcEEEE:bb.a
  %.sroa.073.088 = phi ptr [ %i.d, %.lr.ph ], [ %i.hu, %_ZN6spdlog7details13scoped_padderD2Ev.exit ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.073.088, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.073.088, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.073.088, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.073.088, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59
  %.not81 = icmp eq ptr %.sroa.073.088, %i.b      ; 2 uses
  %spec.select.v = select i1 %.not81, i64 1, i64 2
  %i.r = add i64 %i.o, %spec.select.v
  %spec.select = add i64 %i.r, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(14) %i.e, ptr noundef nonnull align 8 dereferenceable(283) %2)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 2 uses
  %.not31.i.i = icmp samesign eq i64 %i.t, 0
  %.pre.i.i20.pre = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  br i1 %.not31.i.i, label %.lr.ph34.i.i19, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.b
  %i.v = ptrtoint ptr %i.u to i64
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i20.pre, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.s, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.g, align 8, !tbaa !68
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.v, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.ad = add i64 %i.aa, %i.w
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.ad)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !34

.noexc:                                           ; preds = %bb.d
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.af = load i64, ptr %i.g, align 8, !tbaa !68
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %.026.i.i = phi i64 [ %i.ae, %.noexc ], [ %i.w, %bb.c ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ah, %.noexc ], [ %i.aa, %bb.c ] ; 13 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check197

iter.check197:                                    ; preds = %bb.e
  %min.iters.check184 = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check184, label %.lr.ph.i.i.preheader, label %vector.memcheck182

vector.memcheck182:                               ; preds = %iter.check197
  %i.al = add i64 %.026.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check183 = icmp ugt i64 %i.am, -32
  br i1 %diff.check183, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %vector.memcheck182
  %min.iters.check186 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check186, label %vec.epilog.ph201, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %i.an = and i64 %.025.i.i, 28
  %n.vec188 = and i64 %.025.i.i, -32              ; 4 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.ph187, %vector.body189
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index190 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load191 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !64
  %wide.load192 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index190 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load191, ptr %i.aq, align 1, !tbaa !64
  store <16 x i8> %wide.load192, ptr %i.ar, align 1, !tbaa !64
  %index.next193 = add nuw i64 %index190, 32      ; 2 uses
  %i.as = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.as, label %middle.block194, label %vector.body189, !llvm.loop !1278

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %.025.i.i, %n.vec188
  br i1 %cmp.n195, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check199

vec.epilog.iter.check199:                         ; preds = %middle.block194
  %min.epilog.iters.check200 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check200, label %.lr.ph.i.i.preheader, label %vec.epilog.ph201, !prof !109

vec.epilog.ph201:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check199
  %vec.epilog.resume.val196 = phi i64 [ %n.vec188, %vec.epilog.iter.check199 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec202 = and i64 %.025.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph201
  %index204 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph201 ], [ %index.next206, %vec.epilog.vector.body203 ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index204
  %wide.load205 = load <4 x i8>, ptr %i.at, align 1, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index204
  store <4 x i8> %wide.load205, ptr %i.au, align 1, !tbaa !64
  %index.next206 = add nuw i64 %index204, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next206, %n.vec202
  br i1 %i.av, label %vec.epilog.middle.block207, label %vec.epilog.vector.body203, !llvm.loop !1279

vec.epilog.middle.block207:                       ; preds = %vec.epilog.vector.body203
  %cmp.n208 = icmp eq i64 %.025.i.i, %n.vec202
  br i1 %cmp.n208, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check197, %vector.memcheck182, %vec.epilog.iter.check199, %vec.epilog.middle.block207
  %.030.i.i.ph = phi i64 [ 0, %iter.check197 ], [ 0, %vector.memcheck182 ], [ %n.vec188, %vec.epilog.iter.check199 ], [ %n.vec202, %vec.epilog.middle.block207 ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !64
  %i.az = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1280

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %i.ba = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block207, %middle.block194
  %.pre37.i.i = load i64, ptr %i.f, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %i.bc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.e ]
  %i.bd = add i64 %i.bc, %.025.i.i                ; 3 uses
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.u
  br i1 %.not.i.i, label %.lr.ph34.i.i19, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !64
  %i.bi = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !64
  %i.bm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !64
  %i.bq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !64
  %i.bu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1281

.lr.ph34.i.i19:                                   ; preds = %._crit_edge.i.i, %bb.b
  %.pre.i.i20 = phi i64 [ %.pre.i.i20.pre, %bb.b ], [ %i.bd, %._crit_edge.i.i ] ; 3 uses
  %i.bv = load i64, ptr %i.g, align 8, !tbaa !68
  %i.bw = icmp eq i64 %i.bv, %.pre.i.i20
  br i1 %i.bw, label %.lr.ph144, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33

.lr.ph144:                                        ; preds = %.lr.ph34.i.i19, %._crit_edge.i.i30
  %i.bx = phi i64 [ %i.ca, %._crit_edge.i.i30 ], [ %.pre.i.i20, %.lr.ph34.i.i19 ]
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.bz = add i64 %i.bx, 1
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.bz)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !34

bb.f:                                             ; preds = %.lr.ph144
  %i.ca = load i64, ptr %i.f, align 8, !tbaa !69  ; 6 uses
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !68
  %.not133 = icmp eq i64 %i.cb, %i.ca
  br i1 %.not133, label %._crit_edge.i.i30, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33

._crit_edge.i.i30:                                ; preds = %bb.f
  store i64 %i.ca, ptr %i.f, align 8, !tbaa !69
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !68
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %.lr.ph144, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33: ; preds = %bb.f, %._crit_edge.i.i30, %.lr.ph34.i.i19
  %.sink210 = phi i64 [ %.pre.i.i20, %.lr.ph34.i.i19 ], [ %i.ca, %._crit_edge.i.i30 ], [ %i.ca, %bb.f ]
  %i.ce = load ptr, ptr %2, align 8, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sink210
  store i8 58, ptr %i.cf, align 1, !tbaa !64
  %.pre37.i.i29 = load i64, ptr %i.f, align 8, !tbaa !69
  %i.cg = add i64 %.pre37.i.i29, 1                ; 3 uses
  store i64 %i.cg, ptr %i.f, align 8, !tbaa !69
  %i.ch = load ptr, ptr %i.m, align 8, !tbaa !60  ; 2 uses
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 2 uses
  %.not31.i.i34 = icmp samesign eq i64 %i.ci, 0
  br i1 %.not31.i.i34, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit49, label %.lr.ph34.i.i35

.lr.ph34.i.i35:                                   ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33
  %i.ck = ptrtoint ptr %i.cj to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i46, %.lr.ph34.i.i35
  %i.cl = phi i64 [ %i.cg, %.lr.ph34.i.i35 ], [ %i.ds, %._crit_edge.i.i46 ] ; 3 uses
  %.02732.i.i37 = phi ptr [ %i.ch, %.lr.ph34.i.i35 ], [ %i.dt, %._crit_edge.i.i46 ] ; 9 uses
  %i.cm = load i64, ptr %i.g, align 8, !tbaa !68
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = ptrtoint ptr %.02732.i.i37 to i64       ; 2 uses
  %i.cp = sub i64 %i.ck, %i.co                    ; 4 uses
  %i.cq = icmp ult i64 %i.cn, %i.cp
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.cs = add i64 %i.cp, %i.cl
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.cs)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit, !inline_history !34

.noexc48:                                         ; preds = %bb.h
  %i.ct = load i64, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.cu = load i64, ptr %i.g, align 8, !tbaa !68
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cv)
  br label %bb.i

bb.i:                                             ; preds = %.noexc48, %bb.g
  %.026.i.i38 = phi i64 [ %i.ct, %.noexc48 ], [ %i.cl, %bb.g ] ; 3 uses
  %.025.i.i39 = phi i64 [ %i.cw, %.noexc48 ], [ %i.cp, %bb.g ] ; 13 uses
  %i.cx = load ptr, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.026.i.i38 ; 7 uses
  %.not36.i.i40 = icmp eq i64 %.025.i.i39, 0
  br i1 %.not36.i.i40, label %._crit_edge.i.i46, label %iter.check169

iter.check169:                                    ; preds = %bb.i
  %min.iters.check156 = icmp ult i64 %.025.i.i39, 4
  br i1 %min.iters.check156, label %.lr.ph.i.i41.preheader, label %vector.memcheck154

vector.memcheck154:                               ; preds = %iter.check169
  %i.da = add i64 %.026.i.i38, %i.cy
  %i.db = sub i64 %i.co, %i.da
  %diff.check155 = icmp ugt i64 %i.db, -32
  br i1 %diff.check155, label %.lr.ph.i.i41.preheader, label %vector.main.loop.iter.check157

vector.main.loop.iter.check157:                   ; preds = %vector.memcheck154
  %min.iters.check158 = icmp ult i64 %.025.i.i39, 32
  br i1 %min.iters.check158, label %vec.epilog.ph173, label %vector.ph159

vector.ph159:                                     ; preds = %vector.main.loop.iter.check157
  %i.dc = and i64 %.025.i.i39, 28
  %n.vec160 = and i64 %.025.i.i39, -32            ; 4 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.ph159, %vector.body161
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next165, %vector.body161 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %index162 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load163 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !64
  %wide.load164 = load <16 x i8>, ptr %i.de, align 1, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index162 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <16 x i8> %wide.load163, ptr %i.df, align 1, !tbaa !64
  store <16 x i8> %wide.load164, ptr %i.dg, align 1, !tbaa !64
  %index.next165 = add nuw i64 %index162, 32      ; 2 uses
  %i.dh = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.dh, label %middle.block166, label %vector.body161, !llvm.loop !1282

middle.block166:                                  ; preds = %vector.body161
  %cmp.n167 = icmp eq i64 %.025.i.i39, %n.vec160
  br i1 %cmp.n167, label %._crit_edge.loopexit.i.i44, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block166
  %min.epilog.iters.check172 = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check172, label %.lr.ph.i.i41.preheader, label %vec.epilog.ph173, !prof !109

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check157, %vec.epilog.iter.check171
  %vec.epilog.resume.val168 = phi i64 [ %n.vec160, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check157 ]
  %n.vec174 = and i64 %.025.i.i39, -4             ; 3 uses
  br label %vec.epilog.vector.body175

vec.epilog.vector.body175:                        ; preds = %vec.epilog.vector.body175, %vec.epilog.ph173
  %index176 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph173 ], [ %index.next178, %vec.epilog.vector.body175 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %index176
  %wide.load177 = load <4 x i8>, ptr %i.di, align 1, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index176
  store <4 x i8> %wide.load177, ptr %i.dj, align 1, !tbaa !64
  %index.next178 = add nuw i64 %index176, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next178, %n.vec174
  br i1 %i.dk, label %vec.epilog.middle.block179, label %vec.epilog.vector.body175, !llvm.loop !1283

vec.epilog.middle.block179:                       ; preds = %vec.epilog.vector.body175
  %cmp.n180 = icmp eq i64 %.025.i.i39, %n.vec174
  br i1 %cmp.n180, label %._crit_edge.loopexit.i.i44, label %.lr.ph.i.i41.preheader

.lr.ph.i.i41.preheader:                           ; preds = %iter.check169, %vector.memcheck154, %vec.epilog.iter.check171, %vec.epilog.middle.block179
  %.030.i.i42.ph = phi i64 [ 0, %iter.check169 ], [ 0, %vector.memcheck154 ], [ %n.vec160, %vec.epilog.iter.check171 ], [ %n.vec174, %vec.epilog.middle.block179 ] ; 3 uses
  %xtraiter215 = and i64 %.025.i.i39, 3           ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.i.i41.prol.loopexit, label %.lr.ph.i.i41.prol

.lr.ph.i.i41.prol:                                ; preds = %.lr.ph.i.i41.preheader, %.lr.ph.i.i41.prol
  %.030.i.i42.prol = phi i64 [ %i.do, %.lr.ph.i.i41.prol ], [ %.030.i.i42.ph, %.lr.ph.i.i41.preheader ] ; 3 uses
  %prol.iter217 = phi i64 [ %prol.iter217.next, %.lr.ph.i.i41.prol ], [ 0, %.lr.ph.i.i41.preheader ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %.030.i.i42.prol
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.030.i.i42.prol
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !64
  %i.do = add nuw i64 %.030.i.i42.prol, 1         ; 2 uses
  %prol.iter217.next = add i64 %prol.iter217, 1   ; 2 uses
  %prol.iter217.cmp.not = icmp eq i64 %prol.iter217.next, %xtraiter215
  br i1 %prol.iter217.cmp.not, label %.lr.ph.i.i41.prol.loopexit, label %.lr.ph.i.i41.prol, !llvm.loop !1284

.lr.ph.i.i41.prol.loopexit:                       ; preds = %.lr.ph.i.i41.prol, %.lr.ph.i.i41.preheader
  %.030.i.i42.unr = phi i64 [ %.030.i.i42.ph, %.lr.ph.i.i41.preheader ], [ %i.do, %.lr.ph.i.i41.prol ]
  %i.dp = sub i64 %.030.i.i42.ph, %.025.i.i39
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %._crit_edge.loopexit.i.i44, label %.lr.ph.i.i41

._crit_edge.loopexit.i.i44:                       ; preds = %.lr.ph.i.i41.prol.loopexit, %.lr.ph.i.i41, %vec.epilog.middle.block179, %middle.block166
  %.pre37.i.i45 = load i64, ptr %i.f, align 8, !tbaa !69
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %._crit_edge.loopexit.i.i44, %bb.i
  %i.dr = phi i64 [ %.pre37.i.i45, %._crit_edge.loopexit.i.i44 ], [ %.026.i.i38, %bb.i ]
  %i.ds = add i64 %i.dr, %.025.i.i39              ; 3 uses
  store i64 %i.ds, ptr %i.f, align 8, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %.025.i.i39 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.dt, %i.cj
  br i1 %.not.i.i47, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit49, label %bb.g, !llvm.loop !3

.lr.ph.i.i41:                                     ; preds = %.lr.ph.i.i41.prol.loopexit, %.lr.ph.i.i41
  %.030.i.i42 = phi i64 [ %i.ej, %.lr.ph.i.i41 ], [ %.030.i.i42.unr, %.lr.ph.i.i41.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %.030.i.i42
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.030.i.i42
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !64
  %i.dx = add nuw i64 %.030.i.i42, 1              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dx
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !64
  %i.eb = add nuw i64 %.030.i.i42, 2              ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.eb
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !64
  %i.ef = add nuw i64 %.030.i.i42, 3              ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02732.i.i37, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ef
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !64
  %i.ej = add nuw i64 %.030.i.i42, 4              ; 2 uses
  %exitcond.not.i.i43.3 = icmp eq i64 %i.ej, %.025.i.i39
  br i1 %exitcond.not.i.i43.3, label %._crit_edge.loopexit.i.i44, label %.lr.ph.i.i41, !llvm.loop !1285

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit49: ; preds = %._crit_edge.i.i46, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33
  %.pre.i.i52 = phi i64 [ %i.cg, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit33 ], [ %i.ds, %._crit_edge.i.i46 ] ; 3 uses
  br i1 %.not81, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65, label %.lr.ph34.i.i51.preheader

.lr.ph34.i.i51.preheader:                         ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit49
  %i.ek = load i64, ptr %i.g, align 8, !tbaa !68
  %i.el = icmp eq i64 %i.ek, %.pre.i.i52
  br i1 %i.el, label %.lr.ph145, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65.loopexit

.lr.ph145:                                        ; preds = %.lr.ph34.i.i51.preheader, %._crit_edge.i.i62
  %i.em = phi i64 [ %i.ep, %._crit_edge.i.i62 ], [ %.pre.i.i52, %.lr.ph34.i.i51.preheader ]
  %i.en = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.eo = add i64 %i.em, 1
  invoke void %i.en(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.eo)
          to label %bb.j unwind label %.loopexit, !inline_history !34

bb.j:                                             ; preds = %.lr.ph145
  %i.ep = load i64, ptr %i.f, align 8, !tbaa !69  ; 6 uses
  %i.eq = load i64, ptr %i.g, align 8, !tbaa !68
  %.not134 = icmp eq i64 %i.eq, %i.ep
  br i1 %.not134, label %._crit_edge.i.i62, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65.loopexit

._crit_edge.i.i62:                                ; preds = %bb.j
  store i64 %i.ep, ptr %i.f, align 8, !tbaa !69
  %i.er = load i64, ptr %i.g, align 8, !tbaa !68
  %i.es = icmp eq i64 %i.er, %i.ep
  br i1 %i.es, label %.lr.ph145, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65.loopexit

.loopexit:                                        ; preds = %.lr.ph145
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph144
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit82, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit85, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %lpad.phi

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65.loopexit: ; preds = %bb.j, %._crit_edge.i.i62, %.lr.ph34.i.i51.preheader
  %.sink211 = phi i64 [ %.pre.i.i52, %.lr.ph34.i.i51.preheader ], [ %i.ep, %._crit_edge.i.i62 ], [ %i.ep, %bb.j ]
  %i.et = load ptr, ptr %2, align 8, !tbaa !67
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sink211
  store i8 32, ptr %i.eu, align 1, !tbaa !64
  %.pre37.i.i61 = load i64, ptr %i.f, align 8, !tbaa !69
  %i.ev = add i64 %.pre37.i.i61, 1
  store i64 %i.ev, ptr %i.f, align 8, !tbaa !69
  br label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65.loopexit, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit49
  %i.ew = load i64, ptr %i.i, align 8, !tbaa !331 ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit65
  %i.ey = load ptr, ptr %i.k, align 8, !tbaa !108 ; 2 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.ew, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.fb, align 8, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.ff = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.gm, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.ey, %.lr.ph34.i.i.i.i ], [ %i.gn, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.fg = load i64, ptr %i.fc, align 8, !tbaa !68
  %i.fh = sub i64 %i.fg, %i.ff
  %i.fi = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.fj = sub i64 %i.fd, %i.fi                    ; 4 uses
  %i.fk = icmp ult i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !66
  %i.fm = add i64 %i.fj, %i.ff
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(283) %i.ez, i64 noundef %i.fm)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.m
  %i.fn = load i64, ptr %i.fb, align 8, !tbaa !69 ; 2 uses
  %i.fo = load i64, ptr %i.fc, align 8, !tbaa !68
  %i.fp = sub i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fj, i64 %i.fp)
  br label %bb.n

bb.n:                                             ; preds = %.noexc.i, %bb.l
  %.026.i.i.i.i = phi i64 [ %i.fn, %.noexc.i ], [ %i.ff, %bb.l ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.fq, %.noexc.i ], [ %i.fj, %bb.l ] ; 13 uses
  %i.fr = load ptr, ptr %i.ez, align 8, !tbaa !67 ; 2 uses
  %i.fs = ptrtoaddr ptr %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
  br i1 %.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %.025.i.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fu = add i64 %.026.i.i.i.i, %i.fs
  %i.fv = sub i64 %i.fi, %i.fu
  %diff.check = icmp ugt i64 %i.fv, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check147 = icmp ult i64 %.025.i.i.i.i, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fw = and i64 %.025.i.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i.i, -32             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load = load <16 x i8>, ptr %i.fx, align 1, !tbaa !64
  %wide.load148 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <16 x i8> %wide.load, ptr %i.fz, align 1, !tbaa !64
  store <16 x i8> %wide.load148, ptr %i.ga, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !1286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec149 = and i64 %.025.i.i.i.i, -4           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index150
  %wide.load151 = load <4 x i8>, ptr %i.gc, align 1, !tbaa !64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 %index150
  store <4 x i8> %wide.load151, ptr %i.gd, align 1, !tbaa !64
  %index.next152 = add nuw i64 %index150, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next152, %n.vec149
  br i1 %i.ge, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1287

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n153 = icmp eq i64 %.025.i.i.i.i, %n.vec149
  br i1 %cmp.n153, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec149, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter218 = and i64 %.025.i.i.i.i, 3         ; 2 uses
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter220 = phi i64 [ %prol.iter220.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.030.i.i.i.i.prol
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !64
  %i.gi = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter220.next = add i64 %prol.iter220, 1   ; 2 uses
  %prol.iter220.cmp.not = icmp eq i64 %prol.iter220.next, %xtraiter218
  br i1 %prol.iter220.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1288

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.gi, %.lr.ph.i.i.i.i.prol ]
  %i.gj = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i.i = load i64, ptr %i.fb, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.n
  %i.gl = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.n ]
  %i.gm = add i64 %i.gl, %.025.i.i.i.i            ; 2 uses
  store i64 %i.gm, ptr %i.fb, align 8, !tbaa !69
  %i.gn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gn, %i.fa
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.l, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.hd, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.030.i.i.i.i
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !64
  %i.gr = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gr
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !64
  %i.gv = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gv
end_hunk_2
