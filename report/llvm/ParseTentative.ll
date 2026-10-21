Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseTentative?download=true
inline.NumInlined: 881
inline.NumDeleted: 292
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6Parser23TryParseTypeofSpecifierEv:bb.a
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = load i16, ptr %i.q, align 4              ; 2 uses
  %i.s = zext i32 %.promoted.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !1002 ; 2 uses
  %i.w = icmp eq i16 %i.k, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i16, ptr %i.x, align 8, !tbaa !1003
  %i.z = icmp eq i16 %i.p, %i.y
  br i1 %i.z, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i

_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 -6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !1004 ; 2 uses
  %i.ac = icmp eq i16 %i.r, %i.ab
  br i1 %i.ac, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i

_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i: ; preds = %bb.e, %bb.d
  %.old.i.i.i = icmp ugt i16 %i.k, %i.v
  br i1 %.old.i.i.i, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i
  %.phi.trans.insert5.i.i.i = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.pre6.i.i.i = load i16, ptr %.phi.trans.insert5.i.i.i, align 8, !tbaa !1003
  %i.ad = icmp ugt i16 %i.p, %.pre6.i.i.i
  br i1 %i.ad, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, label %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i

._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i: ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %i.t, i64 -6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !1004
  br label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i

_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i: ; preds = %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i
  %i.ae = phi i16 [ %.pre.i.i, %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i.i ], [ %i.ab, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i ]
  %i.af = icmp ugt i16 %i.r, %i.ae
  br i1 %i.af, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, label %.sink.split.i

_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i: ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i, %bb.f, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %indvars.i.i, ptr %i.l, align 8, !tbaa !28
  %.not.i.i.i = icmp eq i32 %indvars.i.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i, label %bb.d, !llvm.loop !0

.sink.split.i:                                    ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i, %bb.c, %bb.a
  %.sink3.i = phi i16 [ 1, %bb.a ], [ -1, %bb.c ], [ -1, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i ], [ -1, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i ]
  %i.ag = add i16 %.sink3.i, %i.k
  store i16 %i.ag, ptr %i.j, align 8, !tbaa !998
  br label %_ZN5clang6Parser12ConsumeParenEv.exit

_ZN5clang6Parser12ConsumeParenEv.exit:            ; preds = %bb.b, %.sink.split.i
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !770
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !18
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !104, !nonnull !105, !align !106
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ai, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 23, ptr %i.a, align 2, !tbaa !24
  %i.aj = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 1, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.aj, i32 2, i32 3
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser30isCXXDeclarationSpecifierATypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2960) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !tbaa !13
  switch i16 %i.b, label %bb.f [
    i16 434, label %bb.g
    i16 435, label %bb.g
    i16 428, label %bb.g
    i16 427, label %bb.g
    i16 182, label %bb.g
    i16 183, label %bb.g
    i16 262, label %bb.g
    i16 263, label %bb.g
    i16 264, label %bb.g
    i16 265, label %bb.g
    i16 266, label %bb.g
    i16 267, label %bb.g
    i16 268, label %bb.g
    i16 269, label %bb.g
    i16 270, label %bb.g
    i16 271, label %bb.g
    i16 272, label %bb.g
    i16 273, label %bb.g
    i16 274, label %bb.g
    i16 275, label %bb.g
    i16 276, label %bb.g
    i16 277, label %bb.g
    i16 132, label %bb.g
    i16 104, label %bb.g
    i16 107, label %bb.g
    i16 410, label %bb.g
    i16 87, label %bb.g
    i16 80, label %bb.g
    i16 158, label %bb.g
    i16 180, label %bb.g
    i16 163, label %bb.g
    i16 164, label %bb.g
    i16 130, label %bb.g
    i16 99, label %bb.g
    i16 93, label %bb.g
    i16 94, label %bb.g
    i16 95, label %bb.g
    i16 96, label %bb.g
    i16 404, label %bb.g
    i16 209, label %bb.g
    i16 100, label %bb.g
    i16 108, label %bb.g
    i16 382, label %bb.g
    i16 89, label %bb.g
    i16 85, label %bb.g
    i16 381, label %bb.g
    i16 181, label %bb.g
    i16 206, label %bb.g
    i16 207, label %bb.g
    i16 109, label %bb.g
    i16 425, label %bb.g
    i16 215, label %bb.g
    i16 185, label %bb.g
    i16 186, label %bb.g
    i16 187, label %bb.g
    i16 348, label %bb.g
    i16 349, label %bb.g
    i16 350, label %bb.g
    i16 351, label %bb.g
    i16 352, label %bb.g
    i16 353, label %bb.g
    i16 354, label %bb.g
    i16 355, label %bb.g
    i16 356, label %bb.g
    i16 357, label %bb.g
    i16 358, label %bb.g
    i16 359, label %bb.g
    i16 371, label %bb.g
    i16 77, label %bb.b
    i16 114, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104, !nonnull !105, !align !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !983, !nonnull !105, !align !106
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 8192
  %i.i = icmp ne i64 %i.h, 0
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104, !nonnull !105, !align !106 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2960
  %i.m = load i64, ptr %i.l, align 8, !tbaa !969  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2928
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %i.p = zext i32 %i.o to i64
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !970
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.m
  br label %_ZN5clang6Parser9NextTokenEv.exit

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.k, i32 noundef 1) #10
  br label %_ZN5clang6Parser9NextTokenEv.exit

