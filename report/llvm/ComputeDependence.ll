Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComputeDependence?download=true
inline.NumInlined: 2047
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5clang17computeDependenceEPNS_12OverloadExprEbbb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.o = load i16, ptr %0, align 8
  %i.p = and i16 %i.o, 511
  %i.q = icmp eq i16 %i.p, 24
  %.1.v.i.i.i.i = select i1 %i.q, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.v.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.idx = shl nuw nsw i64 %i.t, 3
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx
  %.not3132 = icmp eq i32 %i.s, 0
  br i1 %.not3132, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.3.lcssa = phi i8 [ %i.n, %bb.a ], [ %.4, %bb.f ] ; 4 uses
  %i.v = load i32, ptr %0, align 8                ; 2 uses
  %i.w = and i32 %i.v, 524288
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %._crit_edge39, label %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i

_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i: ; preds = %._crit_edge
  %i.x = and i32 %i.v, 511
  %i.y = icmp eq i32 %i.x, 24
  %i.z = load i32, ptr %i.r, align 4, !tbaa !16
  %i.aa = zext i32 %i.z to i64
  %.1.i.i.v.v.i.i.i.i = select i1 %i.y, i64 64, i64 80
  %.1.i.i.v.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i.v.v.i.i.i.i
  %.1.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i.v.i.i.i.i, i64 %i.aa ; 3 uses
  %i.ab = load i32, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !57
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  %or.cond.i = select i1 %.not.i.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %._crit_edge39, label %_ZNK5clang12OverloadExpr18template_argumentsEv.exit

_ZNK5clang12OverloadExpr18template_argumentsEv.exit: ; preds = %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %._crit_edge39, label %.lr.ph38

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.019.034 = phi ptr [ %i.aw, %bb.f ], [ %.1.i.i.i.i, %bb.a ] ; 3 uses
  %.333 = phi i8 [ %.4, %bb.f ], [ %i.n, %bb.a ]  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.019.034, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.019.034, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8 ; 3 uses
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.an = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  br label %_ZN5clang4Decl14getDeclContextEv.exit

