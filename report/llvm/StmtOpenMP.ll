Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StmtOpenMP?download=true
inline.NumInlined: 3456
inline.NumDeleted: 765
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang11OMPChildren6CreateEPvN4llvm8ArrayRefIPNS_9OMPClauseEEEPNS_4StmtEj:bb.a
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = icmp ne ptr %3, null                     ; 2 uses
  %i.c = zext i1 %i.b to i8
  store i32 %i.a, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = icmp ugt i64 %2, 1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr readonly align 8 %1, i64 %.idx.i.i, i1 false)
  br label %_ZN5clang11OMPChildren10setClausesEN4llvm8ArrayRefIPNS_9OMPClauseEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.d, label %_ZN5clang11OMPChildren10setClausesEN4llvm8ArrayRefIPNS_9OMPClauseEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !13
  store ptr %i.i, ptr %i.f, align 8, !tbaa !13
  br label %_ZN5clang11OMPChildren10setClausesEN4llvm8ArrayRefIPNS_9OMPClauseEEE.exit

_ZN5clang11OMPChildren10setClausesEN4llvm8ArrayRefIPNS_9OMPClauseEEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5clang11OMPChildren10setClausesEN4llvm8ArrayRefIPNS_9OMPClauseEEE.exit
  %i.j = and i64 %2, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = zext i32 %4 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  store ptr %3, ptr %i.m, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5clang11OMPChildren10setClausesEN4llvm8ArrayRefIPNS_9OMPClauseEEE.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang22OMPExecutableDirective21isStandaloneDirectiveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %bb.b [
    i16 176, label %.critedge
    i16 175, label %.critedge
    i16 171, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !18, !range !27, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a, %bb.a, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang22OMPExecutableDirective18getStructuredBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %bb.b [
    i16 207, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 221, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 220, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 214, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 213, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 198, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 197, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 218, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 217, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 216, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 215, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 219, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 192, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 199, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 212, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 205, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 211, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 210, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 209, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 208, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 225, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 173, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 224, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 223, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 222, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 206, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 204, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 196, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 193, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 194, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 195, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 202, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 201, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 203, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
    i16 200, label %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = tail call noundef ptr @_ZN5clang16OMPLoopDirective7getBodyEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  br label %_ZN5clang22OMPExecutableDirective10getRawStmtEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.e, align 8, !tbaa !17
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 3 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 511
  %i.q = icmp eq i16 %i.p, 259
  br i1 %i.q, label %.preheader.i.i, label %_ZN5clang22OMPExecutableDirective10getRawStmtEv.exit

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.07.i.i = phi ptr [ %i.w, %.preheader.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 3 uses
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 511
  %.not.i.i = icmp eq i16 %i.y, 259
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN5clang22OMPExecutableDirective10getRawStmtEv.exit, !llvm.loop !0

_ZN5clang22OMPExecutableDirective10getRawStmtEv.exit: ; preds = %.preheader.i.i, %bb.b, %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit
  %.1 = phi ptr [ %i.c, %_ZN4llvm8dyn_castIN5clang16OMPLoopDirectiveENS1_22OMPExecutableDirectiveEEEDcPT0_.exit ], [ %i.n, %bb.b ], [ %i.w, %.preheader.i.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang16OMPLoopDirective7getBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.b, align 8, !tbaa !17
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = and i16 %i.l, 511
  %i.n = icmp eq i16 %i.m, 259
  br i1 %i.n, label %.preheader.i, label %_ZN5clang11OMPChildren10getRawStmtEv.exit

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.07.i = phi ptr [ %i.t, %.preheader.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 3 uses
  %i.u = load i16, ptr %i.t, align 8
  %i.v = and i16 %i.u, 511
  %.not.i = icmp eq i16 %i.v, 259
  br i1 %.not.i, label %.preheader.i, label %_ZN5clang11OMPChildren10getRawStmtEv.exit, !llvm.loop !0

_ZN5clang11OMPChildren10getRawStmtEv.exit:        ; preds = %.preheader.i, %bb.a
  %.1.i = phi ptr [ %i.k, %bb.a ], [ %i.t, %.preheader.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %i.y = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %.1.i, i1 noundef zeroext false) #14
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %_ZN5clang21OMPLoopBasedDirective19doForAllLoopsBodiesEPNS_4StmtEbjN4llvm12function_refIFvjS2_S2_EEE.exit, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i.i

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i.i: ; preds = %_ZN5clang11OMPChildren10getRawStmtEv.exit, %bb.e
  %.0 = phi ptr [ %.1.i.i.i, %bb.e ], [ null, %_ZN5clang11OMPChildren10getRawStmtEv.exit ]
  %.02764.i.i = phi i32 [ %i.bb, %bb.e ], [ 0, %_ZN5clang11OMPChildren10getRawStmtEv.exit ]
  %.03263.i.i = phi ptr [ %i.ba, %bb.e ], [ %i.y, %_ZN5clang11OMPChildren10getRawStmtEv.exit ]
  br label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i.i

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i.i: ; preds = %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i.i, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i.i
  %.133.i.i = phi ptr [ %.2.i.i.i, %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i.i ], [ %.03263.i.i, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i.i ] ; 7 uses
  %i.aa = load i16, ptr %.133.i.i, align 8
  %.fr4.i.i.i.i = freeze i16 %i.aa                ; 4 uses
  %i.ab = and i16 %.fr4.i.i.i.i, 511              ; 6 uses
  %i.ac = and i16 %.fr4.i.i.i.i, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ac, 226
  %i.ad = icmp eq i16 %i.ab, 238
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i, label %switch.early.test.i.i.i.i

.thread.i.i:                                      ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i.i
  %1 = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 40
  br label %select.unfold.i.i

switch.early.test.i.i.i.i:                        ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i.i
  switch i16 %i.ab, label %.loopexit [
    i16 238, label %2
    i16 228, label %2
    i16 244, label %.loopexit1
  ]

2:                                                ; preds = %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i
  %.not.i.i = icmp eq i16 %i.ab, 228
  %3 = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 40
  %spec.select.i.i12.i.i.i.i.i = select i1 %i.ad, ptr %.133.i.i, ptr null ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %spec.select.i.i12.i.i.i.i.i, null
  %4 = getelementptr inbounds nuw i8, ptr %spec.select.i.i12.i.i.i.i.i, i64 32
  %.1.i.i.i.i.i = select i1 %.not11.i.i.i.i.i, ptr undef, ptr %4
  %spec.select62.i.i = select i1 %.not.i.i, ptr %3, ptr %.1.i.i.i.i.i
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %2, %.thread.i.i
  %.0.i.i.ph.i.i = phi ptr [ %1, %.thread.i.i ], [ %spec.select62.i.i, %2 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i16 %i.ag, 511                      ; 2 uses
  %i.ai = and i16 %i.ag, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 226
  %i.aj = icmp eq i16 %i.ah, 228
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = or i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i, %i.aj
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %select.unfold.i.i
  %i.ak = icmp eq i16 %i.ah, 238
  tail call void @llvm.assume(i1 %i.ak)
  br label %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i.i

_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i.i: ; preds = %bb.b, %select.unfold.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !17
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %.2.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.2.i.i.i = load ptr, ptr %.2.in.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not41.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not41.i.i, label %bb.c, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i.i

bb.c:                                             ; preds = %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i.i
  %i.aq = load i32, ptr %.0.i.i.ph.i.i, align 8, !tbaa !39
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %select.unfold48.i.i, label %_ZN5clang21OMPLoopBasedDirective19doForAllLoopsBodiesEPNS_4StmtEbjN4llvm12function_refIFvjS2_S2_EEE.exit

select.unfold48.i.i:                              ; preds = %bb.c
  %.not.i.i.a = icmp eq i16 %i.ab, 244
  br i1 %.not.i.i.a, label %.loopexit1, label %.loopexit

.loopexit1:                                       ; preds = %switch.early.test.i.i.i.i, %select.unfold48.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %.pre.i = load i16, ptr %i.at, align 8          ; 2 uses
  %.pre24.i = and i16 %.pre.i, 511
  br label %.loopexit

.loopexit:                                        ; preds = %switch.early.test.i.i.i.i, %.loopexit1, %select.unfold48.i.i
  %i.au = phi i16 [ %.pre.i, %.loopexit1 ], [ %.fr4.i.i.i.i, %select.unfold48.i.i ], [ %.fr4.i.i.i.i, %switch.early.test.i.i.i.i ]
  %.pre-phi.i = phi i16 [ %.pre24.i, %.loopexit1 ], [ %i.ab, %select.unfold48.i.i ], [ %i.ab, %switch.early.test.i.i.i.i ]
  %.436.i.i = phi ptr [ %i.at, %.loopexit1 ], [ %.133.i.i, %select.unfold48.i.i ], [ %.133.i.i, %switch.early.test.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq i16 %.pre-phi.i, 252
  %.0.in.v.i.i.i = select i1 %.not.i.i.i, i64 40, i64 64
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.436.i.i, i64 %.0.in.v.i.i.i
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !20 ; 3 uses
  %i.av = load i16, ptr %.0.i.i.i, align 8
  %i.aw = and i16 %i.av, 511
  %.not3.i.i.i = icmp eq i16 %i.aw, 244
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %.1.i.i.i = phi ptr [ %i.ay, %bb.d ], [ %.0.i.i.i, %.loopexit ] ; 2 uses
  %i.az = and i16 %i.au, 511
  %.not60.i.i = icmp eq i16 %i.az, 252
  %.537.in.v.i.i = select i1 %.not60.i.i, i64 40, i64 64
  %.537.in.i.i = getelementptr inbounds nuw i8, ptr %.436.i.i, i64 %.537.in.v.i.i
  %.537.i.i = load ptr, ptr %.537.in.i.i, align 8, !tbaa !20
  %i.ba = tail call noundef ptr @_ZN5clang21OMPLoopBasedDirective22tryToFindNextInnerLoopEPNS_4StmtEb(ptr noundef %.537.i.i, i1 noundef zeroext true)
  %i.bb = add nuw i32 %.02764.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bb, %i.x
  br i1 %exitcond.not.i.i, label %_ZN5clang21OMPLoopBasedDirective19doForAllLoopsBodiesEPNS_4StmtEbjN4llvm12function_refIFvjS2_S2_EEE.exit, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i.i, !llvm.loop !1

_ZN5clang21OMPLoopBasedDirective19doForAllLoopsBodiesEPNS_4StmtEbjN4llvm12function_refIFvjS2_S2_EEE.exit: ; preds = %bb.c, %bb.e, %_ZN5clang11OMPChildren10getRawStmtEv.exit
  %.1 = phi ptr [ null, %_ZN5clang11OMPChildren10getRawStmtEv.exit ], [ %.0, %bb.c ], [ %.1.i.i.i, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang21OMPLoopBasedDirective22tryToFindNextInnerLoopEPNS_4StmtEb(ptr noundef nonnull %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %i.a = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false) #14 ; 4 uses
  br i1 %1, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 511
  %.not = icmp eq i16 %i.c, 258
  br i1 %.not, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.r

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.ptr55 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %.ptr55, ptr %2, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.d, align 4, !tbaa !42
  store ptr %i.a, ptr %.ptr55, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 1, ptr %i.e, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 4, ptr %i.h, align 4, !tbaa !42
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %thread-pre-split.backedge
  %.021.ph90 = phi ptr [ null, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.021.ph.be, %thread-pre-split.backedge ] ; 3 uses
  %.pr89 = phi i32 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.pr.pre, %thread-pre-split.backedge ]
  %i.i = phi ptr [ %.ptr55, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.pre, %thread-pre-split.backedge ]
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %.loopexit.loopexit, label %bb.d, !llvm.loop !119

bb.d:                                             ; preds = %.lr.ph87, %bb.c
  %i.j = phi i32 [ %.pr89, %.lr.ph87 ], [ %i.o, %bb.c ] ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 3 uses
  %i.o = add i32 %i.j, -1                         ; 5 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.c, label %bb.e, !llvm.loop !119

bb.e:                                             ; preds = %bb.d
  store i32 %i.o, ptr %i.e, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not2660 = icmp eq i32 %i.r, 0
  br i1 %.not2660, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE9push_backES3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtENS1_4StmtEEEDaPT0_.exit.thread
  %.02062 = phi ptr [ %i.as, %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtENS1_4StmtEEEDaPT0_.exit.thread ], [ %i.p, %bb.e ] ; 2 uses
  %.161 = phi ptr [ %.2.ph, %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtENS1_4StmtEEEDaPT0_.exit.thread ], [ %.021.ph90, %bb.e ] ; 6 uses
  %i.u = load ptr, ptr %.02062, align 8, !tbaa !20 ; 4 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtENS1_4StmtEEEDaPT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.v = load i16, ptr %i.u, align 8              ; 2 uses
  %i.w = and i16 %i.v, 511                        ; 2 uses
  %.not57 = icmp eq i16 %i.w, 244
  br i1 %.not57, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %.pre67 = load i16, ptr %i.y, align 8           ; 2 uses
  %.pre70 = and i16 %.pre67, 511
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i16 [ %.pre70, %bb.g ], [ %i.w, %bb.f ]
  %i.z = phi i16 [ %.pre67, %bb.g ], [ %i.v, %bb.f ]
  %.046 = phi ptr [ %i.y, %bb.g ], [ %i.u, %bb.f ] ; 4 uses
  switch i16 %.pre-phi, label %bb.i [
    i16 252, label %_ZN4llvm3isaIJN5clang16OMPLoopDirectiveEEPNS1_4StmtEEEbRKT0_.exit
    i16 261, label %_ZN4llvm3isaIJN5clang16OMPLoopDirectiveEEPNS1_4StmtEEEbRKT0_.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.aa = and i16 %i.z, 510
  %i.ab = add nsw i16 %i.aa, -166
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ab, 78
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !47
  %i.ae = call noundef zeroext i1 @_ZN5clang21isOpenMPLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.ad) #14
  br i1 %i.ae, label %bb.j, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread

bb.j:                                             ; preds = %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit
  %i.af = load i16, ptr %.046, align 8
  %i.ag = and i16 %i.af, 511
  switch i16 %i.ag, label %_ZN4llvm3isaIJN5clang16OMPLoopDirectiveEEPNS1_4StmtEEEbRKT0_.exit [
    i16 207, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 221, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 220, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 214, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 213, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 198, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 197, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 218, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 217, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 216, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 215, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 219, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 192, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 199, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 212, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 205, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 211, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 210, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 209, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 208, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 225, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 173, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 224, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 223, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 222, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 206, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 204, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 196, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 193, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 194, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 195, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 202, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 201, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 203, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
    i16 200, label %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread
  ]

_ZN4llvm3isaIJN5clang16OMPLoopDirectiveEEPNS1_4StmtEEEbRKT0_.exit: ; preds = %bb.h, %bb.h, %bb.j
  %.not30 = icmp eq ptr %.161, null
  br i1 %.not30, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtENS1_4StmtEEEDaPT0_.exit.thread, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE9push_backES3_.exit.loopexit

_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit.thread: ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.i, %_ZN4llvm3isaIJN5clang21OMPLoopBasedDirectiveEEPNS1_4StmtEEEbRKT0_.exit
  %i.ah = call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %.046, i1 noundef zeroext false) #14 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE4swapERS4_:bb.a
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %0, align 8, !tbaa !125
  store ptr %i.b, ptr %1, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !48
  %i.k = load i32, ptr %i.i, align 8, !tbaa !48
  store i32 %i.k, ptr %i.h, align 8, !tbaa !48
  store i32 %i.j, ptr %i.i, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !48
  %i.o = load i32, ptr %i.m, align 4, !tbaa !48
  store i32 %i.o, ptr %i.l, align 4, !tbaa !48
  store i32 %i.n, ptr %i.m, align 4, !tbaa !48
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %i.q to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i64 noundef %i.u, i64 noundef 8) #14
  br label %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !45   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit40

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit
  %i.aa = zext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 8) #14
  %.pre = load i32, ptr %i.v, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit40

_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit40: ; preds = %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit, %bb.g
  %i.ac = phi i32 [ %i.w, %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit ], [ %.pre, %bb.g ] ; 6 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !45  ; 6 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp ugt i32 %i.ac, %i.ae
  %spec.select43 = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ae) ; 5 uses
  %spec.select = zext i32 %spec.select43 to i64   ; 10 uses
  %.not48 = icmp eq i32 %spec.select43, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit40
  %i.ah = load ptr, ptr %0, align 8, !tbaa !41    ; 6 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !41    ; 6 uses
  %min.iters.check = icmp ult i32 %spec.select43, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = shl nuw nsw i64 %spec.select, 3         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.aj
  %scevgep59 = getelementptr i8, ptr %i.ai, i64 %i.aj
  %bound0 = icmp ult ptr %i.ah, %scevgep59
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %spec.select, 4294967292       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !44, !alias.scope !126, !noalias !127
  %wide.load60 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !44, !alias.scope !126, !noalias !127
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load61 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !44, !alias.scope !127
  %wide.load62 = load <2 x ptr>, ptr %i.an, align 8, !tbaa !44, !alias.scope !127
  store <2 x ptr> %wide.load61, ptr %i.ak, align 8, !tbaa !44, !alias.scope !126, !noalias !127
  store <2 x ptr> %wide.load62, ptr %i.am, align 8, !tbaa !44, !alias.scope !126, !noalias !127
  store <2 x ptr> %wide.load, ptr %i.al, align 8, !tbaa !44, !alias.scope !127
  store <2 x ptr> %wide.load60, ptr %i.an, align 8, !tbaa !44, !alias.scope !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %spec.select
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.03649.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %spec.select, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.03649.ph ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03649.ph ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !44
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !44
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !44
  %i.at = or disjoint i64 %.03649.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03649.unr = phi i64 [ %.03649.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %i.au = add nsw i64 %spec.select, -1
  %i.av = icmp eq i64 %.03649.ph, %i.au
  br i1 %i.av, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm15SmallVectorImplIPN5clang12CompoundStmtEE7reserveEm.exit40
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE18uninitialized_copyIPS3_S6_EEvT_S7_T0_.exit, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03649 = phi i64 [ %i.bf, %scalar.ph ], [ %.03649.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.03649 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03649 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !44
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !44
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !44
  %i.ba = add nuw nsw i64 %.03649, 1              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ba ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !44
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !44
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !44
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !44
  %i.bf = add nuw nsw i64 %.03649, 2              ; 2 uses
  %.not.1 = icmp eq i64 %i.bf, %spec.select
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !124

_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE18uninitialized_copyIPS3_S6_EEvT_S7_T0_.exit: ; preds = %._crit_edge
  %i.bg = sub nuw i32 %i.ac, %i.ae
  %i.bh = load ptr, ptr %0, align 8, !tbaa !41
  %.idx45 = shl nuw nsw i64 %spec.select, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx45
  %i.bj = load ptr, ptr %1, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.af
  %i.bl = sub nuw nsw i64 %i.ad, %spec.select
  %gepdiff46 = shl nuw nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 8 %i.bi, i64 %gepdiff46, i1 false)
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !45
  %i.bn = add i32 %i.bg, %i.bm
  store i32 %i.bn, ptr %i.p, align 8, !tbaa !45
  store i32 %spec.select43, ptr %i.v, align 8, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.bo = icmp ugt i32 %i.ae, %i.ac
  br i1 %i.bo, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE18uninitialized_copyIPS3_S6_EEvT_S7_T0_.exit42, label %bb.i

_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE18uninitialized_copyIPS3_S6_EEvT_S7_T0_.exit42: ; preds = %bb.h
  %i.bp = sub nuw i32 %i.ae, %i.ac
  %i.bq = load ptr, ptr %1, align 8, !tbaa !41
  %.idx44 = shl nuw nsw i64 %spec.select, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx44
  %i.bs = load ptr, ptr %0, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ad
  %i.bu = sub nuw nsw i64 %i.af, %spec.select
  %gepdiff = shl nuw nsw i64 %i.bu, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 8 %i.br, i64 %gepdiff, i1 false)
  %i.bv = load i32, ptr %i.v, align 8, !tbaa !45
  %i.bw = add i32 %i.bp, %i.bv
  store i32 %i.bw, ptr %i.v, align 8, !tbaa !45
  store i32 %spec.select43, ptr %i.p, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE18uninitialized_copyIPS3_S6_EEvT_S7_T0_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang12CompoundStmtELb1EE18uninitialized_copyIPS3_S6_EEvT_S7_T0_.exit42, %bb.h, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE(ptr noundef nonnull %0, i1 noundef zeroext %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::function_ref.8") align 8 captures(none) %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false) #14
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.thread54, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.lr.ph

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader: ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.lr.ph, %bb.f
  %.02764 = phi i32 [ 0, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %.03263 = phi ptr [ %i.a, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.lr.ph ], [ %i.ae, %bb.f ]
  br label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit: ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader, %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit
  %.133 = phi ptr [ %.2.i, %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit ], [ %.03263, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader ] ; 7 uses
  %i.d = load i16, ptr %.133, align 8
  %.fr4.i.i = freeze i16 %i.d                     ; 3 uses
  %i.e = and i16 %.fr4.i.i, 511                   ; 3 uses
  %i.f = and i16 %.fr4.i.i, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.f, 226
  %i.g = icmp eq i16 %i.e, 238
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread, label %switch.early.test.i.i

.thread:                                          ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit
  %6 = getelementptr inbounds nuw i8, ptr %.133, i64 40
  br label %select.unfold

switch.early.test.i.i:                            ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit
  switch i16 %i.e, label %select.unfold48 [
    i16 238, label %7
    i16 228, label %7
  ]

7:                                                ; preds = %switch.early.test.i.i, %switch.early.test.i.i
  %.not = icmp eq i16 %i.e, 228
  %8 = getelementptr inbounds nuw i8, ptr %.133, i64 40
  %spec.select.i.i12.i.i.i = select i1 %i.g, ptr %.133, ptr null ; 2 uses
  %.not11.i.i.i = icmp eq ptr %spec.select.i.i12.i.i.i, null
  %9 = getelementptr inbounds nuw i8, ptr %spec.select.i.i12.i.i.i, i64 32
  %.1.i.i.i = select i1 %.not11.i.i.i, ptr undef, ptr %9
  %spec.select62 = select i1 %.not, ptr %8, ptr %.1.i.i.i
  br label %select.unfold

select.unfold:                                    ; preds = %7, %.thread
  %.0.i.i.ph = phi ptr [ %6, %.thread ], [ %spec.select62, %7 ] ; 3 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !133
  %i.i = load i64, ptr %i.c, align 8, !tbaa !134
  tail call void %i.h(i64 noundef %i.i, ptr noundef nonnull %.0.i.i.ph) #14, !inline_history !130
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.ph, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = and i16 %i.l, 511                        ; 2 uses
  %i.n = and i16 %i.l, 506
  %or.cond5.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.n, 226
  %i.o = icmp eq i16 %i.m, 228
  %spec.select.i.i.i.i.i.i.i.i.i = or i1 %or.cond5.i.i.i.i.i.i.i.i.i, %i.o
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit, label %bb.b

bb.b:                                             ; preds = %select.unfold
  %i.p = icmp eq i16 %i.m, 238
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit

_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit: ; preds = %select.unfold, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  %.2.in.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.2.i = load ptr, ptr %.2.in.i, align 8, !tbaa !20 ; 2 uses
  %.not41 = icmp eq ptr %.2.i, null
  br i1 %.not41, label %bb.c, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit

bb.c:                                             ; preds = %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit
  %i.v = load i32, ptr %.0.i.i.ph, align 8, !tbaa !39
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.select.unfold48_crit_edge, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.thread54

.select.unfold48_crit_edge:                       ; preds = %bb.c
  %.pre = load i16, ptr %.133, align 8
  br label %select.unfold48

select.unfold48:                                  ; preds = %switch.early.test.i.i, %.select.unfold48_crit_edge
  %i.x = phi i16 [ %.pre, %.select.unfold48_crit_edge ], [ %.fr4.i.i, %switch.early.test.i.i ]
  %i.y = and i16 %i.x, 511
  %.not.a = icmp eq i16 %i.y, 244
  br i1 %.not.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %select.unfold48
  %i.z = getelementptr inbounds nuw i8, ptr %.133, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %select.unfold48
  %.436 = phi ptr [ %i.aa, %bb.d ], [ %.133, %select.unfold48 ] ; 3 uses
  %i.ab = tail call noundef zeroext i1 %3(i64 noundef %4, i32 noundef %.02764, ptr noundef %.436) #14, !inline_history !131
  br i1 %i.ab, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.thread54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i16, ptr %.436, align 8
  %i.ad = and i16 %i.ac, 511
  %.not60 = icmp eq i16 %i.ad, 252
  %.537.in.v = select i1 %.not60, i64 40, i64 64
  %.537.in = getelementptr inbounds nuw i8, ptr %.436, i64 %.537.in.v
  %.537 = load ptr, ptr %.537.in, align 8, !tbaa !20
  %i.ae = tail call noundef ptr @_ZN5clang21OMPLoopBasedDirective22tryToFindNextInnerLoopEPNS_4StmtEb(ptr noundef %.537, i1 noundef zeroext %1)
  %i.af = add nuw i32 %.02764, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %2
  br i1 %exitcond.not, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.thread54, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader, !llvm.loop !1

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.thread54: ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.6 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ false, %bb.e ], [ true, %bb.f ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = and i16 %i.c, 511                        ; 2 uses
  %i.e = and i16 %i.c, 506
  %or.cond5.i.i.i.i.i.i.i.i = icmp eq i16 %i.e, 226
  %i.f = icmp eq i16 %i.d, 228
  %spec.select.i.i.i.i.i.i.i.i = or i1 %or.cond5.i.i.i.i.i.i.i.i, %i.f
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i16 %i.d, 238
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %.2.in = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !20
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang21OMPLoopBasedDirective19doForAllLoopsBodiesEPNS_4StmtEbjN4llvm12function_refIFvjS2_S2_EEE(ptr noundef nonnull %0, i1 noundef zeroext %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Stmt16IgnoreContainersEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false) #14
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE.exit, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i: ; preds = %bb.a, %bb.e
  %.02764.i = phi i32 [ %i.ad, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %.03263.i = phi ptr [ %i.ac, %bb.e ], [ %i.a, %bb.a ]
  br label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i

_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i: ; preds = %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i
  %.133.i = phi ptr [ %.2.i.i, %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i ], [ %.03263.i, %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i ] ; 7 uses
  %i.c = load i16, ptr %.133.i, align 8
  %.fr4.i.i.i = freeze i16 %i.c                   ; 2 uses
  %i.d = and i16 %.fr4.i.i.i, 511                 ; 6 uses
  %i.e = and i16 %.fr4.i.i.i, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.e, 226
  %i.f = icmp eq i16 %i.d, 238
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i, label %switch.early.test.i.i.i

.thread.i:                                        ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i
  %5 = getelementptr inbounds nuw i8, ptr %.133.i, i64 40
  br label %select.unfold.i

switch.early.test.i.i.i:                          ; preds = %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i
  switch i16 %i.d, label %.loopexit [
    i16 238, label %6
    i16 228, label %6
    i16 244, label %.loopexit34
  ]

6:                                                ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i
  %.not.i = icmp eq i16 %i.d, 228
  %7 = getelementptr inbounds nuw i8, ptr %.133.i, i64 40
  %spec.select.i.i12.i.i.i.i = select i1 %i.f, ptr %.133.i, ptr null ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %spec.select.i.i12.i.i.i.i, null
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i.i12.i.i.i.i, i64 32
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, ptr undef, ptr %8
  %spec.select62.i = select i1 %.not.i, ptr %7, ptr %.1.i.i.i.i
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %6, %.thread.i
  %.0.i.i.ph.i = phi ptr [ %5, %.thread.i ], [ %spec.select62.i, %6 ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.ph.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = load i16, ptr %i.h, align 8              ; 2 uses
  %i.j = and i16 %i.i, 511                        ; 2 uses
  %i.k = and i16 %i.i, 506
  %or.cond5.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.k, 226
  %i.l = icmp eq i16 %i.j, 228
  %spec.select.i.i.i.i.i.i.i.i.i.i = or i1 %or.cond5.i.i.i.i.i.i.i.i.i.i, %i.l
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i, label %bb.b

bb.b:                                             ; preds = %select.unfold.i
  %i.m = icmp eq i16 %i.j, 238
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i

_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i: ; preds = %bb.b, %select.unfold.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %.2.in.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.2.i.i = load ptr, ptr %.2.in.i.i, align 8, !tbaa !20 ; 2 uses
  %.not41.i = icmp eq ptr %.2.i.i, null
  br i1 %.not41.i, label %bb.c, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.i

bb.c:                                             ; preds = %_ZNK5clang30OMPLoopTransformationDirective18getTransformedStmtEv.exit.i
  %i.s = load i32, ptr %.0.i.i.ph.i, align 8, !tbaa !39
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %select.unfold48.i, label %_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE.exit

select.unfold48.i:                                ; preds = %bb.c
  %.not.i.a = icmp eq i16 %i.d, 244
  br i1 %.not.i.a, label %.loopexit34, label %.loopexit

.loopexit34:                                      ; preds = %switch.early.test.i.i.i, %select.unfold48.i
  %i.u = getelementptr inbounds nuw i8, ptr %.133.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %.pre = load i16, ptr %i.v, align 8
  %.pre24 = and i16 %.pre, 511
  br label %.loopexit

.loopexit:                                        ; preds = %switch.early.test.i.i.i, %.loopexit34, %select.unfold48.i
  %.pre-phi = phi i16 [ %.pre24, %.loopexit34 ], [ %i.d, %select.unfold48.i ], [ %i.d, %switch.early.test.i.i.i ]
  %.436.i = phi ptr [ %i.v, %.loopexit34 ], [ %.133.i, %select.unfold48.i ], [ %.133.i, %switch.early.test.i.i.i ] ; 4 uses
  %.not.i.i = icmp eq i16 %.pre-phi, 252
  %.0.in.v.i.i = select i1 %.not.i.i, i64 40, i64 64
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.436.i, i64 %.0.in.v.i.i
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !20 ; 3 uses
  %i.w = load i16, ptr %.0.i.i, align 8
  %i.x = and i16 %i.w, 511
  %.not3.i.i = icmp eq i16 %i.x, 244
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %.1.i.i = phi ptr [ %i.z, %bb.d ], [ %.0.i.i, %.loopexit ]
  tail call void %3(i64 noundef %4, i32 noundef %.02764.i, ptr noundef nonnull %.436.i, ptr noundef %.1.i.i) #14, !inline_history !135
  %i.aa = load i16, ptr %.436.i, align 8
  %i.ab = and i16 %i.aa, 511
  %.not60.i = icmp eq i16 %i.ab, 252
  %.537.in.v.i = select i1 %.not60.i, i64 40, i64 64
  %.537.in.i = getelementptr inbounds nuw i8, ptr %.436.i, i64 %.537.in.v.i
  %.537.i = load ptr, ptr %.537.in.i, align 8, !tbaa !20
  %i.ac = tail call noundef ptr @_ZN5clang21OMPLoopBasedDirective22tryToFindNextInnerLoopEPNS_4StmtEb(ptr noundef %.537.i, i1 noundef zeroext %1)
  %i.ad = add nuw i32 %.02764.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ad, %2
  br i1 %exitcond.not.i, label %_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE.exit, label %_ZN4llvm8dyn_castIN5clang30OMPLoopTransformationDirectiveENS1_4StmtEEEDcPT0_.exit.preheader.i, !llvm.loop !1

_ZN5clang21OMPLoopBasedDirective13doForAllLoopsEPNS_4StmtEbjN4llvm12function_refIFbjS2_EEENS4_IFvPNS_30OMPLoopTransformationDirectiveEEEE.exit: ; preds = %bb.c, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPLoopDirective11setCountersEN4llvm8ArrayRefIPNS_4ExprEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 5 uses
  %i.f = tail call noundef zeroext i1 @_ZN5clang33isOpenMPLoopBoundSharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.f, label %_ZN5clang16OMPLoopDirective11getCountersEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5clang28isOpenMPWorksharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.g, label %_ZN5clang16OMPLoopDirective11getCountersEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN5clang25isOpenMPTaskLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.h, label %_ZN5clang16OMPLoopDirective11getCountersEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN5clang28isOpenMPGenericLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.i, label %_ZN5clang16OMPLoopDirective11getCountersEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZN5clang27isOpenMPDistributeDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  %i.k = select i1 %i.j, i64 16, i64 8
  br label %_ZN5clang16OMPLoopDirective11getCountersEv.exit

_ZN5clang16OMPLoopDirective11getCountersEv.exit:  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ 16, %bb.b ], [ 29, %bb.a ], [ %i.k, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = zext i32 %i.c to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.i.i ; 2 uses
  %i.p = icmp ugt i64 %2, 1
  br i1 %i.p, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_ZN5clang16OMPLoopDirective11getCountersEv.exit
  %.idx.i = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %1, i64 %.idx.i, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.g:                                             ; preds = %_ZN5clang16OMPLoopDirective11getCountersEv.exit
  %i.q = icmp eq i64 %2, 1
  br i1 %i.q, label %bb.h, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.r, ptr %i.o, align 8, !tbaa !51
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPLoopDirective18setPrivateCountersEN4llvm8ArrayRefIPNS_4ExprEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 5 uses
  %i.f = tail call noundef zeroext i1 @_ZN5clang33isOpenMPLoopBoundSharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.f, label %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5clang28isOpenMPWorksharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.g, label %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN5clang25isOpenMPTaskLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.h, label %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN5clang28isOpenMPGenericLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.i, label %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZN5clang27isOpenMPDistributeDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  %spec.select.i.i = select i1 %i.j, i32 16, i32 8
  br label %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit

_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i32 [ 16, %bb.b ], [ 29, %bb.a ], [ %spec.select.i.i, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = zext i32 %i.c to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36
  %i.p = add i32 %i.o, %.0.i.i
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = icmp ugt i64 %2, 1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit
  %.idx.i = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %1, i64 %.idx.i, i1 false)
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.g:                                             ; preds = %_ZN5clang16OMPLoopDirective18getPrivateCountersEv.exit
  %i.t = icmp eq i64 %2, 1
  br i1 %i.t, label %bb.h, label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %1, align 8, !tbaa !51
  store ptr %i.u, ptr %i.r, align 8, !tbaa !51
  br label %_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit

_ZN4llvm4copyIRNS_8ArrayRefIPN5clang4ExprEEEPS4_EET0_OT_S8_.exit: ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang16OMPLoopDirective8setInitsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !47   ; 5 uses
  %i.f = tail call noundef zeroext i1 @_ZN5clang33isOpenMPLoopBoundSharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.f, label %_ZN5clang16OMPLoopDirective8getInitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5clang28isOpenMPWorksharingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.g, label %_ZN5clang16OMPLoopDirective8getInitsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN5clang25isOpenMPTaskLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.h, label %_ZN5clang16OMPLoopDirective8getInitsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN5clang28isOpenMPGenericLoopDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  br i1 %i.i, label %_ZN5clang16OMPLoopDirective8getInitsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZN5clang27isOpenMPDistributeDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.e) #14
  %spec.select.i.i = select i1 %i.j, i32 16, i32 8
  br label %_ZN5clang16OMPLoopDirective8getInitsEv.exit

_ZN5clang16OMPLoopDirective8getInitsEv.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i32 [ 16, %bb.b ], [ 29, %bb.a ], [ %spec.select.i.i, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = zext i32 %i.c to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !36
  %i.p = shl i32 %i.o, 1
  %i.q = add i32 %i.p, %.0.i.i
end_hunk_1
