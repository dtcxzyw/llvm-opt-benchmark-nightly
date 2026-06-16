inline.NumInlined: 69
inline.NumDeleted: 28
begin_hunk_0_@_ZN22CUpdateCallbackConsole13OpenFileErrorEPKwj:bb.a

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
  br i1 %i.aw, label %.body15, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.av) #17
  br label %.body15

_ZN8NWindows6NError16MyFormatMessageWEj.exit:     ; preds = %.noexc14
  %i.ax = load ptr, ptr %3, align 8, !tbaa !30
  invoke void @_ZN15CPercentPrinter11PrintStringEPKw(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.ax)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %_ZN8NWindows6NError16MyFormatMessageWEj.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN11CStringBaseIwED2Ev.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #17
  br label %_ZN11CStringBaseIwED2Ev.exit17

_ZN11CStringBaseIwED2Ev.exit17:                   ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ba = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  ret i32 1

bb.p:                                             ; preds = %bb.a, %bb.j, %bb.i, %_ZN11CStringBaseIwED2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit18

bb.q:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit18

bb.r:                                             ; preds = %bb.e, %_ZN11CStringBaseIwEC2EPKw.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.ah, %bb.f ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.0, null
  br i1 %i.be, label %_ZN11CStringBaseIwED2Ev.exit18, label %bb.s

bb.s:                                             ; preds = %.body
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #17
  br label %_ZN11CStringBaseIwED2Ev.exit18

bb.t:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body15

bb.u:                                             ; preds = %_ZN8NWindows6NError16MyFormatMessageWEj.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.body15, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #17
  br label %.body15

.body15:                                          ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l
  %.pn9 = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.bf, %bb.t ], [ %i.au, %bb.m ], [ %i.bg, %bb.u ], [ %i.bg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN11CStringBaseIwED2Ev.exit18

_ZN11CStringBaseIwED2Ev.exit18:                   ; preds = %bb.q, %.body, %bb.s, %.body15, %bb.p
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %.body15 ], [ %i.bb, %bb.p ], [ %i.bc, %bb.q ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.s ]
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17g_CriticalSection) #15 ; 0 uses
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN22CUpdateCallbackConsole18SetOperationResultEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(232) initializes((56, 58)) %0, i32 %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 1, ptr %i.b, align 1, !tbaa !49
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN22CUpdateCallbackConsole22CryptoGetTextPassword2EPiPPw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !62, !range !37, !noundef !38 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !range !37
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  call void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef %5, i1 noundef zeroext true)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !32
  %i.h = load ptr, ptr %6, align 8, !tbaa !30     ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 2 uses
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.k to i64
  %i.p = icmp slt i32 %i.j, -1
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #16
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.t = icmp sgt i32 %i.m, 0
  br i1 %i.t, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.h) #17
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !32
  %i.u = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.v = phi i64 [ %i.u, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.s, ptr %6, align 8, !tbaa !30
  %i.w = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !26
  store i32 %i.k, ptr %i.l, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.x = phi ptr [ %i.h, %bb.b ], [ %i.s, %bb.d ]
  %i.y = load ptr, ptr %3, align 8, !tbaa !30     ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.y, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.z, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.x, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.aa = load i32, ptr %.04.i.i, align 4, !tbaa !26 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.aa, ptr %.0.i.i, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.e, !llvm.loop !28

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.e
  %7 = load i32, ptr %i.i, align 8, !tbaa !32
  store i32 %7, ptr %i.g, align 8, !tbaa !32
  %i.ac = icmp eq ptr %i.y, null
  br i1 %i.ac, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.y) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  store i8 1, ptr %i.a, align 2, !tbaa !62
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN11CStringBaseIwED2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #17
  br label %_ZN11CStringBaseIwED2Ev.exit7

_ZN11CStringBaseIwED2Ev.exit7:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.a
  %i.ag = phi i8 [ 1, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.b, %bb.a ]
  %i.ah = zext nneg i8 %i.ag to i32
  store i32 %i.ah, ptr %1, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = call ptr @SysAllocString(ptr noundef %i.aj) ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.ak, null
  %i.al = select i1 %.not.i, i32 -2147024882, i32 0
  ret i32 %i.al
}

