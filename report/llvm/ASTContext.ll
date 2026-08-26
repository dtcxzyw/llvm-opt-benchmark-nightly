Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTContext?download=true
inline.NumInlined: 31047
inline.NumDeleted: 11167
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK5clang10ASTContext32getArrayInitLoopExprElementCountEPKNS_17ArrayInitLoopExprE:bb.a
.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN4llvm5APIntD2Ev.exit
  %.06 = phi ptr [ %i.ab, %_ZN4llvm5APIntD2Ev.exit ], [ %1, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.z, %_ZN4llvm5APIntD2Ev.exit ], [ 1, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %i.b = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !729, !noalias !2618
  %i.c = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !730, !noalias !2618 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 16, !noalias !2618
  %i.h = add i8 %i.g, -7
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.h, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNK5clang4Type21castAsArrayTypeUnsafeEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.e) #28, !noalias !2618
  br label %_ZNK5clang4Type21castAsArrayTypeUnsafeEv.exit.i

_ZNK5clang4Type21castAsArrayTypeUnsafeEv.exit.i:  ; preds = %bb.c, %bb.b
  %.1.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.k = load i32, ptr %i.j, align 16, !noalias !2624 ; 2 uses
  %i.l = and i32 %i.k, 33554432
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang4Type21castAsArrayTypeUnsafeEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !729, !noalias !2624 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1670, !noalias !2624 ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !1670, !alias.scope !2624
  %i.q = icmp ult i32 %i.p, 65
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.n, align 8, !tbaa !729, !noalias !2624
  br label %.thread

bb.f:                                             ; preds = %bb.d
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.n) #28
  br label %_ZNK5clang17ArrayInitLoopExpr12getArraySizeEv.exit

bb.g:                                             ; preds = %_ZNK5clang4Type21castAsArrayTypeUnsafeEv.exit.i
  %i.s = lshr i32 %i.k, 23
  %i.t = and i32 %i.s, 248                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !729, !noalias !2624 ; 2 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !1670, !alias.scope !2624
  %i.w = icmp samesign ult i32 %i.t, 65
  br i1 %i.w, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.v, i1 noundef zeroext false) #28
  br label %_ZNK5clang17ArrayInitLoopExpr12getArraySizeEv.exit

.thread:                                          ; preds = %bb.g, %bb.e
  %.sink = phi i64 [ %i.r, %bb.e ], [ %i.v, %bb.g ] ; 2 uses
  store i64 %.sink, ptr %2, align 8, !tbaa !729, !alias.scope !2624
  br label %_ZN4llvm5APIntD2Ev.exit

_ZNK5clang17ArrayInitLoopExpr12getArraySizeEv.exit: ; preds = %bb.f, %bb.h
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !1670
  %.pre.fr = freeze i32 %.pre
  %i.x = icmp ult i32 %.pre.fr, 65                ; 2 uses
  %spec.select = select i1 %i.x, ptr %2, ptr %.pr
  %.0.i = load i64, ptr %spec.select, align 8, !tbaa !729 ; 2 uses
  %i.y = icmp eq ptr %.pr, null
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang17ArrayInitLoopExpr12getArraySizeEv.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #31
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.thread, %_ZNK5clang17ArrayInitLoopExpr12getArraySizeEv.exit, %bb.i
  %.sink.pn = phi i64 [ %.sink, %.thread ], [ %.0.i, %_ZNK5clang17ArrayInitLoopExpr12getArraySizeEv.exit ], [ %.0.i, %bb.i ]
  %i.z = mul i64 %.sink.pn, %.0                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %.06, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2625 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 511
  %.not11 = icmp eq i16 %i.ad, 129
  br i1 %.not11, label %bb.b, label %.loopexit, !llvm.loop !2626

.loopexit:                                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %i.z, %_ZN4llvm5APIntD2Ev.exit ]
  ret i64 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.backedge.i, %bb.a
  %.tr.i = phi i64 [ %1, %bb.a ], [ %.tr.be.i, %tailrecurse.backedge.i ]
  %i.a = and i64 %.tr.i, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !730 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 16
  %.not.i.i = icmp eq i8 %i.e, 14
  br i1 %.not.i.i, label %tailrecurse.backedge.i, label %bb.b

bb.b:                                             ; preds = %tailrecurse.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !729
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !730 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %i.l = icmp eq i8 %i.k, 14
  br i1 %i.l, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i: ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #28, !inline_history !2627 ; 2 uses
  %.not.not.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i, label %tailrecurse.backedge.i

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i: ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !730
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i6.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !729
  %.pre23.i = and i64 %.sroa.0.0.copyload.i.i.i.i6.pre.i, -16
  %.pre24.i = inttoptr i64 %.pre23.i to ptr
  %.pre = load ptr, ptr %.pre24.i, align 16, !tbaa !730
  br label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i

tailrecurse.backedge.i:                           ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i, %tailrecurse.i
  %.pn.i = phi ptr [ %i.m, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i ], [ %i.c, %tailrecurse.i ]
  %.tr.be.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.tr.be.i = load i64, ptr %.tr.be.in.i, align 16, !tbaa !729
  br label %tailrecurse.i

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i
  %i.n = phi ptr [ %.pre, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i ], [ %i.i, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.o, align 16
  %i.q = lshr i32 %i.p, 19
  %i.r = and i32 %i.q, 1023
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr @switch.table._ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_.78, i64 %i.s
  %switch.gep = getelementptr i8, ptr %i.t, i64 -497
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %tailrecurse.i10

tailrecurse.i10:                                  ; preds = %tailrecurse.backedge.i19, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i
  %.tr.i11 = phi i64 [ %2, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i ], [ %.tr.be.i22, %tailrecurse.backedge.i19 ]
  %i.u = and i64 %.tr.i11, -16
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !730 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  %.not.i.i12 = icmp eq i8 %i.y, 14
  br i1 %.not.i.i12, label %tailrecurse.backedge.i19, label %bb.c

bb.c:                                             ; preds = %tailrecurse.i10
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i13 = load i64, ptr %i.z, align 8, !tbaa !729
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i.i13, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !730 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = icmp eq i8 %i.ae, 14
  br i1 %i.af, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i17, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i14

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i17: ; preds = %bb.c
  %i.ag = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.w) #28, !inline_history !2627 ; 2 uses
  %.not.not.i18 = icmp eq ptr %i.ag, null
  br i1 %.not.not.i18, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i23, label %tailrecurse.backedge.i19

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i23: ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i17
  %.pre.i24 = load ptr, ptr %i.v, align 8, !tbaa !730
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %.pre.i24, i64 8
  %.sroa.0.0.copyload.i.i.i.i6.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !729
  %.pre23.i27 = and i64 %.sroa.0.0.copyload.i.i.i.i6.pre.i26, -16
  %.pre24.i28 = inttoptr i64 %.pre23.i27 to ptr
  %.pre42 = load ptr, ptr %.pre24.i28, align 16, !tbaa !730
  br label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i14

