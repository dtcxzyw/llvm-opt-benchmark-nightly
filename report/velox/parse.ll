Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/parse?download=true
inline.NumInlined: 1142
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re29ApplyFoldEPKNS_8CaseFoldEi:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
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
  %i.d = load i32, ptr %0, align 4, !tbaa !53
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
  %i.k = load i32, ptr %0, align 4, !tbaa !53
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
  %i.a = load i32, ptr @_ZN3re220num_unicode_casefoldE, align 4, !tbaa !18 ; 3 uses
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53   ; 2 uses
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
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.c
  %.not = icmp ult ptr %.129.i, %i.c
  br i1 %.not, label %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit

._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %.129.i, align 4, !tbaa !53
  br label %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11

_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11: ; preds = %bb.b, %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge
  %i.n = phi i32 [ %.pre, %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  %i.o = phi i64 [ %.129.idx.i, %._crit_edge.i._ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11_crit_edge ], [ %i.f, %bb.b ]
  %i.p = icmp slt i32 %0, %i.n
  br i1 %i.p, label %_ZN3re29ApplyFoldEPKNS_8CaseFoldEi.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3re214LookupCaseFoldEPKNS_8CaseFoldEii.exit.thread11
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %.02838.i, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !55   ; 2 uses
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
  %i.a = load i32, ptr %0, align 8, !tbaa !27     ; 4 uses
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
  %i.g = load i32, ptr %0, align 8, !tbaa !27
  %i.h = and i32 %i.g, 16382
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef 20, i32 noundef %i.h)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %.lr.ph.i unwind label %bb.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !38
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
  %i.t = load i32, ptr %0, align 8, !tbaa !27
  %i.u = and i32 %i.t, 16382
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef 20, i32 noundef %i.u)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.v = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 3 uses
  invoke void @_ZN3re216CharClassBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.039 = phi i32 [ %1, %bb.m ], [ %i.af, %bb.r ] ; 4 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !27
  %i.y = and i32 %i.x, 2048
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = icmp ne i32 %.039, 10
  %or.cond5 = or i1 %i.aa, %i.z
  br i1 %or.cond5, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !38
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
  br i1 %.not47, label %.sink.split, label %bb.n, !llvm.loop !158

bb.s:                                             ; preds = %bb.c, %bb.j, %bb.a
  %i.ag = and i32 %i.a, 2048
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = icmp eq i32 %1, 10
  %or.cond7 = and i1 %i.ai, %i.ah
  br i1 %or.cond7, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 3 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !27
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
  %i.ao = load i32, ptr %0, align 8, !tbaa !27
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i32 noundef 3, i32 noundef %i.ao)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 %1, ptr %i.ap, align 8, !tbaa !38
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
  %i.a = load i32, ptr %0, align 8, !tbaa !27
  %i.b = and i32 %i.a, 16
  %.not = icmp eq i32 %i.b, 0
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34 ; 4 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !27     ; 2 uses
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
  %i.b = load i32, ptr %0, align 8, !tbaa !27
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
begin_hunk_1_@_ZN3re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE:bb.a
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #34
          to label %.noexc91 unwind label %.loopexit97 ; 5 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN3re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co ; 4 uses
  store ptr %i.cb, ptr %i.cx, align 8, !tbaa !107
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cc, ptr %i.cy, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 %i.ce, ptr %i.cz, align 8, !tbaa !109
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 -1, ptr %i.da, align 4, !tbaa !108
  %.not10.i.i.i.i.i = icmp eq ptr %i.cl, %i.cf
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc91, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %i.cw, %.noexc91 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.cl, %.noexc91 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !113, !alias.scope !200
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.cf
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN3re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc91
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %.noexc91 ], [ %i.dc, %.lr.ph.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i35.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN3re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dg) #31
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorIN3re26SpliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.cw, ptr %3, align 8, !tbaa !105
  store ptr %i.dd, ptr %i.f, align 8, !tbaa !106
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !111
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEERS1_DpOT_.exit

_ZNSt6vectorIN3re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN3re26SpliceESaIS1_EE17_M_realloc_insertIJRPNS0_6RegexpEPS6_iEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.am
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !47
  invoke void @_ZNSt8_Rb_treeIN3re29RuneRangeES1_St9_IdentityIS1_ENS0_13RuneRangeLessESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.di)
          to label %_ZN3re216CharClassBuilderD2Ev.exit92 unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN3re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEERS1_DpOT_.exit
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #32
  unreachable

_ZN3re216CharClassBuilderD2Ev.exit92:             ; preds = %_ZNSt6vectorIN3re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEERS1_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.at

