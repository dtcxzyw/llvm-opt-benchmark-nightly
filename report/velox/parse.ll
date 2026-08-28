Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/parse?download=true
inline.NumInlined: 1142
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii:bb.a
  %.2 = phi ptr [ %.028., %._crit_edge ], [ %i.f, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN3re29ApplyFoldEPKNS_8CaseFoldEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
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
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 7 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %.lr.ph.i unwind label %bb.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !28
  %i.k = add i32 %1, -65
  %or.cond.i = icmp ult i32 %i.k, 26
  br i1 %or.cond.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %.lr.ph.i
  %2 = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %1, i32 noundef %1) ; 0 uses
  %i.l = or disjoint i32 %1, 32                   ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %i.l, i32 noundef %i.l) ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph.i
  %i.n = add i32 %1, -97
  %or.cond3.i = icmp ult i32 %i.n, 26
  %3 = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %1, i32 noundef %1) ; 0 uses
  br i1 %or.cond3.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %1, -32                      ; 2 uses
  %i.p = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef %i.o, i32 noundef %i.o) ; 0 uses
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 40) #31
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 64) #31
  br label %bb.aa

bb.j:                                             ; preds = %bb.b
  %i.s = tail call noundef i32 @_ZN3re213CycleFoldRuneEi(i32 noundef %1)
  %.not45 = icmp eq i32 %i.s, %1
  br i1 %.not45, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !9
  %i.v = and i32 %i.u, 16382
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef 20, i32 noundef %i.v)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.w = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 3 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.039 = phi i32 [ %1, %bb.m ], [ %i.ag, %bb.r ] ; 4 uses
  %i.y = load i32, ptr %0, align 8, !tbaa !9
  %i.z = and i32 %i.y, 2048
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = icmp ne i32 %.039, 10
  %or.cond5 = or i1 %i.ab, %i.aa
  br i1 %or.cond5, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.ad = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i32 noundef %.039, i32 noundef %.039) ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 40) #31
  br label %bb.aa

bb.q:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 64) #31
  br label %bb.aa

bb.r:                                             ; preds = %bb.n, %bb.o
  %i.ag = tail call noundef i32 @_ZN3re213CycleFoldRuneEi(i32 noundef %.039) ; 2 uses
  %.not47 = icmp eq i32 %i.ag, %1
  br i1 %.not47, label %.sink.split, label %bb.n, !llvm.loop !57

bb.s:                                             ; preds = %bb.c, %bb.j, %bb.a
  %i.ah = and i32 %i.a, 2048
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = icmp eq i32 %1, 10
  %or.cond7 = and i1 %i.aj, %i.ai
  br i1 %or.cond7, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ak = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 3 uses
  %i.al = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef 1, i32 noundef %i.al)
          to label %.sink.split unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 40) #31
  br label %bb.aa

bb.v:                                             ; preds = %bb.s
  %i.an = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState17MaybeConcatStringEiNS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %i.a)
  br i1 %i.an, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i32 noundef 3, i32 noundef %i.ap)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 %1, ptr %i.aq, align 8, !tbaa !28
  br label %.sink.split

bb.y:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 40) #31
  br label %bb.aa

.sink.split:                                      ; preds = %bb.r, %bb.t, %.thread.i, %bb.g, %bb.f, %bb.x
  %.sink = phi ptr [ %i.ao, %bb.x ], [ %i.ak, %bb.t ], [ %i.f, %.thread.i ], [ %i.f, %bb.f ], [ %i.f, %bb.g ], [ %i.t, %bb.r ]
  %i.as = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.v
  ret i1 true

bb.aa:                                            ; preds = %bb.p, %bb.q, %bb.h, %bb.i, %bb.y, %bb.u
  %.pn48.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.am, %bb.u ], [ %i.ar, %bb.y ], [ %i.r, %bb.i ], [ %i.af, %bb.q ], [ %i.ae, %bb.p ]
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
  %i.b = load i32, ptr %0, align 8, !tbaa !9      ; 2 uses
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 16, i32 noundef %i.b)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.d, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #31
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 17, i32 noundef %i.b)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit: ; preds = %bb.d, %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushDollarEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.b = and i32 %i.a, 16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %i.a, 8192
  store i32 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 3 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef 19, i32 noundef %i.e)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.f, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 40) #31
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit: ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.d) ; 0 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !9
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 3 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !9
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 15, i32 noundef %i.i)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit3: ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN3re26Regexp10ParseState10PushRegexpEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit3, %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re26Regexp10ParseState7PushDotEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9
  %i.b = and i32 %i.a, 2056
  %or.cond = icmp eq i32 %i.b, 8
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 6 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !9      ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 12, i32 noundef %i.d)
          to label %_ZN3re26Regexp10ParseState12PushSimpleOpENS_8RegexpOpE.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.o, %bb.h ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 40) #31
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 16382
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i32 noundef 20, i32 noundef %i.f)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %i.i = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef 0, i32 noundef 9) ; 0 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef 11, i32 noundef %i.l) ; 0 uses
end_hunk_0
