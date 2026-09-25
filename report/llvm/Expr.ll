Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Expr?download=true
inline.NumInlined: 7608
inline.NumDeleted: 4168
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5clang10MemberExpr9getEndLocEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72, !noalias !1038
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !1038
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload.i = load i32, ptr %i.d, align 8, !tbaa !92, !noalias !1038
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !42, !noalias !1038
  store i64 %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !93, !alias.scope !1038
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %.sroa.01.0.copyload.i, ptr %i.f, align 8, !tbaa !92, !alias.scope !1038
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.g, align 8, !tbaa !42, !alias.scope !1038
  %i.h = call i32 @_ZNK5clang19DeclarationNameInfo16getEndLocPrivateEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #30 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  %.sroa.0.0.copyload.i.i2 = load i32, ptr %i.f, align 8
  %.sroa.0.0.i = select i1 %.not.i, i32 %.sroa.0.0.copyload.i.i2, i32 %i.h ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.i = load i32, ptr %0, align 8                ; 3 uses
  %i.j = and i32 %i.i, 4194304
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.thread, label %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit

_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = lshr i32 %i.i, 20
  %.lobit.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.i, 21
  %.lobit.i.i.i.i.i.i = and i32 %i.o, 1
  %i.p = zext nneg i32 %.lobit.i.i.i.i.i.i to i64 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !92
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.thread, label %_ZNK5clang10MemberExpr12getRAngleLocEv.exit

_ZNK5clang10MemberExpr12getRAngleLocEv.exit:      ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !92
  br label %bb.c

_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.thread: ; preds = %bb.a, %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit
  %i.w = icmp eq i32 %.sroa.0.0.i, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.thread, %bb.b, %_ZNK5clang10MemberExpr12getRAngleLocEv.exit
  %.sroa.0.0 = phi i32 [ %i.v, %_ZNK5clang10MemberExpr12getRAngleLocEv.exit ], [ %i.z, %bb.b ], [ %.sroa.0.0.i, %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.thread ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang8CastExpr15CastConsistencyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 66584576
  %cond = icmp eq i32 %i.b, 33030144
  br i1 %cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i3 = load i64, ptr %i.e, align 8, !tbaa !42
  %i.f = and i32 %i.a, 1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.h, align 8, !tbaa !42
  %i.i = and i64 %.sroa.0.0.copyload.i2, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !48  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.m = load i16, ptr %i.l, align 1
  %i.n = and i16 %i.m, 4
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %.sroa.0.0.copyload.i3, -16
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %i.s = load i16, ptr %i.r, align 1
  %i.t = and i16 %i.s, 4
  %.not12 = icmp eq i16 %i.t, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.k) #30 ; 0 uses
  %i.v = load ptr, ptr %i.p, align 16, !tbaa !48
  %i.w = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.v) #30 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret i1 true
}

declare i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5clang8CastExpr15getCastKindNameENS_8CastKindE(i32 noundef %0) local_unnamed_addr #7 align 2 {
switch.lookup:
  %i.a = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang8CastExpr15getCastKindNameENS_8CastKindE, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19
  ret ptr %.2

bb.c:                                             ; preds = %bb.a, %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19
  %.033 = phi ptr [ %0, %bb.a ], [ %.2, %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19 ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, null
  br i1 %.not7.i.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit
  %.068.i.i = phi ptr [ %.4.i, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit ], [ %i.b, %bb.c ] ; 9 uses
  %i.c = load i16, ptr %.068.i.i, align 8         ; 2 uses
  %i.d = and i16 %i.c, 511                        ; 2 uses
  switch i16 %i.d, label %bb.h [
    i16 50, label %bb.d
    i16 120, label %bb.g
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.f:                                             ; preds = %bb.d
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.o = and i16 %i.c, 510
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.o, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.j:                                             ; preds = %bb.h
  %.not.i = icmp eq i16 %i.d, 106
  br i1 %.not.i, label %bb.k, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !650
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.critedge.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit

.critedge.i:                                      ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %.critedge.i
  %.4.i = phi ptr [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.i ], [ %i.v, %.critedge.i ], [ %i.h, %bb.e ] ; 3 uses
  %.not.i.i = icmp eq ptr %.4.i, %.068.i.i
  br i1 %.not.i.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit: ; preds = %bb.k, %bb.j, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit, %bb.c
  %.06.lcssa.i.i = phi ptr [ null, %bb.c ], [ %.068.i.i, %bb.k ], [ %.068.i.i, %bb.j ], [ %.4.i, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit ] ; 7 uses
  %i.w = load i32, ptr %.033, align 8
  %i.x = lshr i32 %i.w, 19
  %i.y = and i32 %i.x, 127
  switch i32 %i.y, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19 [
    i32 20, label %bb.l
    i32 19, label %bb.u
  ]

bb.l:                                             ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit
  %i.z = load i16, ptr %.06.lcssa.i.i, align 8
  %i.aa = and i16 %i.z, 511
  %.not.i.i.i.i = icmp eq i16 %i.aa, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.06.lcssa.i.i, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr %i.ab
  %i.ac = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !114, !nonnull !141, !noundef !141
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %bb.l, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26
  %.068.i.i16 = phi ptr [ %.4.i21, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26 ], [ %i.ac, %bb.l ] ; 9 uses
  %i.ad = load i16, ptr %.068.i.i16, align 8      ; 2 uses
  %i.ae = and i16 %i.ad, 511                      ; 2 uses
  switch i16 %i.ae, label %bb.q [
    i16 50, label %bb.m
    i16 120, label %bb.p
  ]

bb.m:                                             ; preds = %.lr.ph.i.i15
  %i.af = getelementptr inbounds nuw i8, ptr %.068.i.i16, i64 16
  %.0.copyload.i.i.i.i.i.i.i22 = load i64, ptr %i.af, align 8 ; 3 uses
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i22, 4
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i22 to ptr
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26

bb.o:                                             ; preds = %bb.m
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i.i22, -5
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26

bb.p:                                             ; preds = %.lr.ph.i.i15
  %i.an = getelementptr inbounds nuw i8, ptr %.068.i.i16, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !117
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26

bb.q:                                             ; preds = %.lr.ph.i.i15
  %i.ap = and i16 %i.ad, 510
  %spec.select.i.i.i.i.i.i.i.i.i23 = icmp eq i16 %i.ap, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.i23, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %.068.i.i16, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !103
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26

bb.s:                                             ; preds = %bb.q
  %.not.i24 = icmp eq i16 %i.ae, 106
  br i1 %.not.i24, label %bb.t, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %.068.i.i16, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !650
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %.critedge.i25, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19

.critedge.i25:                                    ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.068.i.i16, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !114
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26

_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26: ; preds = %bb.n, %bb.o, %bb.p, %bb.r, %.critedge.i25
  %.4.i21 = phi ptr [ %i.am, %bb.o ], [ %i.ao, %bb.p ], [ %i.ar, %bb.r ], [ %i.aw, %.critedge.i25 ], [ %i.ai, %bb.n ] ; 3 uses
  %.not.i.i17 = icmp eq ptr %.4.i21, %.068.i.i16
  br i1 %.not.i.i17, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19, label %.lr.ph.i.i15, !llvm.loop !1

bb.u:                                             ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit
  %i.ax = load i16, ptr %.06.lcssa.i.i, align 8
  %i.ay = and i16 %i.ax, 511
  %.not32 = icmp eq i16 %i.ay, 94
  br i1 %.not32, label %bb.v, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19

bb.v:                                             ; preds = %bb.u
  %i.az = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %.06.lcssa.i.i) #30
  br label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19

_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit19: ; preds = %bb.t, %bb.s, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26, %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit, %bb.u, %bb.v
  %.2 = phi ptr [ %.06.lcssa.i.i, %bb.u ], [ %.06.lcssa.i.i, %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit ], [ %i.az, %bb.v ], [ %.068.i.i16, %bb.s ], [ %.4.i21, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit26 ], [ %.068.i.i16, %bb.t ] ; 3 uses
  %i.ba = load i16, ptr %.2, align 8
  %i.bb = and i16 %i.ba, 511
  %.not = icmp eq i16 %i.bb, 81
  br i1 %.not, label %bb.c, label %bb.b
}

