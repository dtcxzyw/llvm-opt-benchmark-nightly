begin_hunk_0
inline.NumInlined: 1525
inline.NumDeleted: 827
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_:bb.a

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 16, !tbaa !49
end_hunk_1
begin_hunk_2_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreImEE, i64 16), ptr %i.c, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.c, ptr %2, align 8, !tbaa !40, !alias.scope !462
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i64 0, ptr %3, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %3, ptr %4, align 8, !tbaa !465
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !177
  store i8 1, ptr %6, align 8, !tbaa !178
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !180
  store ptr %i.c, ptr %7, align 8, !tbaa !181
  invoke void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %7, align 8, !tbaa !181    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %6, align 8, !tbaa !178, !range !81, !noundef !82
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.l) #27
  %.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !181
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_2
begin_hunk_3_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_:bb.a
bb.n:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit, %_ZN5folly7PromiseImED2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
end_hunk_3