declare void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN22CUpdateCallbackConsole21CryptoGetTextPasswordEPPw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !62, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  call void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef %4, i1 noundef zeroext false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !32
  %i.e = load ptr, ptr %5, align 8, !tbaa !30     ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.h to i64
  %i.m = icmp slt i32 %i.g, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #16
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp sgt i32 %i.j, 0
  br i1 %i.q, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.e) #17
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !32
  %i.r = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.s = phi i64 [ %i.r, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.p, ptr %5, align 8, !tbaa !30
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !26
  store i32 %i.h, ptr %i.i, align 4, !tbaa !31
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.u = phi ptr [ %i.e, %bb.b ], [ %i.p, %bb.d ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !30     ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.x = load i32, ptr %.04.i.i, align 4, !tbaa !26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.x, ptr %.0.i.i, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.e, !llvm.loop !28

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.e
  %6 = load i32, ptr %i.f, align 8, !tbaa !32
  store i32 %6, ptr %i.d, align 8, !tbaa !32
  %i.z = icmp eq ptr %i.v, null
  br i1 %i.z, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.v) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  store i8 1, ptr %i.a, align 2, !tbaa !62
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN11CStringBaseIwED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #17
  br label %_ZN11CStringBaseIwED2Ev.exit4

_ZN11CStringBaseIwED2Ev.exit4:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.af = call ptr @SysAllocString(ptr noundef %i.ae) ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.af, null
  %i.ag = select i1 %.not.i, i32 -2147024882, i32 0
  ret i32 %i.ag
}

declare i32 @CriticalSection_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

declare ptr @SysAllocString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_UpdateCallbackConsole.cpp() #10 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @CriticalSection_Init(ptr noundef nonnull @_ZL17g_CriticalSection) ; 0 uses
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev, ptr nonnull @_ZL17g_CriticalSection, ptr nonnull @__dso_handle) #15 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }

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
!8 = !{!9, !14, i64 64}
!9 = !{!"_ZTS22CUpdateCallbackConsole", !10, i64 0, !12, i64 8, !16, i64 56, !16, i64 57, !16, i64 58, !14, i64 64, !16, i64 72, !16, i64 73, !16, i64 74, !17, i64 80, !16, i64 96, !19, i64 104, !23, i64 136, !19, i64 168, !23, i64 200}
!10 = !{!"_ZTS18IUpdateCallbackUI2", !11, i64 0}
!11 = !{!"_ZTS17IUpdateCallbackUI"}
!12 = !{!"_ZTS15CPercentPrinter", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !5, i64 32, !14, i64 40}
!13 = !{!"long long", !6, i64 0}
!14 = !{!"p1 _ZTS13CStdOutStream", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTS11CStringBaseIwE", !18, i64 0, !5, i64 8, !5, i64 12}
!18 = !{!"p1 wchar_t", !15, i64 0}
!19 = !{!"_ZTS13CObjectVectorI11CStringBaseIwEE", !20, i64 0}
!20 = !{!"_ZTS13CRecordVectorIPvE", !21, i64 0}
!21 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !15, i64 16, !22, i64 24}
!22 = !{!"long", !6, i64 0}
!23 = !{!"_ZTS13CRecordVectorIiE", !21, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"wchar_t", !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!17, !18, i64 0}
!31 = !{!17, !5, i64 12}
!32 = !{!17, !5, i64 8}
!33 = !{!21, !15, i64 16}
!34 = !{!21, !5, i64 12}
!35 = !{!15, !15, i64 0}
!36 = !{!9, !16, i64 58}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN8NWindows6NError16MyFormatMessageWEj: argument 0"}
!41 = distinct !{!41, !"_ZN8NWindows6NError16MyFormatMessageWEj"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN8NWindows6NError15MyFormatMessageEj: argument 0"}
!44 = distinct !{!44, !"_ZN8NWindows6NError15MyFormatMessageEj"}
!45 = !{!43, !40}
!46 = !{!9, !16, i64 56}
!47 = !{!9, !16, i64 72}
!48 = !{!9, !16, i64 73}
!49 = !{!9, !16, i64 57}
!50 = !{!12, !13, i64 24}
!51 = !{!12, !13, i64 8}
!52 = !{!13, !13, i64 0}
!53 = !{!12, !13, i64 16}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN8NWindows6NError16MyFormatMessageWEj: argument 0"}
!56 = distinct !{!56, !"_ZN8NWindows6NError16MyFormatMessageWEj"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN8NWindows6NError15MyFormatMessageEj: argument 0"}
!59 = distinct !{!59, !"_ZN8NWindows6NError15MyFormatMessageEj"}
!60 = !{!58, !55}
!61 = !{!18, !18, i64 0}
!62 = !{!9, !16, i64 74}
end_hunk_0