bb.ar:                                            ; preds = %bb.ak, %._crit_edge
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit97:                                      ; preds = %_ZNKSt6vectorIN3re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit97, %.loopexit.split-lp, %bb.ar, %bb.i, %bb.j, %bb.u, %bb.ai
  %.pn83.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn, %bb.ai ], [ %i.aj, %bb.j ], [ %i.ai, %bb.i ], [ %.pn80, %bb.u ], [ %i.dl, %bb.ar ], [ %lpad.loopexit, %.loopexit97 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN3re216CharClassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %.pn83.pn

bb.at:                                            ; preds = %._crit_edge115, %_ZN3re216CharClassBuilderD2Ev.exit92
  %.pre-phi = phi i32 [ %.pre, %._crit_edge115 ], [ %i.cd, %_ZN3re216CharClassBuilderD2Ev.exit92 ]
  %spec.select = select i1 %i.l, i32 %.pre-phi, i32 %.068103
  br label %bb.au

bb.au:                                            ; preds = %bb.e, %bb.e, %bb.at
  %.270 = phi i32 [ %spec.select, %bb.at ], [ %.068103, %bb.e ], [ %.068103, %bb.e ]
  %.267 = phi ptr [ %spec.select87, %bb.at ], [ %.065105, %bb.e ], [ %.065105, %bb.e ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond114.not, label %._crit_edge109, label %bb.b, !llvm.loop !195
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3re25FrameESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #31
  br label %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i

_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i:         ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !110
  br label %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3re25FrameESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #31
  br label %_ZNSt12_Vector_baseIN3re25FrameESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3re25FrameESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN3re26Regexp5EqualEPS0_S1_(ptr noundef, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = and i32 %3, 2052
  %i.b = icmp ne i32 %i.a, 4
  %i.c = icmp slt i32 %1, 11
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp sgt i32 %2, 9
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 10
  br i1 %i.e, label %bb.c, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %3, 1
  %.not23.i = icmp eq i32 %i.f, 0
  br i1 %.not23.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %3, 32
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %bb.h, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.d, %bb.g
  %.020.i33 = phi i32 [ %i.o, %bb.g ], [ %1, %bb.d ] ; 8 uses
  %i.h = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.020.i33, i32 noundef %.020.i33) ; 0 uses
  %i.i = add i32 %.020.i33, -65
  %or.cond.i34 = icmp ult i32 %i.i, 26
  br i1 %or.cond.i34, label %.thread.i37, label %bb.e

.thread.i37:                                      ; preds = %.lr.ph.i32
  %i.j = or disjoint i32 %.020.i33, 32            ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.j, i32 noundef %i.j) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i32
  %i.l = add i32 %.020.i33, -97
  %or.cond3.i35 = icmp ult i32 %i.l, 26
  br i1 %or.cond3.i35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %.020.i33, -32               ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.m, i32 noundef %i.m) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread.i37
  %i.o = add i32 %.020.i33, 1
  %exitcond.not.i36 = icmp eq i32 %.020.i33, 9
  br i1 %exitcond.not.i36, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit, label %.lr.ph.i32, !llvm.loop !201

bb.h:                                             ; preds = %bb.d
  tail call fastcc void @_ZN3re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef 9, i32 noundef 0), !inline_history !202
  br label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

bb.i:                                             ; preds = %bb.c
  %i.p = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef 9), !inline_history !202 ; 0 uses
  br label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit

_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit: ; preds = %bb.g, %bb.i, %bb.h, %bb.b
  %i.q = icmp sgt i32 %2, 10
  br i1 %i.q, label %bb.j, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29

bb.j:                                             ; preds = %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit
  %i.r = and i32 %3, 1
  %.not23.i27 = icmp eq i32 %i.r, 0
  br i1 %.not23.i27, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = and i32 %3, 32
  %.not24.i28 = icmp eq i32 %i.s, 0
  br i1 %.not24.i28, label %bb.o, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.k, %bb.n
  %.020.i41 = phi i32 [ %i.aa, %bb.n ], [ 11, %bb.k ] ; 8 uses
  %i.t = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.020.i41, i32 noundef %.020.i41) ; 0 uses
  %i.u = add nsw i32 %.020.i41, -65
  %or.cond.i42 = icmp ult i32 %i.u, 26
  br i1 %or.cond.i42, label %.thread.i45, label %bb.l

.thread.i45:                                      ; preds = %.lr.ph.i40
  %i.v = or disjoint i32 %.020.i41, 32            ; 2 uses
  %i.w = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.v, i32 noundef %i.v) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i40
  %i.x = add nsw i32 %.020.i41, -97
  %or.cond3.i43 = icmp ult i32 %i.x, 26
  br i1 %or.cond3.i43, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %.020.i41, -32               ; 2 uses
  %i.z = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.y, i32 noundef %i.y) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread.i45
  %i.aa = add nuw i32 %.020.i41, 1
  %exitcond.not.i44 = icmp eq i32 %.020.i41, %2
  br i1 %exitcond.not.i44, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29, label %.lr.ph.i40, !llvm.loop !201

