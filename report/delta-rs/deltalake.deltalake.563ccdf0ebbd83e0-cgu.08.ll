inline.NumInlined: 4980
inline.NumDeleted: 1569
begin_hunk_0_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake:bb.a
  %.val4.i.i = load i64, ptr %i.ad, align 8, !alias.scope !14314, !noalias !14313, !noundef !17
  %i.ae = icmp eq i64 %.val2.i.i, %.val4.i.i
  br i1 %i.ae, label %bb.i, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val3.i.i = load ptr, ptr %i.af, align 8, !alias.scope !14314, !noalias !14313, !nonnull !17, !noundef !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.val.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !14313, !noalias !14314, !nonnull !17, !noundef !17
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val.i.i, ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i), !inline_history !14311
  br i1 %i.ah, label %bb.b, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.g
  %.mux.i = and i1 %.not.i.i, %i.ab
  br i1 %.mux.i, label %bb.b, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.e, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %.lr.ph, %bb.f, %bb.h, %bb.c, %bb.i, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.i ], [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.f ], [ false, %.lr.ph ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.e ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl36UserDefinedTypeCompositeAttributeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6
  %.sroa.01.08 = phi i64 [ %i.ab, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.08 ; 4 uses
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.sroa.01.08 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14323)
  %i.d = load i64, ptr %i.b, align 8, !range !753, !alias.scope !14325, !noalias !14326, !noundef !17 ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  %i.f = add i64 %i.d, -9223372036854775807
  %i.g = select i1 %i.e, i64 %i.f, i64 0          ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !range !753, !alias.scope !14326, !noalias !14325, !noundef !17 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  %i.j = add i64 %i.h, -9223372036854775807
  %i.k = select i1 %i.i, i64 %i.j, i64 0
  %i.l = icmp eq i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %bb.c, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !14325, !noalias !14326, !noundef !17 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !14326, !noalias !14325, !noundef !17
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !14326, !noalias !14325, !nonnull !17, !noundef !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14325, !noalias !14326, !nonnull !17, !noundef !17
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %i.t, i64 %i.o), !noalias !14327
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = load i32, ptr %i.x, align 8, !range !13061, !alias.scope !14325, !noalias !14326, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !range !13061, !alias.scope !14326, !noalias !14325, !noundef !17
  %.sroa.0.0.shrunk.i.i.not = icmp eq i32 %i.aa, %i.y
  br i1 %.sroa.0.0.shrunk.i.i.not, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.d, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.d ], [ false, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6 ]
  ret i1 %.lcssa

_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6: ; preds = %bb.b, %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.ab = add nuw i64 %.sroa.01.08, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl5OwnerNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.c) #45 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %2
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.d, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.06 ; 5 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %.sroa.01.06 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14336)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !14338, !noalias !14339, !noundef !17 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !14339, !noalias !14338, !noundef !17
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !14339, !noalias !14338, !nonnull !17, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !14338, !noalias !14339, !nonnull !17, !noundef !17
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !14340
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load i8, ptr %i.o, align 8, !range !980, !alias.scope !14338, !noalias !14339, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = load i8, ptr %i.q, align 8, !range !980, !alias.scope !14339, !noalias !14338, !noundef !17
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !14338, !noalias !14339, !noundef !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14339, !noalias !14338, !noundef !17
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !14339, !noalias !14338, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !14338, !noalias !14339, !nonnull !17, !noundef !17
  %bcmp4.i.i = tail call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull %i.z, i64 %i.u), !noalias !14340
  %.not = icmp eq i32 %bcmp4.i.i, 0
  br i1 %.not, label %bb.b, label %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.c, %.lr.ph, %bb.d, %bb.e, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_options14KeyValueOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTReINtNtB9_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6, label %.lr.ph

bb.b:                                             ; preds = %bb.e, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.b = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.08 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.08 ; 5 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.sroa.01.08 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14344)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !14341, !noalias !14344, !noundef !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !14344, !noalias !14341, !noundef !17
  %i.g = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.g, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph
  %.val.i.a = load ptr, ptr %i.d, align 8, !alias.scope !14344, !noalias !14341, !nonnull !17, !noundef !17
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !14341, !noalias !14344, !nonnull !17, !noundef !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i, ptr nonnull readonly %.val.i.a, i64 %.val1.i), !alias.scope !14346, !noalias !14353
  %.not.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not.i, label %bb.c, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6