declare noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang8CastExpr21getConversionFunctionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.01326 = phi ptr [ %0, %bb.a ], [ %.06.lcssa.i.i, %.thread ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01326, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, null
  br i1 %.not7.i.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit
  %.068.i.i = phi ptr [ %.4.i, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit ], [ %i.b, %bb.b ] ; 9 uses
  %i.c = load i16, ptr %.068.i.i, align 8         ; 2 uses
  %i.d = and i16 %i.c, 511                        ; 2 uses
  switch i16 %i.d, label %bb.g [
    i16 50, label %bb.c
    i16 120, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.o = and i16 %i.c, 510
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.o, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp eq i16 %i.d, 106
  br i1 %.not.i, label %bb.j, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !650
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.critedge.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit

.critedge.i:                                      ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  br label %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit

_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %.critedge.i
  %.4.i = phi ptr [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.q, %bb.h ], [ %i.v, %.critedge.i ], [ %i.h, %bb.d ] ; 3 uses
  %.not.i.i = icmp eq ptr %.4.i, %.068.i.i
  br i1 %.not.i.i, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit: ; preds = %bb.j, %bb.i, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit, %bb.b
  %.06.lcssa.i.i = phi ptr [ null, %bb.b ], [ %.068.i.i, %bb.j ], [ %.068.i.i, %bb.i ], [ %.4.i, %_ZN12_GLOBAL__N_123ignoreImplicitSemaNodesEPN5clang4ExprE.exit ] ; 6 uses
  %i.w = load i32, ptr %.01326, align 8
  %i.x = lshr i32 %i.w, 19
  %i.y = and i32 %i.x, 127
  switch i32 %i.y, label %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit..thread_crit_edge [
    i32 20, label %bb.k
    i32 19, label %bb.l
  ]

_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit..thread_crit_edge: ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit
  %.pre = load i16, ptr %.06.lcssa.i.i, align 8
  %.pre29 = and i16 %.pre, 511
  br label %.thread

bb.k:                                             ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !653
  br label %.loopexit

bb.l:                                             ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit
  %i.ab = load i16, ptr %.06.lcssa.i.i, align 8
  %i.ac = and i16 %i.ab, 511                      ; 2 uses
  %.not24 = icmp eq i16 %i.ac, 94
  br i1 %.not24, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr13getMethodDeclEv(ptr noundef nonnull align 8 dereferenceable(24) %.06.lcssa.i.i) #30
  br label %.loopexit

.thread:                                          ; preds = %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit..thread_crit_edge, %bb.l
  %.pre-phi = phi i16 [ %.pre29, %_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_EEEEPKS1_S6_DpOT_.exit..thread_crit_edge ], [ %i.ac, %bb.l ]
  %i.ae = icmp ne i16 %.pre-phi, 81
  %.not33 = icmp eq ptr %.06.lcssa.i.i, null
  %.not = or i1 %i.ae, %.not33
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.thread, %bb.m, %bb.k
  %spec.select = phi ptr [ %i.aa, %bb.k ], [ %i.ad, %bb.m ], [ null, %.thread ]
  ret ptr %spec.select
}

end_hunk_0
begin_hunk_1_@_ZNK5clang4Expr30isReadIfDiscardedInCPlusPlus11Ev:bb.a
  %.068.i.i.i = phi ptr [ %.8.i.i.i, %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i ], [ %.tr94, %.lr.ph.i.i.i.preheader ] ; 19 uses
  %i.i = load i16, ptr %.068.i.i.i, align 8       ; 4 uses
  %i.j = and i16 %i.i, 511
  switch i16 %i.j, label %_ZNK5clang4Expr12IgnoreParensEv.exit [
    i16 20, label %bb.b
    i16 4, label %bb.c
    i16 59, label %bb.e
    i16 79, label %bb.g
    i16 18, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load i32, ptr %.068.i.i.i, align 8       ; 2 uses
  %i.n = and i32 %i.m, 16252928
  %i.o = icmp eq i32 %i.n, 6291456
  br i1 %i.o, label %bb.d, label %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit124

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 16
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %i.t = and i32 %i.s, 1073709056
  %i.u = icmp eq i32 %i.t, 1073709056
  br i1 %i.u, label %_ZNK5clang4Expr12IgnoreParensEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 32
  %i.w = lshr i32 %i.s, 30
  %.lobit.i.i.i.i.i = and i32 %i.w, 1
  %i.x = lshr i32 %i.s, 15
  %i.y = and i32 %i.x, 32767
  %i.z = add nuw nsw i32 %.lobit.i.i.i.i.i, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = load i24, ptr %i.ae, align 8
  %i.ag = and i24 %i.af, 196608
  %.not70.i.i.i = icmp eq i24 %i.ag, 0
  br i1 %.not70.i.i.i, label %bb.h, label %_ZNK5clang4Expr12IgnoreParensEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = load i24, ptr %.068.i.i.i, align 8
  %i.ai = and i24 %i.ah, 524288
  %.not.i.i.i.i = icmp eq i24 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %.not.i.i.i.i, ptr %i.am, ptr %i.ak
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = load i32, ptr %.068.i.i.i, align 8      ; 2 uses
  %i.ap = and i32 %i.ao, 25165824
  %or.cond.not.i.i.i = icmp eq i32 %i.ap, 25165824
  br i1 %or.cond.not.i.i.i, label %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i, label %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit

_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %.not42.i.i.i = icmp eq ptr %i.ar, null
  %spec.select.i.i.i = select i1 %.not42.i.i.i, ptr %.068.i.i.i, ptr %i.ar
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i

_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i: ; preds = %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.8.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.an, %bb.h ], [ %i.q, %bb.d ], [ %i.ac, %bb.f ], [ %spec.select.i.i.i, %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i ] ; 4 uses
  %.not.i.i.i = icmp eq ptr %.8.i.i.i, %.068.i.i.i
  br i1 %.not.i.i.i, label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i._ZNK5clang4Expr12IgnoreParensEv.exit_crit_edge, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i._ZNK5clang4Expr12IgnoreParensEv.exit_crit_edge: ; preds = %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i
  %.pre = load i16, ptr %.8.i.i.i, align 8
  br label %_ZNK5clang4Expr12IgnoreParensEv.exit, !llvm.loop !1

_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit: ; preds = %bb.i
  %i.as = trunc i32 %i.ao to i16
  br label %_ZNK5clang4Expr12IgnoreParensEv.exit

_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit124: ; preds = %bb.c
  %i.at = trunc i32 %i.m to i16
  br label %_ZNK5clang4Expr12IgnoreParensEv.exit

_ZNK5clang4Expr12IgnoreParensEv.exit:             ; preds = %bb.g, %bb.e, %.lr.ph.i.i.i, %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit, %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit124, %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i._ZNK5clang4Expr12IgnoreParensEv.exit_crit_edge
  %i.au = phi i16 [ %.pre, %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i._ZNK5clang4Expr12IgnoreParensEv.exit_crit_edge ], [ %i.at, %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit124 ], [ %i.as, %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit ], [ %i.i, %.lr.ph.i.i.i ], [ %i.i, %bb.e ], [ %i.i, %bb.g ] ; 2 uses
  %.8.i3.i.i = phi ptr [ %.8.i.i.i, %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i._ZNK5clang4Expr12IgnoreParensEv.exit_crit_edge ], [ %.068.i.i.i, %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit124 ], [ %.068.i.i.i, %_ZNK5clang4Expr12IgnoreParensEv.exit.loopexit.split.loop.exit ], [ %.068.i.i.i, %.lr.ph.i.i.i ], [ %.068.i.i.i, %bb.e ], [ %.068.i.i.i, %bb.g ] ; 6 uses
  %i.av = and i16 %i.au, 511                      ; 2 uses
  switch i16 %i.av, label %.critedge46 [
    i16 73, label %.critedge
    i16 127, label %.critedge
    i16 46, label %.critedge
    i16 4, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNK5clang4Expr12IgnoreParensEv.exit
  %i.aw = load i32, ptr %.8.i3.i.i, align 8
  %i.ax = and i32 %i.aw, 16252928
  %i.ay = icmp eq i32 %i.ax, 2621440
  br i1 %i.ay, label %.critedge, label %.critedge46

.critedge46:                                      ; preds = %_ZNK5clang4Expr12IgnoreParensEv.exit, %bb.j
  %i.az = and i16 %i.au, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.az, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.critedge46
  %i.ba = load i32, ptr %.8.i3.i.i, align 8       ; 2 uses
  %i.bb = and i32 %i.ba, 32505856
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = and i32 %i.ba, 33030144
  %i.be = icmp eq i32 %i.bd, 16777216
  br i1 %i.be, label %tailrecurse.backedge, label %bb.m

tailrecurse.backedge:                             ; preds = %bb.l, %bb.p, %bb.n
  %.sink = phi i64 [ 48, %bb.p ], [ 40, %bb.n ], [ 24, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.8.i3.i.i, i64 %.sink
  %.tr.be = load ptr, ptr %i.bf, align 8, !tbaa !27 ; 2 uses
  %i.bg = load i24, ptr %.tr.be, align 8
  %i.bh = and i24 %i.bg, 1536
  %.not76 = icmp eq i24 %i.bh, 0
  br i1 %.not76, label %.critedge, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %.critedge46
  switch i16 %i.av, label %.critedge.loopexit140 [
    i16 132, label %bb.n
    i16 133, label %bb.o
    i16 37, label %.critedge
    i16 17, label %.loopexit
  ]

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.8.i3.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.bk = tail call noundef zeroext i1 @_ZNK5clang4Expr30isReadIfDiscardedInCPlusPlus11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
  br i1 %i.bk, label %tailrecurse.backedge, label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.i3.i.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, 511
  %.not85 = icmp eq i16 %i.bo, 26
  br i1 %.not85, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !96
  %i.br = tail call noundef zeroext i1 @_ZNK5clang4Expr30isReadIfDiscardedInCPlusPlus11Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
  br i1 %i.br, label %tailrecurse.backedge, label %.critedge

.loopexit:                                        ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.i3.i.i, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !114
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = and i16 %i.bu, 511                      ; 2 uses
  %switch.selectcmp.case1 = icmp eq i16 %i.bv, 31
  %switch.selectcmp.case2 = icmp eq i16 %i.bv, 28
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %.critedge

.critedge.loopexit140:                            ; preds = %bb.m
  br label %.critedge

.critedge:                                        ; preds = %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, %tailrecurse.backedge, %bb.p, %bb.k, %bb.j, %bb.n, %_ZNK5clang4Expr12IgnoreParensEv.exit, %_ZNK5clang4Expr12IgnoreParensEv.exit, %_ZNK5clang4Expr12IgnoreParensEv.exit, %bb.o, %bb.m, %.critedge.loopexit140, %bb.a, %.loopexit
  %.8 = phi i1 [ true, %bb.m ], [ %switch.selectcmp, %.loopexit ], [ false, %bb.a ], [ false, %tailrecurse.backedge ], [ false, %bb.p ], [ true, %bb.j ], [ true, %_ZNK5clang4Expr12IgnoreParensEv.exit ], [ true, %bb.k ], [ false, %bb.n ], [ true, %_ZNK5clang4Expr12IgnoreParensEv.exit ], [ true, %_ZNK5clang4Expr12IgnoreParensEv.exit ], [ false, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit ], [ false, %bb.o ], [ false, %.critedge.loopexit140 ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang4Expr22isUnusedResultAWarningERPKS0_RNS_14SourceLocationERNS_11SourceRangeES7_RNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(23904) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = load i24, ptr %0, align 8                ; 3 uses
  %i.b = and i24 %i.a, 65536
  %.not457496 = icmp eq i24 %i.b, 0
  br i1 %.not457496, label %.lr.ph, label %.critedge368

.lr.ph:                                           ; preds = %bb.a
  %i.c = trunc i24 %i.a to i16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2600 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.e = phi i24 [ %i.a, %.lr.ph ], [ %i.z, %tailrecurse.backedge ]
  %i.f = phi i16 [ %i.c, %.lr.ph ], [ %i.ab, %tailrecurse.backedge ]
  %.tr497 = phi ptr [ %0, %.lr.ph ], [ %.tr.be, %tailrecurse.backedge ] ; 94 uses
  %i.g = and i16 %i.f, 511
  switch i16 %i.g, label %bb.c [
    i16 20, label %bb.d
    i16 59, label %bb.e
    i16 75, label %bb.f
    i16 74, label %bb.f
    i16 79, label %bb.g
    i16 4, label %bb.h
    i16 122, label %bb.k
    i16 123, label %.critedge368
    i16 3, label %.critedge368
    i16 124, label %.critedge368
    i16 132, label %bb.t
    i16 133, label %bb.v
    i16 46, label %bb.w
    i16 127, label %bb.x
    i16 93, label %bb.y
    i16 91, label %.critedge.thread
    i16 94, label %.critedge.thread
    i16 92, label %.critedge.thread
    i16 24, label %.critedge368
    i16 97, label %.critedge368
    i16 16, label %.critedge368
    i16 118, label %bb.ah
    i16 117, label %bb.ah
    i16 36, label %bb.am
    i16 31, label %bb.ar
    i16 28, label %bb.ar
    i16 17, label %bb.as
    i16 10, label %bb.ax
    i16 88, label %bb.az
    i16 89, label %bb.az
    i16 81, label %bb.br
    i16 116, label %bb.bt
    i16 115, label %bb.bu
    i16 109, label %.critedge368
    i16 114, label %.critedge368
    i16 50, label %bb.bv
    i16 120, label %bb.by
    i16 62, label %bb.bz
    i16 26, label %bb.ca
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.tr497, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !42
  %i.i = and i64 %.sroa.0.0.copyload.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !42
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !48  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i8, ptr %i.p, align 16
  %i.r = icmp eq i8 %i.q, 13
  %.not7.i.i = icmp ne ptr %i.o, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.r
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.c
  %i.s = load i32, ptr %i.p, align 16
  %i.t = and i32 %i.s, 536346624
  %i.u = icmp eq i32 %i.t, 236978176
  br i1 %i.u, label %.critedge368, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit.thread:        ; preds = %bb.c, %_ZNK5clang4Type10isVoidTypeEv.exit
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.v = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr497) #29
  store i32 %i.v, ptr %2, align 4, !tbaa !92
  %i.w = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.w, ptr %3, align 4
  br label %.critedge368

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.tr497, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.br, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, %bb.bx, %bb.bw, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j, %bb.u, %bb.v, %bb.bt, %bb.bu, %bb.by, %bb.bz, %bb.ca, %_ZNK5clang16PseudoObjectExpr13getResultExprEv.exit, %_ZNK5clang12CompoundStmt9body_backEv.exit, %bb.ay, %.critedge366, %_ZNK5clang4Expr12IgnoreParensEv.exit
  %.tr.be = phi ptr [ %i.y, %bb.d ], [ %i.al, %bb.e ], [ %i.an, %bb.f ], [ %i.at, %bb.g ], [ %i.bh, %bb.j ], [ %i.cv, %bb.u ], [ %i.cx, %bb.v ], [ %i.op, %bb.ca ], [ %i.jn, %_ZNK5clang16PseudoObjectExpr13getResultExprEv.exit ], [ %i.jx, %_ZNK5clang12CompoundStmt9body_backEv.exit ], [ %i.kc, %bb.ay ], [ %.8.i3.i.i, %.critedge366 ], [ %i.oj, %bb.bx ], [ %i.oa, %bb.bt ], [ %i.ob, %bb.bu ], [ %i.kx, %_ZNK5clang4Expr12IgnoreParensEv.exit ], [ %i.ol, %bb.by ], [ %i.on, %bb.bz ], [ %i.of, %bb.bw ], [ %i.nt, %_ZNK5clang8QualType19isVolatileQualifiedEv.exit ], [ %i.nt, %bb.br ] ; 2 uses
  %i.z = load i24, ptr %.tr.be, align 8           ; 3 uses
  %i.aa = and i24 %i.z, 65536
  %.not457 = icmp eq i24 %i.aa, 0
  %i.ab = trunc i24 %i.z to i16
  br i1 %.not457, label %bb.b, label %.critedge368

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr497, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = lshr i32 %i.ae, 30
  %.lobit.i.i = and i32 %i.af, 1
  %i.ag = lshr i32 %i.ae, 15
  %i.ah = and i32 %i.ag, 32767
  %i.ai = add nuw nsw i32 %.lobit.i.i, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %tailrecurse.backedge

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.tr497, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  br label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.b
  %i.ao = and i24 %i.e, 524288
  %.not.i = icmp eq i24 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr497, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr497, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = select i1 %.not.i, ptr %i.as, ptr %i.aq
  br label %tailrecurse.backedge

bb.h:                                             ; preds = %bb.b
  %i.au = load i32, ptr %.tr497, align 8
  %i.av = lshr i32 %i.au, 19
  %i.aw = and i32 %i.av, 31
  switch i32 %i.aw, label %.loopexit.loopexit [
    i32 12, label %bb.j
    i32 11, label %bb.i
    i32 10, label %bb.i
    i32 3, label %.critedge368
    i32 2, label %.critedge368
    i32 1, label %.critedge368
    i32 13, label %.critedge368
    i32 0, label %.critedge368
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i369 = load i64, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i369, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !42
  %i.be = or i64 %i.bd, %.sroa.0.0.copyload.i369
  %i.bf = and i64 %i.be, 4
  %.not473 = icmp eq i64 %i.bf, 0
  br i1 %.not473, label %.loopexit, label %.critedge368

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  br label %tailrecurse.backedge

.loopexit.loopexit:                               ; preds = %bb.h
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %.pre538 = load ptr, ptr %.phi.trans.insert537, align 8, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i
  %i.bi = phi ptr [ %.pre538, %.loopexit.loopexit ], [ %i.ay, %bb.i ]
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr497, i64 4
  %.sroa.0.0.copyload.i370 = load i32, ptr %i.bj, align 4, !tbaa !92
  store i32 %.sroa.0.0.copyload.i370, ptr %2, align 4, !tbaa !92
  %i.bk = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #29
  store i64 %i.bk, ptr %3, align 4
  br label %.critedge368

bb.k:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %.tr497, align 8
  %i.bm = lshr i32 %i.bl, 19
  %i.bn = and i32 %i.bm, 63                       ; 2 uses
  switch i32 %i.bn, label %bb.r [
    i32 32, label %bb.l
    i32 19, label %bb.p
    i32 20, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr497, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 2 uses
  %i.bq = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #29 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = and i16 %i.br, 511
  %.not472 = icmp eq i16 %i.bs, 54
  br i1 %.not472, label %bb.m, label %.critedge360

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @_ZNK5clang12APIntStorage8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %i.bt)
  %i.bu = call noundef zeroext i1 @_ZNK4llvm5APInteqEm(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef 0)
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !138
  %i.bx = icmp ugt i32 %i.bw, 64
  br i1 %i.bx, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN4llvm5APIntD2Ev.exit, label %bb.o

end_hunk_1
begin_hunk_2_@_ZNK5clang4Expr22isUnusedResultAWarningERPKS0_RNS_14SourceLocationERNS_11SourceRangeES7_RNS_10ASTContextE:bb.a
  %i.dr = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !48
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i8, ptr %i.du, align 16
  %i.dw = and i8 %i.dv, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dw, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %.critedge.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = tail call i64 @_ZNK5clang8CallExpr17getCallReturnTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %.tr497, ptr noundef nonnull align 8 dereferenceable(23904) %5)
  %i.dy = and i64 %i.dx, -16
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i377 = load i64, ptr %i.eb, align 8, !tbaa !42
  %i.ec = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i377, -16
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 16
  %i.eh = icmp eq i8 %i.eg, 13
  %.not7.i.i378 = icmp ne ptr %i.ee, null
  %.not.not.not.i.i379 = and i1 %.not7.i.i378, %i.eh
  br i1 %.not.not.not.i.i379, label %_ZNK5clang4Type10isVoidTypeEv.exit381, label %.critedge

_ZNK5clang4Type10isVoidTypeEv.exit381:            ; preds = %bb.aa
  %i.ei = load i32, ptr %i.ef, align 16
  %i.ej = and i32 %i.ei, 536346624
  %i.ek = icmp eq i32 %i.ej, 236978176
  br i1 %i.ek, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.aa, %_ZNK5clang4Type10isVoidTypeEv.exit381
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.el = getelementptr inbounds nuw i8, ptr %.tr497, i64 20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.el, align 4, !tbaa !92
  store i32 %.sroa.0.0.copyload.i.i, ptr %2, align 4, !tbaa !92
  %i.em = tail call i64 @_ZNK5clang19CXXOperatorCallExpr18getSourceRangeImplEv(ptr noundef nonnull align 8 dereferenceable(32) %.tr497) #29
  store i64 %i.em, ptr %3, align 4
  br label %.critedge368

.critedge.thread:                                 ; preds = %bb.b, %bb.b, %bb.b, %bb.z, %bb.y, %_ZNK5clang4Type10isVoidTypeEv.exit381
  %i.en = getelementptr inbounds nuw i8, ptr %.tr497, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !27
  %i.ep = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eo) ; 4 uses
  %.not356 = icmp eq ptr %i.ep, null
  br i1 %.not356, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.critedge.thread
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = and i32 %i.er, 256
  %.not.i382 = icmp eq i32 %i.es, 0
  br i1 %.not.i382, label %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ep) #30 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !69 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !66 ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %.idx.i.i = shl nuw nsw i64 %i.ex, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i, label %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.ad
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.fd, %bb.ad ], [ %i.eu, %bb.ac ] ; 3 uses
  %i.ez = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !601
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 36
  %i.fb = load i16, ptr %i.fa, align 4
  %i.fc = icmp eq i16 %i.fb, 360
  br i1 %i.fc, label %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, %i.ey
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit:   ; preds = %.lr.ph.i.i.i.i.i
  %.not470 = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.ey
  br i1 %.not470, label %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443, label %bb.ae

_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443: ; preds = %bb.ad, %bb.ac, %bb.ab, %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit
  %i.fe = tail call noundef zeroext i1 @_ZNK5clang4Decl7hasAttrINS_9ConstAttrEEEbv(ptr noundef nonnull align 8 dereferenceable(33) %i.ep)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit, %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443, %.critedge.thread
  %i.ff = phi i1 [ false, %.critedge.thread ], [ true, %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit ], [ %i.fe, %_ZNK5clang4Decl7hasAttrINS_8PureAttrEEEbv.exit.thread443 ]
  %i.fg = load ptr, ptr %i.en, align 8, !tbaa !27
  %i.fh = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg)
  %i.fi = tail call i64 @_ZNK5clang8CallExpr17getCallReturnTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %.tr497, ptr noundef nonnull align 8 dereferenceable(23904) %5)
  %i.fj = tail call { ptr, ptr } @_ZN5clang4Expr23getUnusedResultAttrImplEPKNS_4DeclENS_8QualTypeE(ptr noundef %i.fh, i64 %i.fi)
  %i.fk = extractvalue { ptr, ptr } %i.fj, 1
  %i.fl = icmp ne ptr %i.fk, null
  %or.cond = or i1 %i.ff, %i.fl
  br i1 %or.cond, label %bb.af, label %.critedge368

