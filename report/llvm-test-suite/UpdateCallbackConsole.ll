inline.NumInlined: 69
inline.NumDeleted: 28
begin_hunk_0_@_ZN22CUpdateCallbackConsole15CanNotFindErrorEPKwj:bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.be) #17
  br label %common.resume

common.resume:                                    ; preds = %_ZN11CStringBaseIwED2Ev.exit11, %.body, %bb.j, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %i.bd, %bb.m ], [ %i.bj, %_ZN11CStringBaseIwED2Ev.exit11 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_ZN8NWindows6NError16MyFormatMessageWEj.exit:     ; preds = %bb.k
  %i.bg = load ptr, ptr %3, align 8, !tbaa !30
  invoke void @_ZN15CPercentPrinter11PrintStringEPKw(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef %i.bg)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZN8NWindows6NError16MyFormatMessageWEj.exit
  %i.bh = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN11CStringBaseIwED2Ev.exit10, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #17
  br label %_ZN11CStringBaseIwED2Ev.exit10

_ZN11CStringBaseIwED2Ev.exit10:                   ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN15CPercentPrinter12PrintNewLineEv(ptr noundef nonnull align 8 dereferenceable(48) %i.az)
  ret i32 0

bb.p:                                             ; preds = %_ZN8NWindows6NError16MyFormatMessageWEj.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN11CStringBaseIwED2Ev.exit11, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #17
  br label %_ZN11CStringBaseIwED2Ev.exit11

_ZN11CStringBaseIwED2Ev.exit11:                   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN15CPercentPrinter12PrintNewLineEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN15CPercentPrinter11PrintStringEPKw(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

declare void @_ZN15CPercentPrinter11PrintStringEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole14FinishScanningEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_Z4endlR13CStdOutStream)
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole12StartArchiveEPKwb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %.str.8..str.9 = select i1 %2, ptr @.str.8, ptr @.str.9
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %.str.8..str.9) ; 0 uses
  %.not = icmp eq ptr %1, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @_Z4endlR13CStdOutStream)
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole13FinishArchiveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN22CUpdateCallbackConsole10CheckBreakEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv()
  %. = select i1 %i.a, i32 -2147467260, i32 0
  ret i32 %.
}

declare noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole8FinilizeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !46, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN15CPercentPrinter10ClosePrintEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.l = load i8, ptr %i.k, align 1, !tbaa !48, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !49, !range !37, !noundef !38
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN15CPercentPrinter12PrintNewLineEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.n, align 1, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  store i8 0, ptr %i.b, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  ret i32 0
}

declare void @_ZN15CPercentPrinter10ClosePrintEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole11SetNumFilesEy(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #5 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole8SetTotalEy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN22CUpdateCallbackConsole12SetCompletedEPKy(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !37
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %1, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !53
  invoke void @_ZN15CPercentPrinter10PrintRatioEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.g, align 8, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.j = invoke noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv()
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %. = select i1 %i.j, i32 -2147467260, i32 0
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  ret i32 %.
}

declare void @_ZN15CPercentPrinter10PrintRatioEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN22CUpdateCallbackConsole12SetRatioInfoEPKyS1_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN13NConsoleClose15TestBreakSignalEv()
  %. = select i1 %i.a, i32 -2147467260, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole9GetStreamEPKwb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.c = load i8, ptr %i.b, align 1, !tbaa !48, !range !37, !noundef !38
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = select i1 %2, ptr @.str.4, ptr @.str.5
  invoke void @_ZN15CPercentPrinter11PrintStringEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.e, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %.invoke
  %i.i = load i32, ptr %1, align 4, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  %spec.select = select i1 %i.j, ptr @.str.10, ptr %1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN15CPercentPrinter11PrintStringEPKw(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull %spec.select)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i8, ptr %i.l, align 8, !tbaa !47, !range !37, !noundef !38
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN15CPercentPrinter12RePrintRatioEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  ret i32 0
}

declare void @_ZN15CPercentPrinter12RePrintRatioEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole13OpenFileErrorEPKwj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  store i32 %2, ptr %i.h, align 4, !tbaa !4
  %i.i = load i32, ptr %i.e, align 4, !tbaa !34
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !34
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.k = trunc i64 %wcslen.i.i to i32             ; 4 uses
  %i.l = add nsw i32 %i.k, 1                      ; 4 uses
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %bb.c, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.l to i64
  %i.o = icmp slt i32 %i.k, -1
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #16
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store i32 0, ptr %i.r, align 4, !tbaa !26
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.r, %.noexc ] ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.s, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.t = load i32, ptr %.04.i.i, align 4, !tbaa !26 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.t, ptr %.0.i.i, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.d, !llvm.loop !28

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16
          to label %.noexc12 unwind label %bb.r   ; 6 uses

.noexc12:                                         ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  tail call void @llvm.assume(i1 %i.m)
  %i.x = zext nneg i32 %i.l to i64
  %i.y = icmp slt i32 %i.k, -1
  %i.z = shl nuw nsw i64 %i.x, 2
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #16
          to label %.noexc.i unwind label %bb.f   ; 3 uses

.noexc.i:                                         ; preds = %.noexc12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !30
  store i32 0, ptr %i.ab, align 4, !tbaa !26
  store i32 %i.l, ptr %i.ac, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc.i, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %.sroa.0.0, %.noexc.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.af, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.ab, %.noexc.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.ae = load i32, ptr %.04.i.i.i, align 4, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.ae, ptr %.0.i.i.i, align 4, !tbaa !26
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, !llvm.loop !28

bb.e:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.k, ptr %i.ag, align 8, !tbaa !32
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.g unwind label %bb.r

bb.f:                                             ; preds = %.noexc12
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 16) #17
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.am
  store ptr %i.w, ptr %i.an, align 8, !tbaa !35
  %i.ao = add nsw i32 %i.al, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !34
  %i.ap = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ap, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  invoke void @_ZN15CPercentPrinter10ClosePrintEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  invoke void @_ZN15CPercentPrinter12PrintNewLineEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN15CPercentPrinter11PrintStringEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 17179869184, ptr %i.ar, align 8, !alias.scope !60
  %i.as = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #16
          to label %.noexc14 unwind label %bb.t   ; 2 uses

end_hunk_0
