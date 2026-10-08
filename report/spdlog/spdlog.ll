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
  %i.c = add i64 %1, 1                            ; 5 uses
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
  %i.g = and i64 %1, 1
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.f, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.i, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.m, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.n, ptr %i.k, align 8, !tbaa !67
  store i64 250, ptr %i.l, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 384 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %.013.i.i.i.i.i.i, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.q, align 8, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.r, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.v, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128
  store ptr %i.w, ptr %i.t, align 8, !tbaa !67
  store i64 250, ptr %i.u, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 384
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.x, i8 0, i64 384, i1 false)
  store i32 6, ptr %i.y, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 408
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.z, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 480
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 496
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 504
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ad, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 512
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !67
  store i64 250, ptr %i.ac, align 8, !tbaa !68
  %i.af = add nsw i64 %.01012.i.i.i.i.i.i, -2     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !340

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = getelementptr [384 x i8], ptr %i.f, i64 %1
  %2 = getelementptr i8, ptr %i.ah, i64 384
  br label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit: ; preds = %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.sroa.10.0 = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %i.f, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit ]
  %.sroa.19.0 = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %2, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN6spdlog7details14log_msg_bufferESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %.lcssa, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit.loopexit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.c, ptr %i.ai, align 8, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.10.0, ptr %i.ak, align 8, !tbaa !75
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !76
  store ptr %.sroa.19.0, ptr %i.ao, align 8, !tbaa !79
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.al, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.aq) #37
  br label %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6spdlog7details14log_msg_bufferEEvPT_.exit.i.i.i.i.i.i.i, %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEEC2Em.exit
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #44
  br label %_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev.exit

_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6spdlog7details14log_msg_bufferES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.d
  %i.at = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6spdlog7details14log_msg_bufferESaIS2_EEC2EmRKS3_.exit.i.i, %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #37 ; 0 uses
  resume { ptr, i32 } %i.au
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
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.k) #37
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !69   ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 9 uses
  %i.s = icmp eq ptr %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 4 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i
  store ptr %i.l, ptr %i.j, align 8, !tbaa !67
  store i64 %i.q, ptr %i.t, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  %.not6.i.i.i.i = icmp samesign eq i64 %i.o, 0
  br i1 %.not6.i.i.i.i, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.v = mul nuw nsw i64 %i.e, 384
  %i.w = add i64 %i.v, %i.g
  %i.x = sub i64 %i.a, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 5 uses
  %i.z = getelementptr i8, ptr %i.l, i64 %n.vec
  %i.aa = getelementptr i8, ptr %i.r, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep8, align 8, !tbaa !64
  %wide.load9 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !64
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !64
  store <16 x i8> %wide.load9, ptr %i.ac, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