bb.af:                                            ; preds = %bb.ae
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.fm = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i32 %i.fm, ptr %2, align 4, !tbaa !92
  %i.fn = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.fn, ptr %3, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !136 ; 2 uses
  %.not357 = icmp eq i32 %i.fp, 0
  br i1 %.not357, label %.critedge368, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr497, i64 40
  %i.fr = load i32, ptr %.tr497, align 8
  %i.fs = lshr i32 %i.fr, 19
  %i.ft = and i32 %i.fs, 1
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fu ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !114
  %i.fx = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw) #29
  %i.fy = add i32 %i.fp, -1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !114
  %i.gc = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gb) #29
  %.sroa.4433.0.insert.ext = zext i32 %i.gc to i64
  %.sroa.4433.0.insert.shift = shl nuw i64 %.sroa.4433.0.insert.ext, 32
  %.sroa.0432.0.insert.ext = zext i32 %i.fx to i64
  %.sroa.0432.0.insert.insert = or disjoint i64 %.sroa.4433.0.insert.shift, %.sroa.0432.0.insert.ext
  store i64 %.sroa.0432.0.insert.insert, ptr %4, align 4
  br label %.critedge368

bb.ah:                                            ; preds = %bb.b, %bb.b
  %i.gd = getelementptr inbounds nuw i8, ptr %.tr497, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i383 = load i64, ptr %i.gd, align 8, !tbaa !42 ; 3 uses
  %i.ge = and i64 %.sroa.0.0.copyload.i383, -16
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.0.0.copyload.i.i.i.i385 = load i64, ptr %i.gh, align 8, !tbaa !42
  %i.gi = and i64 %.sroa.0.0.copyload.i.i.i.i385, -16
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = load ptr, ptr %i.gj, align 16, !tbaa !48 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i8, ptr %i.gl, align 16            ; 3 uses
  %i.gn = add i8 %i.gm, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gn, 3
  %.not.i7.i = icmp ne ptr %i.gk, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.go = and i8 %i.gm, 62
  %spec.select.i.i.i = icmp eq i8 %i.go, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.ai, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !54 ; 3 uses
  %i.gr = icmp eq i8 %i.gm, 49
  br i1 %i.gr, label %bb.aj, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = and i32 %i.gt, 127
  %i.gv = add nsw i32 %i.gu, -60
  %i.gw = icmp ult i32 %i.gv, 3
  br i1 %i.gw, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %bb.aj, %bb.ai
  %i.gx = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.gq) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.gx, null
  %spec.select = select i1 %.not.not.i.i, ptr %i.gq, ptr %i.gx
  %i.gy = tail call noundef zeroext i1 @_ZNK5clang4Decl7hasAttrINS_14WarnUnusedAttrEEEbv(ptr noundef nonnull align 8 dereferenceable(33) %spec.select)
  br i1 %i.gy, label %bb.ak, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit._ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread_crit_edge

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit._ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %i.gd, align 8, !tbaa !42
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread: ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit._ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread_crit_edge, %bb.ah, %bb.aj
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit._ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread_crit_edge ], [ %.sroa.0.0.copyload.i383, %bb.ah ], [ %.sroa.0.0.copyload.i383, %bb.aj ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !653
  %i.hb = tail call { ptr, ptr } @_ZN5clang4Expr23getUnusedResultAttrImplEPKNS_4DeclENS_8QualTypeE(ptr noundef %i.ha, i64 %.sroa.0.0.copyload.i.i.i)
  %i.hc = extractvalue { ptr, ptr } %i.hb, 1
  %.not469 = icmp eq ptr %i.hc, null
  br i1 %.not469, label %.critedge368, label %bb.ak

bb.ak:                                            ; preds = %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit.thread, %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.hd = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i32 %i.hd, ptr %2, align 4, !tbaa !92
  %i.he = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.he, ptr %3, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.tr497, i64 32
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !667 ; 2 uses
  %.not355 = icmp eq i32 %i.hg, 0
  br i1 %.not355, label %.critedge368, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hh = load i16, ptr %.tr497, align 8
  %i.hi = and i16 %i.hh, 511
  %.not.i.i.i.i = icmp eq i16 %i.hi, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.tr497, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.hj = getelementptr inbounds nuw i8, ptr %.tr497, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %7, ptr %i.hj ; 2 uses
  %i.hk = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !114
  %i.hl = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hk) #29
  %i.hm = add i32 %i.hg, -1
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !114
  %i.hq = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hp) #29
  %.sroa.4.0.insert.ext = zext i32 %i.hq to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0430.0.insert.ext = zext i32 %i.hl to i64
  %.sroa.0430.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0430.0.insert.ext
  store i64 %.sroa.0430.0.insert.insert, ptr %4, align 4
  br label %.critedge368

bb.am:                                            ; preds = %bb.b
  %i.hr = load ptr, ptr %i.d, align 8, !tbaa !572, !nonnull !141, !align !191
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 96
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = and i64 %i.ht, 4611686018427387904
  %.not353 = icmp eq i64 %i.hu, 0
  br i1 %.not353, label %.critedge10, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr497, i64 24
  %i.hw = load i32, ptr %i.hv, align 8
  %i.hx = and i32 %i.hw, 16580608
  %spec.select.i = icmp eq i32 %i.hx, 65536
  br i1 %spec.select.i, label %bb.ao, label %.critedge10

bb.ao:                                            ; preds = %bb.an
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr497, i64 8
  %.sroa.0.0.copyload.i390 = load i64, ptr %i.hy, align 8, !tbaa !42
  %i.hz = and i64 %.sroa.0.0.copyload.i390, -16
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = load ptr, ptr %i.ia, align 16, !tbaa !48
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i392 = load i64, ptr %i.ic, align 8, !tbaa !42
  %i.id = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i392, -16
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !48 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 16
  %i.ii = icmp eq i8 %i.ih, 13
  %.not7.i.i393 = icmp ne ptr %i.if, null
  %.not.not.not.i.i394 = and i1 %.not7.i.i393, %i.ii
  br i1 %.not.not.not.i.i394, label %_ZNK5clang4Type10isVoidTypeEv.exit396, label %_ZNK5clang4Type10isVoidTypeEv.exit396.thread

_ZNK5clang4Type10isVoidTypeEv.exit396:            ; preds = %bb.ao
  %i.ij = load i32, ptr %i.ig, align 16
  %i.ik = and i32 %i.ij, 536346624
  %i.il = icmp eq i32 %i.ik, 236978176
  br i1 %i.il, label %.critedge10, label %_ZNK5clang4Type10isVoidTypeEv.exit396.thread

_ZNK5clang4Type10isVoidTypeEv.exit396.thread:     ; preds = %bb.ao, %_ZNK5clang4Type10isVoidTypeEv.exit396
  %i.im = tail call noundef i32 @_ZNK5clang15ObjCMessageExpr15getMethodFamilyEv(ptr noundef nonnull align 8 dereferenceable(40) %.tr497)
  %i.in = icmp eq i32 %i.im, 3
  br i1 %i.in, label %bb.ap, label %.critedge10

bb.ap:                                            ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit396.thread
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.io = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr497) #29
  store i32 %i.io, ptr %2, align 4, !tbaa !92
  %i.ip = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.ip, ptr %3, align 4
  br label %.critedge368

