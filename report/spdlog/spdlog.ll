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
  %2 = trunc i64 %i.c to i1
  br i1 %2, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

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
  %i.ae = add i64 %.01012.i.i.i.i.i.i, -2         ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !339

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
