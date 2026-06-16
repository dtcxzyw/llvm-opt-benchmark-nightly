inline.NumInlined: 31
inline.NumDeleted: 11
begin_hunk_0_@_ZN23CExtractCallbackConsole12AskOverwriteEPKwPK9_FILETIMEPKyS1_S4_S6_Pi:bb.a
bb.d:                                             ; preds = %bb.a
  store i32 1, ptr %7, align 4, !tbaa !4
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %7, align 4, !tbaa !4
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store i32 4, ptr %7, align 4, !tbaa !4
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ -2147467259, %bb.g ], [ -2147467260, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_Z4endlR13CStdOutStream(ptr noundef nonnull align 8 dereferenceable(16)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_Z20ScanUserYesNoAllQuitP13CStdOutStream(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole16PrepareOperationEPKwbiPKy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i1 zeroext %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %3, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN23CExtractCallbackConsole16PrepareOperationEPKwbiPKy, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %switch.load) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %1) ; 0 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.2)
  %i.k = load i64, ptr %4, align 8, !tbaa !22
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEy(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.k)
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEy(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole12MessageErrorEPKw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load <2 x i64>, ptr %i.e, align 8, !tbaa !22
  %i.g = add <2 x i64> %i.f, splat (i64 1)
  store <2 x i64> %i.g, ptr %i.e, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole18SetOperationResultEib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load <2 x i64>, ptr %i.a, align 8, !tbaa !22
  %i.c = add <2 x i64> %i.b, splat (i64 1)
  store <2 x i64> %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.4) ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !8
  switch i32 %1, label %bb.e [
    i32 1, label %.sink.split
    i32 3, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = select i1 %2, ptr @.str.14, ptr @.str.15
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.i = select i1 %2, ptr @.str.16, ptr @.str.17
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.str.13.sink = phi ptr [ @.str.18, %bb.e ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ @.str.13, %bb.b ]
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull %.str.13.sink) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole11SetPasswordERK11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) initializes((20, 21)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !24
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.h to i64
  %i.m = icmp slt i32 %i.g, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #10 ; 3 uses
  %i.q = icmp sgt i32 %i.j, 0
  br i1 %i.q, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #11
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !24
  %i.r = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %bb.c
  %i.s = phi i64 [ %i.r, %._crit_edge.thread.i.i ], [ 0, %bb.c ]
  store ptr %i.p, ptr %i.b, align 8, !tbaa !25
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !26
  store i32 %i.h, ptr %i.i, align 4, !tbaa !28
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.u = phi ptr [ %i.e, %bb.b ], [ %i.p, %bb.d ]
  %i.v = load ptr, ptr %1, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.x = load i32, ptr %.04.i.i, align 4, !tbaa !26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.x, ptr %.0.i.i, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.e, !llvm.loop !29

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.e
  %i.z = load i32, ptr %i.f, align 8, !tbaa !24
  store i32 %i.z, ptr %i.d, align 8, !tbaa !24
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.a, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZN23CExtractCallbackConsole21CryptoGetTextPasswordEPPw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  call void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef %4, i1 noundef zeroext false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !24
  %i.e = load ptr, ptr %5, align 8, !tbaa !25     ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = add nsw i32 %i.g, 1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.h to i64
  %i.m = icmp slt i32 %i.g, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #10
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp sgt i32 %i.j, 0
  br i1 %i.q, label %._crit_edge.thread.i.i, label %bb.d

._crit_edge.thread.i.i:                           ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.e) #11
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !24
  %i.r = sext i32 %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %.noexc
  %i.s = phi i64 [ %i.r, %._crit_edge.thread.i.i ], [ 0, %.noexc ]
  store ptr %i.p, ptr %5, align 8, !tbaa !25
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !26
  store i32 %i.h, ptr %i.i, align 4, !tbaa !28
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %bb.b
  %i.u = phi ptr [ %i.e, %bb.b ], [ %i.p, %bb.d ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !25     ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.w, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.x = load i32, ptr %.04.i.i, align 4, !tbaa !26 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.x, ptr %.0.i.i, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.e, !llvm.loop !29

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %bb.e
  %6 = load i32, ptr %i.f, align 8, !tbaa !24
  store i32 %6, ptr %i.d, align 8, !tbaa !24
  %i.z = icmp eq ptr %i.v, null
  br i1 %i.z, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.v) #11
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  store i8 1, ptr %i.a, align 4, !tbaa !23
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN11CStringBaseIwED2Ev.exit3, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #11
  br label %_ZN11CStringBaseIwED2Ev.exit3

_ZN11CStringBaseIwED2Ev.exit3:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = call ptr @SysAllocString(ptr noundef %i.ae) ; 2 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.af, null
  %i.ag = select i1 %.not.i, i32 -2147024882, i32 0
  ret i32 %i.ag
}

declare void @_Z11GetPasswordP13CStdOutStreamb(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local noundef range(i32 -2147024882, 1) i32 @_ZThn8_N23CExtractCallbackConsole21CryptoGetTextPasswordEPPw(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN23CExtractCallbackConsole21CryptoGetTextPasswordEPPw(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole10BeforeOpenEPKw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((64, 72)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @_Z4endlR13CStdOutStream)
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.19)
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole10OpenResultEPKwib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.5) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  switch i32 %2, label %bb.e [
    i32 1, label %bb.c
    i32 -2147024882, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = select i1 %3, ptr @.str.6, ptr @.str.7
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 17179869184, ptr %i.j, align 8, !alias.scope !36
  %i.k = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #10, !noalias !36 ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !25, !alias.scope !36
  store i32 0, ptr %i.k, align 4, !tbaa !26, !noalias !36
  %i.l = invoke noundef zeroext i1 @_ZN8NWindows6NError15MyFormatMessageEjR11CStringBaseIwE(i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows6NError15MyFormatMessageEj.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !25, !alias.scope !36 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.n) #11
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g, %_ZN11CStringBaseIwED2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZN11CStringBaseIwED2Ev.exit7 ], [ %i.m, %bb.g ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN8NWindows6NError15MyFormatMessageEj.exit:      ; preds = %bb.e
  %i.p = load ptr, ptr %4, align 8, !tbaa !25
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.p)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN8NWindows6NError15MyFormatMessageEj.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.r) #11
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.l

bb.j:                                             ; preds = %_ZN8NWindows6NError15MyFormatMessageEj.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN11CStringBaseIwED2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.u) #11
  br label %_ZN11CStringBaseIwED2Ev.exit7

_ZN11CStringBaseIwED2Ev.exit7:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

bb.l:                                             ; preds = %bb.d, %_ZN11CStringBaseIwED2Ev.exit, %bb.c
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN23CExtractCallbackConsole15ThereAreNoFilesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_Z4endlR13CStdOutStream)
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.20)
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147467260, 29) i32 @_ZN23CExtractCallbackConsole13ExtractResultEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.21)
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !39
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.9)
  %i.p = load i64, ptr %i.e, align 8, !tbaa !35
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEy(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef %i.p)
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @_Z4endlR13CStdOutStream) ; 0 uses
  br label %bb.n

.critedge:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !39
  switch i32 %1, label %bb.e [
    i32 -2147467260, label %bb.n
    i32 28, label %bb.n
  ]

bb.e:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPFRS_S0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @_Z4endlR13CStdOutStream)
  %i.y = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.22) ; 0 uses
  %i.z = icmp eq i32 %1, -2147024882
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.23) ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8
  %i.ae = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #10 ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !25
  store i32 0, ptr %i.ae, align 4, !tbaa !26
end_hunk_0