.critedge10:                                      ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit396, %bb.an, %bb.am, %_ZNK5clang4Type10isVoidTypeEv.exit396.thread
  %i.iq = tail call noundef zeroext i1 @_ZNK5clang15ObjCMessageExpr19hasUnusedResultAttrERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(40) %.tr497, ptr noundef nonnull align 8 dereferenceable(23904) %5)
  br i1 %i.iq, label %bb.aq, label %.critedge368

bb.aq:                                            ; preds = %.critedge10
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.ir = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr497) #29
  store i32 %i.ir, ptr %2, align 4, !tbaa !92
  br label %.critedge368

bb.ar:                                            ; preds = %bb.b, %bb.b
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.is = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr497) #29
  store i32 %i.is, ptr %2, align 4, !tbaa !92
  %i.it = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.it, ptr %3, align 4
  br label %.critedge368

bb.as:                                            ; preds = %bb.b
  %i.iu = getelementptr inbounds nuw i8, ptr %.tr497, i64 16 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !114 ; 3 uses
  %i.iw = load i16, ptr %i.iv, align 8            ; 2 uses
  %i.ix = and i16 %i.iw, 511                      ; 2 uses
  switch i16 %i.ix, label %bb.au [
    i16 31, label %bb.at
    i16 28, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.iy = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.tr497) #29
  store i32 %i.iy, ptr %2, align 4, !tbaa !92
  %i.iz = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.iz, ptr %3, align 4
  br label %.critedge368

bb.au:                                            ; preds = %bb.as
  %i.ja = and i16 %i.iw, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.ja, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.av, label %.critedge362

bb.av:                                            ; preds = %bb.au
  %i.jb = load i32, ptr %i.iv, align 8
  %i.jc = lshr i32 %i.jb, 19
  %i.jd = and i32 %i.jc, 63
  %i.je = add nsw i32 %i.jd, -21
  %i.jf = icmp ult i32 %i.je, 11
  br i1 %i.jf, label %.critedge368, label %.critedge362

.critedge362:                                     ; preds = %bb.av, %bb.au
  %.not468 = icmp eq i16 %i.ix, 4
  br i1 %.not468, label %bb.aw, label %.critedge364

bb.aw:                                            ; preds = %.critedge362
  %i.jg = load i32, ptr %i.iv, align 8
  %i.jh = and i32 %i.jg, 14680064
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.critedge368, label %.critedge364

.critedge364:                                     ; preds = %bb.aw, %.critedge362
  %i.jj = load i64, ptr %.tr497, align 8          ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 281474976710656
  br i1 %i.jk, label %.critedge368, label %_ZNK5clang16PseudoObjectExpr13getResultExprEv.exit

_ZNK5clang16PseudoObjectExpr13getResultExprEv.exit: ; preds = %.critedge364
  %i.jl = lshr i64 %i.jj, 48
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !114 ; 2 uses
  %.not352 = icmp eq ptr %i.jn, null
  br i1 %.not352, label %.critedge368, label %tailrecurse.backedge

bb.ax:                                            ; preds = %bb.b
  %i.jo = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !669 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !42 ; 2 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.thread452, label %_ZNK5clang12CompoundStmt9body_backEv.exit

_ZNK5clang12CompoundStmt9body_backEv.exit:        ; preds = %bb.ax
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.ju = add i32 %i.jr, -1
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !27 ; 3 uses
  %i.jy = load i16, ptr %i.jx, align 8
  %i.jz = and i16 %i.jy, 511                      ; 2 uses
  %i.ka = add nsw i16 %i.jz, -134
  %spec.select.i.i.i.i.i.i.i.i400 = icmp ult i16 %i.ka, -131
  br i1 %spec.select.i.i.i.i.i.i.i.i400, label %_ZNK5clang12CompoundStmt9body_backEv.exit402, label %tailrecurse.backedge

_ZNK5clang12CompoundStmt9body_backEv.exit402:     ; preds = %_ZNK5clang12CompoundStmt9body_backEv.exit
  %.not464 = icmp eq i16 %i.jz, 2
  br i1 %.not464, label %bb.ay, label %.thread452

bb.ay:                                            ; preds = %_ZNK5clang12CompoundStmt9body_backEv.exit402
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !1124 ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 8
  %i.ke = and i16 %i.kd, 511
  %i.kf = add nsw i16 %i.ke, -134
  %spec.select.i.i.i.i.i.i.i.i404 = icmp ult i16 %i.kf, -131
  br i1 %spec.select.i.i.i.i.i.i.i.i404, label %.thread452, label %tailrecurse.backedge

.thread452:                                       ; preds = %bb.ay, %_ZNK5clang12CompoundStmt9body_backEv.exit402, %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %.tr497, i64 8
  %.sroa.0.0.copyload.i406 = load i64, ptr %i.kg, align 8, !tbaa !42
  %i.kh = and i64 %.sroa.0.0.copyload.i406, -16
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load ptr, ptr %i.ki, align 16, !tbaa !48
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i408 = load i64, ptr %i.kk, align 8, !tbaa !42
  %i.kl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i408, -16
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = load ptr, ptr %i.km, align 16, !tbaa !48 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 16
  %i.kq = icmp eq i8 %i.kp, 13
  %.not7.i.i409 = icmp ne ptr %i.kn, null
  %.not.not.not.i.i410 = and i1 %.not7.i.i409, %i.kq
  br i1 %.not.not.not.i.i410, label %_ZNK5clang4Type10isVoidTypeEv.exit412, label %_ZNK5clang4Type10isVoidTypeEv.exit412.thread

_ZNK5clang4Type10isVoidTypeEv.exit412:            ; preds = %.thread452
  %i.kr = load i32, ptr %i.ko, align 16
  %i.ks = and i32 %i.kr, 536346624
  %i.kt = icmp eq i32 %i.ks, 236978176
  br i1 %i.kt, label %.critedge368, label %_ZNK5clang4Type10isVoidTypeEv.exit412.thread

_ZNK5clang4Type10isVoidTypeEv.exit412.thread:     ; preds = %.thread452, %_ZNK5clang4Type10isVoidTypeEv.exit412
  store ptr %.tr497, ptr %1, align 8, !tbaa !114
  %i.ku = getelementptr inbounds nuw i8, ptr %.tr497, i64 24
  %.sroa.0.0.copyload.i413 = load i32, ptr %i.ku, align 8, !tbaa !92
  store i32 %.sroa.0.0.copyload.i413, ptr %2, align 4, !tbaa !92
  %i.kv = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.tr497) #29
  store i64 %i.kv, ptr %3, align 4
  br label %.critedge368

bb.az:                                            ; preds = %bb.b, %bb.b
  %i.kw = getelementptr inbounds nuw i8, ptr %.tr497, i64 16
end_hunk_2
begin_hunk_3_@_ZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextE:bb.a
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !48
  %i.ay = and i64 %.sroa.0.0.copyload.i33.i.i, -16
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !42
  %i.bc = and i64 %i.bb, -16
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !48
  %i.bf = icmp eq ptr %i.ax, %i.be                ; 2 uses
  %i.bg = load ptr, ptr %i.as, align 16, !tbaa !48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i8, ptr %i.bl, align 16
  %i.bn = icmp eq i8 %i.bm, 40
  br i1 %i.bn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = tail call noundef zeroext i1 @_ZNK5clang4Type14isIntegralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(23904) %1) #30
  br i1 %i.bo, label %._crit_edge.i.i, label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.l
  %.sroa.0.0.copyload.i37.pre.i.i = load i64, ptr %i.aq, align 8, !tbaa !42
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i37.pre.i.i, -16
  %.pre55.i.i = inttoptr i64 %.pre.i.i to ptr
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i, %bb.k
  %.pre-phi56.i.i = phi ptr [ %.pre55.i.i, %._crit_edge.i.i ], [ %i.az, %bb.k ]
  %i.bp = load ptr, ptr %.pre-phi56.i.i, align 8, !tbaa !48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.0.0.copyload.i.i.i.i39.i.i = load i64, ptr %i.bq, align 8, !tbaa !42
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i39.i.i, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16
  %i.bw = icmp eq i8 %i.bv, 40
  br i1 %i.bw, label %.split.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = tail call noundef zeroext i1 @_ZNK5clang4Type14isIntegralTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(23904) %1) #30
  br i1 %i.bx, label %.split.i.i, label %bb.o

.split.i.i:                                       ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload.i42.i.i = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.by = and i64 %.sroa.0.0.copyload.i42.i.i, -16
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !48
  %i.cb = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %i.ca) #30
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %.sroa.0.0.copyload.i43.i.i = load i64, ptr %i.aq, align 8, !tbaa !42
  %i.cd = and i64 %.sroa.0.0.copyload.i43.i.i, -16
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !48
  %i.cg = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %i.cf) #30
  %i.ch = extractvalue { i64, i64 } %i.cg, 0
  %i.ci = icmp eq i64 %i.cc, %i.ch
  %i.cj = or i1 %i.bf, %i.ci
  br i1 %i.cj, label %.thread49.i.i, label %"_ZZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextEENK3$_0clEPS0_.exit.i"

bb.o:                                             ; preds = %bb.n, %bb.l
  br i1 %i.bf, label %.thread49.i.i, label %"_ZZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextEENK3$_0clEPS0_.exit.i"

bb.p:                                             ; preds = %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i
  %.not.i.i = icmp eq i16 %i.al, 8
  br i1 %.not.i.i, label %bb.q, label %"_ZZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextEENK3$_0clEPS0_.exit.i"

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %.8.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !639
  br label %.thread49.i.i

.thread49.i.i:                                    ; preds = %bb.q, %bb.o, %.split.i.i
  %.3.ph.i.i = phi ptr [ %i.ao, %.split.i.i ], [ %i.cl, %bb.q ], [ %i.ao, %bb.o ]
  br label %"_ZZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextEENK3$_0clEPS0_.exit.i"

"_ZZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextEENK3$_0clEPS0_.exit.i": ; preds = %.thread49.i.i, %bb.p, %bb.o, %.split.i.i
  %i.cm = phi ptr [ %.3.ph.i.i, %.thread49.i.i ], [ %.8.i.i, %bb.o ], [ %.8.i.i, %.split.i.i ], [ %.8.i.i, %bb.p ] ; 3 uses
  %.not.i = icmp eq ptr %i.cm, %.081.i
  br i1 %.not.i, label %"_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ERZNS1_20IgnoreParenNoopCastsERKNS_10ASTContextEE3$_0EEES2_S2_DpOT_.exit", label %bb.b, !llvm.loop !1126

"_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ERZNS1_20IgnoreParenNoopCastsERKNS_10ASTContextEE3$_0EEES2_S2_DpOT_.exit": ; preds = %"_ZZN5clang4Expr20IgnoreParenNoopCastsERKNS_10ASTContextEENK3$_0clEPS0_.exit.i"
  ret ptr %i.cm
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4Expr27IgnoreUnlessSpelledInSourceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"
  %.016.i16 = phi ptr [ %0, %bb.a ], [ %i.bv, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit" ] ; 7 uses
  %i.a = load i16, ptr %.016.i16, align 8         ; 2 uses
  %i.b = and i16 %i.a, 511                        ; 2 uses
  %i.c = icmp eq i16 %i.b, 81
  %i.d = and i16 %i.a, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i16 %i.d, 62
  %or.cond.i.i = or i1 %i.c, %spec.select.i.i.i.i.i.i.i.i.not.i.i
  br i1 %or.cond.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.016.i16, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not.i1 = icmp eq ptr %i.f, %.016.i16
  br i1 %.not.i1, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i, label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, %bb.b
  switch i16 %i.b, label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit [
    i16 50, label %bb.c
    i16 120, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i16, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

bb.f:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i16, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i, %bb.d, %bb.e, %bb.f
  %.2.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i ], [ %i.n, %bb.e ], [ %i.p, %bb.f ], [ %.016.i16, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i ] ; 6 uses
  %i.q = load i16, ptr %.2.i, align 8             ; 2 uses
  %i.r = and i16 %i.q, 511                        ; 2 uses
  %i.s = icmp eq i16 %i.r, 81
  %i.t = and i16 %i.q, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i2 = icmp eq i16 %i.t, 62
  %or.cond.i.i3 = or i1 %i.s, %spec.select.i.i.i.i.i.i.i.i.not.i.i2
  br i1 %or.cond.i.i3, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i7, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i7: ; preds = %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %.not.i8 = icmp eq ptr %i.v, %.2.i
  br i1 %.not.i8, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4, label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i7, %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit
  switch i16 %i.r, label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit [
    i16 50, label %bb.g
    i16 8, label %bb.j
  ]

bb.g:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i6 = load i64, ptr %i.w, align 8 ; 3 uses
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i6, 4
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i6 to ptr
  br label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i.i6, -5
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  br label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

bb.j:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4
  %i.ae = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !639
  br label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i7, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4, %bb.h, %bb.i, %bb.j
  %.2.i5 = phi ptr [ %i.z, %bb.h ], [ %i.v, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i7 ], [ %i.ad, %bb.i ], [ %i.af, %bb.j ], [ %.2.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i4 ] ; 3 uses
  %i.ag = load i16, ptr %.2.i5, align 8           ; 2 uses
  %i.ah = and i16 %i.ag, 511
  %.not.i9 = icmp eq i16 %i.ah, 20
  br i1 %.not.i9, label %bb.k, label %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit

bb.k:                                             ; preds = %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.2.i5, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %.pre = load i16, ptr %i.aj, align 8
  br label %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit

_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit, %bb.k
  %i.ak = phi i16 [ %.pre, %bb.k ], [ %i.ag, %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit ]
  %spec.select.i = phi ptr [ %i.aj, %bb.k ], [ %.2.i5, %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit ] ; 14 uses
  %i.al = and i16 %i.ak, 511                      ; 4 uses
  %.not.i10 = icmp eq i16 %i.al, 88
  br i1 %.not.i10, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.ao = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #29
  %i.ap = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull readonly align 8 dereferenceable(8) %spec.select.i) #29
  %or.cond.not.i = icmp eq i64 %i.ao, %i.ap
  %spec.select27.i = select i1 %or.cond.not.i, ptr %i.an, ptr %spec.select.i
  br label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"