_ZN5clang6Parser9NextTokenEv.exit:                ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !13
  %i.x = icmp eq i16 %i.w, 22
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %_ZN5clang6Parser9NextTokenEv.exit, %bb.b
  %.0 = phi i1 [ false, %bb.f ], [ %i.x, %_ZN5clang6Parser9NextTokenEv.exit ], [ true, %bb.a ], [ true, %bb.a ], [ %i.i, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN5clang6Parser34TryParseParameterDeclarationClauseEPbbNS_23ImplicitTypenameContextE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i16], align 2                ; 5 uses
  %4 = alloca %"class.clang::ParsedAttributes", align 8 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !13
  switch i16 %i.d, label %.lr.ph [
    i16 23, label %.loopexit
    i16 27, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %5 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %4, i64 1
  %7 = getelementptr inbounds nuw i8, <2 x ptr> %6, <2 x i64> <i64 488, i64 64>
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit.jt0, %bb.a
  %i.r = load i32, ptr %i.b, align 8, !tbaa !770
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.r, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.u, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #10
  %i.v = load i16, ptr %i.c, align 8, !tbaa !13
  %i.w = icmp ne i16 %i.v, 23
  %. = zext i1 %i.w to i32
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang16ParsedAttributesD2Ev.exit.jt0
  %i.x = call noundef i32 @_ZN5clang6Parser25isCXX11AttributeSpecifierEbb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 0, ptr %4, align 8, !tbaa !771
  store i32 0, ptr %i.e, align 4, !tbaa !771
  store ptr %i.g, ptr %i.f, align 8, !tbaa !970
  store i32 0, ptr %i.h, align 8, !tbaa !28
  store i32 2, ptr %i.i, align 4, !tbaa !975
  store <2 x ptr> %7, ptr %i.j, align 8, !tbaa !20
  store i32 0, ptr %i.m, align 8, !tbaa !28
  store i32 2, ptr %i.n, align 4, !tbaa !975
  %i.y = call noundef zeroext i1 @_ZN5clang6Parser29MaybeParseMicrosoftAttributesERNS_16ParsedAttributesE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %4) ; 0 uses
  %i.z = call noundef i32 @_ZN5clang6Parser25isCXXDeclarationSpecifierENS_23ImplicitTypenameContextENS0_8TPResultEPb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef %3, i32 noundef 1, ptr noundef %1) ; 3 uses
  %.not33 = icmp eq i32 %i.z, 2
  %i.aa = icmp eq i32 %i.z, 0
  %or.cond = and i1 %2, %i.aa
  %or.cond36 = or i1 %.not33, %or.cond
  br i1 %or.cond36, label %bb.d, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1

