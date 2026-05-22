inline.NumInlined: 69
inline.NumDeleted: 28
begin_hunk_0_@_ZN15CPercentPrinter10PrintRatioEv
; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 1) i32 @_ZN22CUpdateCallbackConsole12SetRatioInfoEPKyS1_(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) unnamed_addr #2 align 2 {
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
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole13OpenFileErrorEPKwj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.o

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
          to label %.noexc unwind label %bb.p     ; 2 uses

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
          to label %.noexc12 unwind label %bb.q   ; 6 uses

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
          to label %bb.g unwind label %bb.q

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
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  invoke void @_ZN15CPercentPrinter12PrintNewLineEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN15CPercentPrinter11PrintStringEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull @.str.6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 17179869184, ptr %i.ar, align 8, !alias.scope !60
  %i.as = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #16
          to label %.noexc14 unwind label %bb.s   ; 2 uses

.noexc14:                                         ; preds = %bb.k
  store ptr %i.as, ptr %3, align 8, !tbaa !30, !alias.scope !60
  store i32 0, ptr %i.as, align 4, !tbaa !26, !noalias !60
  %i.at = invoke noundef zeroext i1 @_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE(i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN8NWindows6NError16MyFormatMessageWEj.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %.noexc14
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !30, !alias.scope !60 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.body15, label %bb.u

_ZN8NWindows6NError16MyFormatMessageWEj.exit:     ; preds = %.noexc14
  %i.ax = load ptr, ptr %3, align 8, !tbaa !30
  invoke void @_ZN15CPercentPrinter11PrintStringEPKw(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.ax)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZN8NWindows6NError16MyFormatMessageWEj.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN11CStringBaseIwED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #17
  br label %_ZN11CStringBaseIwED2Ev.exit17

_ZN11CStringBaseIwED2Ev.exit17:                   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ba = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  ret i32 1

bb.o:                                             ; preds = %bb.a, %bb.j, %bb.i, %_ZN11CStringBaseIwED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit18

bb.p:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit18

bb.q:                                             ; preds = %bb.e, %_ZN11CStringBaseIwEC2EPKw.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %i.ah, %bb.f ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.0, null
  br i1 %i.be, label %_ZN11CStringBaseIwED2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %.body
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit18

bb.s:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body15

bb.t:                                             ; preds = %_ZN8NWindows6NError16MyFormatMessageWEj.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.body15, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.sink = phi ptr [ %i.av, %bb.l ], [ %i.bh, %bb.t ]
  %.pn9.ph = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.bg, %bb.t ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #17
  br label %.body15

.body15:                                          ; preds = %bb.u, %bb.t, %bb.s, %bb.l
  %.pn9 = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.bf, %bb.s ], [ %i.bg, %bb.t ], [ %.pn9.ph, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN11CStringBaseIwED2Ev.exit18

_ZN11CStringBaseIwED2Ev.exit18:                   ; preds = %bb.p, %.body, %bb.r, %.body15, %bb.o
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %.body15 ], [ %i.bb, %bb.o ], [ %i.bc, %bb.p ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.r ]
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole18SetOperationResultEi(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(232) initializes((56, 58)) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 1, ptr %i.b, align 1, !tbaa !49
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN22CUpdateCallbackConsole22CryptoGetTextPassword2EPiPPw(ptr noundef nonnull align 8 captures(address) dereferenceable(232) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 9 uses
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !62, !range !37, !noundef !38 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !range !37
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  call void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef %i.h, i1 noundef zeroext true)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = icmp eq ptr %3, %i.i
  br i1 %i.j, label %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.c

._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge:      ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !30
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !32
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !30   ; 3 uses
  store i32 0, ptr %i.l, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 2 uses
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %i.o to i64
  %i.t = icmp slt i32 %i.n, -1
  %i.u = shl nuw nsw i64 %i.s, 2
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #16
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.x = icmp sgt i32 %i.q, 0
  br i1 %i.x, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.l) #17
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !32
  %i.y = sext i32 %.pre.i to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.z = phi i64 [ %i.y, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.w, ptr %i.i, align 8, !tbaa !30
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !26
  store i32 %i.o, ptr %i.p, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.e, %bb.c
  %i.ab = phi ptr [ %i.l, %bb.c ], [ %i.w, %bb.e ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ac, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ae = load i32, ptr %.04.i.i, align 4, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ae, ptr %.0.i.i, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.f, !llvm.loop !28

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.f
  %i.ag = load i32, ptr %i.m, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.k, align 8, !tbaa !32
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.ah = phi ptr [ %.pre, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %i.ac, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ] ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  store i8 1, ptr %i.a, align 2, !tbaa !62
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN11CStringBaseIwED2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #17
  br label %_ZN11CStringBaseIwED2Ev.exit7

_ZN11CStringBaseIwED2Ev.exit7:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.aj

bb.j:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.a
  %i.am = phi i8 [ 1, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.b, %bb.a ]
  %i.an = zext nneg i8 %i.am to i32
  store i32 %i.an, ptr %1, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = call ptr @SysAllocString(ptr noundef %i.ap) ; 2 uses
  store ptr %i.aq, ptr %2, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.aq, null
  %i.ar = select i1 %.not.i, i32 -2147024882, i32 0
  ret i32 %i.ar
}

declare void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN22CUpdateCallbackConsole21CryptoGetTextPasswordEPPw(ptr noundef nonnull align 8 captures(address) dereferenceable(232) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 9 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !62, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  call void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef %i.e, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = icmp eq ptr %2, %i.f
  br i1 %i.g, label %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.c

._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge:      ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !30
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !32
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !30   ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31   ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.l to i64
  %i.q = icmp slt i32 %i.k, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #16
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %._crit_edge.thread.i.i, label %bb.e

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.i) #17
end_hunk_0
