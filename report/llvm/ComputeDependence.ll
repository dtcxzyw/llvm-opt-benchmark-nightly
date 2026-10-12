Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComputeDependence?download=true
inline.NumInlined: 2047
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5clang17computeDependenceEPNS_16ExplicitCastExprE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.g = load i16, ptr %i.f, align 1
  %i.h = trunc i16 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 4
  %.not.i6.i.i = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.k = and i8 %i.h, 19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 8, !tbaa !16
  %i.m = and i64 %.sroa.0.0.copyload.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  %i.q = load i16, ptr %i.p, align 1
  %i.r = trunc i16 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 4
  %.not.i6.i.i6 = icmp eq i8 %i.s, 0
  %i.t = select i1 %.not.i6.i.i6, i8 0, i8 12
  %i.u = and i8 %i.r, 18
  %i.v = or disjoint i8 %i.j, %i.k
  %i.w = or i8 %i.v, %i.u
  %i.x = or i8 %i.w, %i.t                         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = load i24, ptr %i.z, align 8
  %i.ab = lshr i24 %i.aa, 14
  %i.ac = trunc i24 %i.ab to i8
  %i.ad = and i8 %i.ac, 27
  %i.ae = or i8 %i.ad, %i.x
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ %i.x, %bb.a ], [ %i.ae, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_14BinaryOperatorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load i24, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load i24, ptr %i.e, align 8
  %i.g = or i24 %i.f, %i.c
  %i.h = lshr i24 %i.g, 14
  %i.i = trunc i24 %i.h to i8
  %i.j = and i8 %i.i, 31
  ret i8 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_19ConditionalOperatorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load i24, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load i24, ptr %i.e, align 8
  %i.g = or i24 %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = load i24, ptr %i.i, align 8
  %i.k = or i24 %i.g, %i.j
  %i.l = lshr i24 %i.k, 14
  %i.m = trunc i24 %i.l to i8
  %i.n = and i8 %i.m, 31
  ret i8 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_25BinaryConditionalOperatorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load i24, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load i24, ptr %i.e, align 8
  %i.g = or i24 %i.f, %i.c
  %i.h = lshr i24 %i.g, 14
  %i.i = trunc i24 %i.h to i8
  %i.j = and i8 %i.i, 31
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 31) i8 @_ZN5clang17computeDependenceEPNS_8StmtExprEj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
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
  %i.k = or disjoint i8 %i.i, %i.j                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !495  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit.thread, label %_ZN5clang12CompoundStmt9body_backEv.exit

_ZN5clang12CompoundStmt9body_backEv.exit:         ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = add i32 %i.o, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5clang12CompoundStmt9body_backEv.exit
  %i.v = load i16, ptr %i.u, align 8
  %i.w = and i16 %i.v, 511
  %i.x = add nsw i16 %i.w, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.x, 133
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit: ; preds = %bb.b
  %i.y = tail call noundef ptr @_ZNK5clang9ValueStmt11getExprStmtEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #8 ; 2 uses
  %.not7 = icmp eq ptr %i.y, null
  br i1 %.not7, label %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit
  %i.z = load i24, ptr %i.y, align 8
  %i.aa = lshr i24 %i.z, 14
  %i.ab = trunc i24 %i.aa to i8
  %i.ac = or i8 %i.k, %i.ab
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit.thread: ; preds = %bb.a, %_ZN5clang12CompoundStmt9body_backEv.exit, %bb.b, %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit, %bb.c
  %.0 = phi i8 [ %i.ac, %bb.c ], [ %i.k, %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueStmtENS1_4StmtEEEDaPT0_.exit ], [ %i.k, %bb.b ], [ %i.k, %_ZN5clang12CompoundStmt9body_backEv.exit ], [ %i.k, %bb.a ] ; 2 uses
  %.not8 = icmp eq i32 %1, 0
  %i.ad = or i8 %.0, 10
  %spec.select = select i1 %.not8, i8 %.0, i8 %i.ad
  %i.ae = and i8 %spec.select, 30
  ret i8 %i.ae
}