bb.d:                                             ; preds = %bb.c
  %i.ab = load i16, ptr %i.c, align 8, !tbaa !13
  %i.ac = icmp eq i16 %i.ab, 77
  br i1 %2, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d, %bb.g
  %.026.us = phi i1 [ %i.ae, %bb.g ], [ false, %bb.d ]
  %i.ad = call noundef zeroext i1 @_ZN5clang6Parser30isCXXDeclarationSpecifierATypeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0)
  %i.ae = or i1 %.026.us, %i.ad                   ; 2 uses
  %i.af = call noundef i32 @_ZN5clang6Parser30TryConsumeDeclarationSpecifierEv(ptr noundef nonnull align 8 dereferenceable(2960) %0)
  %i.ag = icmp eq i32 %i.af, 3
  br i1 %i.ag, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1, label %bb.e

bb.e:                                             ; preds = %.split.us
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load i16, ptr %i.c, align 8, !tbaa !13
  %i.ai = icmp eq i16 %i.ah, 5
  br i1 %i.ai, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = call noundef i32 @_ZN5clang6Parser25isCXXDeclarationSpecifierENS_23ImplicitTypenameContextENS0_8TPResultEPb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef %3, i32 noundef 1, ptr noundef %1) ; 2 uses
  switch i32 %i.aj, label %.split.us [
    i32 3, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1
    i32 1, label %.split44.us
  ]

.split:                                           ; preds = %bb.d, %bb.j
  %.026 = phi i1 [ %i.al, %bb.j ], [ false, %bb.d ]
  %i.ak = call noundef zeroext i1 @_ZN5clang6Parser30isCXXDeclarationSpecifierATypeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0)
  %i.al = or i1 %.026, %i.ak                      ; 2 uses
  %i.am = call noundef i32 @_ZN5clang6Parser30TryConsumeDeclarationSpecifierEv(ptr noundef nonnull align 8 dereferenceable(2960) %0)
  %i.an = icmp eq i32 %i.am, 3
  br i1 %i.an, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1, label %bb.h

bb.h:                                             ; preds = %.split
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i16, ptr %i.c, align 8, !tbaa !13
  %i.ap = icmp eq i16 %i.ao, 5
  br i1 %i.ap, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = call noundef i32 @_ZN5clang6Parser25isCXXDeclarationSpecifierENS_23ImplicitTypenameContextENS0_8TPResultEPb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef %3, i32 noundef 1, ptr noundef %1) ; 3 uses
  switch i32 %i.aq, label %.split [
    i32 3, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1
    i32 0, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1
    i32 1, label %.split44.us
  ]

.split44.us:                                      ; preds = %bb.j, %bb.g
  %i.ar = call noundef i32 @_ZN5clang6Parser18TryParseDeclaratorEbbbb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext %i.ac) ; 2 uses
  %.not35 = icmp eq i32 %i.ar, 2
  br i1 %.not35, label %bb.k, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1

bb.k:                                             ; preds = %.split44.us
  %i.as = load i16, ptr %i.c, align 8, !tbaa !13  ; 4 uses
  %i.at = icmp eq i16 %i.as, 193
  br i1 %i.at, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = icmp ne i16 %i.as, 65
  %i.av = zext i1 %i.au to i32
  br label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1

bb.n:                                             ; preds = %bb.l
  %i.aw = icmp eq i16 %i.as, 65
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i16 67, ptr %i.a, align 2, !tbaa !24
  store i16 23, ptr %i.o, align 2, !tbaa !24
  %i.ax = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 2, i32 noundef 3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.ax, label %thread-pre-split40, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1

