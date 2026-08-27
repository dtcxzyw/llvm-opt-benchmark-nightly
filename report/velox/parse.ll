Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/parse?download=true
inline.NumInlined: 1142
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re29ApplyFoldEPKNS_8CaseFoldEi:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56   ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 1073741824, label %bb.c
    i32 1, label %bb.d
    i32 1073741825, label %bb.g
    i32 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, %1
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !52
  %i.e = sub nsw i32 %1, %i.d
  %i.f = and i32 %i.e, 1
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = and i32 %1, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = or disjoint i32 %1, 1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = add nsw i32 %1, -1
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 4, !tbaa !52
  %i.l = sub nsw i32 %1, %i.k
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.n = and i32 %1, -2147483647
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw nsw i32 %1, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = add nsw i32 %1, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.c, %bb.j, %bb.i, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.q, %bb.j ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %1, %bb.c ], [ %i.p, %bb.i ], [ %1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN3re213CycleFoldRuneEi(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @_ZN3re220num_unicode_casefoldE, align 4, !tbaa !8 ; 3 uses
  %i.b = sext i32 %i.a to i64
  %.idx = mul nsw i64 %i.b, 12
  %i.c = getelementptr inbounds i8, ptr @_ZN3re216unicode_casefoldE, i64 %.idx
  %i.d = icmp sgt i32 %i.a, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.02539.i = phi i32 [ %.126.i, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.02838.i = phi ptr [ %.129.i, %bb.c ], [ @_ZN3re216unicode_casefoldE, %bb.a ] ; 3 uses
  %i.e = lshr i32 %.02539.i, 1                    ; 3 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %.02838.i, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, %0                 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %.not32.i = icmp sgt i32 %0, %i.j
  br i1 %.not32.i, label %bb.c, label %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.k = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.l = sub nsw i32 %.02539.i, %i.k
  %narrow.i = select i1 %.not.i, i32 0, i32 %i.k
  %.129.idx.i = zext nneg i32 %narrow.i to i64    ; 2 uses
  %.129.i = getelementptr inbounds nuw [12 x i8], ptr %.02838.i, i64 %.129.idx.i ; 3 uses
  %.126.i = select i1 %.not.i, i32 %i.e, i32 %i.l ; 2 uses
  %i.m = icmp sgt i32 %.126.i, 0
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.c
  %.not = icmp ult ptr %.129.i, %i.c
  br i1 %.not, label %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %.129.i, align 4, !tbaa !52
  br label %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11

_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11: ; preds = %bb.b, %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge
  %i.n = phi i32 [ %.pre, %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %i.o = phi i64 [ %.129.idx.i, %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge ], [ %i.f, %bb.b ]
  %i.p = icmp slt i32 %0, %i.n
  br i1 %i.p, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %.02838.i, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56   ; 2 uses
  switch i32 %i.s, label %bb.e [
    i32 1073741824, label %bb.f
    i32 1, label %bb.g
    i32 1073741825, label %bb.j
    i32 -1, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.s, %0
  br label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

bb.f:                                             ; preds = %bb.d
  %i.u = sub nsw i32 %0, %i.n
  %i.v = and i32 %i.u, 1
  %.not15.i = icmp eq i32 %i.v, 0
  br i1 %.not15.i, label %bb.g, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.w = and i32 %0, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = or disjoint i32 %0, 1
  br label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

bb.i:                                             ; preds = %bb.g
  %i.z = add nsw i32 %0, -1
  br label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

bb.j:                                             ; preds = %bb.d
  %i.aa = sub nsw i32 %0, %i.n
  %i.ab = and i32 %i.aa, 1
  %.not.i9 = icmp eq i32 %i.ab, 0
  br i1 %.not.i9, label %bb.k, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.ac = and i32 %0, -2147483647
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = add nuw nsw i32 %0, 1
  br label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

bb.m:                                             ; preds = %bb.k
  %i.af = add nsw i32 %0, -1
  br label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit:          ; preds = %bb.a, %._crit_edge.i, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11
  %.0 = phi i32 [ %0, %bb.j ], [ %0, %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11 ], [ %0, %._crit_edge.i ], [ %i.t, %bb.e ], [ %i.af, %bb.m ], [ %i.y, %bb.h ], [ %i.z, %bb.i ], [ %0, %bb.f ], [ %i.ae, %bb.l ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState11PushLiteralEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 32
  %.not43 = icmp eq i32 %i.c, 0
  br i1 %.not43, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %1, -33
  %i.e = add i32 %i.d, -65
  %or.cond51 = icmp ult i32 %i.e, 26
  br i1 %or.cond51, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 6 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !9
  %i.h = and i32 %i.g, 16382
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef 20, i32 noundef %i.h)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %.lr.ph.i unwind label %bb.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !28
  %2 = add i32 %1, -65
  %3 = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %1, i32 noundef %1) ; 0 uses
  %or.cond.i = icmp ult i32 %2, 26
  br i1 %or.cond.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %.lr.ph.i
  %i.k = or disjoint i32 %1, 32                   ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %i.k, i32 noundef %i.k) ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph.i
  %i.m = add i32 %1, -97
  %or.cond3.i = icmp ult i32 %i.m, 26
  br i1 %or.cond3.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %1, -32                      ; 2 uses
  %i.o = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %i.n, i32 noundef %i.n) ; 0 uses
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 40) #31
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #31
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  %i.r = tail call noundef i32 @_ZN3re213CycleFoldRuneEi(i32 noundef %1)
  %.not45 = icmp eq i32 %i.r, %1
  br i1 %.not45, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !9
  %i.u = and i32 %i.t, 16382
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef 20, i32 noundef %i.u)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.v = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 3 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.039 = phi i32 [ %1, %bb.m ], [ %i.af, %bb.r ] ; 4 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !9
  %i.y = and i32 %i.x, 2048
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = icmp ne i32 %.039, 10
  %or.cond5 = or i1 %i.aa, %i.z
  br i1 %or.cond5, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.ac = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i32 noundef %.039, i32 noundef %.039) ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #31
  br label %bb.aa