.thread.i:                                        ; preds = %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit
  %i.aq = add nsw i16 %i.al, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.aq, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit", label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !667
  switch i32 %i.as, label %bb.n [
    i32 1, label %.critedge.i
    i32 0, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"
  ]

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i16 %i.al, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %spec.select.i, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr %2
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = and i16 %i.av, 511
  %i.ax = icmp eq i16 %i.aw, 116
  br i1 %i.ax, label %.critedge.i, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"

.critedge.i:                                      ; preds = %bb.m, %bb.n
  %.not.i.i.i45.i = icmp eq i16 %i.al, 118        ; 2 uses
  %spec.select.i.i.i.i.i46.i = select i1 %.not.i.i.i45.i, ptr %spec.select.i, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i46.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 40
  %spec.select.i.i.i47.i = select i1 %.not.i.i.i45.i, ptr %3, ptr %i.ay
  %i.az = load ptr, ptr %spec.select.i.i.i47.i, align 8, !tbaa !114 ; 3 uses
  %i.ba = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #29
  %i.bb = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull readonly align 8 dereferenceable(8) %spec.select.i) #29
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit", label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge.i
  %i.bd = load i32, ptr %spec.select.i, align 8
  %.fr25.i = freeze i32 %i.bd
  %i.be = and i32 %.fr25.i, 524288
  %.not24.i = icmp eq i32 %i.be, 0
  %spec.select.i11 = select i1 %.not24.i, ptr %spec.select.i, ptr %i.az
  br label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"

"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit": ; preds = %bb.l, %.thread.i, %bb.m, %bb.n, %.critedge.i, %.critedge6.i
  %.8.i = phi ptr [ %spec.select27.i, %bb.l ], [ %spec.select.i, %bb.m ], [ %spec.select.i11, %.critedge6.i ], [ %spec.select.i, %.thread.i ], [ %i.az, %.critedge.i ], [ %spec.select.i, %bb.n ] ; 5 uses
  %i.bf = load i16, ptr %.8.i, align 8
  %i.bg = and i16 %i.bf, 511
  %.not.i12 = icmp eq i16 %i.bg, 94
  br i1 %.not.i12, label %bb.o, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"

bb.o:                                             ; preds = %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"
  %i.bh = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %.8.i) #30 ; 5 uses
  %i.bi = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #29 ; 3 uses
  %.sroa.09.0.extract.trunc.i = trunc i64 %i.bi to i32
  %.sroa.410.0.extract.shift.i = lshr i64 %i.bi, 32
  %i.bj = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.8.i) #29 ; 3 uses
  %.sroa.07.0.extract.trunc.i = trunc i64 %i.bj to i32 ; 2 uses
  %.sroa.48.0.extract.shift.i = lshr i64 %i.bj, 32 ; 2 uses
  %i.bk = icmp eq i32 %.sroa.09.0.extract.trunc.i, %.sroa.07.0.extract.trunc.i
  %i.bl = icmp eq i64 %.sroa.410.0.extract.shift.i, %.sroa.48.0.extract.shift.i
  %i.bm = and i1 %i.bk, %i.bl
  br i1 %i.bm, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load i16, ptr %i.bh, align 8
  %i.bo = and i16 %i.bn, 511
  %.not28.i = icmp eq i16 %i.bo, 20
  %i.bp = icmp eq i64 %i.bi, %i.bj
  %or.cond = and i1 %i.bp, %.not28.i
  br i1 %or.cond, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #29 ; 2 uses
  %i.br = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #29 ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.br to i32
  %.sroa.42.0.extract.shift.i = lshr i64 %i.br, 32
  %i.bs = icmp ne i32 %.sroa.01.0.extract.trunc.i, %.sroa.07.0.extract.trunc.i
  %i.bt = icmp ne i64 %.sroa.42.0.extract.shift.i, %.sroa.48.0.extract.shift.i
  %.not26.i = or i1 %i.bs, %i.bt
  %cond.fr.i = freeze i1 %.not26.i
  %spec.select.i13 = select i1 %cond.fr.i, ptr %.8.i, ptr %i.bq
  br label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"

"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit": ; preds = %bb.p, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit", %bb.o, %bb.q
  %i.bu = phi ptr [ %i.bh, %bb.o ], [ %spec.select.i13, %bb.q ], [ %.8.i, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit" ], [ %i.bh, %bb.p ]
  %i.bv = tail call fastcc noundef ptr @"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_2clEPS0_"(ptr noundef %i.bu) ; 3 uses
  %.not.i = icmp eq ptr %i.bv, %.016.i16
  br i1 %.not.i, label %"_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_S4_RZNS1_27IgnoreUnlessSpelledInSourceEvE3$_0RZNS1_27IgnoreUnlessSpelledInSourceEvE3$_1RZNS1_27IgnoreUnlessSpelledInSourceEvE3$_2EEES2_S2_DpOT_.exit", label %bb.b, !llvm.loop !13

"_ZN5clang15IgnoreExprNodesIJRFPNS_4ExprES2_ES4_S4_RZNS1_27IgnoreUnlessSpelledInSourceEvE3$_0RZNS1_27IgnoreUnlessSpelledInSourceEvE3$_1RZNS1_27IgnoreUnlessSpelledInSourceEvE3$_2EEES2_S2_DpOT_.exit": ; preds = %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"
  ret ptr %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang4Expr17isDefaultArgumentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %.not = icmp eq i16 %i.b, 50
  br i1 %.not, label %bb.b, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.010 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = load i16, ptr %.010, align 8
  %i.l = and i16 %i.k, 511                        ; 2 uses
  %.not1516 = icmp eq i16 %i.l, 81
  br i1 %.not1516, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit, %.lr.ph
  %.117 = phi ptr [ %i.m, %.lr.ph ], [ %.010, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ]
  %i.m = tail call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.117) ; 2 uses
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 511                        ; 2 uses
  %.not15 = icmp eq i16 %i.o, 81
  br i1 %.not15, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %.pre-phi = phi i16 [ %i.l, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.o, %.lr.ph ]
  %i.p = icmp eq i16 %.pre-phi, 116
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang4Expr17isTemporaryObjectERNS_10ASTContextEPKNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !42
  %i.b = tail call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %2) #30
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42
  %i.g = and i64 %i.f, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !48
  %i.j = and i64 %i.b, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !42
  %i.n = and i64 %i.m, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !48
  %i.q = icmp eq ptr %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.r = load i16, ptr %0, align 8
  %i.s = and i16 %i.r, 511
  %.not.i = icmp eq i16 %i.s, 50
  br i1 %.not.i, label %bb.c, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8 ; 3 uses
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.017.i = phi ptr [ %0, %bb.b ], [ %i.w, %bb.d ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = load i16, ptr %.017.i, align 8          ; 2 uses
  %i.ac = and i16 %i.ab, 511
  %.not34.i31 = icmp eq i16 %i.ac, 81
  br i1 %.not34.i31, label %.lr.ph, label %.preheader39.i.preheader

.lr.ph:                                           ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i, %bb.f
  %.118.i32 = phi ptr [ %i.ah, %bb.f ], [ %.017.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ] ; 3 uses
  %i.ad = load i32, ptr %.118.i32, align 8        ; 2 uses
  %i.ae = and i32 %i.ad, 66584576
  %i.af = icmp eq i32 %i.ae, 2621440
  br i1 %i.af, label %bb.f, label %.preheader39.preheader.i.loopexit.split.loop.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.118.i32, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !63 ; 3 uses
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i16 %i.ai, 511
  %.not34.i = icmp eq i16 %i.aj, 81
  br i1 %.not34.i, label %.lr.ph, label %.preheader39.i.preheader

.preheader39.preheader.i.loopexit.split.loop.exit: ; preds = %.lr.ph
  %i.ak = trunc i32 %i.ad to i16
  br label %.preheader39.i.preheader

.preheader39.i.preheader:                         ; preds = %bb.f, %.preheader39.preheader.i.loopexit.split.loop.exit, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i
  %.ph = phi i16 [ %i.ab, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ], [ %i.ak, %.preheader39.preheader.i.loopexit.split.loop.exit ], [ %i.ai, %bb.f ]
  %.3.i.ph = phi ptr [ %.017.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i ], [ %.118.i32, %.preheader39.preheader.i.loopexit.split.loop.exit ], [ %i.ah, %bb.f ]
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.i.preheader, %bb.g
  %i.al = phi i16 [ %.pre, %bb.g ], [ %.ph, %.preheader39.i.preheader ]
  %.3.i = phi ptr [ %i.ao, %bb.g ], [ %.3.i.ph, %.preheader39.i.preheader ] ; 3 uses
  %i.am = and i16 %i.al, 511
  switch i16 %i.am, label %.lr.ph.i.i.i.i.preheader [
    i16 120, label %bb.g
    i16 81, label %.lr.ph.i
  ]

bb.g:                                             ; preds = %.preheader39.i
  %i.an = getelementptr inbounds nuw i8, ptr %.3.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !117 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK5clang4Expr17isTemporaryObjectERNS_10ASTContextEPKNS_13CXXRecordDeclE:bb.a
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %.not.i.i.i.i.i, ptr %i.ca, ptr %i.by
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = load i32, ptr %.068.i.i.i.i, align 8
  %i.cd = and i32 %i.cc, 25165824
  %or.cond.not.i.i.i.i = icmp eq i32 %i.cd, 25165824
  br i1 %or.cond.not.i.i.i.i, label %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i.i, label %_ZL39skipTemporaryBindingsNoOpCastsAndParensPKN5clang4ExprE.exit

_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i.i: ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !27 ; 2 uses
  %.not42.i.i.i.i = icmp eq ptr %i.cf, null
  %spec.select.i.i.i.i = select i1 %.not42.i.i.i.i, ptr %.068.i.i.i.i, ptr %i.cf
  br label %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i.i

_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i.i: ; preds = %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i.i, %bb.o, %bb.m, %bb.k, %bb.i
  %.8.i.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.cb, %bb.o ], [ %i.be, %bb.k ], [ %i.bq, %bb.m ], [ %spec.select.i.i.i.i, %_ZN5clang14PredefinedExpr15getFunctionNameEv.exit.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.8.i.i.i.i, %.068.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZL39skipTemporaryBindingsNoOpCastsAndParensPKN5clang4ExprE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZL39skipTemporaryBindingsNoOpCastsAndParensPKN5clang4ExprE.exit: ; preds = %.lr.ph.i.i.i.i, %bb.j, %bb.l, %bb.n, %bb.p, %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i.i
  %.8.i3.i.i.i = phi ptr [ %.8.i.i.i.i, %_ZN5clang22IgnoreParensSingleStepEPNS_4ExprE.exit.i.i.i ], [ %.068.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i, %bb.j ], [ %.068.i.i.i.i, %bb.l ], [ %.068.i.i.i.i, %bb.n ], [ %.068.i.i.i.i, %bb.p ] ; 4 uses
  %i.cg = tail call i32 @_ZNK5clang4Expr12ClassifyImplERNS_10ASTContextEPNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(16) %.8.i3.i.i.i, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef null) #30
  %i.ch = and i32 %i.cg, 65534
  %.not26 = icmp eq i32 %i.ch, 0
  %.pre37 = load i16, ptr %.8.i3.i.i.i, align 8   ; 2 uses
  %i.ci = and i16 %.pre37, 511                    ; 3 uses
  br i1 %.not26, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL39skipTemporaryBindingsNoOpCastsAndParensPKN5clang4ExprE.exit
  %i.cj = icmp eq i16 %i.ci, 31
  br i1 %i.cj, label %.thread, label %bb.u