thread-pre-split40:                               ; preds = %bb.o
  %.pr41 = load i16, ptr %i.c, align 8, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split40, %bb.n
  %i.ay = phi i16 [ %.pr41, %thread-pre-split40 ], [ %i.as, %bb.n ]
  switch i16 %i.ay, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt3 [
    i16 27, label %bb.q
    i16 67, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt0
  ]

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.b, align 8, !tbaa !770
  store i32 %i.az, ptr %i.p, align 8, !tbaa !18
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ba, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #10
  %i.bb = load i16, ptr %i.c, align 8, !tbaa !13
  %i.bc = icmp ne i16 %i.bb, 23
  %.37 = zext i1 %i.bc to i32
  br label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt0: ; preds = %bb.p
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !770
  store i32 %i.bd, ptr %i.p, align 8, !tbaa !18
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.be, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #10
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !1019, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.j) #10
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !970 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.l
  br i1 %i.bh, label %_ZN5clang13AttributePoolD2Ev.exit.i.jt0, label %bb.r

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt3: ; preds = %bb.p
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1019, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.j) #10
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !970 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.l
  br i1 %i.bk, label %_ZN5clang13AttributePoolD2Ev.exit.i.jt3, label %bb.s

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1: ; preds = %.split44.us, %bb.k, %bb.o, %bb.c, %bb.j, %bb.j, %bb.i, %.split, %bb.g, %bb.f, %.split.us, %bb.q, %bb.m
  %.2.jt1 = phi i32 [ %i.aq, %bb.j ], [ %i.av, %bb.m ], [ %.37, %bb.q ], [ 3, %.split.us ], [ 0, %bb.f ], [ %i.aj, %bb.g ], [ 3, %.split ], [ 0, %bb.i ], [ %i.aq, %bb.j ], [ 3, %bb.o ], [ 0, %bb.k ], [ %i.ar, %.split44.us ], [ %i.z, %bb.c ]
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !1019, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %i.j) #10
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !970 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.l
  br i1 %i.bn, label %_ZN5clang13AttributePoolD2Ev.exit.i.jt1, label %bb.t

bb.r:                                             ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt0
  call void @free(ptr noundef %i.bg) #10
  br label %_ZN5clang13AttributePoolD2Ev.exit.i.jt0

bb.s:                                             ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt3
  call void @free(ptr noundef %i.bj) #10
  br label %_ZN5clang13AttributePoolD2Ev.exit.i.jt3

bb.t:                                             ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1
  call void @free(ptr noundef %i.bm) #10
  br label %_ZN5clang13AttributePoolD2Ev.exit.i.jt1

_ZN5clang13AttributePoolD2Ev.exit.i.jt0:          ; preds = %bb.r, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt0
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !970 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.g
  br i1 %i.bp, label %_ZN5clang16ParsedAttributesD2Ev.exit.jt0, label %bb.u

_ZN5clang13AttributePoolD2Ev.exit.i.jt3:          ; preds = %bb.s, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt3
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !970 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.g
  br i1 %i.br, label %_ZN5clang16ParsedAttributesD2Ev.exit.jt3, label %bb.v

_ZN5clang13AttributePoolD2Ev.exit.i.jt1:          ; preds = %bb.t, %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit.jt1
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !970 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.g
  br i1 %i.bt, label %_ZN5clang16ParsedAttributesD2Ev.exit.jt1, label %bb.w

bb.u:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.jt0
  call void @free(ptr noundef %i.bo) #10
  br label %_ZN5clang16ParsedAttributesD2Ev.exit.jt0

bb.v:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.jt3
  call void @free(ptr noundef %i.bq) #10
  br label %_ZN5clang16ParsedAttributesD2Ev.exit.jt3

bb.w:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.jt1
  call void @free(ptr noundef %i.bs) #10
  br label %_ZN5clang16ParsedAttributesD2Ev.exit.jt1

_ZN5clang16ParsedAttributesD2Ev.exit.jt0:         ; preds = %bb.u, %_ZN5clang13AttributePoolD2Ev.exit.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.pr = load i16, ptr %i.c, align 8, !tbaa !13
  %i.bu = icmp eq i16 %.pr, 27
  br i1 %i.bu, label %._crit_edge, label %bb.b

_ZN5clang16ParsedAttributesD2Ev.exit.jt3:         ; preds = %bb.v, %_ZN5clang13AttributePoolD2Ev.exit.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.loopexit

_ZN5clang16ParsedAttributesD2Ev.exit.jt1:         ; preds = %bb.w, %_ZN5clang13AttributePoolD2Ev.exit.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_ZN5clang16ParsedAttributesD2Ev.exit.jt3, %_ZN5clang16ParsedAttributesD2Ev.exit.jt1, %bb.a, %._crit_edge
  %.3 = phi i32 [ 2, %_ZN5clang16ParsedAttributesD2Ev.exit.jt3 ], [ %., %._crit_edge ], [ 2, %bb.a ], [ %.2.jt1, %_ZN5clang16ParsedAttributesD2Ev.exit.jt1 ], [ 0, %bb.b ]
  ret i32 %.3
}