bb.q:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 64) #31
  br label %bb.aa

bb.r:                                             ; preds = %bb.n, %bb.o
  %i.af = tail call noundef i32 @_ZN3re213CycleFoldRuneEi(i32 noundef %.039) ; 2 uses
  %.not47 = icmp eq i32 %i.af, %1
  br i1 %.not47, label %.sink.split, label %bb.n, !llvm.loop !57

bb.s:                                             ; preds = %bb.c, %bb.j, %bb.a
  %i.ag = and i32 %i.a, 2048
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = icmp eq i32 %1, 10
  %or.cond7 = and i1 %i.ai, %i.ah
  br i1 %or.cond7, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 3 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i32 noundef 1, i32 noundef %i.ak)
          to label %.sink.split unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 40) #31
  br label %bb.aa

bb.v:                                             ; preds = %bb.s
  %i.am = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState17MaybeConcatStringEiNS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %i.a)
  br i1 %i.am, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
  %i.ao = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i32 noundef 3, i32 noundef %i.ao)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 %1, ptr %i.ap, align 8, !tbaa !28
  br label %.sink.split

bb.y:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 40) #31
  br label %bb.aa

.sink.split:                                      ; preds = %bb.r, %bb.t, %.thread.i, %bb.f, %bb.g, %bb.x
  %.sink = phi ptr [ %i.an, %bb.x ], [ %i.aj, %bb.t ], [ %i.f, %.thread.i ], [ %i.f, %bb.g ], [ %i.f, %bb.f ], [ %i.s, %bb.r ]
  %i.ar = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.v
  ret i1 true

bb.aa:                                            ; preds = %bb.p, %bb.q, %bb.h, %bb.i, %bb.y, %bb.u
  %.pn48.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.al, %bb.u ], [ %i.aq, %bb.y ], [ %i.q, %bb.i ], [ %i.ae, %bb.q ], [ %i.ad, %bb.p ]
  resume { ptr, i32 } %.pn48.pn
}

declare void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState9PushCaretEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  %i.b = and i32 %i.a, 16
  %.not = icmp eq i32 %i.b, 0
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !9      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 18, i32 noundef %i.d)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.f, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #31
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 14, i32 noundef %i.d)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit: ; preds = %bb.d, %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 3 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %1, i32 noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) ; 0 uses
  ret i1 true

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #31
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState16PushWordBoundaryEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
end_hunk_0