end_hunk_0
begin_hunk_1_@_ZN6spdlog17pattern_formatter16compile_pattern_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !231
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !232
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp: ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21.loopexit.split-lp ]
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #37, !inline_history !19
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.e, %bb.c
  %i.bk = phi ptr [ null, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ null, %bb.e ], [ %i.q, %bb.c ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 1 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, %i.e
  br i1 %i.bm, label %bb.o, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !64
  switch i8 %i.bn, label %bb.k [
    i8 45, label %.sink.split.i
    i8 61, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %.017.ph.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.064.098, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.i
  %.sroa.064.2 = phi ptr [ %i.bl, %bb.i ], [ %i.bo, %.sink.split.i ] ; 9 uses
  %.017.i = phi i64 [ 0, %bb.i ], [ %.017.ph.i, %.sink.split.i ] ; 5 uses
  %.sroa.064.2110 = ptrtoaddr ptr %.sroa.064.2 to i64
  %i.bp = icmp eq ptr %.sroa.064.2, %i.e
  br i1 %i.bp, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i8, ptr %.sroa.064.2, align 1, !tbaa !64 ; 2 uses
  %i.br = add i8 %i.bq, -48
  %isdigit.i = icmp ult i8 %i.br, 10
  br i1 %isdigit.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bs = zext nneg i8 %i.bq to i64
  %i.bt = add nsw i64 %i.bs, -48                  ; 3 uses
  %storemerge36.i = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 1 ; 5 uses
  %.not37.i = icmp eq ptr %storemerge36.i, %i.e
  br i1 %.not37.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bu = load i8, ptr %storemerge36.i, align 1, !tbaa !64 ; 3 uses
  %i.bv = add i8 %i.bu, -48
  %isdigit18.i91 = icmp ult i8 %i.bv, 10
  br i1 %isdigit18.i91, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bw = getelementptr i8, ptr %.sroa.064.2, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.b
  %i.bx = sub i64 0, %.sroa.064.2110
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.bx ; 2 uses
  %i.by = zext nneg i8 %i.bu to i64
  %i.bz = mul nuw nsw i64 %i.bt, 10
  %i.ca = add nsw i64 %i.bz, -48
  %i.cb = add nsw i64 %i.ca, %i.by                ; 2 uses
  %storemerge.i163 = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 2 ; 2 uses
  %.not.i22164 = icmp eq ptr %storemerge.i163, %i.e
  br i1 %.not.i22164, label %.critedge.i, label %.lr.ph.i.lr.ph, !llvm.loop !20

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  br label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %storemerge.i166 = phi ptr [ %storemerge.i163, %.lr.ph.i.lr.ph ], [ %storemerge.i, %.lr.ph ] ; 4 uses
  %i.cc = phi i64 [ %i.cb, %.lr.ph.i.lr.ph ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.sroa.064.392165 = phi ptr [ %storemerge36.i, %.lr.ph.i.lr.ph ], [ %storemerge.i166, %.lr.ph ]
  %i.cd = load i8, ptr %storemerge.i166, align 1, !tbaa !64 ; 3 uses
  %i.ce = add i8 %i.cd, -48
  %isdigit18.i = icmp ult i8 %i.ce, 10
  br i1 %isdigit18.i, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = mul i64 %i.cc, 10
  %i.ch = add i64 %i.cg, -48
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i166, i64 1 ; 2 uses
  %.not.i22 = icmp eq ptr %storemerge.i, %i.e
  br i1 %.not.i22, label %.lr.ph..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.064.3.lcssa = phi ptr [ %storemerge36.i, %.lr.ph.i.preheader ], [ %storemerge.i166, %.lr.ph.i ]
  %.03139.i.lcssa = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %.pn38.i.lcssa = phi ptr [ %.sroa.064.2, %.lr.ph.i.preheader ], [ %.sroa.064.392165, %.lr.ph.i ]
  %.lcssa82 = phi i8 [ %i.bu, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i ]
  %i.cj = icmp eq i8 %.lcssa82, 33
  br i1 %i.cj, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn38.i.lcssa, i64 2
  %i.cl = or disjoint i64 %.017.i, 4294967296
  br label %.critedge.i

.lr.ph..critedge.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..critedge.i.loopexit_crit_edge, %bb.n, %.lr.ph.i._crit_edge, %bb.m
  %.sroa.064.4 = phi ptr [ %storemerge36.i, %bb.m ], [ %.sroa.064.3.lcssa, %.lr.ph.i._crit_edge ], [ %i.ck, %bb.n ], [ %scevgep111, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %scevgep111, %.lr.ph.preheader ]
  %.03134.i = phi i64 [ %i.bt, %bb.m ], [ %.03139.i.lcssa, %.lr.ph.i._crit_edge ], [ %.03139.i.lcssa, %bb.n ], [ %i.ci, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %i.cb, %.lr.ph.preheader ]
  %.0.i = phi i64 [ %.017.i, %bb.m ], [ %.017.i, %.lr.ph.i._crit_edge ], [ %i.cl, %bb.n ], [ %.017.i, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %.017.i, %.lr.ph.preheader ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.03134.i, i64 64)
  %.sroa.6.13.insert.insert.i = or disjoint i64 %.0.i, 1099511627776
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %bb.l, %bb.k, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.064.5 = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.064.2, %bb.k ], [ %.sroa.064.4, %.critedge.i ], [ %.sroa.064.2, %bb.l ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.6.13.insert.insert.i, %.critedge.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.027.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.speculated.i, %.critedge.i ], [ 0, %bb.l ] ; 2 uses
  %.not78 = icmp eq ptr %.sroa.064.5, %i.e
  br i1 %.not78, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = and i64 %.sroa.6.0.i, 1099511627776
  %.not80 = icmp eq i64 %i.cm, 0
  %i.cn = load i8, ptr %.sroa.064.5, align 1, !tbaa !64 ; 2 uses
  br i1 %.not80, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.t:                                             ; preds = %bb.b
  %.not76 = icmp eq ptr %i.s, null
  br i1 %.not76, label %bb.u, label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113: ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge unwind label %bb.v ; 8 uses

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge: ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.cp, i8 0, i64 56, i1 false), !noalias !455
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details19aggregate_formatterE, i64 16), ptr %i.cp, align 16, !tbaa !62, !noalias !455
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !63, !noalias !455
  store ptr %i.cp, ptr %2, align 8, !tbaa !235
  %.pre112 = load i8, ptr %.sroa.064.098, align 1, !tbaa !64
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge
  %i.ct = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.q, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cu = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.r, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cv = phi ptr [ %i.cr, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %.pre114, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 2 uses
  %i.cw = phi i8 [ %.pre112, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.t, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cx = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.s, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59 ; 5 uses
  %i.db = add i64 %i.da, 1                        ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.dd = icmp eq ptr %i.cv, %i.dc
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.de = icmp ult i64 %i.da, 16
  tail call void @llvm.assume(i1 %i.de)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dg = phi i64 [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.dh = icmp ugt i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.w, label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 noundef %i.da, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc26 unwind label %bb.x

.noexc26:                                         ; preds = %bb.w
  %.pre.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !60
  br label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

_ZN6spdlog7details19aggregate_formatter6add_chEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %.noexc26
  %i.di = phi ptr [ %.pre.i.i.i, %.noexc26 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  store i8 %i.cw, ptr %i.dj, align 1, !tbaa !64
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !59
  %i.dk = load ptr, ptr %i.cy, align 8, !tbaa !60
  %3 = getelementptr i8, ptr %i.dk, i64 %i.da
  %i.dl = getelementptr i8, ptr %3, i64 1
  store i8 0, ptr %i.dl, align 1, !tbaa !64
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %bb.q, %bb.s, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit
  %i.dn = phi ptr [ %i.ct, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %i.bk, %bb.s ], [ %i.bk, %bb.q ] ; 2 uses
  %i.do = phi ptr [ %i.cu, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %i.dp = phi ptr [ %i.cx, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %.sroa.064.1 = phi ptr [ %.sroa.064.098, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %.sroa.064.5, %bb.s ], [ %.sroa.064.5, %bb.q ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.064.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.dq, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !440

.critedge:                                        ; preds = %bb.y, %bb.o
  %i.dr = phi ptr [ %i.dn, %bb.y ], [ %i.bk, %bb.o ] ; 5 uses
  %.not79 = icmp eq ptr %i.dr, null
  br i1 %.not79, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %.critedge
  store ptr null, ptr %2, align 8, !tbaa !235
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !232 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !236
  %.not.i.i27 = icmp eq ptr %i.ds, %i.du
  br i1 %.not.i.i27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = ptrtoint ptr %i.dr to i64
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !234
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

bb.ab:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !231 ; 10 uses
  %i.dy = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc40 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48

.noexc40:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.ab
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #45
          to label %.noexc41 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  %i.ek = ptrtoint ptr %i.dr to i64
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.dx, %i.ds
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.el = add i64 %i.dy, -8
  %i.em = sub i64 %i.el, %i.dz                    ; 3 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %i.em, 136
  br i1 %min.iters.check181, label %.lr.ph.i.i.i.i.i.i.i32.preheader199, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %i.ep = and i64 %i.em, -8
  %i.eq = add i64 %i.ep, 8                        ; 2 uses
  %i.er = getelementptr i8, ptr %i.ei, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.dx, i64 %i.eq
  %bound0183 = icmp ult ptr %i.ei, %i.es
  %bound1184 = icmp ult ptr %i.dx, %i.er
  %found.conflict185 = and i1 %bound0183, %bound1184
  br i1 %found.conflict185, label %.lr.ph.i.i.i.i.i.i.i32.preheader199, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck182
  %n.vec187 = and i64 %i.eo, 4611686018427387900  ; 3 uses
  %i.et = shl i64 %n.vec187, 3                    ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ei, i64 %i.et  ; 2 uses
  %i.ev = getelementptr i8, ptr %i.dx, i64 %i.et
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %i.ew = shl i64 %index189, 3                    ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ei, i64 %i.ew ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.dx, i64 %i.ew ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ex = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %wide.load193 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %i.ey = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %wide.load192, ptr %next.gep190, align 8, !tbaa !234, !alias.scope !459, !noalias !458
  store <2 x i64> %wide.load193, ptr %i.ey, align 8, !tbaa !234, !alias.scope !459, !noalias !458
  %i.ez = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  store <2 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.fa, label %middle.block195, label %vector.body188, !llvm.loop !447

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.eo, %n.vec187
  br i1 %cmp.n196, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader199

.lr.ph.i.i.i.i.i.i.i32.preheader199:              ; preds = %vector.memcheck182, %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block195
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.ei, %vector.memcheck182 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.eu, %middle.block195 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.dx, %vector.memcheck182 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.ev, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader199, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader199 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader199 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.fb = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !457, !noalias !456
  store i64 %i.fb, ptr %.012.i.i.i.i.i.i.i33, align 8, !tbaa !234, !alias.scope !456, !noalias !457
  store ptr null, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !457, !noalias !456
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.fc, %i.ds
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !448

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block195, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.ei, %.noexc41 ], [ %i.eu, %middle.block195 ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  %.not.i23.i.i.i38 = icmp eq ptr %i.dx, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  tail call void @_ZdlPv(ptr noundef nonnull %i.dx) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  store ptr %i.ei, ptr %i.f, align 8, !tbaa !231
  store ptr %i.fe, ptr %i.h, align 8, !tbaa !232
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.ff, ptr %i.dt, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.ac
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %i.dr, align 8, !tbaa !62
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void %i.fj(ptr noundef nonnull align 8 dereferenceable(24) %i.dr) #37, !inline_history !19
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, %bb.aa, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21, %bb.r, %bb.v, %bb.x, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48
  %.pn14 = phi { ptr, i32 } [ %i.fg, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ], [ %i.co, %bb.r ], [ %lpad.phi, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21 ], [ %i.dm, %bb.x ], [ %i.cs, %bb.v ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #37, !inline_history !460
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a

bb.et:                                            ; preds = %bb.es
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #37
  %i.abq = load ptr, ptr %51, align 8, !tbaa !235
  store ptr null, ptr %51, align 8, !tbaa !235
  store ptr %i.abq, ptr %52, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.abp, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.eu unwind label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.abr = load ptr, ptr %52, align 8, !tbaa !234 ; 3 uses
  %.not.i638 = icmp eq ptr %i.abr, null
  br i1 %.not.i638, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i639

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i639: ; preds = %bb.eu
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !62
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8
  call void %i.abu(ptr noundef nonnull align 8 dereferenceable(24) %i.abr) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640: ; preds = %bb.eu, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i639
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #37
  br label %bb.ff

bb.ev:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit654, %bb.es, %bb.er
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ew:                                            ; preds = %bb.et
  %i.abw = landingpad { ptr, i32 }
          cleanup
  %i.abx = load ptr, ptr %52, align 8, !tbaa !234 ; 3 uses
  %.not.i641 = icmp eq ptr %i.abx, null
  br i1 %.not.i641, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i642

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i642: ; preds = %bb.ew
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !62
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8
  call void %i.aca(ptr noundef nonnull align 8 dereferenceable(24) %i.abx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643: ; preds = %bb.ew, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i642
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #37
  br label %bb.fg

bb.ex:                                            ; preds = %bb.eq
  %i.acb = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %i.acb, align 4, !tbaa !265
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #37
  %i.acd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45
          to label %bb.ey unwind label %bb.fc     ; 3 uses

bb.ey:                                            ; preds = %bb.ex
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load <2 x i64>, ptr %4, align 16, !noalias !846
  store <2 x i64> %i.acf, ptr %i.ace, align 8, !noalias !846
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.acd, align 8, !tbaa !62, !noalias !846
  store ptr %i.acd, ptr %53, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.acc, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.ez unwind label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  %i.acg = load ptr, ptr %53, align 8, !tbaa !234 ; 3 uses
  %.not.i649 = icmp eq ptr %i.acg, null
  br i1 %.not.i649, label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit654, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i650

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i650: ; preds = %bb.ez
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !62
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8
  call void %i.acj(ptr noundef nonnull align 8 dereferenceable(24) %i.acg) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit654

_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit654: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i650, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37
  %i.ack = load ptr, ptr %51, align 8, !tbaa !235
  invoke void @_ZN6spdlog7details19aggregate_formatter6add_chEc(ptr noundef nonnull align 8 dereferenceable(56) %i.ack, i8 noundef signext %1)
          to label %bb.fa unwind label %bb.ev

bb.fa:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit654
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #37
  %i.acl = load ptr, ptr %51, align 8, !tbaa !235
  store ptr null, ptr %51, align 8, !tbaa !235
  store ptr %i.acl, ptr %54, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.acc, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.fb unwind label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.acm = load ptr, ptr %54, align 8, !tbaa !234 ; 3 uses
  %.not.i655 = icmp eq ptr %i.acm, null
  br i1 %.not.i655, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i656

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i656: ; preds = %bb.fb
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !62
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8
  call void %i.acp(ptr noundef nonnull align 8 dereferenceable(24) %i.acm) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657: ; preds = %bb.fb, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.ff

bb.fc:                                            ; preds = %bb.ex
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663

bb.fd:                                            ; preds = %bb.ey
  %i.acr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acs = load ptr, ptr %53, align 8, !tbaa !234 ; 3 uses
  %.not.i658 = icmp eq ptr %i.acs, null
  br i1 %.not.i658, label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659: ; preds = %bb.fd
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !62
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8
  call void %i.acv(ptr noundef nonnull align 8 dereferenceable(24) %i.acs) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663

_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663: ; preds = %bb.fd, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659, %bb.fc
  %.pn = phi { ptr, i32 } [ %i.acq, %bb.fc ], [ %i.acr, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659 ], [ %i.acr, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fa
  %i.acw = landingpad { ptr, i32 }
          cleanup
  %i.acx = load ptr, ptr %54, align 8, !tbaa !234 ; 3 uses
  %.not.i664 = icmp eq ptr %i.acx, null
  br i1 %.not.i664, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665: ; preds = %bb.fe
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !62
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8
  call void %i.ada(ptr noundef nonnull align 8 dereferenceable(24) %i.acx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666: ; preds = %bb.fe, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.fg

bb.ff:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643, %bb.ev
  %.pn6 = phi { ptr, i32 } [ %i.acw, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666 ], [ %i.abv, %bb.ev ], [ %.pn, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663 ], [ %i.abw, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643 ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fi

bb.fh:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %bb.ff, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.fi:                                            ; preds = %bb.fg, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19
  %.pn8 = phi { ptr, i32 } [ %i.bz, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19 ], [ %.pn6, %bb.fg ], [ %i.co, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25 ], [ %i.da, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35 ], [ %i.dm, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49 ], [ %i.dy, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63 ], [ %i.ek, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77 ], [ %i.ew, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91 ], [ %i.fj, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105 ], [ %i.fw, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119 ], [ %i.hu, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ], [ %i.ig, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163 ], [ %i.it, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177 ], [ %i.jg, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191 ], [ %i.jt, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205 ], [ %i.lr, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ], [ %i.md, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249 ], [ %i.mq, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263 ], [ %i.nd, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277 ], [ %i.nq, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291 ], [ %i.od, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305 ], [ %i.oq, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319 ], [ %i.pc, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333 ], [ %i.po, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347 ], [ %i.qa, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361 ], [ %i.qm, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375 ], [ %i.qz, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389 ], [ %i.rm, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403 ], [ %i.rz, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417 ], [ %i.tx, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ], [ %i.uo, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461 ], [ %i.va, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475 ], [ %i.vm, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489 ], [ %i.vy, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503 ], [ %i.wk, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517 ], [ %i.ww, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531 ], [ %i.xi, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545 ], [ %i.xu, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559 ], [ %i.yg, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573 ], [ %i.yt, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583 ], [ %i.zf, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593 ], [ %i.zs, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603 ], [ %i.aaf, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613 ], [ %i.aas, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623 ], [ %i.abf, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637 ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteIN6spdlog7details19aggregate_formatterEEclEPS2_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.c) #44
  br label %_ZNKSt14default_deleteIN6spdlog7details19aggregate_formatterEEclEPS2_.exit

_ZNKSt14default_deleteIN6spdlog7details19aggregate_formatterEEclEPS2_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN6spdlog7details19aggregate_formatterEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details19aggregate_formatter6add_chEc(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 noundef signext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59   ; 5 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a
  %i.h = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.h)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.j = phi i64 [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.k = icmp ugt i64 %i.d, %i.j
  br i1 %i.k, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i, %bb.b ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 %1, ptr %i.m, align 1, !tbaa !64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !59
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !60
  %2 = getelementptr i8, ptr %i.n, i64 %i.c
  %i.o = getelementptr i8, ptr %2, i64 1
  store i8 0, ptr %i.o, align 1, !tbaa !64
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6spdlog5sinks4sink9set_levelENS_5level10level_enumE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic i32 %1, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZNK6spdlog5sinks4sink5levelEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog17initialize_loggerESt10shared_ptrINS_6loggerEE(ptr nofree noundef align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.36", align 16 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6spdlog7details8registry8instanceEv.exit, !prof !115

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance) #37
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6spdlog7details8registry8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6spdlog7details8registryC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN6spdlog7details8registry8instanceEvE10s_instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6spdlog7details8registryD2Ev, ptr nonnull @_ZZN6spdlog7details8registry8instanceEvE10s_instance, ptr nonnull @__dso_handle) #37 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance) #37
  br label %_ZN6spdlog7details8registry8instanceEv.exit

common.resume:                                    ; preds = %bb.m, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.y, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance) #37
  br label %common.resume

_ZN6spdlog7details8registry8instanceEv.exit:      ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %0, align 8, !tbaa !177
  store ptr null, ptr %i.f, align 8, !tbaa !169
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !177
  store ptr null, ptr %0, align 8, !tbaa !173
  invoke void @_ZN6spdlog7details8registry17initialize_loggerESt10shared_ptrINS_6loggerEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN6spdlog7details8registry8instanceEvE10s_instance, ptr nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN6spdlog7details8registry8instanceEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.j, align 8, !tbaa !167
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !168
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #37, !inline_history !9
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #37, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !172

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #37
  br label %_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  ret void

bb.m:                                             ; preds = %_ZN6spdlog7details8registry8instanceEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.36") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6spdlog7details8registry8instanceEv.exit, !prof !115

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance) #37
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6spdlog7details8registry8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6spdlog7details8registryC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN6spdlog7details8registry8instanceEvE10s_instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6spdlog7details8registryD2Ev, ptr nonnull @_ZZN6spdlog7details8registry8instanceEvE10s_instance, ptr nonnull @__dso_handle) #37 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance) #37
  br label %_ZN6spdlog7details8registry8instanceEv.exit

common.resume:                                    ; preds = %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.r, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6spdlog7details8registry8instanceEvE10s_instance) #37
  br label %common.resume

_ZN6spdlog7details8registry8instanceEv.exit:      ; preds = %bb.a, %bb.b, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN6spdlog7details8registry8instanceEvE10s_instance) #37, !noalias !849 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN6spdlog7details8registry8instanceEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #43, !noalias !849
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZN6spdlog7details8registry8instanceEv.exit
  %i.g = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6spdlog6loggerEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN6spdlog7details8registry8instanceEvE10s_instance, i64 120), ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6spdlog6loggerEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit.i unwind label %bb.l, !noalias !849 ; 3 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6spdlog6loggerEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit.i: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6spdlog6loggerEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !849
  br label %_ZN6spdlog7details8registry3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.h:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6spdlog6loggerEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE4findERSF_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169, !noalias !849 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !177, !noalias !849
  store <2 x ptr> %i.l, ptr %0, align 8, !tbaa !177, !alias.scope !849
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details8registry3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64, !noalias !849
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr %i.m, align 4, !tbaa !94, !noalias !849
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !94, !noalias !849
  br label %_ZN6spdlog7details8registry3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.k:                                             ; preds = %bb.i
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !849 ; 0 uses
  br label %_ZN6spdlog7details8registry3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
end_hunk_2