bb.o:                                             ; preds = %bb.k
  tail call fastcc void @_ZN3re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 11, i32 noundef %2, i32 noundef 0), !inline_history !202
  br label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29

bb.p:                                             ; preds = %bb.j
  %i.ab = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 11, i32 noundef %2), !inline_history !202 ; 0 uses
  br label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29

bb.q:                                             ; preds = %bb.a
  %i.ac = and i32 %3, 1
  %.not23 = icmp eq i32 %i.ac, 0
  br i1 %.not23, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = and i32 %3, 32
  %.not24 = icmp eq i32 %i.ad, 0
  br i1 %.not24, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not19.i = icmp sgt i32 %1, %2
  br i1 %.not19.i, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.v
  %.020.i = phi i32 [ %i.al, %bb.v ], [ %1, %bb.s ] ; 8 uses
  %i.ae = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.020.i, i32 noundef %.020.i) ; 0 uses
  %i.af = add i32 %.020.i, -65
  %or.cond.i30 = icmp ult i32 %i.af, 26
  br i1 %or.cond.i30, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %.lr.ph.i
  %i.ag = or disjoint i32 %.020.i, 32             ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ag, i32 noundef %i.ag) ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.i
  %i.ai = add i32 %.020.i, -97
  %or.cond3.i = icmp ult i32 %i.ai, 26
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aj = add nsw i32 %.020.i, -32                ; 2 uses
  %i.ak = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.aj, i32 noundef %i.aj) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.thread.i
  %i.al = add i32 %.020.i, 1
  %exitcond.not.i = icmp eq i32 %.020.i, %2
  br i1 %exitcond.not.i, label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29, label %.lr.ph.i, !llvm.loop !201

bb.w:                                             ; preds = %bb.r
  tail call fastcc void @_ZN3re2L14AddFoldedRangeEPNS_16CharClassBuilderEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  br label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29

bb.x:                                             ; preds = %bb.q
  %i.am = tail call noundef zeroext i1 @_ZN3re216CharClassBuilder8AddRangeEii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) ; 0 uses
  br label %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29

_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit29: ; preds = %bb.v, %bb.n, %bb.s, %bb.p, %bb.o, %bb.x, %bb.w, %_ZN3re216CharClassBuilder13AddRangeFlagsEiiNS_6Regexp10ParseFlagsE.exit
  ret void
}

declare void @_ZN3re216CharClassBuilder12AddCharClassEPS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re28RegexpOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !116
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.f
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN3re26Regexp8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef ptr @_ZN3re26Regexp12NewCharClassEPNS_9CharClassENS0_10ParseFlagsE(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN3re26Regexp10ParseState10DoCollapseENS_8RegexpOpE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %.not69 = icmp eq ptr %i.b, null
  br i1 %.not69, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !37    ; 2 uses
  %i.d = icmp ugt i8 %i.c, 21
  br i1 %i.d, label %.critedge, label %.lr.ph109

.lr.ph:                                           ; preds = %bb.c
  %i.e = load i8, ptr %i.j, align 8, !tbaa !37    ; 2 uses
  %i.f = icmp ugt i8 %i.e, 21
  br i1 %i.f, label %.critedge, label %.lr.ph109, !llvm.loop !205

.lr.ph109:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.g = phi i8 [ %i.e, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %.04870108 = phi i32 [ %.149, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.04472107 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.h = zext nneg i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %.04472107, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 4 uses
  %i.k = icmp eq i32 %1, %i.h
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph109
  %i.l = getelementptr inbounds nuw i8, ptr %.04472107, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !60
  %i.n = zext i16 %i.m to i32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %bb.b
  %.pn55 = phi i32 [ %i.n, %bb.b ], [ 1, %.lr.ph109 ]
  %.149 = add nuw nsw i32 %.pn55, %.04870108      ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %..critedge_crit_edge, label %.lr.ph, !llvm.loop !205

..critedge_crit_edge:                             ; preds = %bb.c
  br label %.critedge, !llvm.loop !205

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge_crit_edge
  %.048.lcssa = phi i32 [ %.149, %..critedge_crit_edge ], [ 0, %.lr.ph.preheader ], [ %.149, %.lr.ph ]
  %.046.lcssa = phi ptr [ null, %..critedge_crit_edge ], [ null, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp eq ptr %i.p, %.046.lcssa
  br i1 %i.q, label %bb.p, label %.critedge.thread
end_hunk_1