tailrecurse.backedge.i19:                         ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i17, %tailrecurse.i10
  %.pn.i20 = phi ptr [ %i.ag, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.i17 ], [ %i.w, %tailrecurse.i10 ]
  %.tr.be.in.i21 = getelementptr inbounds nuw i8, ptr %.pn.i20, i64 32
  %.tr.be.i22 = load i64, ptr %.tr.be.in.i21, align 16, !tbaa !729
  br label %tailrecurse.i10

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13.i14: ; preds = %bb.c, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i23
  %i.ah = phi ptr [ %.pre42, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit.thread13_crit_edge.i23 ], [ %i.ac, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 16
  %i.ak = lshr i32 %i.aj, 19
  %i.al = and i32 %i.ak, 1023
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr @switch.table._ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_.78, i64 %i.am
  %switch.gep58 = getelementptr i8, ptr %i.an, i64 -497
  %switch.load59 = load i8, ptr %switch.gep58, align 1
  %.0 = tail call i32 @llvm.ucmp.i32.i8(i8 %switch.load, i8 %switch.load59)
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -1, 2) i32 @_ZNK5clang10ASTContext28getFloatingTypeSemanticOrderENS_8QualTypeES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23904) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !730
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !729
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !730
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 16
  %i.j = lshr i32 %i.i, 19
  %i.k = and i32 %i.j, 1023
  switch i32 %i.k, label %bb.b [
    i32 502, label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
    i32 501, label %bb.c
    i32 497, label %bb.c
    i32 498, label %bb.d
    i32 499, label %bb.e
    i32 504, label %bb.f
    i32 500, label %bb.g
    i32 503, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit

bb.f:                                             ; preds = %bb.a
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !426, !nonnull !412, !align !413
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %.not3.i = icmp eq i64 %i.p, 0
  %i.q = and i64 %i.o, 34359738368
  %.not4.i = icmp eq i64 %i.q, 0
  %or.cond.i = or i1 %.not3.i, %.not4.i
  %..i = select i1 %or.cond.i, i64 17712, i64 17720
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !426, !nonnull !412, !align !413
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = and i64 %i.u, 4294967295
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %i.u, 34359738368
  %.not2.i = icmp eq i64 %i.w, 0
  %or.cond5.i = or i1 %.not.i, %.not2.i
  %.8.i = select i1 %or.cond5.i, i64 17712, i64 17720
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit

_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sink.i = phi i64 [ 17712, %bb.a ], [ %.8.i, %bb.h ], [ 17712, %bb.c ], [ %..i, %bb.g ], [ 17712, %bb.f ], [ 17712, %bb.e ], [ 17712, %bb.d ]
  %.sink6.i = phi i64 [ 88, %bb.a ], [ 120, %bb.h ], [ 80, %bb.c ], [ 112, %bb.g ], [ 128, %bb.f ], [ 104, %bb.e ], [ 96, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1586
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink6.i
  %.0.i = load ptr, ptr %i.z, align 8, !tbaa !1587
  %i.aa = and i64 %2, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !730
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i8 = load i64, ptr %i.ad, align 8, !tbaa !729
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i8, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !730
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 16
  %i.aj = lshr i32 %i.ai, 19
  %i.ak = and i32 %i.aj, 1023
  switch i32 %i.ak, label %bb.i [
    i32 502, label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20
    i32 501, label %bb.j
    i32 497, label %bb.j
    i32 498, label %bb.k
    i32 499, label %bb.l
    i32 504, label %bb.m
    i32 500, label %bb.n
    i32 503, label %bb.o
  ]

bb.i:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  unreachable

bb.j:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit, %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20

bb.k:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20

bb.l:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20

bb.m:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20

bb.n:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !426, !nonnull !412, !align !413
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %.not3.i16 = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %i.ao, 34359738368
  %.not4.i17 = icmp eq i64 %i.aq, 0
  %or.cond.i18 = or i1 %.not3.i16, %.not4.i17
  %..i19 = select i1 %or.cond.i18, i64 17712, i64 17720
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20

bb.o:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !426, !nonnull !412, !align !413
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %.not.i9 = icmp eq i64 %i.av, 0
  %i.aw = and i64 %i.au, 34359738368
  %.not2.i10 = icmp eq i64 %i.aw, 0
  %or.cond5.i11 = or i1 %.not.i9, %.not2.i10
  %.8.i12 = select i1 %or.cond5.i11, i64 17712, i64 17720
  br label %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20

_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20: ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.sink.i13 = phi i64 [ 17712, %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit ], [ %.8.i12, %bb.o ], [ 17712, %bb.j ], [ %..i19, %bb.n ], [ 17712, %bb.m ], [ 17712, %bb.l ], [ 17712, %bb.k ]
  %.sink6.i14 = phi i64 [ 88, %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit ], [ 120, %bb.o ], [ 80, %bb.j ], [ 112, %bb.n ], [ 128, %bb.m ], [ 104, %bb.l ], [ 96, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i13
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1586
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink6.i14
  %.0.i15 = load ptr, ptr %i.az, align 8, !tbaa !1587
  %i.ba = icmp eq ptr %.0.i, %.0.i15
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20
  %i.bb = tail call noundef i32 @_ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_(ptr nonnull align 8 poison, i64 %1, i64 %2)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20, %bb.p
  %.0 = phi i32 [ %i.bb, %bb.p ], [ 0, %_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE.exit20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK5clang10ASTContext14getIntegerRankEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16              ; 2 uses
  %i.c = icmp ne i8 %i.b, 10
  %.not.not4763 = icmp eq ptr %1, null
  %.not.not64 = or i1 %.not.not4763, %i.c
  br i1 %.not.not64, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17712
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19016
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.i, align 8
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.tr49.lcssa = phi ptr [ %1, %bb.a ], [ %.tr49.be, %tailrecurse.backedge ]
  %i.j = getelementptr inbounds nuw i8, ptr %.tr49.lcssa, i64 32
  %i.k = load i32, ptr %i.j, align 16
  %i.l = shl i32 %i.k, 2
  %i.m = and i32 %i.l, 134217720
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.n = phi i8 [ %i.b, %.lr.ph ], [ %i.r, %tailrecurse.backedge ]
  %i.o = phi ptr [ %i.a, %.lr.ph ], [ %i.q, %tailrecurse.backedge ]
  %.tr4965 = phi ptr [ %1, %.lr.ph ], [ %.tr49.be, %tailrecurse.backedge ]
  %.not = icmp eq i8 %i.n, 35
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.tr4965, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 16, !tbaa !729
  br label %tailrecurse.backedge

end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj:bb.a
  store ptr %i.x, ptr %2, align 16, !tbaa !990
  store ptr %i.y, ptr %i.q, align 8, !tbaa !4481
  store i32 0, ptr %i.p, align 16, !tbaa !4484
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !843
  %i.aa = load ptr, ptr %0, align 8, !tbaa !4483
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !843
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !843
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !843
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !419 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !419
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !419
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !419
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !419
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !990    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4481
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !989  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4481 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !990
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !989
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !419  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1481 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !419 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !419 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !4490

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1481
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !419
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !4491

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !4492

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !989
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !4484
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !4484
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !989
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang9FieldDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEEES8_SA_SC_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang9FieldDeclELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !563
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !561
  %i.g = load i32, ptr %i.a, align 8, !tbaa !563
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !563
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !563
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #25

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin nounwind allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !251, i64 2592}
!9 = !{!"_ZTSN5clang10ASTContextE", !10, i64 0, !11, i64 8, !17, i64 24, !21, i64 40, !23, i64 56, !25, i64 72, !27, i64 88, !29, i64 104, !31, i64 120, !33, i64 136, !35, i64 152, !38, i64 176, !40, i64 192, !45, i64 216, !47, i64 240, !49, i64 264, !51, i64 288, !53, i64 304, !55, i64 328, !57, i64 344, !59, i64 368, !61, i64 384, !63, i64 408, !65, i64 432, !67, i64 456, !69, i64 480, !71, i64 496, !73, i64 512, !75, i64 528, !77, i64 544, !79, i64 560, !81, i64 584, !83, i64 600, !85, i64 616, !87, i64 632, !89, i64 648, !91, i64 664, !93, i64 680, !95, i64 696, !97, i64 712, !99, i64 728, !101, i64 744, !104, i64 768, !106, i64 784, !108, i64 800, !110, i64 824, !112, i64 840, !114, i64 856, !116, i64 880, !118, i64 896, !120, i64 912, !122, i64 928, !124, i64 944, !126, i64 960, !128, i64 976, !130, i64 992, !132, i64 1008, !134, i64 1032, !136, i64 1056, !138, i64 1080, !139, i64 1104, !141, i64 1120, !143, i64 1144, !145, i64 1168, !147, i64 1192, !149, i64 1216, !151, i64 1240, !153, i64 1264, !155, i64 1288, !157, i64 1312, !159, i64 1328, !161, i64 1344, !163, i64 1360, !166, i64 1384, !166, i64 1408, !170, i64 1432, !170, i64 1456, !170, i64 1480, !170, i64 1504, !172, i64 1528, !5, i64 1552, !176, i64 1560, !180, i64 1592, !182, i64 1616, !182, i64 1624, !182, i64 1632, !182, i64 1640, !182, i64 1648, !182, i64 1656, !182, i64 1664, !182, i64 1672, !183, i64 1680, !182, i64 1688, !184, i64 1696, !184, i64 1704, !184, i64 1712, !187, i64 1720, !187, i64 1728, !187, i64 1736, !187, i64 1744, !187, i64 1752, !187, i64 1760, !187, i64 1768, !187, i64 1776, !184, i64 1784, !188, i64 1792, !182, i64 1800, !184, i64 1808, !184, i64 1816, !182, i64 1824, !189, i64 1832, !189, i64 1840, !189, i64 1848, !189, i64 1856, !188, i64 1864, !188, i64 1872, !190, i64 1880, !190, i64 1888, !190, i64 1896, !191, i64 1904, !193, i64 1928, !195, i64 1952, !197, i64 1976, !199, i64 2000, !201, i64 2024, !202, i64 2032, !203, i64 2056, !205, i64 2080, !207, i64 2104, !209, i64 2128, !211, i64 2152, !213, i64 2176, !215, i64 2200, !217, i64 2224, !219, i64 2248, !221, i64 2272, !223, i64 2296, !225, i64 2320, !227, i64 2344, !234, i64 2384, !241, i64 2424, !235, i64 2448, !243, i64 2472, !245, i64 2496, !247, i64 2520, !247, i64 2528, !248, i64 2536, !249, i64 2544, !250, i64 2552, !250, i64 2560, !250, i64 2568, !250, i64 2576, !250, i64 2584, !251, i64 2592, !252, i64 2600, !253, i64 2608, !260, i64 2616, !267, i64 2624, !274, i64 2632, !284, i64 2712, !285, i64 17696, !292, i64 17704, !292, i64 17705, !293, i64 17712, !293, i64 17720, !294, i64 17728, !296, i64 17744, !303, i64 17752, !310, i64 17760, !311, i64 17768, !312, i64 17776, !313, i64 17784, !314, i64 17792, !315, i64 17800, !322, i64 18624, !324, i64 18632, !325, i64 18640, !326, i64 18648, !292, i64 18728, !331, i64 18736, !333, i64 18760, !333, i64 18784, !335, i64 18808, !337, i64 18832, !344, i64 18896, !344, i64 18904, !344, i64 18912, !344, i64 18920, !344, i64 18928, !344, i64 18936, !344, i64 18944, !344, i64 18952, !344, i64 18960, !344, i64 18968, !344, i64 18976, !344, i64 18984, !344, i64 18992, !344, i64 19000, !344, i64 19008, !344, i64 19016, !344, i64 19024, !344, i64 19032, !344, i64 19040, !344, i64 19048, !344, i64 19056, !344, i64 19064, !344, i64 19072, !344, i64 19080, !344, i64 19088, !344, i64 19096, !344, i64 19104, !344, i64 19112, !344, i64 19120, !344, i64 19128, !344, i64 19136, !344, i64 19144, !344, i64 19152, !344, i64 19160, !344, i64 19168, !344, i64 19176, !344, i64 19184, !344, i64 19192, !344, i64 19200, !344, i64 19208, !344, i64 19216, !344, i64 19224, !344, i64 19232, !344, i64 19240, !344, i64 19248, !344, i64 19256, !344, i64 19264, !344, i64 19272, !344, i64 19280, !344, i64 19288, !344, i64 19296, !344, i64 19304, !344, i64 19312, !344, i64 19320, !344, i64 19328, !344, i64 19336, !344, i64 19344, !344, i64 19352, !344, i64 19360, !344, i64 19368, !344, i64 19376, !344, i64 19384, !344, i64 19392, !344, i64 19400, !344, i64 19408, !344, i64 19416, !344, i64 19424, !344, i64 19432, !344, i64 19440, !344, i64 19448, !344, i64 19456, !344, i64 19464, !344, i64 19472, !344, i64 19480, !344, i64 19488, !344, i64 19496, !344, i64 19504, !344, i64 19512, !344, i64 19520, !344, i64 19528, !344, i64 19536, !344, i64 19544, !344, i64 19552, !344, i64 19560, !344, i64 19568, !344, i64 19576, !344, i64 19584, !344, i64 19592, !344, i64 19600, !344, i64 19608, !344, i64 19616, !344, i64 19624, !344, i64 19632, !344, i64 19640, !344, i64 19648, !344, i64 19656, !344, i64 19664, !344, i64 19672, !344, i64 19680, !344, i64 19688, !344, i64 19696, !344, i64 19704, !344, i64 19712, !344, i64 19720, !344, i64 19728, !344, i64 19736, !344, i64 19744, !344, i64 19752, !344, i64 19760, !344, i64 19768, !344, i64 19776, !344, i64 19784, !344, i64 19792, !344, i64 19800, !344, i64 19808, !344, i64 19816, !344, i64 19824, !344, i64 19832, !344, i64 19840, !344, i64 19848, !344, i64 19856, !344, i64 19864, !344, i64 19872, !344, i64 19880, !344, i64 19888, !344, i64 19896, !344, i64 19904, !344, i64 19912, !344, i64 19920, !344, i64 19928, !344, i64 19936, !344, i64 19944, !344, i64 19952, !344, i64 19960, !344, i64 19968, !344, i64 19976, !344, i64 19984, !344, i64 19992, !344, i64 20000, !344, i64 20008, !344, i64 20016, !344, i64 20024, !344, i64 20032, !344, i64 20040, !344, i64 20048, !344, i64 20056, !344, i64 20064, !344, i64 20072, !344, i64 20080, !344, i64 20088, !344, i64 20096, !344, i64 20104, !344, i64 20112, !344, i64 20120, !344, i64 20128, !344, i64 20136, !344, i64 20144, !344, i64 20152, !344, i64 20160, !344, i64 20168, !344, i64 20176, !344, i64 20184, !344, i64 20192, !344, i64 20200, !344, i64 20208, !344, i64 20216, !344, i64 20224, !344, i64 20232, !344, i64 20240, !344, i64 20248, !344, i64 20256, !344, i64 20264, !344, i64 20272, !344, i64 20280, !344, i64 20288, !344, i64 20296, !344, i64 20304, !344, i64 20312, !344, i64 20320, !344, i64 20328, !344, i64 20336, !344, i64 20344, !344, i64 20352, !344, i64 20360, !344, i64 20368, !344, i64 20376, !344, i64 20384, !344, i64 20392, !344, i64 20400, !344, i64 20408, !344, i64 20416, !344, i64 20424, !344, i64 20432, !344, i64 20440, !344, i64 20448, !344, i64 20456, !344, i64 20464, !344, i64 20472, !344, i64 20480, !344, i64 20488, !344, i64 20496, !344, i64 20504, !344, i64 20512, !344, i64 20520, !344, i64 20528, !344, i64 20536, !344, i64 20544, !344, i64 20552, !344, i64 20560, !344, i64 20568, !344, i64 20576, !344, i64 20584, !344, i64 20592, !344, i64 20600, !344, i64 20608, !344, i64 20616, !344, i64 20624, !344, i64 20632, !344, i64 20640, !344, i64 20648, !344, i64 20656, !344, i64 20664, !344, i64 20672, !344, i64 20680, !344, i64 20688, !344, i64 20696, !344, i64 20704, !344, i64 20712, !344, i64 20720, !344, i64 20728, !344, i64 20736, !344, i64 20744, !344, i64 20752, !344, i64 20760, !344, i64 20768, !344, i64 20776, !344, i64 20784, !344, i64 20792, !344, i64 20800, !344, i64 20808, !344, i64 20816, !344, i64 20824, !344, i64 20832, !344, i64 20840, !344, i64 20848, !344, i64 20856, !344, i64 20864, !344, i64 20872, !344, i64 20880, !344, i64 20888, !344, i64 20896, !344, i64 20904, !344, i64 20912, !344, i64 20920, !344, i64 20928, !344, i64 20936, !344, i64 20944, !344, i64 20952, !344, i64 20960, !344, i64 20968, !344, i64 20976, !344, i64 20984, !344, i64 20992, !344, i64 21000, !344, i64 21008, !344, i64 21016, !344, i64 21024, !344, i64 21032, !344, i64 21040, !344, i64 21048, !344, i64 21056, !344, i64 21064, !344, i64 21072, !344, i64 21080, !344, i64 21088, !344, i64 21096, !344, i64 21104, !344, i64 21112, !344, i64 21120, !344, i64 21128, !344, i64 21136, !344, i64 21144, !344, i64 21152, !344, i64 21160, !344, i64 21168, !344, i64 21176, !344, i64 21184, !344, i64 21192, !344, i64 21200, !344, i64 21208, !344, i64 21216, !344, i64 21224, !344, i64 21232, !344, i64 21240, !344, i64 21248, !344, i64 21256, !344, i64 21264, !344, i64 21272, !344, i64 21280, !344, i64 21288, !344, i64 21296, !344, i64 21304, !344, i64 21312, !344, i64 21320, !344, i64 21328, !344, i64 21336, !344, i64 21344, !344, i64 21352, !344, i64 21360, !344, i64 21368, !344, i64 21376, !344, i64 21384, !344, i64 21392, !344, i64 21400, !344, i64 21408, !344, i64 21416, !344, i64 21424, !344, i64 21432, !344, i64 21440, !344, i64 21448, !344, i64 21456, !344, i64 21464, !344, i64 21472, !344, i64 21480, !344, i64 21488, !344, i64 21496, !344, i64 21504, !344, i64 21512, !344, i64 21520, !344, i64 21528, !344, i64 21536, !344, i64 21544, !344, i64 21552, !344, i64 21560, !344, i64 21568, !344, i64 21576, !344, i64 21584, !344, i64 21592, !344, i64 21600, !344, i64 21608, !344, i64 21616, !344, i64 21624, !344, i64 21632, !344, i64 21640, !344, i64 21648, !344, i64 21656, !344, i64 21664, !344, i64 21672, !344, i64 21680, !344, i64 21688, !344, i64 21696, !344, i64 21704, !344, i64 21712, !344, i64 21720, !344, i64 21728, !344, i64 21736, !344, i64 21744, !344, i64 21752, !344, i64 21760, !344, i64 21768, !344, i64 21776, !344, i64 21784, !344, i64 21792, !344, i64 21800, !344, i64 21808, !344, i64 21816, !344, i64 21824, !344, i64 21832, !344, i64 21840, !344, i64 21848, !344, i64 21856, !344, i64 21864, !344, i64 21872, !344, i64 21880, !344, i64 21888, !344, i64 21896, !344, i64 21904, !344, i64 21912, !344, i64 21920, !344, i64 21928, !344, i64 21936, !344, i64 21944, !344, i64 21952, !344, i64 21960, !344, i64 21968, !344, i64 21976, !344, i64 21984, !344, i64 21992, !344, i64 22000, !344, i64 22008, !344, i64 22016, !344, i64 22024, !344, i64 22032, !344, i64 22040, !344, i64 22048, !344, i64 22056, !344, i64 22064, !344, i64 22072, !344, i64 22080, !344, i64 22088, !344, i64 22096, !344, i64 22104, !344, i64 22112, !344, i64 22120, !344, i64 22128, !344, i64 22136, !344, i64 22144, !344, i64 22152, !344, i64 22160, !344, i64 22168, !344, i64 22176, !344, i64 22184, !344, i64 22192, !344, i64 22200, !344, i64 22208, !344, i64 22216, !344, i64 22224, !344, i64 22232, !344, i64 22240, !344, i64 22248, !344, i64 22256, !344, i64 22264, !344, i64 22272, !344, i64 22280, !344, i64 22288, !344, i64 22296, !344, i64 22304, !344, i64 22312, !344, i64 22320, !344, i64 22328, !344, i64 22336, !344, i64 22344, !344, i64 22352, !344, i64 22360, !344, i64 22368, !344, i64 22376, !344, i64 22384, !344, i64 22392, !344, i64 22400, !344, i64 22408, !344, i64 22416, !344, i64 22424, !344, i64 22432, !344, i64 22440, !344, i64 22448, !344, i64 22456, !344, i64 22464, !344, i64 22472, !344, i64 22480, !344, i64 22488, !344, i64 22496, !344, i64 22504, !344, i64 22512, !344, i64 22520, !344, i64 22528, !344, i64 22536, !344, i64 22544, !344, i64 22552, !344, i64 22560, !344, i64 22568, !344, i64 22576, !344, i64 22584, !344, i64 22592, !344, i64 22600, !344, i64 22608, !344, i64 22616, !344, i64 22624, !344, i64 22632, !344, i64 22640, !344, i64 22648, !344, i64 22656, !344, i64 22664, !344, i64 22672, !344, i64 22680, !344, i64 22688, !344, i64 22696, !344, i64 22704, !344, i64 22712, !344, i64 22720, !344, i64 22728, !344, i64 22736, !344, i64 22744, !344, i64 22752, !344, i64 22760, !344, i64 22768, !344, i64 22776, !344, i64 22784, !344, i64 22792, !344, i64 22800, !344, i64 22808, !344, i64 22816, !344, i64 22824, !344, i64 22832, !344, i64 22840, !344, i64 22848, !344, i64 22856, !344, i64 22864, !344, i64 22872, !344, i64 22880, !344, i64 22888, !344, i64 22896, !344, i64 22904, !344, i64 22912, !344, i64 22920, !344, i64 22928, !344, i64 22936, !344, i64 22944, !344, i64 22952, !344, i64 22960, !344, i64 22968, !344, i64 22976, !344, i64 22984, !344, i64 22992, !344, i64 23000, !344, i64 23008, !344, i64 23016, !344, i64 23024, !344, i64 23032, !344, i64 23040, !344, i64 23048, !344, i64 23056, !344, i64 23064, !344, i64 23072, !344, i64 23080, !344, i64 23088, !344, i64 23096, !344, i64 23104, !344, i64 23112, !184, i64 23120, !184, i64 23128, !345, i64 23136, !346, i64 23144, !346, i64 23152, !347, i64 23160, !356, i64 23200, !166, i64 23240, !365, i64 23264, !368, i64 23320, !370, i64 23344, !372, i64 23368, !5, i64 23408, !5, i64 23412, !5, i64 23416, !5, i64 23420, !5, i64 23424, !5, i64 23428, !5, i64 23432, !5, i64 23436, !5, i64 23440, !5, i64 23444, !5, i64 23448, !5, i64 23452, !376, i64 23456, !381, i64 23728, !383, i64 23736, !388, i64 23760, !395, i64 23768, !396, i64 23792, !405, i64 23832, !410, i64 23880}
!10 = !{!"_ZTSN4llvm14RefCountedBaseIN5clang10ASTContextEEE", !5, i64 0}
!11 = !{!"_ZTSN4llvm11SmallVectorIPN5clang4TypeELj0EEE", !12, i64 0}
!12 = !{!"_ZTSN4llvm15SmallVectorImplIPN5clang4TypeEEE", !13, i64 0}
!13 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN5clang4TypeELb1EEE", !14, i64 0}
!14 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN5clang4TypeEvEE", !15, i64 0}
!15 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !16, i64 0, !5, i64 8, !5, i64 12}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"_ZTSN4llvm10FoldingSetIN5clang8ExtQualsEEE", !18, i64 0}
!18 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang8ExtQualsEEES3_EE", !19, i64 0}
!19 = !{!"_ZTSN4llvm14FoldingSetBaseE", !20, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"any p2 pointer", !16, i64 0}
!21 = !{!"_ZTSN4llvm10FoldingSetIN5clang11ComplexTypeEEE", !22, i64 0}
!22 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang11ComplexTypeEEES3_EE", !19, i64 0}
!23 = !{!"_ZTSN4llvm10FoldingSetIN5clang11PointerTypeEEE", !24, i64 0}
!24 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang11PointerTypeEEES3_EE", !19, i64 0}
!25 = !{!"_ZTSN4llvm10FoldingSetIN5clang12AdjustedTypeEEE", !26, i64 0}
!26 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang12AdjustedTypeEEES3_EE", !19, i64 0}
!27 = !{!"_ZTSN4llvm10FoldingSetIN5clang16BlockPointerTypeEEE", !28, i64 0}
!28 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang16BlockPointerTypeEEES3_EE", !19, i64 0}
!29 = !{!"_ZTSN4llvm10FoldingSetIN5clang19LValueReferenceTypeEEE", !30, i64 0}
!30 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19LValueReferenceTypeEEES3_EE", !19, i64 0}
!31 = !{!"_ZTSN4llvm10FoldingSetIN5clang19RValueReferenceTypeEEE", !32, i64 0}
!32 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19RValueReferenceTypeEEES3_EE", !19, i64 0}
!33 = !{!"_ZTSN4llvm10FoldingSetIN5clang17MemberPointerTypeEEE", !34, i64 0}
!34 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17MemberPointerTypeEEES3_EE", !19, i64 0}
!35 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang17ConstantArrayTypeERNS1_10ASTContextEEE", !36, i64 0, !37, i64 16}
!36 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang17ConstantArrayTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!37 = !{!"p1 _ZTSN5clang10ASTContextE", !16, i64 0}
!38 = !{!"_ZTSN4llvm10FoldingSetIN5clang19IncompleteArrayTypeEEE", !39, i64 0}
!39 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19IncompleteArrayTypeEEES3_EE", !19, i64 0}
!40 = !{!"_ZTSSt6vectorIPN5clang17VariableArrayTypeESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIPN5clang17VariableArrayTypeESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIPN5clang17VariableArrayTypeESaIS2_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIPN5clang17VariableArrayTypeESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p2 _ZTSN5clang17VariableArrayTypeE", !20, i64 0}
!45 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang23DependentSizedArrayTypeERNS1_10ASTContextEEE", !46, i64 0, !37, i64 16}
!46 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang23DependentSizedArrayTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!47 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang27DependentSizedExtVectorTypeERNS1_10ASTContextEEE", !48, i64 0, !37, i64 16}
!48 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang27DependentSizedExtVectorTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!49 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang25DependentAddressSpaceTypeERNS1_10ASTContextEEE", !50, i64 0, !37, i64 16}
!50 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang25DependentAddressSpaceTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!51 = !{!"_ZTSN4llvm10FoldingSetIN5clang10VectorTypeEEE", !52, i64 0}
!52 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10VectorTypeEEES3_EE", !19, i64 0}
!53 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang19DependentVectorTypeERNS1_10ASTContextEEE", !54, i64 0, !37, i64 16}
!54 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang19DependentVectorTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!55 = !{!"_ZTSN4llvm10FoldingSetIN5clang18ConstantMatrixTypeEEE", !56, i64 0}
!56 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang18ConstantMatrixTypeEEES3_EE", !19, i64 0}
!57 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang24DependentSizedMatrixTypeERNS1_10ASTContextEEE", !58, i64 0, !37, i64 16}
!58 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang24DependentSizedMatrixTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!59 = !{!"_ZTSN4llvm10FoldingSetIN5clang19FunctionNoProtoTypeEEE", !60, i64 0}
!60 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19FunctionNoProtoTypeEEES3_EE", !19, i64 0}
!61 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang17FunctionProtoTypeERNS1_10ASTContextEEE", !62, i64 0, !37, i64 16}
!62 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang17FunctionProtoTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!63 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang23DependentTypeOfExprTypeERNS1_10ASTContextEEE", !64, i64 0, !37, i64 16}
!64 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang23DependentTypeOfExprTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!65 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang21DependentDecltypeTypeERNS1_10ASTContextEEE", !66, i64 0, !37, i64 16}
!66 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang21DependentDecltypeTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!67 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang16PackIndexingTypeERNS1_10ASTContextEEE", !68, i64 0, !37, i64 16}
!68 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang16PackIndexingTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!69 = !{!"_ZTSN4llvm10FoldingSetIN5clang20TemplateTypeParmTypeEEE", !70, i64 0}
!70 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang20TemplateTypeParmTypeEEES3_EE", !19, i64 0}
!71 = !{!"_ZTSN4llvm10FoldingSetIN5clang17ObjCTypeParamTypeEEE", !72, i64 0}
!72 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17ObjCTypeParamTypeEEES3_EE", !19, i64 0}
!73 = !{!"_ZTSN4llvm10FoldingSetIN5clang25SubstTemplateTypeParmTypeEEE", !74, i64 0}
!74 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang25SubstTemplateTypeParmTypeEEES3_EE", !19, i64 0}
!75 = !{!"_ZTSN4llvm10FoldingSetIN5clang29SubstTemplateTypeParmPackTypeEEE", !76, i64 0}
!76 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang29SubstTemplateTypeParmPackTypeEEES3_EE", !19, i64 0}
!77 = !{!"_ZTSN4llvm10FoldingSetIN5clang28SubstBuiltinTemplatePackTypeEEE", !78, i64 0}
!78 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang28SubstBuiltinTemplatePackTypeEEES3_EE", !19, i64 0}
!79 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang26TemplateSpecializationTypeERNS1_10ASTContextEEE", !80, i64 0, !37, i64 16}
!80 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang26TemplateSpecializationTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!81 = !{!"_ZTSN4llvm10FoldingSetIN5clang9ParenTypeEEE", !82, i64 0}
!82 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang9ParenTypeEEES3_EE", !19, i64 0}
!83 = !{!"_ZTSN4llvm10FoldingSetIN5clang28TagTypeFoldingSetPlaceholderEEE", !84, i64 0}
!84 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang28TagTypeFoldingSetPlaceholderEEES3_EE", !19, i64 0}
!85 = !{!"_ZTSN4llvm10FoldingSetIN5clang21FoldingSetPlaceholderINS1_19UnresolvedUsingTypeEEEEE", !86, i64 0}
!86 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21FoldingSetPlaceholderINS2_19UnresolvedUsingTypeEEEEES5_EE", !19, i64 0}
!87 = !{!"_ZTSN4llvm10FoldingSetIN5clang9UsingTypeEEE", !88, i64 0}
!88 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang9UsingTypeEEES3_EE", !19, i64 0}
!89 = !{!"_ZTSN4llvm10FoldingSetIN5clang21FoldingSetPlaceholderINS1_11TypedefTypeEEEEE", !90, i64 0}
!90 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21FoldingSetPlaceholderINS2_11TypedefTypeEEEEES5_EE", !19, i64 0}
!91 = !{!"_ZTSN4llvm10FoldingSetIN5clang17DependentNameTypeEEE", !92, i64 0}
!92 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17DependentNameTypeEEES3_EE", !19, i64 0}
!93 = !{!"_ZTSN4llvm10FoldingSetIN5clang17PackExpansionTypeEEE", !94, i64 0}
!94 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang17PackExpansionTypeEEES3_EE", !19, i64 0}
!95 = !{!"_ZTSN4llvm10FoldingSetIN5clang18ObjCObjectTypeImplEEE", !96, i64 0}
!96 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang18ObjCObjectTypeImplEEES3_EE", !19, i64 0}
!97 = !{!"_ZTSN4llvm10FoldingSetIN5clang21ObjCObjectPointerTypeEEE", !98, i64 0}
!98 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21ObjCObjectPointerTypeEEES3_EE", !19, i64 0}
!99 = !{!"_ZTSN4llvm10FoldingSetIN5clang18UnaryTransformTypeEEE", !100, i64 0}
!100 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang18UnaryTransformTypeEEES3_EE", !19, i64 0}
!101 = !{!"_ZTSN4llvm8DenseMapINS_16FoldingSetNodeIDEPN5clang8AutoTypeENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEEE", !102, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!102 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_16FoldingSetNodeIDEPN5clang8AutoTypeEEE", !16, i64 0}
!103 = !{!"p1 int", !16, i64 0}
!104 = !{!"_ZTSN4llvm10FoldingSetIN5clang33DeducedTemplateSpecializationTypeEEE", !105, i64 0}
!105 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang33DeducedTemplateSpecializationTypeEEES3_EE", !19, i64 0}
!106 = !{!"_ZTSN4llvm10FoldingSetIN5clang10AtomicTypeEEE", !107, i64 0}
!107 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10AtomicTypeEEES3_EE", !19, i64 0}
!108 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang14AttributedTypeERNS1_10ASTContextEEE", !109, i64 0, !37, i64 16}
!109 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang14AttributedTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!110 = !{!"_ZTSN4llvm10FoldingSetIN5clang8PipeTypeEEE", !111, i64 0}
!111 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang8PipeTypeEEES3_EE", !19, i64 0}
!112 = !{!"_ZTSN4llvm10FoldingSetIN5clang10BitIntTypeEEE", !113, i64 0}
!113 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10BitIntTypeEEES3_EE", !19, i64 0}
!114 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang19DependentBitIntTypeERNS1_10ASTContextEEE", !115, i64 0, !37, i64 16}
!115 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang19DependentBitIntTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!116 = !{!"_ZTSN4llvm10FoldingSetIN5clang20BTFTagAttributedTypeEEE", !117, i64 0}
!117 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang20BTFTagAttributedTypeEEES3_EE", !19, i64 0}
!118 = !{!"_ZTSN4llvm10FoldingSetIN5clang20OverflowBehaviorTypeEEE", !119, i64 0}
!119 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang20OverflowBehaviorTypeEEES3_EE", !19, i64 0}
!120 = !{!"_ZTSN4llvm10FoldingSetIN5clang26HLSLAttributedResourceTypeEEE", !121, i64 0}
!121 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang26HLSLAttributedResourceTypeEEES3_EE", !19, i64 0}
!122 = !{!"_ZTSN4llvm10FoldingSetIN5clang19HLSLInlineSpirvTypeEEE", !123, i64 0}
!123 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19HLSLInlineSpirvTypeEEES3_EE", !19, i64 0}
!124 = !{!"_ZTSN4llvm10FoldingSetIN5clang19CountAttributedTypeEEE", !125, i64 0}
!125 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang19CountAttributedTypeEEES3_EE", !19, i64 0}
!126 = !{!"_ZTSN4llvm10FoldingSetIN5clang21QualifiedTemplateNameEEE", !127, i64 0}
!127 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21QualifiedTemplateNameEEES3_EE", !19, i64 0}
!128 = !{!"_ZTSN4llvm10FoldingSetIN5clang21DependentTemplateNameEEE", !129, i64 0}
!129 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang21DependentTemplateNameEEES3_EE", !19, i64 0}
!130 = !{!"_ZTSN4llvm10FoldingSetIN5clang32SubstTemplateTemplateParmStorageEEE", !131, i64 0}
!131 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang32SubstTemplateTemplateParmStorageEEES3_EE", !19, i64 0}
!132 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang36SubstTemplateTemplateParmPackStorageERNS1_10ASTContextEEE", !133, i64 0, !37, i64 16}
!133 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang36SubstTemplateTemplateParmPackStorageERNS2_10ASTContextEEES3_EE", !19, i64 0}
!134 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang22DeducedTemplateStorageERNS1_10ASTContextEEE", !135, i64 0, !37, i64 16}
!135 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang22DeducedTemplateStorageERNS2_10ASTContextEEES3_EE", !19, i64 0}
!136 = !{!"_ZTSN4llvm20ContextualFoldingSetIN5clang18ArrayParameterTypeERNS1_10ASTContextEEE", !137, i64 0, !37, i64 16}
!137 = !{!"_ZTSN4llvm14FoldingSetImplINS_20ContextualFoldingSetIN5clang18ArrayParameterTypeERNS2_10ASTContextEEES3_EE", !19, i64 0}
!138 = !{!"_ZTSSt5arrayIPN5clang4TypeELm3EE", !6, i64 0}
!139 = !{!"_ZTSN4llvm10FoldingSetIN5clang25NamespaceAndPrefixStorageEEE", !140, i64 0}
!140 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang25NamespaceAndPrefixStorageEEES3_EE", !19, i64 0}
!141 = !{!"_ZTSN4llvm8DenseMapIPKN5clang10RecordDeclEPKNS1_15ASTRecordLayoutENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEE", !142, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!142 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang10RecordDeclEPKNS2_15ASTRecordLayoutEEE", !16, i64 0}
!143 = !{!"_ZTSN4llvm8DenseMapIPKN5clang17ObjCInterfaceDeclEPKNS1_15ASTRecordLayoutENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEE", !144, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!144 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang17ObjCInterfaceDeclEPKNS2_15ASTRecordLayoutEEE", !16, i64 0}
!145 = !{!"_ZTSN4llvm8DenseMapIPKN5clang4TypeENS1_8TypeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEE", !146, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!146 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang4TypeENS2_8TypeInfoEEE", !16, i64 0}
!147 = !{!"_ZTSN4llvm8DenseMapIPKN5clang4TypeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEE", !148, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!148 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang4TypeEjEE", !16, i64 0}
!149 = !{!"_ZTSN4llvm8DenseMapIPKN5clang13CXXRecordDeclENS1_13LazyOffsetPtrINS1_4DeclENS1_12GlobalDeclIDEXadL_ZNS1_17ExternalASTSource15GetExternalDeclES7_EEEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEE", !150, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!150 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang13CXXRecordDeclENS2_13LazyOffsetPtrINS2_4DeclENS2_12GlobalDeclIDEXadL_ZNS2_17ExternalASTSource15GetExternalDeclES8_EEEEEE", !16, i64 0}
!151 = !{!"_ZTSN4llvm8DenseMapIPN5clang17ObjCContainerDeclEPNS1_12ObjCImplDeclENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !152, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!152 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN5clang17ObjCContainerDeclEPNS2_12ObjCImplDeclEEE", !16, i64 0}
!153 = !{!"_ZTSN4llvm8DenseMapIPKN5clang14ObjCMethodDeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEE", !154, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!154 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang14ObjCMethodDeclES5_EE", !16, i64 0}
!155 = !{!"_ZTSN4llvm8DenseMapIPKN5clang7VarDeclENS1_16BlockVarCopyInitENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEE", !156, i64 0, !103, i64 8, !5, i64 16, !5, i64 20}
!156 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKN5clang7VarDeclENS2_16BlockVarCopyInitEEE", !16, i64 0}
!157 = !{!"_ZTSN4llvm10FoldingSetIN5clang10MSGuidDeclEEE", !158, i64 0}
!158 = !{!"_ZTSN4llvm14FoldingSetImplINS_10FoldingSetIN5clang10MSGuidDeclEEES3_EE", !19, i64 0}
end_hunk_1
