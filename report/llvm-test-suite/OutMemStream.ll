inline.NumInlined: 36
inline.NumDeleted: 21
begin_hunk_0_@_ZN13COutMemStream14QueryInterfaceERK4GUIDPPv:bb.a

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !54
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !54
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !54
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !54
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !54
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !54
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !54
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !54
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !54
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !54
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !54
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !54
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !54
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !54
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %bb.p, label %_ZeqRK4GUIDS1_.exit.thread

bb.p:                                             ; preds = %_ZeqRK4GUIDS1_.exit
  store ptr %0, ptr %2, align 8, !tbaa !46
  %i.av = load ptr, ptr %0, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 0 uses
  br label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit, %bb.p
  %.0 = phi i32 [ 0, %bb.p ], [ -2147467262, %_ZeqRK4GUIDS1_.exit ], [ -2147467262, %bb.a ], [ -2147467262, %bb.i ], [ -2147467262, %bb.b ], [ -2147467262, %bb.c ], [ -2147467262, %bb.k ], [ -2147467262, %bb.d ], [ -2147467262, %bb.o ], [ -2147467262, %bb.e ], [ -2147467262, %bb.j ], [ -2147467262, %bb.f ], [ -2147467262, %bb.n ], [ -2147467262, %bb.g ], [ -2147467262, %bb.l ], [ -2147467262, %bb.h ], [ -2147467262, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN13COutMemStream6AddRefEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !55
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN13COutMemStream7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = add i32 %i.b, -1                         ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(168) %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13COutMemStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13COutMemStream, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  invoke void @_ZN14CMemLockBlocks4FreeEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(41) %i.a, ptr noundef %i.c)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #11
  unreachable

_ZN9CMyComPtrI10IOutStreamED2Ev.exit:             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 3 uses
  %.not.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i1, label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #11
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %_ZN9CMyComPtrI10IOutStreamED2Ev.exit, %bb.e
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization14CBaseEventWFMOE, i64 16), ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.x, align 8, !tbaa !32
  ret void

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #11
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13COutMemStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN13COutMemStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #12
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8NWindows16NSynchronization14CBaseEventWFMO19IsSignaledAndUpdateEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %3 = load i8, ptr %2, align 1, !tbaa !33, !range !39, !noundef !40
  %4 = trunc nuw i8 %3 to i1                      ; 2 uses
  br i1 %4, label %bb.a, label %bb.c

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !39, !noundef !40
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.a, %bb.b
  ret i1 %4
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

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
!8 = !{!9, !14, i64 16}
!9 = !{!"_ZTS13COutMemStream", !10, i64 0, !13, i64 8, !14, i64 16, !16, i64 24, !16, i64 32, !17, i64 40, !17, i64 41, !18, i64 48, !18, i64 72, !5, i64 96, !22, i64 104, !27, i64 152, !29, i64 160}
!10 = !{!"_ZTS10IOutStream", !11, i64 0}
!11 = !{!"_ZTS20ISequentialOutStream", !12, i64 0}
!12 = !{!"_ZTS8IUnknown"}
!13 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!14 = !{!"p1 _ZTS18CMemBlockManagerMt", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE", !19, i64 0}
!19 = !{!"_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE", !20, i64 0, !17, i64 16, !17, i64 17}
!20 = !{!"_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE", !21, i64 8}
!21 = !{!"p1 _ZTSN8NWindows16NSynchronization8CSynchroE", !15, i64 0}
!22 = !{!"_ZTS14CMemLockBlocks", !23, i64 0, !17, i64 40}
!23 = !{!"_ZTS10CMemBlocks", !24, i64 0, !26, i64 32}
!24 = !{!"_ZTS13CRecordVectorIPvE", !25, i64 0}
!25 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !15, i64 16, !16, i64 24}
!26 = !{!"long long", !6, i64 0}
!27 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !28, i64 0}
!28 = !{!"p1 _ZTS20ISequentialOutStream", !15, i64 0}
!29 = !{!"_ZTS9CMyComPtrI10IOutStreamE", !30, i64 0}
!30 = !{!"p1 _ZTS10IOutStream", !15, i64 0}
!31 = !{!9, !17, i64 144}
!32 = !{!20, !21, i64 8}
!33 = !{!19, !17, i64 17}
!34 = !{!9, !17, i64 41}
!35 = !{!9, !17, i64 40}
!36 = !{!37, !16, i64 8}
!37 = !{!"_ZTS16CMemBlockManager", !15, i64 0, !16, i64 8, !15, i64 16}
!38 = !{!27, !28, i64 0}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = !{!25, !5, i64 12}
!44 = !{!9, !16, i64 24}
!45 = !{!25, !15, i64 16}
!46 = !{!15, !15, i64 0}
!47 = !{!9, !16, i64 32}
!48 = !{!23, !26, i64 32}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE", !15, i64 0}
!51 = !{!9, !5, i64 96}
!52 = !{!29, !30, i64 0}
!53 = !{!26, !26, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!13, !5, i64 0}
!56 = !{!19, !17, i64 16}
end_hunk_0