_ZN5clang4Decl14getDeclContextEv.exit:            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.an, %bb.b ], [ %i.aq, %bb.c ]
  %i.ar = call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i) #8
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 127
  switch i32 %i.au, label %bb.f [
    i32 29, label %bb.e
    i32 69, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %_ZN5clang4Decl14getDeclContextEv.exit
  %i.av = or i8 %.333, 14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.4 = phi i8 [ %i.av, %bb.e ], [ %.333, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.019.034, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.aw, %i.u
  br i1 %.not31, label %._crit_edge, label %.lr.ph

._crit_edge39:                                    ; preds = %.lr.ph38, %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i, %._crit_edge, %_ZNK5clang12OverloadExpr18template_argumentsEv.exit
  %.5.lcssa = phi i8 [ %.3.lcssa, %_ZNK5clang12OverloadExpr18template_argumentsEv.exit ], [ %.3.lcssa, %_ZNK5clang12OverloadExpr12getLAngleLocEv.exit.i.i.i ], [ %.3.lcssa, %._crit_edge ], [ %i.bf, %.lr.ph38 ]
  ret i8 %.5.lcssa

.lr.ph38:                                         ; preds = %_ZNK5clang12OverloadExpr18template_argumentsEv.exit, %.lr.ph38
  %.037 = phi ptr [ %i.bg, %.lr.ph38 ], [ %i.ae, %_ZNK5clang12OverloadExpr18template_argumentsEv.exit ] ; 2 uses
  %.536 = phi i8 [ %i.bf, %.lr.ph38 ], [ %.3.lcssa, %_ZNK5clang12OverloadExpr18template_argumentsEv.exit ]
  %i.ax = call noundef zeroext i8 @_ZNK5clang16TemplateArgument13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(24) %.037) #8 ; 3 uses
  %i.ay = and i8 %i.ax, 3
  %i.az = and i8 %i.ax, 4
  %.not.i5.i.i = icmp eq i8 %i.az, 0
  %i.ba = select i1 %.not.i5.i.i, i8 0, i8 12
  %i.bb = shl i8 %i.ax, 1
  %i.bc = and i8 %i.bb, 16
  %i.bd = or i8 %i.ay, %.536
  %i.be = or i8 %i.bd, %i.bc
  %i.bf = or i8 %i.be, %i.ba                      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.037, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.ah
  br i1 %.not, label %._crit_edge39, label %.lr.ph38
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 12, 32) i8 @_ZN5clang17computeDependenceEPNS_25DependentScopeDeclRefExprE(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 5 uses
  %2 = alloca %"class.clang::NestedNameSpecifier", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.b = call noundef zeroext i1 @_ZNK5clang19DeclarationNameInfo24isInstantiationDependentEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %i.c = call noundef zeroext i1 @_ZNK5clang19DeclarationNameInfo31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %i.d = zext i1 %i.c to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !31
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8
  %i.f = call noundef zeroext i8 @_ZNK5clang19NestedNameSpecifier13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8 ; 2 uses
  %i.g = and i8 %i.f, 3
  %i.h = shl i8 %i.f, 1
  %i.i = and i8 %i.h, 16
  %i.j = select i1 %i.b, i8 14, i8 12
  %.1.i = or disjoint i8 %i.j, %i.d
  %i.k = or i8 %.1.i, %i.g
  %i.l = or disjoint i8 %i.k, %i.i                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.m = load i24, ptr %0, align 8
  %i.n = and i24 %i.m, 524288
  %.not.i.i.i.i = icmp eq i24 %i.n, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNK5clang25DependentScopeDeclRefExpr23hasExplicitTemplateArgsEv.exit.i2.i

_ZNK5clang25DependentScopeDeclRefExpr23hasExplicitTemplateArgsEv.exit.i2.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !57
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %._crit_edge, label %_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit

_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit: ; preds = %_ZNK5clang25DependentScopeDeclRefExpr23hasExplicitTemplateArgsEv.exit.i2.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZNK5clang25DependentScopeDeclRefExpr23hasExplicitTemplateArgsEv.exit.i2.i, %_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit
  %.015.lcssa = phi i8 [ %i.l, %_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit ], [ %i.l, %bb.a ], [ %i.l, %_ZNK5clang25DependentScopeDeclRefExpr23hasExplicitTemplateArgsEv.exit.i2.i ], [ %i.ae, %.lr.ph ]
  ret i8 %.015.lcssa

.lr.ph:                                           ; preds = %_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit, %.lr.ph
  %.018 = phi ptr [ %i.af, %.lr.ph ], [ %i.q, %_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit ] ; 2 uses
  %.01517 = phi i8 [ %i.ae, %.lr.ph ], [ %i.l, %_ZNK5clang25DependentScopeDeclRefExpr18template_argumentsEv.exit ]
  %i.w = call noundef zeroext i8 @_ZNK5clang16TemplateArgument13getDependenceEv(ptr noundef nonnull align 8 dereferenceable(24) %.018) #8 ; 3 uses
  %i.x = and i8 %i.w, 3
  %i.y = and i8 %i.w, 4
  %.not.i5.i.i10 = icmp eq i8 %i.y, 0
  %i.z = select i1 %.not.i5.i.i10, i8 0, i8 12
  %i.aa = shl i8 %i.w, 1
  %i.ab = and i8 %i.aa, 16
  %i.ac = or i8 %i.x, %.01517
  %i.ad = or i8 %i.ac, %i.ab
  %i.ae = or i8 %i.ad, %i.z                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.018, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_16CXXConstructExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = trunc i16 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 4
  %.not.i6.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.j = and i8 %i.g, 18
  %i.k = or disjoint i8 %i.i, %i.j                ; 3 uses
  %i.l = load i16, ptr %0, align 8
  %i.m = and i16 %i.l, 511
  %.not.i.i.i = icmp eq i16 %i.m, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %0, ptr null
  %1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %1, ptr %i.n ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 %.idx
  %.not13 = icmp eq i32 %i.p, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = add nsw i64 %.idx, -8                    ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.07.015.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %spec.select.i.i.i, %.lr.ph.preheader ] ; 2 uses
  %.014.prol = phi i8 [ %i.aa, %.lr.ph.prol ], [ %i.k, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = load ptr, ptr %.sroa.07.015.prol, align 8, !tbaa !37
  %i.w = load i24, ptr %i.v, align 8
  %i.x = lshr i24 %i.w, 14
  %i.y = trunc i24 %i.x to i8
  %i.z = and i8 %i.y, 27
  %i.aa = or i8 %i.z, %.014.prol                  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.07.015.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !635

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %.sroa.07.015.unr = phi ptr [ %spec.select.i.i.i, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.014.unr = phi i8 [ %i.k, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ac = icmp ult i64 %i.s, 24
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.0.lcssa = phi i8 [ %i.k, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.au, %.lr.ph ]
  ret i8 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.07.015 = phi ptr [ %i.av, %.lr.ph ], [ %.sroa.07.015.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.014 = phi i8 [ %i.au, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %i.ad = load ptr, ptr %.sroa.07.015, align 8, !tbaa !37
  %i.ae = load i24, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = load i24, ptr %i.ag, align 8
  %i.ai = or i24 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = load i24, ptr %i.ak, align 8
  %i.am = or i24 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.ap = load i24, ptr %i.ao, align 8
  %i.aq = or i24 %i.am, %i.ap
  %i.ar = lshr i24 %i.aq, 14
  %i.as = trunc i24 %i.ar to i8
  %i.at = and i8 %i.as, 27
  %i.au = or i8 %i.at, %.014                      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.07.015, i64 32 ; 2 uses
  %.not.3 = icmp eq ptr %i.av, %i.r
  br i1 %.not.3, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_22CXXTemporaryObjectExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !16
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.g = load i16, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.i = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.m = load i16, ptr %i.l, align 1
  %i.n = trunc i16 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 4
  %.not.i6.i.i.i = icmp eq i8 %i.o, 0
  %i.p = select i1 %.not.i6.i.i.i, i8 0, i8 12
  %i.q = and i8 %i.n, 18
  %i.r = or disjoint i8 %i.p, %i.q                ; 3 uses
  %i.s = load i16, ptr %0, align 8
  %i.t = and i16 %i.s, 511
  %.not.i.i.i.i = icmp eq i16 %i.t, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %0, ptr null
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.u, ptr %i.a ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !66   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.w, 0
  br i1 %.not13.i, label %_ZN5clang17computeDependenceEPNS_16CXXConstructExprE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.07.015.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %spec.select.i.i.i.i, %.lr.ph.i.preheader ] ; 2 uses
  %.014.i.prol = phi i8 [ %i.ah, %.lr.ph.i.prol ], [ %i.r, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ac = load ptr, ptr %.sroa.07.015.i.prol, align 8, !tbaa !37
  %i.ad = load i24, ptr %i.ac, align 8
  %i.ae = lshr i24 %i.ad, 14
  %i.af = trunc i24 %i.ae to i8
  %i.ag = and i8 %i.af, 27
  %i.ah = or i8 %i.ag, %.014.i.prol               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.015.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !636

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %.sroa.07.015.i.unr = phi ptr [ %spec.select.i.i.i.i, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %.014.i.unr = phi i8 [ %i.r, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %i.aj = icmp ult i64 %i.z, 24
  br i1 %i.aj, label %_ZN5clang17computeDependenceEPNS_16CXXConstructExprE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.07.015.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.sroa.07.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.014.i = phi i8 [ %i.bb, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ak = load ptr, ptr %.sroa.07.015.i, align 8, !tbaa !37
  %i.al = load i24, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.015.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = load i24, ptr %i.an, align 8
  %i.ap = or i24 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.015.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.as = load i24, ptr %i.ar, align 8
  %i.at = or i24 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.015.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = load i24, ptr %i.av, align 8
  %i.ax = or i24 %i.at, %i.aw
  %i.ay = lshr i24 %i.ax, 14
  %i.az = trunc i24 %i.ay to i8
  %i.ba = and i8 %i.az, 27
  %i.bb = or i8 %i.ba, %.014.i                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.015.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.bc, %i.y
  br i1 %.not.i.3, label %_ZN5clang17computeDependenceEPNS_16CXXConstructExprE.exit, label %.lr.ph.i

_ZN5clang17computeDependenceEPNS_16CXXConstructExprE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i8 [ %i.r, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bb, %.lr.ph.i ]
  %i.bd = trunc i16 %i.g to i8                    ; 2 uses
  %i.be = and i8 %i.bd, 4
  %.not.i6.i.i = icmp eq i8 %i.be, 0
  %i.bf = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.bg = and i8 %i.bd, 19
  %i.bh = or disjoint i8 %i.bf, %i.bg
  %i.bi = or i8 %i.bh, %.0.lcssa.i
  ret i8 %i.bi
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_18CXXDefaultInitExprE(ptr noundef nonnull %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang18CXXDefaultInitExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %i.b = load i24, ptr %i.a, align 8
  %i.c = lshr i24 %i.b, 14
  %i.d = trunc i24 %i.c to i8
  %i.e = and i8 %i.d, 31
  ret i8 %i.e
}

declare noundef ptr @_ZN5clang18CXXDefaultInitExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_17CXXDefaultArgExprE(ptr noundef nonnull %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  %i.b = load i24, ptr %i.a, align 8
  %i.c = lshr i24 %i.b, 14
  %i.d = trunc i24 %i.c to i8
  %i.e = and i8 %i.d, 31
  ret i8 %i.e
}

declare noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_10LambdaExprEb(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = trunc i16 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 4
  %.not.i6.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.j = and i8 %i.g, 18
  %i.k = zext i1 %1 to i8
  %i.l = or disjoint i8 %i.j, %i.k
  %spec.select = or disjoint i8 %i.l, %i.i
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 10, 32) i8 @_ZN5clang17computeDependenceEPNS_26CXXUnresolvedConstructExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !tbaa !16
  %i.d = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = load i16, ptr %i.g, align 1
  %i.i = trunc i16 %i.h to i8
  %i.j = and i8 %i.i, 21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !16
  %i.l = and i64 %.sroa.0.0.copyload.i, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  %i.p = load i16, ptr %i.o, align 1
  %i.q = trunc i16 %i.p to i8
  %i.r = and i8 %i.q, 20
  %i.s = or i8 %i.j, %i.r
  %i.t = or disjoint i8 %i.s, 10                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.x, 3                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not19 = icmp eq i32 %i.w, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.z = add nsw i64 %.idx, -8                    ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.021.prol = phi ptr [ %i.ai, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.01820.prol = phi i8 [ %i.ah, %.lr.ph.prol ], [ %i.t, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ac = load ptr, ptr %.021.prol, align 8, !tbaa !43
  %i.ad = load i24, ptr %i.ac, align 8
  %i.ae = lshr i24 %i.ad, 14
  %i.af = trunc i24 %i.ae to i8
  %i.ag = and i8 %i.af, 17
  %i.ah = or i8 %i.ag, %.01820.prol               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.021.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !639

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i8 [ poison, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.021.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.01820.unr = phi i8 [ %i.t, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %i.aj = icmp ult i64 %i.z, 24
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.018.lcssa = phi i8 [ %i.t, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bb, %.lr.ph ]
  ret i8 %.018.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.021 = phi ptr [ %i.bc, %.lr.ph ], [ %.021.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01820 = phi i8 [ %i.bb, %.lr.ph ], [ %.01820.unr, %.lr.ph.prol.loopexit ]
  %i.ak = load ptr, ptr %.021, align 8, !tbaa !43
  %i.al = load i24, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = load i24, ptr %i.an, align 8
  %i.ap = or i24 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.as = load i24, ptr %i.ar, align 8
  %i.at = or i24 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.021, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  %i.aw = load i24, ptr %i.av, align 8
  %i.ax = or i24 %i.at, %i.aw
  %i.ay = lshr i24 %i.ax, 14
  %i.az = trunc i24 %i.ay to i8
  %i.ba = and i8 %i.az, 17
  %i.bb = or i8 %i.ba, %.01820                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.021, i64 32 ; 2 uses
  %.not.3 = icmp eq ptr %i.bc, %i.y
  br i1 %.not.3, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 14, 32) i8 @_ZN5clang17computeDependenceEPNS_27CXXDependentScopeMemberExprE(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 5 uses
  %2 = alloca %"class.clang::NestedNameSpecifier", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5clang27CXXDependentScopeMemberExpr16isImplicitAccessEv.exit.thread, label %_ZNK5clang27CXXDependentScopeMemberExpr16isImplicitAccessEv.exit

_ZNK5clang27CXXDependentScopeMemberExpr16isImplicitAccessEv.exit: ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5clang4Expr17isImplicitCXXThisEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #8
  br i1 %i.c, label %_ZNK5clang27CXXDependentScopeMemberExpr16isImplicitAccessEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang27CXXDependentScopeMemberExpr16isImplicitAccessEv.exit
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !641
  %i.e = load i24, ptr %i.d, align 8
end_hunk_0