bb.r:                                             ; preds = %_ZL39skipTemporaryBindingsNoOpCastsAndParensPKN5clang4ExprE.exit
  switch i16 %i.ci, label %.thread [
    i16 81, label %bb.s
    i16 46, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ck = load i32, ptr %.8.i3.i.i.i, align 8
  %i.cl = lshr i32 %i.ck, 19
  %i.cm = and i32 %i.cl, 127
  %.off = add nsw i32 %i.cm, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.q, %bb.r, %bb.s
  %.pre-phi40 = phi i16 [ 81, %bb.s ], [ %i.ci, %bb.r ], [ 31, %bb.q ]
  %i.cn = and i16 %.pre37, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.cn, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.t, label %.critedge18

bb.t:                                             ; preds = %.thread
  %i.co = load i32, ptr %.8.i3.i.i.i, align 8
  %i.cp = and i32 %i.co, 32505856
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.u, label %.critedge18

.critedge18:                                      ; preds = %bb.t, %.thread
  %i.cr = icmp ne i16 %.pre-phi40, 26
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.s, %bb.t, %.critedge18, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ false, %bb.t ], [ %i.cr, %.critedge18 ], [ false, %bb.r ], [ false, %bb.q ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang4Expr17isImplicitCXXThisEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.026 = phi ptr [ %0, %bb.a ], [ %.026.be, %.backedge.backedge ] ; 8 uses
  %i.a = load i16, ptr %.026, align 8             ; 2 uses
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %bb.e [
    i16 20, label %bb.b
    i16 81, label %bb.c
  ]

bb.b:                                             ; preds = %.backedge
  %i.c = getelementptr inbounds nuw i8, ptr %.026, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  br label %.backedge.backedge

bb.c:                                             ; preds = %.backedge
  %i.e = load i32, ptr %.026, align 8             ; 2 uses
  %i.f = lshr i32 %i.e, 19
  %i.g = and i32 %i.f, 127
  %i.h = trunc i32 %i.e to i16
  switch i32 %i.g, label %bb.e [
    i32 5, label %bb.d
    i32 4, label %bb.d
    i32 7, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  br label %.backedge.backedge

bb.e:                                             ; preds = %.backedge, %bb.c
  %i.k = phi i16 [ %i.h, %bb.c ], [ %i.a, %.backedge ] ; 2 uses
  %i.l = and i16 %i.k, 511
  %.not65 = icmp eq i16 %i.l, 4
  br i1 %.not65, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %.026, align 8             ; 2 uses
  %i.n = and i32 %i.m, 16252928
  %i.o = icmp eq i32 %i.n, 6291456
  %i.p = trunc i32 %i.m to i16
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i16 [ %i.p, %bb.f ], [ %i.k, %bb.e ]
  %i.t = and i16 %i.s, 511
  switch i16 %i.t, label %.loopexit [
    i16 50, label %bb.i
    i16 100, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.j, %bb.k, %bb.b, %bb.d, %bb.g
  %.026.be = phi ptr [ %i.d, %bb.b ], [ %i.r, %bb.g ], [ %i.j, %bb.d ], [ %i.ab, %bb.k ], [ %i.x, %bb.j ]
  br label %.backedge, !llvm.loop !7

bb.k:                                             ; preds = %bb.i
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  br label %.backedge.backedge

bb.l:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %.026, align 8
  %i.ad = and i32 %i.ac, 524288
  %i.ae = icmp ne i32 %i.ad, 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.l
  %spec.select = phi i1 [ %i.ae, %bb.l ], [ false, %bb.h ]
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Expr28hasAnyTypeDependentArgumentsEN4llvm8ArrayRefIPS0_EE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not11 = icmp eq i64 %1, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %.048 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = load i24, ptr %i.c, align 8
  %i.e = and i24 %i.d, 65536
  %.not.not = icmp ne i24 %i.e, 0                 ; 2 uses
  %i.f = add i32 %.048, 1                         ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp ule i64 %1, %i.g
  %or.cond.not = select i1 %.not.not, i1 true, i1 %i.h
  br i1 %or.cond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1127

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %.not.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang4Expr21isConstantInitializerERNS_10ASTContextEbPPKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 10 uses
  %5 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 10 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 51 uses
  %.tr292 = phi i1 [ %2, %bb.a ], [ %.tr292.be, %tailrecurse.backedge ]
  %i.a = load i16, ptr %.tr, align 8
  %i.b = and i16 %i.a, 511                        ; 2 uses
  br i1 %.tr292, label %bb.b, label %bb.k

bb.b:                                             ; preds = %tailrecurse
  switch i16 %i.b, label %bb.g [
    i16 62, label %bb.c
    i16 50, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  br label %tailrecurse.backedge

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 3 uses
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %tailrecurse.backedge

bb.f:                                             ; preds = %bb.d
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  br label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 0, ptr %4, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.m, align 1, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 0, ptr %i.n, align 2, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 4
  %i.t = call noundef zeroext i1 @_ZNK5clang4Expr16EvaluateAsLValueERNS0_10EvalResultERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(23904) %1, i1 noundef zeroext false) #30
  %i.u = load i8, ptr %4, align 8, !range !140
  %i.v = trunc nuw i8 %i.u to i1
  %.not290 = xor i1 %i.v, true
  %or.cond.not = select i1 %i.t, i1 %.not290, i1 false ; 2 uses
  %.not207 = icmp eq ptr %3, null
  %or.cond212 = or i1 %.not207, %or.cond.not
  br i1 %or.cond212, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.tr, ptr %3, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr %i.p, align 8, !tbaa !85
  %switch.i.i = icmp ult i32 %i.w, 2
  br i1 %switch.i.i, label %_ZN5clang4Expr10EvalResultD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #30
  br label %_ZN5clang4Expr10EvalResultD2Ev.exit

_ZN5clang4Expr10EvalResultD2Ev.exit:              ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.thread248

bb.k:                                             ; preds = %tailrecurse
  switch i16 %i.b, label %.thread268 [
    i16 62, label %bb.l
    i16 9, label %.thread248
    i16 40, label %.thread248
    i16 118, label %bb.m
    i16 117, label %bb.m
    i16 63, label %bb.s
    i16 78, label %bb.t
    i16 69, label %bb.u
    i16 55, label %bb.w
    i16 56, label %.thread248
    i16 45, label %.thread248
    i16 20, label %bb.at
    i16 59, label %bb.au
    i16 79, label %bb.av
    i16 4, label %bb.az
    i16 34, label %bb.ba
    i16 35, label %bb.bd
    i16 33, label %bb.bg
    i16 21, label %bb.bj
    i16 88, label %bb.bk
    i16 83, label %bb.bk
    i16 81, label %bb.bk
    i16 89, label %bb.bk
    i16 82, label %bb.bk
    i16 85, label %bb.bk
    i16 84, label %bb.bk
    i16 87, label %bb.bk
    i16 86, label %bb.bk
    i16 50, label %bb.bl
    i16 8, label %bb.bo
    i16 116, label %bb.bp
    i16 115, label %bb.bq
  ]

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  br label %tailrecurse.backedge

bb.m:                                             ; preds = %bb.k, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !653 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 8388608
  %.not289 = icmp eq i32 %i.ad, 0
  br i1 %.not289, label %.thread268, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.af = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8 ; 3 uses
  %i.ah = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !91
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit

_ZN5clang13CXXMethodDecl9getParentEv.exit:        ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi ptr [ %i.aj, %bb.o ], [ %i.am, %bb.p ]
  %i.an = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -64
  %i.ao = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl20hasTrivialDestructorEv(ptr noundef nonnull align 8 dereferenceable(144) %i.an)
  br i1 %i.ao, label %bb.q, label %.thread268

bb.q:                                             ; preds = %_ZN5clang13CXXMethodDecl9getParentEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !667
  %.not203 = icmp eq i32 %i.aq, 0
  br i1 %.not203, label %.thread248, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = load i16, ptr %.tr, align 8
  %i.as = and i16 %i.ar, 511
  %.not.i.i.i.i = icmp eq i16 %i.as, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.tr, ptr null
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %6, ptr %i.at
  %i.au = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !114
  br label %tailrecurse.backedge

bb.s:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103
  br label %tailrecurse.backedge

bb.t:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  br label %tailrecurse.backedge

bb.u:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  %i.bb = tail call noundef zeroext i1 @_ZNK5clang4Expr21isConstantInitializerERNS_10ASTContextEbPPKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(23904) %1, i1 noundef zeroext false, ptr noundef %3)
  br i1 %i.bb, label %bb.v, label %.thread248

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27
  br label %tailrecurse.backedge

bb.w:                                             ; preds = %bb.k
  %i.be = tail call noundef zeroext i1 @_ZNK5clang12InitListExpr13isTransparentEv(ptr noundef nonnull align 8 dereferenceable(64) %.tr)
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !126
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27
  br label %tailrecurse.backedge

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bi, align 8, !tbaa !42
  %i.bj = and i64 %.sroa.0.0.copyload.i, -16
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.bn = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 16, !tbaa !48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i8, ptr %i.bq, align 16            ; 2 uses
  %i.bs = add i8 %i.br, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bs, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !126
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = and i64 %i.bz, 34359738360
  %.not202.not319.not = icmp eq i64 %i.ca, 0
  br i1 %.not202.not319.not, label %.thread248, label %.lr.ph321.preheader

.lr.ph321.preheader:                              ; preds = %bb.z
  %i.cb = lshr exact i64 %i.bz, 3
  %wide.trip.count = and i64 %i.cb, 4294967295
  br label %.lr.ph321

.lr.ph321:                                        ; preds = %.lr.ph321, %.lr.ph321.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph321.preheader ], [ %indvars.iv.next, %.lr.ph321 ] ; 2 uses
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !126
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27
  %i.cf = tail call noundef zeroext i1 @_ZNK5clang4Expr21isConstantInitializerERNS_10ASTContextEbPPKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(23904) %1, i1 noundef zeroext false, ptr noundef %3) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond340.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not373 = select i1 %i.cf, i1 %exitcond340.not, i1 false
  br i1 %or.cond.not373, label %.lr.ph321, label %.thread248, !llvm.loop !1128

bb.aa:                                            ; preds = %bb.y
  %i.cg = icmp eq i8 %i.br, 49
  br i1 %i.cg, label %bb.ab, label %.thread268

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54 ; 2 uses
  %i.cj = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #30 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.cj, null
  %spec.select.i.i.i = select i1 %.not.not.i.i.i, ptr %i.ci, ptr %i.cj ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 28
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 127
  %i.cn = add nsw i32 %i.cm, -63
  %i.co = icmp ult i32 %i.cn, -3
  br i1 %i.co, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = tail call noundef i32 @_ZNK5clang13CXXRecordDecl11getNumBasesEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i.i.i) ; 2 uses
  %.not199309.not = icmp eq i32 %i.cp, 0
  br i1 %.not199309.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.af
  %.0311 = phi i32 [ 0, %.lr.ph ], [ %i.df, %bb.af ]
  %.0156310 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.af ] ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !127
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !126 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = lshr exact i64 %i.cw, 3
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp ult i32 %.0156310, %i.cy
  br i1 %i.cz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.da = add nuw i32 %.0156310, 1
  %i.db = zext i32 %.0156310 to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27
  %i.de = tail call noundef zeroext i1 @_ZNK5clang4Expr21isConstantInitializerERNS_10ASTContextEbPPKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(23904) %1, i1 noundef zeroext false, ptr noundef %3)
  br i1 %i.de, label %bb.af, label %.thread248

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.1 = phi i32 [ %i.da, %bb.ae ], [ %.0156310, %bb.ad ] ; 2 uses
  %i.df = add nuw i32 %.0311, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.cp
  br i1 %exitcond.not, label %.loopexit, label %bb.ad, !llvm.loop !1129

.loopexit:                                        ; preds = %bb.af, %bb.ac, %bb.ab
  %.4.ph = phi i32 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %.1, %bb.af ]
  %i.dg = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %spec.select.i.i.i) #30 ; 2 uses
  %.not288312 = icmp eq ptr %i.dg, null
  br i1 %.not288312, label %.thread248, label %.lr.ph315