bb.c:                                             ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14362)
  %i.j = load i64, ptr %i.h, align 8, !range !35, !alias.scope !14364, !noalias !14365, !noundef !17
  %.not.i.i.i = icmp eq i64 %i.j, -9223372036854775808 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !range !35, !alias.scope !14365, !noalias !14364, !noundef !17
  %i.l = icmp eq i64 %i.k, -9223372036854775808   ; 2 uses
  %brmerge.i.i.i = or i1 %.not.i.i.i, %i.l
  br i1 %brmerge.i.i.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val2.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !14364, !noalias !14365, !noundef !17 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val4.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !14365, !noalias !14364, !noundef !17
  %i.o = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.o, label %bb.e, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val3.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !14365, !noalias !14364, !nonnull !17, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !14364, !noalias !14365, !nonnull !17, !noundef !17
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i), !noalias !14366
  %i.r = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  %.mux.i.i.i = and i1 %.not.i.i.i, %i.l
  br i1 %.mux.i.i.i, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread6: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.d, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i, %.lr.ph, %bb.e, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i ], [ false, %bb.d ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTReINtNtB7_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2f_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1 = load i64, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val3 = load i64, ptr %i.b, align 8, !noundef !17
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !17, !noundef !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.e, align 8, !nonnull !17, !noundef !17
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br i1 %i.f, label %bb.b, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14370)
  %i.g = load i64, ptr %0, align 8, !range !1325, !alias.scope !14367, !noalias !14370, !noundef !17 ; 4 uses
  %i.h = icmp ne i64 %i.g, 4
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i64 %i.g, -3
  %i.j = icmp samesign ugt i64 %i.g, 2
  %i.k = select i1 %i.j, i64 %i.i, i64 1          ; 2 uses
  %i.l = load i64, ptr %1, align 8, !range !1325, !alias.scope !14370, !noalias !14367, !noundef !17 ; 4 uses
  %i.m = icmp ne i64 %i.l, 4
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i64 %i.l, -3
  %i.o = icmp samesign ugt i64 %i.l, 2
  %i.p = select i1 %i.o, i64 %i.n, i64 1
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %bb.c, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  switch i64 %i.k, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !14367, !noalias !14370, !noundef !17 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !14370, !noalias !14367, !noundef !17
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.x, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14375)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i8, ptr %i.w, align 8, !range !519, !alias.scope !14377, !noalias !14378, !noundef !17
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = load i8, ptr %i.y, align 8, !range !519, !alias.scope !14378, !noalias !14377, !noundef !17
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !14377, !noalias !14378, !noundef !17 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !14378, !noalias !14377, !noundef !17
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !14378, !noalias !14377, !nonnull !17, !noundef !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !14377, !noalias !14378, !nonnull !17, !noundef !17
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.ah, i64 %i.ac), !noalias !14379
  %i.ak = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ak, label %bb.i, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load i32, ptr %i.al, align 8, !range !13061, !alias.scope !14377, !noalias !14378, !noundef !17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 1114112
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !range !13061, !alias.scope !14378, !noalias !14377, !noundef !17 ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp eq i32 %i.ao, 1114112
  br i1 %i.aq, label %bb.l, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not4.i.i = icmp eq i64 %i.g, 2                ; 2 uses
  %i.ar = icmp eq i64 %i.l, 2                     ; 2 uses
  %brmerge.i.i = or i1 %.not4.i.i, %i.ar
  %.mux.i.i = and i1 %.not4.i.i, %i.ar
  br i1 %brmerge.i.i, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call fastcc noundef zeroext i1 @_RNvXs2T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_25AlterTypeAddValuePositionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) #45
  br label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14383)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !14385, !noalias !14386, !noundef !17 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !14386, !noalias !14385, !noundef !17
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !14386, !noalias !14385, !nonnull !17, !noundef !17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !14385, !noalias !14386, !nonnull !17, !noundef !17
  %bcmp.i6.i = tail call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %i.az, i64 %i.au), !noalias !14387
  %i.bc = icmp eq i32 %bcmp.i6.i, 0
  br i1 %i.bc, label %bb.p, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !range !13061, !alias.scope !14385, !noalias !14386, !noundef !17 ; 2 uses
  %.not.i7.i = icmp eq i32 %i.be, 1114112
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !range !13061, !alias.scope !14386, !noalias !14385, !noundef !17 ; 2 uses
  br i1 %.not.i7.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.s, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = icmp eq i32 %i.bg, 1114112
  br i1 %i.bi, label %bb.s, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !14385, !noalias !14386, !noundef !17 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !14386, !noalias !14385, !noundef !17
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !14386, !noalias !14385, !nonnull !17, !noundef !17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !14385, !noalias !14386, !nonnull !17, !noundef !17
  %bcmp6.i.i = tail call i32 @bcmp(ptr nonnull %i.br, ptr nonnull %i.bp, i64 %i.bk), !noalias !14387
end_hunk_0