declare noundef i32 @_ZNK5clang6Parser20isCXX11VirtSpecifierERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(2960), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang6Parser29MaybeParseMicrosoftAttributesERNS_16ParsedAttributesE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::ParsedAttributes", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !105, !align !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !983, !nonnull !105, !align !106 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 128
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627776
  %.not2 = icmp ne i64 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i16, ptr %i.j, align 8
  %i.l = icmp eq i16 %i.k, 20
  %or.cond = select i1 %.not2, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %.old3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.old4 = load i16, ptr %.old3, align 8, !tbaa !13
  %.old5 = icmp eq i16 %.old4, 20
  br i1 %.old5, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %2, align 8, !tbaa !771
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !771
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !970
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 2, ptr %i.r, align 4, !tbaa !975
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store ptr %i.m, ptr %i.s, align 8, !tbaa !1053
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !970
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 2, ptr %i.w, align 4, !tbaa !975
  call void @_ZN5clang6Parser24ParseMicrosoftAttributesERNS_16ParsedAttributesE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %2) #10
  %i.x = load i32, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp ne i32 %i.x, 0
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !970  ; 2 uses
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !970
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !28
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af
  %i.ah = call noundef ptr @_ZN4llvm15SmallVectorImplIPN5clang10ParsedAttrEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %i.ag, ptr noundef %i.y, ptr noundef %i.aa) ; 0 uses
  store i32 0, ptr %i.q, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN5clang13AttributePool8takePoolERS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.s) #10
  store i32 0, ptr %i.v, align 8, !tbaa !28
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !1019, !nonnull !105, !align !106
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.s) #10
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !970 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.u
  br i1 %i.al, label %_ZN5clang13AttributePoolD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.ak) #10
  br label %_ZN5clang13AttributePoolD2Ev.exit.i

_ZN5clang13AttributePoolD2Ev.exit.i:              ; preds = %bb.e, %bb.d
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !970 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.p
  br i1 %i.an, label %_ZN5clang16ParsedAttributesD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i
  call void @free(ptr noundef %i.am) #10
  br label %_ZN5clang16ParsedAttributesD2Ev.exit

_ZN5clang16ParsedAttributesD2Ev.exit:             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.g

bb.g:                                             ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit, %bb.c, %bb.b
  %.0 = phi i1 [ %.not.i.i, %_ZN5clang16ParsedAttributesD2Ev.exit ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser23NameAfterArrowIsNonTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2960) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.clang::Token", align 8      ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  %3 = alloca %"class.(anonymous namespace)::TentativeParseCCC", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104, !nonnull !105, !align !106 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2960
  %i.e = load i64, ptr %i.d, align 8, !tbaa !969  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2928
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2920
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !970
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.e
  br label %_ZN5clang6Parser9NextTokenEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.c, i32 noundef 1) #10
  br label %_ZN5clang6Parser9NextTokenEv.exit

_ZN5clang6Parser9NextTokenEv.exit:                ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false), !tbaa.struct !26
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i16, ptr %i.n, align 8, !tbaa !13   ; 5 uses
  %i.p = icmp eq i16 %i.o, 73
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i16, ptr %i.r, align 8, !tbaa !13   ; 2 uses
  %i.t = add i16 %i.s, -7
  %i.u = icmp ult i16 %i.t, 13
  %i.v = icmp eq i16 %i.s, 1
  %or.cond.i = or i1 %i.v, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %.0.i = select i1 %or.cond.i, ptr null, ptr %i.x
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !976
  %i.y = load i32, ptr %i.q, align 8, !tbaa !770
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.z, i8 1, i64 5, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.aa, i8 0, i64 19, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_117TentativeParseCCCE, i64 16), ptr %3, align 8, !tbaa !985
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.ab, align 4, !tbaa !987
  %i.ac = icmp eq i16 %i.o, 52
  %i.ad = add i16 %i.o, -22
  %i.ae = icmp ult i16 %i.ad, 3
  %or.cond7.i.i = or i1 %i.ac, %i.ae
  %i.af = icmp eq i16 %i.o, 5
  %or.cond8.i.i = or i1 %i.af, %or.cond7.i.i
  %i.ag = icmp eq i16 %i.o, 67
  %spec.select.i.i = or i1 %i.ag, %or.cond8.i.i
end_hunk_0