.lr.ph315:                                        ; preds = %.loopexit
  %i.dh = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph315, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit
  %.5314 = phi i32 [ %.4.ph, %.lr.ph315 ], [ %.7.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 6 uses
  %.sroa.0238.0313 = phi ptr [ %i.dg, %.lr.ph315 ], [ %.sroa.0238.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 5 uses
  %i.dq = load i16, ptr %i.dh, align 8
  %.mask.i = and i16 %i.dq, -8192
  %i.dr = icmp eq i16 %.mask.i, 16384
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.di, align 8 ; 2 uses
  %i.ds = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %.not.i.i.i.i225 = icmp ne i64 %i.ds, 0
  %i.dt = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.du = inttoptr i64 %i.dt to ptr
  %.not200325 = icmp eq ptr %.sroa.0238.0313, %i.du
  %.not200 = and i1 %.not.i.i.i.i225, %.not200325
  br i1 %.not200, label %bb.ai, label %.critedge209

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0238.0313, i64 68
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = trunc i32 %i.dw to i1                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0238.0313, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dy, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.dz = select i1 %i.dx, i1 %.not.i, i1 false
  br i1 %i.dz, label %.critedge209, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = load ptr, ptr %i.dk, align 8, !tbaa !127
  %i.eb = load ptr, ptr %i.dj, align 8, !tbaa !126 ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = lshr exact i64 %i.ee, 3
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp ult i32 %.5314, %i.eg
  br i1 %i.eh, label %bb.ak, label %.critedge209

bb.ak:                                            ; preds = %bb.aj
  %i.ei = add nuw i32 %.5314, 1                   ; 2 uses
  %i.ej = zext i32 %.5314 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !27 ; 3 uses
  br i1 %i.dx, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i8 0, ptr %5, align 8, !tbaa !78
  store i8 0, ptr %i.dl, align 1, !tbaa !79
end_hunk_4
begin_hunk_5_@_ZN5clang22CompoundAssignOperator6CreateERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideES7_S7_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i18, i64 40
  store i64 %10, ptr %i.ax, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang22CompoundAssignOperatorC2ERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideES7_S7_.exit, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.ay = phi ptr [ %.0.i.i.i18, %_ZN5clang22CompoundAssignOperatorC2ERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideES7_S7_.exit ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.ay
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang13UnaryOperator11CreateEmptyERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(23904) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = select i1 %1, i64 32, i64 24             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = load i64, ptr %i.f, align 8, !tbaa !154
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.a, i64 noundef %i.a, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  store ptr %i.j, ptr %i.b, align 8, !tbaa !153
  %i.k = icmp eq ptr %i.c, null
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i4 = phi ptr [ %i.i, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.c, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 6 uses
  %i.l = load i16, ptr %.0.i.i.i4, align 8
  %i.m = and i16 %i.l, -512
  %i.n = or disjoint i16 %i.m, 4
  store i16 %i.n, ptr %.0.i.i.i4, align 8
  %i.o = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN5clang13UnaryOperatorC2EbNS_4Stmt10EmptyShellE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 4) #30
  br label %_ZN5clang13UnaryOperatorC2EbNS_4Stmt10EmptyShellE.exit

_ZN5clang13UnaryOperatorC2EbNS_4Stmt10EmptyShellE.exit: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i4, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = load i32, ptr %.0.i.i.i4, align 8
  %i.s = and i32 %i.r, -49807361
  %i.t = select i1 %1, i32 35651584, i32 2097152
  %i.u = or disjoint i32 %i.s, %i.t
  store i32 %i.u, ptr %.0.i.i.i4, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN5clang13UnaryOperatorC2EbNS_4Stmt10EmptyShellE.exit, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.v = phi ptr [ %.0.i.i.i4, %_ZN5clang13UnaryOperatorC2EbNS_4Stmt10EmptyShellE.exit ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13UnaryOperatorC2ERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(24) initializes((4, 24)) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 %7, i1 noundef zeroext %8, i64 %9) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 4
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 4) #30
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i24, ptr %0, align 8
  %i.h = trunc i32 %5 to i24
  %i.i = shl i24 %i.h, 9
  %i.j = and i24 %i.i, 1536
  %i.k = and i24 %i.g, -523777
  %i.l = trunc i32 %6 to i24
  %i.m = shl i24 %i.l, 11
  %i.n = and i24 %i.m, 14336
  %i.o = or disjoint i24 %i.n, %i.j
  %i.p = or disjoint i24 %i.o, %i.k
  store i24 %i.p, ptr %0, align 8
  store i64 %4, ptr %i.f, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.q, align 8, !tbaa !61
  %i.r = load i32, ptr %0, align 8
  %i.s = shl i32 %3, 19
  %i.t = and i32 %i.s, 16252928
  %i.u = and i32 %i.r, -66584577
  %i.v = select i1 %8, i32 16777216, i32 0
  %i.w = or disjoint i32 %i.v, %i.t
  %i.x = or disjoint i32 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %7, ptr %i.y, align 4, !tbaa !92
  %.not = icmp ult i64 %9, 4294967296             ; 2 uses
  %i.z = select i1 %.not, i32 0, i32 33554432
  %i.aa = or disjoint i32 %i.x, %i.z
  store i32 %i.aa, ptr %0, align 8
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %9, ptr %i.ab, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.ac = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_13UnaryOperatorERKNS_10ASTContextE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) #30
  %i.ad = load i24, ptr %0, align 8
  %i.ae = and i8 %i.ac, 31
  %i.af = zext nneg i8 %i.ae to i24
  %i.ag = shl nuw nsw i24 %i.af, 14
  %i.ah = and i24 %i.ad, -507905
  %i.ai = or disjoint i24 %i.ag, %i.ah
  store i24 %i.ai, ptr %0, align 8
  ret void
}

declare noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_13UnaryOperatorERKNS_10ASTContextE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang13UnaryOperator6CreateERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i32 noundef %2, i64 %3, i32 noundef %4, i32 noundef %5, i32 %6, i1 noundef zeroext %7, i64 %8) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp ult i64 %8, 4294967296
  %i.a = select i1 %.not, i64 24, i64 32          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = add i64 %i.a, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.g = load i64, ptr %i.f, align 8, !tbaa !154
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %i.a, i64 noundef %i.a, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  store ptr %i.j, ptr %i.b, align 8, !tbaa !153
  %i.k = icmp eq ptr %i.c, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i14 = phi ptr [ %i.i, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.c, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang13UnaryOperatorC1ERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i.i14, ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, i32 noundef %2, i64 %3, i32 noundef %4, i32 noundef %5, i32 %6, i1 noundef zeroext %7, i64 %8) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.l = phi ptr [ %.0.i.i.i14, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN5clang15OpaqueValueExpr19findInCopyConstructEPKNS_4ExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8                ; 2 uses
  %i.b = and i16 %i.a, 511
  %.not = icmp eq i16 %i.b, 62
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %.pre = load i16, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i16 [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %.011 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.f = and i16 %i.e, 511
  %.not24 = icmp eq i16 %i.f, 50
  br i1 %.not24, label %bb.d, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8 ; 3 uses
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

bb.f:                                             ; preds = %bb.d
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.1 = phi ptr [ %.011, %bb.c ], [ %i.j, %bb.e ], [ %i.n, %bb.f ] ; 3 uses
  %i.o = load i16, ptr %.1, align 8
  %i.p = and i16 %i.o, 511
  %.not.i.i.i.i = icmp eq i16 %i.p, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.1, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit
  %.2.in = phi ptr [ %spec.select.i.i.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit ], [ %i.t, %bb.g ]
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !74  ; 3 uses
  %i.r = load i16, ptr %.2, align 8
  %i.s = and i16 %i.r, 511
  %.not26 = icmp eq i16 %i.s, 81
  %i.t = getelementptr inbounds nuw i8, ptr %.2, i64 16
  br i1 %.not26, label %bb.g, label %bb.h

bb.h:                                             ; preds = %bb.g
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang16PseudoObjectExpr6CreateERKNS_10ASTContextENS_4Stmt10EmptyShellEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = add i32 %1, 1
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.e = add nuw nsw i64 %i.c, 16                 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !153  ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.e, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.j = load i64, ptr %i.i, align 8, !tbaa !154
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.a
  %i.l = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef %i.e, i64 noundef %i.e, i8 3)
  br label %bb.b

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  store ptr %i.m, ptr %i.d, align 8, !tbaa !153
  %i.n = icmp eq ptr %i.f, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i4 = phi ptr [ %i.l, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.f, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang16PseudoObjectExprC1ENS_4Stmt10EmptyShellEj(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i4, i32 noundef %1) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.o = phi ptr [ %.0.i.i.i4, %bb.b ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16PseudoObjectExprC2ENS_4Stmt10EmptyShellEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 17
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 17) #30
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS1_10EmptyShellE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = add i32 %1, 1
  %i.h = load i64, ptr %0, align 8
  %i.i = and i32 %i.g, 65535
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = and i64 %i.h, -281470681743361
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang16PseudoObjectExpr6CreateERKNS_10ASTContextEPNS_4ExprEN4llvm8ArrayRefIS5_EEj(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %1, ptr %2, i64 %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %4, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18896
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %4 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i24, ptr %i.e, align 8
  %i.h = lshr i24 %i.g, 9
  %i.i = and i24 %i.h, 3
  %i.j = zext nneg i24 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi ptr [ %i.b, %bb.b ], [ %i.f, %bb.c ]
  %.0 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !tbaa !42
  %i.k = shl i64 %3, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 3 uses
  %i.m = add i64 %i.k, 24                         ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !153  ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.m, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !154
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %_ZNK5clang10ASTContext8AllocateEmj.exit, label %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, !prof !68

_ZNK5clang10ASTContext8AllocateEmj.exit.thread:   ; preds = %bb.d
  %i.t = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 noundef %i.m, i64 noundef %i.m, i8 3)
  br label %bb.e

_ZNK5clang10ASTContext8AllocateEmj.exit:          ; preds = %bb.d
  %i.u = inttoptr i64 %i.p to ptr
  store ptr %i.u, ptr %i.l, align 8, !tbaa !153
  %i.v = icmp eq ptr %i.n, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang10ASTContext8AllocateEmj.exit.thread, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %.0.i.i.i18 = phi ptr [ %i.t, %_ZNK5clang10ASTContext8AllocateEmj.exit.thread ], [ %i.n, %_ZNK5clang10ASTContext8AllocateEmj.exit ] ; 2 uses
  tail call void @_ZN5clang16PseudoObjectExprC1ENS_8QualTypeENS_13ExprValueKindEPNS_4ExprEN4llvm8ArrayRefIS4_EEj(ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.i18, i64 %.sroa.0.0, i32 noundef %.0, ptr noundef %1, ptr %2, i64 %3, i32 noundef %4) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK5clang10ASTContext8AllocateEmj.exit
  %i.w = phi ptr [ %.0.i.i.i18, %bb.e ], [ null, %_ZNK5clang10ASTContext8AllocateEmj.exit ]
  ret ptr %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16PseudoObjectExprC2ENS_8QualTypeENS_13ExprValueKindEPNS_4ExprEN4llvm8ArrayRefIS4_EEj(ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 24)) %0, i64 %1, i32 noundef %2, ptr noundef %3, ptr nofree readonly captures(none) %4, i64 %5, i32 noundef %6) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 17
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 17) #30
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i24, ptr %0, align 8
  %i.h = trunc i32 %2 to i24
  %i.i = shl i24 %i.h, 9
  %i.j = and i24 %i.i, 1536
  %i.k = and i24 %i.g, -523777
  %i.l = or disjoint i24 %i.k, %i.j
  store i24 %i.l, ptr %0, align 8
  store i64 %1, ptr %i.f, align 8, !tbaa !42
  %i.m = load i64, ptr %0, align 8
  %i.n = shl i64 %5, 32
  %i.o = add i64 %i.n, 4294967296
  %i.p = and i64 %i.m, 4294967295
  %i.q = add i32 %6, 1
  %i.r = and i32 %i.q, 65535
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 48
  %.masked = and i64 %i.o, 281470681743360
  %i.u = or disjoint i64 %.masked, %i.p
  %i.v = or disjoint i64 %i.u, %i.t
  store i64 %i.v, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.w, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = icmp ugt i64 %5, 1
  br i1 %i.y, label %bb.c, label %bb.d, !prof !68

bb.c:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %.idx.i = shl nuw nsw i64 %5, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %4, i64 %.idx.i, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.d:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.z = icmp eq i64 %5, 1
  br i1 %i.z, label %bb.e, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %4, align 8, !tbaa !114
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !114
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.ab = tail call noundef zeroext i8 @_ZN5clang17computeDependenceEPNS_16PseudoObjectExprE(ptr noundef nonnull %0) #30
  %i.ac = load i24, ptr %0, align 8
  %i.ad = and i8 %i.ab, 31
  %i.ae = zext nneg i8 %i.ad to i24
  %i.af = shl nuw nsw i24 %i.ae, 14
  %i.ag = and i24 %i.ac, -507905
  %i.ah = or disjoint i24 %i.af, %i.ag
  store i24 %i.ah, ptr %0, align 8
  ret void
}
end_hunk_5
begin_hunk_6_@_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENUlPvE_8__invokeES5_:bb.a