declare noundef ptr @_ZNK5clang9ValueStmt11getExprStmtEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_17ConvertVectorExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !497
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !16
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.g = load i16, ptr %i.f, align 1
  %i.h = trunc i16 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 4
  %.not.i6.i.i = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.k = and i8 %i.h, 19
  %i.l = or disjoint i8 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !498
  %i.o = load i24, ptr %i.n, align 8
  %i.p = lshr i24 %i.o, 14
  %i.q = trunc i24 %i.p to i8
  %i.r = and i8 %i.q, 31
  %i.s = or i8 %i.l, %i.r                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i3 = load i64, ptr %i.t, align 8, !tbaa !16
  %i.u = and i64 %.sroa.0.0.copyload.i3, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 17
  %i.y = load i16, ptr %i.x, align 1
  %i.z = and i16 %i.y, 4
  %.not = icmp eq i16 %i.z, 0
  %i.aa = and i8 %i.s, 27
  %spec.select = select i1 %.not, i8 %i.aa, i8 %i.s
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_10ChooseExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load i24, ptr %i.b, align 8              ; 3 uses
  %i.d = and i24 %i.c, 196608
  %.not = icmp eq i24 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %2 = load ptr, ptr %1, align 8, !tbaa !37
  %3 = load i24, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = load i24, ptr %5, align 8
  %i.e = or i24 %3, %6
  %i.f = or i24 %i.e, %i.c
  %i.g = lshr i24 %i.f, 14
  %i.h = trunc i24 %i.g to i8
  %i.i = and i8 %i.h, 17
  %i.j = or disjoint i8 %i.i, 14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %7 = lshr i24 %i.c, 14
  %8 = trunc i24 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = load i24, ptr %10, align 8
  %i.k = lshr i24 %11, 14
  %i.l = trunc i24 %i.k to i8                     ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = load i24, ptr %13, align 8
  %i.m = lshr i24 %14, 14
  %i.n = trunc i24 %i.m to i8                     ; 2 uses
  %15 = load i24, ptr %0, align 8
  %16 = and i24 %15, 524288
  %.not16 = icmp eq i24 %16, 0                    ; 2 uses
  %spec.select.v = select i1 %.not16, i8 %i.n, i8 %i.l ; 2 uses
  %spec.select15 = select i1 %.not16, i8 %i.l, i8 %i.n
  %17 = and i8 %spec.select.v, 12
  %18 = or i8 %spec.select15, %8
  %19 = or i8 %18, %spec.select.v
  %i.o = and i8 %19, 19
  %i.p = or disjoint i8 %i.o, %17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.j, %bb.b ], [ %i.p, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_13ParenListExprE(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 2305843009213693951
  %i.f = and i64 %i.e, 2305843009213693951        ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 3
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, 4611686018427387900
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %.01012.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.013.epil = phi ptr [ %i.o, %.lr.ph.epil ], [ %.013.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01012.epil = phi i8 [ %i.n, %.lr.ph.epil ], [ %.01012.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.i = load ptr, ptr %.013.epil, align 8, !tbaa !43
  %i.j = load i24, ptr %i.i, align 8
  %i.k = lshr i24 %i.j, 14
  %i.l = trunc i24 %i.k to i8
  %i.m = and i8 %i.l, 31
  %i.n = or i8 %i.m, %.01012.epil                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !499

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.010.lcssa = phi i8 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil ]
  ret i8 %.010.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 5 uses
  %.01012 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = load ptr, ptr %.013, align 8, !tbaa !43
  %i.q = load i24, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = load i24, ptr %i.s, align 8
  %i.u = or i24 %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = load i24, ptr %i.w, align 8
  %i.y = or i24 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = load i24, ptr %i.aa, align 8
  %i.ac = or i24 %i.y, %i.ab
  %i.ad = lshr i24 %i.ac, 14
  %i.ae = trunc i24 %i.ad to i8
  %i.af = and i8 %i.ae, 31
  %i.ag = or i8 %i.af, %.01012                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.013, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_9VAArgExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !16
  %i.d = and i64 %.sroa.0.0.copyload.i, -16
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = load i16, ptr %i.g, align 1
  %i.i = trunc i16 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 4
  %.not.i6.i.i = icmp eq i8 %i.j, 0
  %i.k = select i1 %.not.i6.i.i, i8 0, i8 12
  %i.l = and i8 %i.i, 19
  %i.m = or disjoint i8 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !502
  %i.p = load i24, ptr %i.o, align 8
  %i.q = lshr i24 %i.p, 14
  %i.r = trunc i24 %i.q to i8
  %i.s = and i8 %i.r, 27
  %i.t = or i8 %i.m, %i.s
  ret i8 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 19) i8 @_ZN5clang17computeDependenceEPNS_10NoInitExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = trunc i16 %i.f to i8
  %i.h = and i8 %i.g, 18
  ret i8 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 28) i8 @_ZN5clang17computeDependenceEPNS_17ArrayInitLoopExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load i24, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = load i24, ptr %i.e, align 8
  %i.g = or i24 %i.f, %i.c
  %i.h = lshr i24 %i.g, 14
  %i.i = trunc i24 %i.h to i8
  %i.j = and i8 %i.i, 25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !16
  %i.l = and i64 %.sroa.0.0.copyload.i, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  %i.p = load i16, ptr %i.o, align 1
  %i.q = trunc i16 %i.p to i8
  %i.r = and i8 %i.q, 2
  %spec.select = or disjoint i8 %i.r, %i.j
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 3) i8 @_ZN5clang17computeDependenceEPNS_21ImplicitValueInitExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = trunc i16 %i.f to i8
  %i.h = and i8 %i.g, 2
  ret i8 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_20ExtVectorElementExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504
  %i.c = load i24, ptr %i.b, align 8
  %i.d = lshr i24 %i.c, 14
  %i.e = trunc i24 %i.d to i8
  %i.f = and i8 %i.e, 31
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_17MatrixElementExprE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !506
  %i.c = load i24, ptr %i.b, align 8
  %i.d = lshr i24 %i.c, 14
  %i.e = trunc i24 %i.d to i8
  %i.f = and i8 %i.e, 31
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 32) i8 @_ZN5clang17computeDependenceEPNS_9BlockExprEb(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