_ZZNK5clang10ASTContext14addDestructionINS_7APValueEEEvPT_ENKUlPvE_clES5_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang31ClassTemplateSpecializationDeclELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #30
  %i.f = load ptr, ptr %0, align 8, !tbaa !69
  %i.g = load i32, ptr %i.a, align 8, !tbaa !66
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !66
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1304, !nonnull !141, !align !191 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !92
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.f) #30
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #25

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef ptr @"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_2clEPS0_"(ptr nofree noundef readonly %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %i.c = add nsw i16 %i.b, -96
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.c, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !136
  switch i32 %i.e, label %bb.c [
    i32 0, label %.critedge
    i32 1, label %..critedge2_crit_edge
  ]

..critedge2_crit_edge:                            ; preds = %bb.b
  %.pre = load i32, ptr %0, align 8
  %.pre15 = lshr i32 %.pre, 19
  %.pre16 = and i32 %.pre15, 1
  %.pre18 = zext nneg i32 %.pre16 to i64
  br label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 8
  %i.g = lshr i32 %i.f, 19
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 511
  %i.o = icmp eq i16 %i.n, 116
  br i1 %i.o, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.c
  %.pre-phi19 = phi i64 [ %.pre18, %..critedge2_crit_edge ], [ %i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi19
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114  ; 3 uses
  %i.s = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #29
  %i.t = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #29
  %.not = icmp eq i64 %i.s, %i.t
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.critedge2, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"
  %.016.i.i.i13 = phi ptr [ %i.cp, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit" ], [ %i.r, %.critedge2 ] ; 7 uses
  %i.u = load i16, ptr %.016.i.i.i13, align 8     ; 2 uses
  %i.v = and i16 %i.u, 511                        ; 2 uses
  %i.w = icmp eq i16 %i.v, 81
  %i.x = and i16 %i.u, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i27 = icmp eq i16 %i.x, 62
  %or.cond.i.i28 = or i1 %i.w, %spec.select.i.i.i.i.i.i.i.i.not.i.i27
  br i1 %or.cond.i.i28, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i32, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i32: ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i.i13, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %.not.i33 = icmp eq ptr %i.z, %.016.i.i.i13
  br i1 %.not.i33, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29, label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i32, %.preheader
  switch i16 %i.v, label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit [
    i16 50, label %bb.d
    i16 120, label %bb.g
  ]

bb.d:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.016.i.i.i13, i64 16
  %.0.copyload.i.i.i.i.i.i.i31 = load i64, ptr %i.aa, align 8 ; 3 uses
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i31, 4
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i31 to ptr
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = and i64 %.0.copyload.i.i.i.i.i.i.i31, -5
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

bb.g:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i.i.i13, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  br label %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit

_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i32, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29, %bb.e, %bb.f, %bb.g
  %.2.i30 = phi ptr [ %i.ad, %bb.e ], [ %i.z, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i32 ], [ %i.ah, %bb.f ], [ %i.aj, %bb.g ], [ %.016.i.i.i13, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i29 ] ; 6 uses
  %i.ak = load i16, ptr %.2.i30, align 8          ; 2 uses
  %i.al = and i16 %i.ak, 511                      ; 2 uses
  %i.am = icmp eq i16 %i.al, 81
  %i.an = and i16 %i.ak, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i16 %i.an, 62
  %or.cond.i.i = or i1 %i.am, %spec.select.i.i.i.i.i.i.i.i.not.i.i
  br i1 %or.cond.i.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i: ; preds = %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.i30, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ap, %.2.i30
  br i1 %.not.i26, label %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i, label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, %_ZN5clang24IgnoreImplicitSingleStepEPNS_4ExprE.exit
  switch i16 %i.al, label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit [
    i16 50, label %bb.h
    i16 8, label %bb.k
  ]

bb.h:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.2.i30, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8 ; 3 uses
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

bb.j:                                             ; preds = %bb.h
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41
  br label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

bb.k:                                             ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.2.i30, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !639
  br label %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit

_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i, %bb.i, %bb.j, %bb.k
  %.2.i = phi ptr [ %i.at, %bb.i ], [ %i.ap, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.i ], [ %i.ax, %bb.j ], [ %i.az, %bb.k ], [ %.2.i30, %_ZN5clang29IgnoreImplicitCastsSingleStepEPNS_4ExprE.exit.thread.i ] ; 3 uses
  %i.ba = load i16, ptr %.2.i, align 8            ; 2 uses
  %i.bb = and i16 %i.ba, 511
  %.not.i24 = icmp eq i16 %i.bb, 20
  br i1 %.not.i24, label %bb.l, label %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit

bb.l:                                             ; preds = %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 2 uses
  %.pre14 = load i16, ptr %i.bd, align 8
  br label %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit

_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit: ; preds = %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit, %bb.l
  %i.be = phi i16 [ %.pre14, %bb.l ], [ %i.ba, %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit ]
  %spec.select.i25 = phi ptr [ %i.bd, %bb.l ], [ %.2.i, %_ZN5clang34IgnoreImplicitCastsExtraSingleStepEPNS_4ExprE.exit ] ; 14 uses
  %i.bf = and i16 %i.be, 511                      ; 4 uses
  %.not.i22 = icmp eq i16 %i.bf, 88
  br i1 %.not.i22, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63 ; 2 uses
  %i.bi = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #29
  %i.bj = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull readonly align 8 dereferenceable(8) %spec.select.i25) #29
  %or.cond.not.i = icmp eq i64 %i.bi, %i.bj
  %spec.select27.i = select i1 %or.cond.not.i, ptr %i.bh, ptr %spec.select.i25
  br label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"

.thread.i:                                        ; preds = %_ZN5clang26IgnoreParensOnlySingleStepEPNS_4ExprE.exit
  %i.bk = add nsw i16 %i.bf, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.bk, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit", label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !667
  switch i32 %i.bm, label %bb.o [
    i32 1, label %.critedge.i
    i32 0, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"
  ]

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i = icmp eq i16 %i.bf, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %spec.select.i25, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr %2
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !114
  %i.bp = load i16, ptr %i.bo, align 8
  %i.bq = and i16 %i.bp, 511
  %i.br = icmp eq i16 %i.bq, 116
  br i1 %i.br, label %.critedge.i, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"

.critedge.i:                                      ; preds = %bb.n, %bb.o
  %.not.i.i.i45.i = icmp eq i16 %i.bf, 118        ; 2 uses
  %spec.select.i.i.i.i.i46.i = select i1 %.not.i.i.i45.i, ptr %spec.select.i25, ptr null
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i46.i, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select.i25, i64 40
  %spec.select.i.i.i47.i = select i1 %.not.i.i.i45.i, ptr %3, ptr %i.bs
  %i.bt = load ptr, ptr %spec.select.i.i.i47.i, align 8, !tbaa !114 ; 3 uses
  %i.bu = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #29
  %i.bv = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull readonly align 8 dereferenceable(8) %spec.select.i25) #29
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit", label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge.i
  %i.bx = load i32, ptr %spec.select.i25, align 8
  %.fr25.i = freeze i32 %i.bx
  %i.by = and i32 %.fr25.i, 524288
  %.not24.i = icmp eq i32 %i.by, 0
  %spec.select.i23 = select i1 %.not24.i, ptr %spec.select.i25, ptr %i.bt
  br label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"

"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit": ; preds = %bb.m, %.thread.i, %bb.n, %bb.o, %.critedge.i, %.critedge6.i
  %.8.i = phi ptr [ %spec.select27.i, %bb.m ], [ %spec.select.i25, %bb.n ], [ %spec.select.i23, %.critedge6.i ], [ %spec.select.i25, %.thread.i ], [ %i.bt, %.critedge.i ], [ %spec.select.i25, %bb.o ] ; 5 uses
  %i.bz = load i16, ptr %.8.i, align 8
  %i.ca = and i16 %i.bz, 511
  %.not.i21 = icmp eq i16 %i.ca, 94
  br i1 %.not.i21, label %bb.p, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"

bb.p:                                             ; preds = %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit"
  %i.cb = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %.8.i) #30 ; 5 uses
  %i.cc = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #29 ; 3 uses
  %.sroa.09.0.extract.trunc.i = trunc i64 %i.cc to i32
  %.sroa.410.0.extract.shift.i = lshr i64 %i.cc, 32
  %i.cd = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.8.i) #29 ; 3 uses
  %.sroa.07.0.extract.trunc.i = trunc i64 %i.cd to i32 ; 2 uses
  %.sroa.48.0.extract.shift.i = lshr i64 %i.cd, 32 ; 2 uses
  %i.ce = icmp eq i32 %.sroa.09.0.extract.trunc.i, %.sroa.07.0.extract.trunc.i
  %i.cf = icmp eq i64 %.sroa.410.0.extract.shift.i, %.sroa.48.0.extract.shift.i
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i16, ptr %i.cb, align 8
  %i.ci = and i16 %i.ch, 511
  %.not28.i = icmp eq i16 %i.ci, 20
  %i.cj = icmp eq i64 %i.cc, %i.cd
  %or.cond = and i1 %i.cj, %.not28.i
  br i1 %or.cond, label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29 ; 2 uses
  %i.cl = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #29 ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.cl to i32
  %.sroa.42.0.extract.shift.i = lshr i64 %i.cl, 32
  %i.cm = icmp ne i32 %.sroa.01.0.extract.trunc.i, %.sroa.07.0.extract.trunc.i
  %i.cn = icmp ne i64 %.sroa.42.0.extract.shift.i, %.sroa.48.0.extract.shift.i
  %.not26.i = or i1 %i.cm, %i.cn
  %cond.fr.i = freeze i1 %.not26.i
  %spec.select.i = select i1 %cond.fr.i, ptr %.8.i, ptr %i.ck
  br label %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"

"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit": ; preds = %bb.q, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit", %bb.p, %bb.r
  %i.co = phi ptr [ %i.cb, %bb.p ], [ %spec.select.i, %bb.r ], [ %.8.i, %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_0clEPS0_.exit" ], [ %i.cb, %bb.q ]
  %i.cp = tail call fastcc noundef ptr @"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_2clEPS0_"(ptr noundef %i.co) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cp, %.016.i.i.i13
  br i1 %.not.i.i.i, label %_ZNK5clang4Expr27IgnoreUnlessSpelledInSourceEv.exit, label %.preheader, !llvm.loop !13

_ZNK5clang4Expr27IgnoreUnlessSpelledInSourceEv.exit: ; preds = %"_ZZN5clang4Expr27IgnoreUnlessSpelledInSourceEvENK3$_1clEPS0_.exit"
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = and i16 %i.cq, 511
  %.not11 = icmp eq i16 %i.cr, 73
  br i1 %.not11, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK5clang4Expr27IgnoreUnlessSpelledInSourceEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %.critedge, label %_ZL26IsDecompositionDeclRefExprPKN5clang4ExprE.exit

_ZL26IsDecompositionDeclRefExprPKN5clang4ExprE.exit: ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.cv = load i32, ptr %i.cu, align 4
  %.fr12 = freeze i32 %i.cv
  %i.cw = and i32 %.fr12, 127
  %i.cx = icmp eq i32 %i.cw, 47
  %spec.select = select i1 %i.cx, ptr %i.r, ptr %0
  br label %.critedge

.critedge:                                        ; preds = %_ZL26IsDecompositionDeclRefExprPKN5clang4ExprE.exit, %bb.s, %_ZNK5clang4Expr27IgnoreUnlessSpelledInSourceEv.exit, %bb.b, %bb.c, %.critedge2, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %.critedge2 ], [ %0, %bb.s ], [ %spec.select, %_ZL26IsDecompositionDeclRefExprPKN5clang4ExprE.exit ], [ %0, %_ZNK5clang4Expr27IgnoreUnlessSpelledInSourceEv.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE15VisitLambdaExprEPKNS_10LambdaExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i16, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i16 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not10 = icmp eq i16 %i.c, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.011, align 8, !tbaa !114 ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1305
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE25VisitGenericSelectionExprEPKNS_20GenericSelectionExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 1073709056
  %i.d = icmp eq i32 %i.c, 1073709056
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = lshr i32 %i.b, 30
  %.lobit.i.i = and i32 %i.f, 1
  %i.g = lshr i32 %i.b, 15
  %i.h = and i32 %i.g, 32767
  %i.i = add nuw nsw i32 %.lobit.i.i, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  tail call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE15VisitChooseExprEPKNS_10ChooseExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = load i24, ptr %i.b, align 8
  %i.d = and i24 %i.c, 131072
  %.not = icmp eq i24 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i24, ptr %1, align 8
  %i.f = and i24 %i.e, 524288
  %.not.i = icmp eq i24 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = select i1 %.not.i, ptr %i.j, ptr %i.h
  tail call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE13VisitCallExprEPKNS_8CallExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !689, !nonnull !141, !align !191
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 127
  %i.h = add nsw i32 %i.g, -35
  %i.i = icmp ult i32 %i.h, 6
  br i1 %i.i, label %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.i, label %_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit.thread

_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.i:   ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %i.d, i1 noundef zeroext false) #30 ; 2 uses
  %.not.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i, label %_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit.thread, label %_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit

_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit: ; preds = %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 17784
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !640, !nonnull !141, !align !191
  %i.m = tail call noundef ptr @_ZNK5clang7Builtin7Context19getAttributesStringEj(ptr noundef nonnull align 8 dereferenceable(176) %i.l, i32 noundef %i.j) #30
  %i.n = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.m, i32 noundef 117) #29
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit.thread, label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit

_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK5clang8CallExpr16getBuiltinCalleeEv.exit.i, %_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE.exit
end_hunk_6
